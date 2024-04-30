use strings;
use fmt;
use math;
use io;
use errors;
use strconv;

use src::gl;
use src::math;

use format::xml;
use types::c;
use libs::gl;

export type point = math::vec2;

export type handle = struct {
    point: point,
    control_point: point,
};

export type bezier = struct {
    node,
    stroke: f32,
    handles: []handle,
};

let bezier_program = 0u;
let bezier_point_program = 0u;

export fn make_bezier(
    position: math::vec2 = [0f32, 0f32],
    color: math::vec4 = [0f32, 0f32, 0f32, 0f32],
    stroke: f32 = 1f32,
    handles: []handle = [],
) *bezier = {
    return alloc(bezier {
        _type        = node_type::BEZIER,
        color        = color,
        position     = position,
        translation  = math::vec2id(0f32),
        rotation     = math::mat2id(1f32),
        scale        = math::vec2id(1f32),
        bounding_box = &bezier_bounding_box,
        intersects   = &bezier_intersects,
        draw         = &draw_bezier,
        save         = &bezier_save,

        stroke  = stroke,
        handles = handles,
    });
};

let bezier_VBO = 0u, bezier_VAO = 0u;
fn init_bezier(resources: str) void = {
    const vert_path = strings::concat(resources, "/shaders/bezier.vert");
    defer free(vert_path);

    const geom_path = strings::concat(resources, "/shaders/bezier.geom");
    defer free(geom_path);

    const frag_path = strings::concat(resources, "/shaders/bezier.frag");
    defer free(frag_path);

    const program = gl::compile_program([
        gl::compile_shader(vert_path, gl::GL_VERTEX_SHADER),
        gl::compile_shader(geom_path, gl::GL_GEOMETRY_SHADER),
        gl::compile_shader(frag_path, gl::GL_FRAGMENT_SHADER)
    ]);

    bezier_program = match(program) {
    case let shader: uint => yield shader;
    case let err: gl::error => gl::check_error(err);
    };


    const vert_path = strings::concat(resources, "/shaders/bezier.vert");
    defer free(vert_path);

    const geom_path = strings::concat(resources, "/shaders/bezier_points.geom");
    defer free(geom_path);

    const frag_path = strings::concat(resources, "/shaders/bezier_points.frag");
    defer free(frag_path);

    const program = gl::compile_program([
        gl::compile_shader(vert_path, gl::GL_VERTEX_SHADER),
        gl::compile_shader(geom_path, gl::GL_GEOMETRY_SHADER),
        gl::compile_shader(frag_path, gl::GL_FRAGMENT_SHADER)
    ]);

    bezier_point_program = match(program) {
    case let shader: uint => yield shader;
    case let err: gl::error => gl::check_error(err);
    };


    gl::glGenVertexArrays(1, &bezier_VAO);
    gl::glGenBuffers(1, &bezier_VBO);
};

fn draw_bezier(this: *node) void = {
    let this = this: *bezier;

    bezier_upload(this);

    gl::glUseProgram(bezier_program);
    gl::glBindVertexArray(bezier_VAO);

    scene_set_uniforms(bezier_program);

    const location = gl::glGetUniformLocation(bezier_program, c::nulstr("color\0"): nullable *const i8);
    gl::glUniform4f(location, this.color[0], this.color[1], this.color[2], 1f32);

    const location = gl::glGetUniformLocation(bezier_program, c::nulstr("stroke\0"): nullable *const i8);
    gl::glUniform1f(location, get_scene().scale[0]*this.stroke);

    const location = gl::glGetUniformLocation(bezier_program, c::nulstr("translate\0"): nullable *const i8);
    gl::glUniform2f(location, this.translation[0], this.translation[1]);

    gl::glDrawArrays(gl::GL_LINE_STRIP, 0, len(this.handles): i32);
};

fn draw_bezier_controls(this: *node) void = {
    let this = this: *bezier;

    bezier_upload(this);

    gl::glUseProgram(bezier_point_program);
    gl::glBindVertexArray(bezier_VAO);

    scene_set_uniforms(bezier_point_program);

    const location = gl::glGetUniformLocation(bezier_point_program, c::nulstr("translate\0"): nullable *const i8);
    gl::glUniform2f(location, this.translation[0], this.translation[1]);

    gl::glDrawArrays(gl::GL_POINTS, 0, len(this.handles): i32);
};

