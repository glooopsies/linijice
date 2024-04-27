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

export type bezier = struct {
    node,
    points: []point,
};

let bezier_program = 0u;

export fn make_bezier(
    position: math::vec2 = [0f32, 0f32],
    color: math::vec4 = [0f32, 0f32, 0f32, 0f32],
    points: []point = [],
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

        points = points,
    });
};

let bezier_VBO = 0u, bezier_VAO = 0u;
fn init_bezier(resources: str) void = {
    const vert_path = strings::concat(resources, "/shaders/scene_transform.vert");
    defer free(vert_path);

    const frag_path = strings::concat(resources, "/shaders/bezier.frag");
    defer free(frag_path);

    const program = gl::compile_program([
        gl::compile_shader(vert_path, gl::GL_VERTEX_SHADER),
        gl::compile_shader(frag_path, gl::GL_FRAGMENT_SHADER)
    ]);

    bezier_program = match(program) {
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

    gl::glDrawArrays(gl::GL_LINES, 0, len(this.points): i32);
};

fn bezier_upload(this: *bezier) void = {
    const array = this.points;

    gl::glBindVertexArray(bezier_VAO);

    gl::glBindBuffer(gl::GL_ARRAY_BUFFER, bezier_VBO);
    gl::glBufferData(gl::GL_ARRAY_BUFFER, len(array) * size(f32): uintptr, &array[0], gl::GL_STATIC_DRAW);

    gl::glVertexAttribPointer(0, 2, gl::GL_FLOAT, gl::GL_FALSE, 2 * size(f32): i32, 0: uintptr : *opaque);
    gl::glEnableVertexAttribArray(0);

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
