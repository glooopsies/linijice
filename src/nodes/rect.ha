use strings;
use fmt;
use io;
use errors;
use strconv;

use src::gl;
use src::math;

use format::xml;
use types::c;
use libs::gl;

export type rect = struct {
    node,
    w: f32,
    h: f32,
    radius: f32,
};

let rect_program = 0u;

export fn make_rect(
    position: math::vec2 = [0f32, 0f32],
    w: f32 = 0f32,
    h: f32 = 0f32,
    color: math::vec4 = [0f32, 0f32, 0f32, 0f32],
    radius: f32 = 0f32,
) *rect = {
    return alloc(rect {
        _type        = node_type::RECT,
        color        = color,
        position     = position,
        translation  = math::vec2id(0f32),
        rotation     = math::mat2id(1f32),
        scale        = math::vec2id(1f32),
        bounding_box = &rect_bounding_box,
        intersects   = &rect_intersects,
        draw         = &draw_rect,
        save         = &rect_save,

        w      = w,
        h      = h,
        radius = radius,
    });
};

let rect_VBO = 0u, rect_VAO = 0u;
fn init_rect(resources: str) void = {
    const vert_path = strings::concat(resources, "/shaders/scene_transform.vert");
    defer free(vert_path);

    const geom_path = strings::concat(resources, "/shaders/rect.geom");
    defer free(geom_path);

    const frag_path = strings::concat(resources, "/shaders/rect.frag");
    defer free(frag_path);

    const program = gl::compile_program([
        gl::compile_shader(vert_path, gl::GL_VERTEX_SHADER),
        gl::compile_shader(geom_path, gl::GL_GEOMETRY_SHADER),
        gl::compile_shader(frag_path, gl::GL_FRAGMENT_SHADER)
    ]);

    rect_program = match(program) {
    case let shader: uint => yield shader;
    case let err: gl::error => gl::check_error(err);
    };

    gl::glGenVertexArrays(1, &rect_VAO);
    gl::glGenBuffers(1, &rect_VBO);
};

fn draw_rect(this: *node) void = {
    let this = this: *rect;

    rect_upload(this);

    gl::glUseProgram(rect_program);
    gl::glBindVertexArray(rect_VAO);

    scene_set_uniforms(rect_program);

    const location = gl::glGetUniformLocation(rect_program, c::nulstr("color\0"): nullable *const i8);
    gl::glUniform4f(location, this.color[0], this.color[1], this.color[2], this.color[3]);

    const location = gl::glGetUniformLocation(rect_program, c::nulstr("radius\0"): nullable *const i8);
    gl::glUniform1f(location, get_scene().scale[0]*this.radius);

    const location = gl::glGetUniformLocation(rect_program, c::nulstr("translate\0"): nullable *const i8);
    gl::glUniform2f(location, this.translation[0], this.translation[1]);

    gl::glDrawArrays(gl::GL_LINES, 0, 2);
};

fn rect_upload(this: *rect) void = {
    let array = [
        this.position[0], this.position[1],
        this.position[0] + this.w, this.position[1] + this.h,
    ];

    gl::glBindVertexArray(rect_VAO);

    gl::glBindBuffer(gl::GL_ARRAY_BUFFER, rect_VBO);
    gl::glBufferData(gl::GL_ARRAY_BUFFER, len(array) * size(f32): uintptr, &array[0], gl::GL_STATIC_DRAW);

    gl::glVertexAttribPointer(0, 2, gl::GL_FLOAT, gl::GL_FALSE, 2 * size(f32): i32, 0: uintptr : *opaque);
    gl::glEnableVertexAttribArray(0);

    gl::glBindBuffer(gl::GL_ARRAY_BUFFER, 0);
    gl::glBindVertexArray(0);
};

fn finalize_rect() void = {
    gl::glDeleteVertexArrays(1, &rect_VAO);
    gl::glDeleteBuffers(1, &rect_VBO);
    gl::glDeleteProgram(rect_program);
};

fn rect_bounding_box(this: *node) [2]math::vec2 = {
    const this = this: *rect;
    const end_point: math::vec2 = [
        this.position[0] + this.w,
        this.position[1] + this.h,
    ];

    return [
        math::vec2min(this.position, end_point),
        math::vec2max(this.position, end_point),
    ];
};

fn rect_intersects(this: *node, other: [2]math::vec2) bool = {
    const this = this: *rect;

    const box = this.bounding_box(this);

    return
        (box[0][0] >= other[0][0] && box[0][1] >= other[0][1]) &&
        (box[1][0] <= other[1][0] && box[1][1] <= other[1][1]);
};

fn rect_save(this: *node, stream: *io::stream, prefix: str = "") void = {
    const this = this: *rect;

    const box = this.bounding_box(this);

    fmt::fprintfln(
        stream,
        "{}<rect fill=\"{}\" x=\"{}\" y=\"{}\" width=\"{}\" height=\"{}\" rx=\"{}\" />",
        prefix, math::vec4tohex(this.color), box[0][0], box[0][1], box[1][0] - box[0][0], box[1][1] - box[0][1], this.radius)!;
};

fn rect_load(parser: *xml::parser) (*rect | errors::error | strconv::error) = {
    let rect = make_rect();

    for (true) {
        const token = xml::scan(parser)!;
        match(token) {
            case let start: xml::elementstart =>
                return errors::invalid;
            case let end: xml::elementend =>
                if (strings::compare(end, "rect") != 0) {
                    free(rect);
                    return errors::invalid;
                };

                return rect;
            case let attr: xml::attribute =>
                switch (attr.0) {
                    case "fill"     => rect.color       = math::hextovec4(attr.1)?;
                    case "x"        => rect.position[0] = strconv::stof32(attr.1)?;
                    case "y"        => rect.position[1] = strconv::stof32(attr.1)?;
                    case "width"    => rect.w           = strconv::stof32(attr.1)?;
                    case "height"   => rect.h           = strconv::stof32(attr.1)?;
                    case "rx", "ry" => rect.radius      = strconv::stof32(attr.1)?;
                    case => yield;
                };
            case void => break;
            case => yield;
        };
    };

    return errors::invalid;
};