fn bezier_upload(this: *bezier) void = {
    let array = this.handles;

    gl::glBindVertexArray(bezier_VAO);

    gl::glBindBuffer(gl::GL_ARRAY_BUFFER, bezier_VBO);
    gl::glBufferData(gl::GL_ARRAY_BUFFER, len(array) * 4 * size(f32): uintptr, &array[0], gl::GL_STATIC_DRAW);

    gl::glVertexAttribPointer(0, 2, gl::GL_FLOAT, gl::GL_FALSE, 4 * size(f32): i32, 0: uintptr : *opaque);
    gl::glEnableVertexAttribArray(0);

    gl::glVertexAttribPointer(1, 2, gl::GL_FLOAT, gl::GL_FALSE, 4 * size(f32): i32, (2 * size(f32)): uintptr : *opaque);
    gl::glEnableVertexAttribArray(1);

    gl::glBindBuffer(gl::GL_ARRAY_BUFFER, 0);
    gl::glBindVertexArray(0);
};

fn finalize_bezier() void = {
    gl::glDeleteVertexArrays(1, &bezier_VAO);
    gl::glDeleteBuffers(1, &bezier_VBO);
    gl::glDeleteProgram(bezier_program);
    gl::glDeleteProgram(bezier_point_program);
};

fn bezier_value(poly: [4]f32, t: f32) f32 = {
    return poly[0] * (1f32 - t) * (1f32 - t) * (1f32 - t) + 3f32 * poly[1] * t * (1f32 - t) * (1f32 - t)
           + 3f32 * poly[2] * t * t * (1f32 - t) + poly[3] * t * t * t;
};

fn bezier_min_max(start: point, control1: point, control2: point, end: point) [2]point = {    
    const ax = -3f32 * start[0] + 9f32 * control1[0] - 9f32 * control2[0] + 3f32 * end[0];
    const bx = 6f32 * start[0] - 12f32 * control1[0] + 6f32 * control2[0];
    const cx = 3f32 * control1[0] - 3f32 * start[0];  

    const ay = -3f32 * start[1] + 9f32 * control1[1] - 9f32 * control2[1] + 3f32 * end[1];
    const by = 6f32 * start[1] - 12f32 * control1[1] + 6f32 * control2[1];
    const cy = 3f32 * control1[1] - 3f32 * start[1];
    
    let distx = bx * bx - 4f32 * ax * cx;
    let disty = by * by - 4f32 * ay * cy;
    
    let x: []f32 = [];
    defer free(x);
    append(x, [start[0], end[0]]...);

    let y: []f32 = [];
    defer free(y);
    append(y, [start[1], end[1]]...);

    if (distx >= 0f32) {
        let t1 = (-bx + math::sqrtf32(distx)) / (2f32 * ax);
        if (t1 > 0f32 && t1 < 1f32) {
            let x1 = bezier_value([start[0], control1[0], control2[0], end[0]], t1);
            append(x, x1);
        };

        let t2 = (-bx - math::sqrtf32(distx)) / (2f32 * ax);
        if (t2 > 0f32 && t2 < 1f32) {
            let x2 = bezier_value([start[0], control1[0], control2[0], end[0]], t2);
            append(x, x2);
        };
    };

    if (disty >= 0f32) {
        let t1 = (-by + math::sqrtf32(disty)) / (2f32 * ay);
        if (t1 > 0f32 && t1 < 1f32) {
            let y1 = bezier_value([start[1], control1[1], control2[1], end[1]], t1);
            append(y, y1);
        };

        let t2 = (-by - math::sqrtf32(disty)) / (2f32 * ay);
        if (t2 > 0f32 && t2 < 1f32) {
            let y2 = bezier_value([start[1], control1[1], control2[1], end[1]], t2);
            append(y, y2);
        };
    };

    return [[math::min(x...), math::min(y...)], [math::max(x...), math::max(y...)]];
};

