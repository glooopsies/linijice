use fmt;
use strings;
use types::c;

use src::math;
use src::window;

use libs::gl;

export type ellipse = struct {
    node,
    r1: f32,
    r2: f32,
};

let ellipse_program = 0u;

export fn make_ellipse(position: math::vec2, r1: f32, r2: f32) *ellipse = {
    return alloc(ellipse {
        position    = position,
        translation = math::vec2id(0f32),
        rotation    = math::mat2id(1f32),
        scale       = math::vec2id(1f32),

        r1 = r1,
        r2 = r2,
        draw = &draw_ellipse,
    });
};

let ellipse_VBO = 0u, ellipse_VAO = 0u;

fn init_ellipse(resources: str) void = {
    const vert_path = strings::concat(resources, "/shaders/scene_transform.vert");
    defer free(vert_path);

    const geom_path = strings::concat(resources, "/shaders/ellipse.geom");
    defer free(geom_path);

    const frag_path = strings::concat(resources, "/shaders/ellipse.frag");
    defer free(frag_path);

    ellipse_program = gl::compile_program([
        gl::compile_shader(vert_path, gl::GL_VERTEX_SHADER)!,
        gl::compile_shader(geom_path, gl::GL_GEOMETRY_SHADER)!,
        gl::compile_shader(frag_path, gl::GL_FRAGMENT_SHADER)!
    ])!;

    gl::glGenVertexArrays(1, &ellipse_VAO);
    gl::glGenBuffers(1, &ellipse_VBO);
};

fn draw_ellipse(this: *node) void = {
    let this = this: *ellipse;

    ellipse_upload(this);
    gl::glUseProgram(ellipse_program);
    gl::glBindVertexArray(ellipse_VAO);

    gl::glUniform1f(gl::glGetUniformLocation(ellipse_program, c::nulstr("width\0"): nullable *const i8), window::width: f32); 
    gl::glUniform1f(gl::glGetUniformLocation(ellipse_program, c::nulstr("height\0"): nullable *const i8), window::height: f32); 

    gl::glDrawArrays(gl::GL_LINES, 0, 2);
};

fn ellipse_upload(this: *ellipse) void = {
    const array = [
        this.position[0], this.position[1],
        this.position[0] + this.r1, this.position[1] + this.r2,
    ];

    gl::glBindVertexArray(ellipse_VAO);

    gl::glBindBuffer(gl::GL_ARRAY_BUFFER, ellipse_VBO);
    gl::glBufferData(gl::GL_ARRAY_BUFFER, len(array) * size(f32): uintptr, &array[0], gl::GL_STATIC_DRAW);

    gl::glVertexAttribPointer(0, 2, gl::GL_FLOAT, gl::GL_FALSE, 2 * size(f32): i32, 0: uintptr : *opaque);
    gl::glEnableVertexAttribArray(0);
    
    gl::glBindBuffer(gl::GL_ARRAY_BUFFER, 0);
    gl::glBindVertexArray(0);
};

fn finalize_ellipse() void = {
    gl::glDeleteVertexArrays(1, &ellipse_VAO);
    gl::glDeleteBuffers(1, &ellipse_VBO);
    gl::glDeleteProgram(ellipse_program);

    return;
};
