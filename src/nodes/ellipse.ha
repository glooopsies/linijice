use strings;
use types::c;

use src::gl;
use src::math;

use libs::gl;

export type ellipse = struct {
    node,
    r1: f32,
    r2: f32,
};

let ellipse_program = 0u;

export fn make_ellipse(
    position: math::vec2,
    r1: f32,
    r2: f32,
    color: math::vec4
) *ellipse = {
    return alloc(ellipse {
        _type        = node_type::ELLIPSE,
        color        = color,
        position     = position,
        translation  = math::vec2id(0f32),
        rotation     = math::mat2id(1f32),
        scale        = math::vec2id(1f32),
        bounding_box = &ellipse_bounding_box,
        intersects   = &ellipse_intersects,
        draw         = &draw_ellipse,

        r1     = r1,
        r2     = r2,
    });
};

let ellipse_VBO = 0u, ellipse_VAO = 0u;

fn init_ellipse(resources: str) void = {
    const vert_path = strings::concat(resources, "/shaders/scene_transform.vert");
    defer free(vert_path);

    const geom_path = strings::concat(resources, "/shaders/rect.geom");
    defer free(geom_path);

    const frag_path = strings::concat(resources, "/shaders/ellipse.frag");
    defer free(frag_path);

    const program = gl::compile_program([
        gl::compile_shader(vert_path, gl::GL_VERTEX_SHADER),
        gl::compile_shader(geom_path, gl::GL_GEOMETRY_SHADER),
        gl::compile_shader(frag_path, gl::GL_FRAGMENT_SHADER)
    ]);

    ellipse_program = match(program) {
    case let shader: uint => yield shader;
    case let err: gl::error => gl::check_error(err);
    };

    gl::glGenVertexArrays(1, &ellipse_VAO);
    gl::glGenBuffers(1, &ellipse_VBO);
};

fn draw_ellipse(this: *node) void = {
    let this = this: *ellipse;

    ellipse_upload(this);
    gl::glUseProgram(ellipse_program);
    gl::glBindVertexArray(ellipse_VAO);

    scene_set_uniforms(ellipse_program);

    gl::glDrawArrays(gl::GL_LINES, 0, 2);
};

fn ellipse_upload(this: *ellipse) void = {
    let array = [
        this.position[0] + this.translation[0], this.position[1] + this.translation[1],
        this.color[0], this.color[1], this.color[2], this.color[3],

        this.position[0] + this.translation[0] + this.r1, this.position[1] + this.translation[1] + this.r2,
        this.color[0], this.color[1], this.color[2], this.color[3],
    ];

    gl::glBindVertexArray(ellipse_VAO);

    gl::glBindBuffer(gl::GL_ARRAY_BUFFER, ellipse_VBO);
    gl::glBufferData(gl::GL_ARRAY_BUFFER, len(array) * size(f32): uintptr, &array[0], gl::GL_STATIC_DRAW);

    gl::glVertexAttribPointer(0, 2, gl::GL_FLOAT, gl::GL_FALSE, 6 * size(f32): i32, 0: uintptr : *opaque);
    gl::glEnableVertexAttribArray(0);

    gl::glVertexAttribPointer(1, 4, gl::GL_FLOAT, gl::GL_FALSE, 6 * size(f32): i32, (2 * size(f32)): uintptr : *opaque);
    gl::glEnableVertexAttribArray(1);

    gl::glBindBuffer(gl::GL_ARRAY_BUFFER, 0);
    gl::glBindVertexArray(0);
};

fn finalize_ellipse() void = {
    gl::glDeleteVertexArrays(1, &ellipse_VAO);
    gl::glDeleteBuffers(1, &ellipse_VBO);
    gl::glDeleteProgram(ellipse_program);
};

fn ellipse_bounding_box(this: *node) [2]math::vec2 = {
    const this = this: *ellipse;

    const end_point: math::vec2 = [
        this.position[0] + this.r1, 
        this.position[1] + this.r2,
    ]; 

    return [
        math::vec2min(this.position, end_point),
        math::vec2max(this.position, end_point),
    ];
};

fn ellipse_intersects(this: *node, other: [2]math::vec2) bool = {
    const this = this: *ellipse;

    const box = this.bounding_box(this);

    return
        (box[0][0] >= other[0][0] && box[0][1] >= other[0][1]) &&
        (box[1][0] <= other[1][0] && box[1][1] <= other[1][1]);
};