fn bezier_bounding_box(this: *node) [2]math::vec2 = {
    const this = this: *bezier;
    let bounding_point_min: point = this.handles[0].point;
    let bounding_point_max: point = this.handles[0].point;

    for (let i = 0z; i < len(this.handles) - 1; i = i+1) {
        const other = math::vec2add(
            math::vec2fmul(2f32, this.handles[i+1].point),
            math::vec2fmul(-1f32, this.handles[i+1].control_point)
        );
        let points = bezier_min_max(this.handles[i].point, this.handles[i].control_point, other, this.handles[i+1].point);
        bounding_point_min = math::vec2min(bounding_point_min, points[0]);
        bounding_point_max = math::vec2max(bounding_point_max, points[1]);
    };

    return [
        bounding_point_min, 
        bounding_point_max,
    ];
};

fn bezier_intersects(this: *node, other: [2]math::vec2) bool = {
    const this = this: *bezier;

    const box = this.bounding_box(this);

    return
        (box[0][0] >= other[0][0] && box[0][1] >= other[0][1]) &&
        (box[1][0] <= other[1][0] && box[1][1] <= other[1][1]);
};

fn bezier_save(this: *node, stream: *io::stream, prefix: str = "") void = {
    const this = this: *bezier;

    const box = this.bounding_box(this);

    fmt::fprintf(stream, "{}<path stroke=\"{}\" stroke-width=\"{}\" fill=\"none\" d=\"M {},{}", 
        prefix, math::vec4tohex(this.color), this.stroke,
        this.handles[0].point[0], this.handles[0].point[1])!;

    for (let i = 0z; i < len(this.handles) - 1; i += 1) {
        const handle1 = this.handles[i];
        const handle2 = this.handles[i + 1];
        const other = math::vec2add(
            math::vec2fmul(2f32, handle2.point),
            math::vec2fmul(-1f32, handle2.control_point)
        );
        fmt::fprintf(stream, 
            " C {},{} {},{} {},{}",
            handle1.control_point[0], handle1.control_point[1],
            other[0], other[1],
            handle2.point[0], handle2.point[1],
        )!;
    };

    fmt::fprintfln(stream, "\" />")!;
};

fn parse_path(_path: str) ([]handle | errors::error | strconv::error) = {
    const _split = strings::split(_path, " ");
    defer free(_split);

    let split = []: []str;
    defer free(split);
    for (const part &.. _split) {
        const _split = strings::split(*part, ",");
        defer free(_split);
        append(split, _split...);
    };

    if (len(split) < 3) {
        return errors::invalid;
    };

    if (strings::compare(split[0], "M") != 0) {
        return errors::invalid;
    };

    let path = []: []handle;

    append(path, handle {
        point = [
            strconv::stof32(split[1])?,
            strconv::stof32(split[2])?
        ],
        ...
    });

    let i = 3z;
    let point = 1z;
    for (i < len(split)) {
        switch(split[i]) {
            case "C" =>
                if (i + 6 >= len(split)) {
                    return errors::invalid;
                };

                path[point - 1].control_point[0] = strconv::stof32(split[i + 1])?;
                path[point - 1].control_point[1] = strconv::stof32(split[i + 2])?;

                append(path, handle {
                    point = [
                        strconv::stof32(split[i + 5])?,
                        strconv::stof32(split[i + 6])?,
                    ],
                    ...
                });

                point += 1;
                i += 7;
            case => return errors::invalid;
        };
    };

    const x = path[point - 1].point[0];
    const y = path[point - 1].point[1];

    const cx = strconv::stof32(split[len(split) - 4])?;
    const cy = strconv::stof32(split[len(split) - 3])?;

    path[point - 1].control_point = [
        2f32 * x - cx,
        2f32 * y - cy,
    ];

    return path;
};

fn bezier_load(parser: *xml::parser) (*bezier | errors::error | strconv::error) = {
    let path = make_bezier();

    for (true) {
        const token = xml::scan(parser)!;
        match(token) {
            case let start: xml::elementstart =>
                return errors::invalid;
            case let end: xml::elementend =>
                if (strings::compare(end, "path") != 0) {
                    free(path);
                    return errors::invalid;
                };

                return path;
            case let attr: xml::attribute =>
                switch (attr.0) {
                    case "stroke"       => path.color   = math::hextovec4(attr.1)?;
                    case "stroke-width" => path.stroke  = strconv::stof32(attr.1)?;
                    case "d"            => path.handles = parse_path(attr.1)?;
                    case => yield;
                };
            case void => break;
            case => yield;
        };
    };

    return errors::invalid;
};
