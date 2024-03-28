use strings;
use fmt;

use src::gl;
use src::math;
use src::window;

use types::c;
use libs::gl;

export type rect = struct {
    node,
    color: math::vec4,
    w: f32,
    h: f32,
};

let rect_program = 0u;

export fn make_rect(position: math::vec2, w: f32, h: f32, color: math::vec4) *rect = {
    return alloc(rect {
        position    = position,
        translation = math::vec2id(0f32),
        rotation    = math::mat2id(1f32),
        scale       = math::vec2id(1f32),

        color = color,
        w = w,
        h = h,
        draw = &draw_rect,
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

    const transform = scene_transform();
    const location = gl::glGetUniformLocation(rect_program, c::nulstr("scene_transform\0"): *i8);

    gl::glUniformMatrix3fv(location, 1, gl::GL_FALSE, &transform[0][0]: *f32);
    gl::glDrawArrays(gl::GL_LINES, 0, 2);

    return;
};

fn rect_upload(this: *rect) void = {
    const array = [
        this.position[0], this.position[1],
        this.color[0], this.color[1], this.color[2], this.color[3],

        this.position[0] + this.w, this.position[1] + this.h,
        this.color[0], this.color[1], this.color[2], this.color[3],
    ];

    gl::glBindVertexArray(rect_VAO);

    gl::glBindBuffer(gl::GL_ARRAY_BUFFER, rect_VBO);
    gl::glBufferData(gl::GL_ARRAY_BUFFER, len(array) * size(f32): uintptr, &array[0], gl::GL_STATIC_DRAW);

    gl::glVertexAttribPointer(0, 2, gl::GL_FLOAT, gl::GL_FALSE, 6 * size(f32): i32, 0: uintptr : *opaque);
    gl::glEnableVertexAttribArray(0);

    gl::glVertexAttribPointer(1, 4, gl::GL_FLOAT, gl::GL_FALSE, 6 * size(f32): i32, (2 * size(f32)): uintptr : *opaque);
    gl::glEnableVertexAttribArray(1);

    gl::glBindBuffer(gl::GL_ARRAY_BUFFER, 0);
    gl::glBindVertexArray(0);
};

fn finalize_rect() void = {
    gl::glDeleteVertexArrays(1, &rect_VAO);
    gl::glDeleteBuffers(1, &rect_VBO);
    gl::glDeleteProgram(rect_program);

    return;
};
