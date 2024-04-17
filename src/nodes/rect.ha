use strings;

use src::gl;
use src::math;

use types::c;
use libs::gl;

export type rect = struct {
    node,
    color: math::vec4,
    w: f32,
    h: f32,
    radius: f32,
};

let rect_program = 0u;

export fn make_rect(position: math::vec2, w: f32, h: f32, color: math::vec4, radius: f32 = 0f32) *rect = {
    return alloc(rect {
        position     = position,
        translation  = math::vec2id(0f32),
        rotation     = math::mat2id(1f32),
        scale        = math::vec2id(1f32),
        selected     = false,
        bounding_box = &rect_bounding_box,
        intersects   = &rect_intersects,
        draw         = &draw_rect,

        color  = color,
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

    const location = gl::glGetUniformLocation(rect_program, c::nulstr("radius\0"): nullable *const i8);
    gl::glUniform1f(location, this.radius);

    gl::glDrawArrays(gl::GL_LINES, 0, 2);
};

fn rect_upload(this: *rect) void = {
    let array = [
        this.position[0], this.position[1],
        this.color[0], this.color[1], this.color[2], this.color[3],

        this.position[0] + this.w, this.position[1] + this.h,
        this.color[0], this.color[1], this.color[2], this.color[3],
    ];

    if (this.selected) {
        array = [
            this.position[0], this.position[1],
            1f32, 0f32, 0f32, 1f32,

            this.position[0] + this.w, this.position[1] + this.h,
            1f32, 0f32, 0f32, 1f32,
        ];
    };

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
};

fn rect_bounding_box(this: *node) [2]math::vec2 = {
    const this = this: *rect;
    return [
        [this.position[0], this.position[1]],
        [this.position[0] + this.w, this.position[1] + this.h]
    ];
};

fn rect_intersects(this: *node, other: [2]math::vec2) bool = {
    const this = this: *rect;
    return 
        (this.position[0] >= other[0][0] && this.position[1] >= other[0][1]) &&
        (this.position[0] + this.w <= other[1][0] && this.position[1] + this.h <= other[1][1]);
};