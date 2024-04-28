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

export type point = math::vec2;

export type handle = struct {
    point: point,
    control_point: point,
};

export type bezier = struct {
    node,
    handles: []handle,
};

let bezier_program = 0u;
let bezier_point_program = 0u;

export fn make_bezier(
    position: math::vec2 = [0f32, 0f32],
    color: math::vec4 = [0f32, 0f32, 0f32, 0f32],
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
    gl::glUniform4f(location, this.color[0], this.color[1], this.color[2], this.color[3]);

    const location = gl::glGetUniformLocation(bezier_program, c::nulstr("stroke\0"): nullable *const i8);
    gl::glUniform1f(location, get_scene().scale[0]*5f32);

    gl::glDrawArrays(gl::GL_LINE_STRIP, 0, len(this.handles): i32);


    gl::glUseProgram(bezier_point_program);
    gl::glBindVertexArray(bezier_VAO);
    scene_set_uniforms(bezier_point_program);
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
};

fn bezier_bounding_box(this: *node) [2]math::vec2 = {
    const this = this: *bezier;
    const end_point: math::vec2 = [
        this.position[0] + 50f32,
        this.position[1] + 50f32,
    ];

    return [
        math::vec2min(this.position, end_point),
        math::vec2max(this.position, end_point),
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

    fmt::fprintfln(
        stream,
        "{}<path />",
        prefix)!;
};

fn bezier_load(parser: *xml::parser) (*bezier | errors::error | strconv::error) = {
    return errors::invalid;
};
