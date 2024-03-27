use libs::gl;
use src::math;
use src::window;

use types::c;
use fmt;
use strings;

export type layer = []*node;
export type scene = struct {
    node,
    w: f32,
    h: f32,
    paper: *node,
    layers: []layer,
};

const background: math::vec3 = [0.1, 0.1, 0.1];

let active_scene: nullable *scene = null;

export fn new_scene() void = {
    scene_free();

    const width = 500f32;
    const height = 500f32;

    active_scene = alloc(scene {
        position    = math::vec2id(0f32),
        translation = math::vec2id(0f32),
        rotation    = math::mat2id(1f32),
        scale       = math::vec2id(1f32),
        w           = width,
        h           = height,
        draw        = &_scene_draw,

        paper = make_rect([0f32, 0f32], width, height, [1f32, 1f32, 1f32, 1f32]),
        layers = alloc([
            alloc([make_ellipse([400f32, 100f32], 200f32, 100f32, [0f32, 0.6f32, 0.6f32, 0.5f32])])
        ]), 
    });
};

let msaa_program = 0u;
let framebuffer = 0u;
let intermediateFBO = 0u;
let quadVAO = 0u, quadVBO = 0u;
let screenTexture = 0u;
fn scene_init(resources: str) void = {
    const vert_path = strings::concat(resources, "/shaders/msaa.vert");
    defer free(vert_path);

    const frag_path = strings::concat(resources, "/shaders/msaa.frag");
    defer free(frag_path);

    msaa_program = gl::compile_program([
        gl::compile_shader(vert_path, gl::GL_VERTEX_SHADER)!,
        gl::compile_shader(frag_path, gl::GL_FRAGMENT_SHADER)!
    ])!;

    let quadVertices = [
        -1.0f32,  1.0f32,  0.0f32, 1.0f32,
        -1.0f32, -1.0f32,  0.0f32, 0.0f32,
        1.0f32, -1.0f32,  1.0f32, 0.0f32,

        -1.0f32,  1.0f32,  0.0f32, 1.0f32,
        1.0f32, -1.0f32,  1.0f32, 0.0f32,
        1.0f32,  1.0f32,  1.0f32, 1.0f32,
    ];

    gl::glGenVertexArrays(1, &quadVAO);
    gl::glGenBuffers(1, &quadVBO);
    gl::glBindVertexArray(quadVAO);
    gl::glBindBuffer(gl::GL_ARRAY_BUFFER, quadVBO);
    gl::glBufferData(gl::GL_ARRAY_BUFFER, len(quadVertices) * size(f32): uintptr, &quadVertices, gl::GL_STATIC_DRAW);
    gl::glEnableVertexAttribArray(0);
    gl::glVertexAttribPointer(0, 2, gl::GL_FLOAT, gl::GL_FALSE, 4 * size(f32): i32, 0: uintptr: *opaque);
    gl::glEnableVertexAttribArray(1);
    gl::glVertexAttribPointer(1, 2, gl::GL_FLOAT, gl::GL_FALSE, 4 * size(f32): i32, (2 * size(f32)): uintptr: *opaque);

    gl::glGenFramebuffers(1, &framebuffer);
    gl::glBindFramebuffer(gl::GL_FRAMEBUFFER, framebuffer);


    let textureColorBufferMultiSampled = 0u;
    gl::glGenTextures(1, &textureColorBufferMultiSampled);
    gl::glBindTexture(gl::GL_TEXTURE_2D_MULTISAMPLE, textureColorBufferMultiSampled);
    gl::glTexImage2DMultisample(gl::GL_TEXTURE_2D_MULTISAMPLE, 8, gl::GL_RGB, window::width, window::height, gl::GL_TRUE);
    gl::glBindTexture(gl::GL_TEXTURE_2D_MULTISAMPLE, 0);
    gl::glFramebufferTexture2D(gl::GL_FRAMEBUFFER, gl::GL_COLOR_ATTACHMENT0, gl::GL_TEXTURE_2D_MULTISAMPLE, textureColorBufferMultiSampled, 0);

    let rbo = 0u;
    gl::glGenRenderbuffers(1, &rbo);
    gl::glBindRenderbuffer(gl::GL_RENDERBUFFER, rbo);
    gl::glRenderbufferStorageMultisample(gl::GL_RENDERBUFFER, 8, gl::GL_DEPTH24_STENCIL8, window::width, window::height);
    gl::glBindRenderbuffer(gl::GL_RENDERBUFFER, 0);
    gl::glFramebufferRenderbuffer(gl::GL_FRAMEBUFFER, gl::GL_DEPTH_STENCIL_ATTACHMENT, gl::GL_RENDERBUFFER, rbo);

    if (gl::glCheckFramebufferStatus(gl::GL_FRAMEBUFFER) != gl::GL_FRAMEBUFFER_COMPLETE) {
        fmt::printfln("ERROR::FRAMEBUFFER:: Framebuffer is not complete!")!;
    };
    gl::glBindFramebuffer(gl::GL_FRAMEBUFFER, 0);

    gl::glGenFramebuffers(1, &intermediateFBO);
    gl::glBindFramebuffer(gl::GL_FRAMEBUFFER, intermediateFBO);

    gl::glGenTextures(1, &screenTexture);
    gl::glBindTexture(gl::GL_TEXTURE_2D, screenTexture);
    gl::glTexImage2D(gl::GL_TEXTURE_2D, 0, gl::GL_RGB: i32, window::width, window::height, 0, gl::GL_RGB, gl::GL_UNSIGNED_BYTE, null);
    gl::glTexParameteri(gl::GL_TEXTURE_2D, gl::GL_TEXTURE_MIN_FILTER, gl::GL_LINEAR: i32);
    gl::glTexParameteri(gl::GL_TEXTURE_2D, gl::GL_TEXTURE_MAG_FILTER, gl::GL_LINEAR: i32);
    gl::glFramebufferTexture2D(gl::GL_FRAMEBUFFER, gl::GL_COLOR_ATTACHMENT0, gl::GL_TEXTURE_2D, screenTexture, 0);

    if (gl::glCheckFramebufferStatus(gl::GL_FRAMEBUFFER) != gl::GL_FRAMEBUFFER_COMPLETE) {
        fmt::printfln("ERROR::FRAMEBUFFER:: Intermediate framebuffer is not complete!")!;
    };
    gl::glBindFramebuffer(gl::GL_FRAMEBUFFER, 0);


    gl::glUseProgram(msaa_program);
    gl::glUniform1i(gl::glGetUniformLocation(msaa_program, c::nulstr("screenTexture\0"): *i8), 0);
};

fn scene_transform() math::mat3 = {
    return math::mat3mul(
        math::vec2translation([-1f32, 1f32]),
        math::vec2scale([2f32/(window::width: f32), -2f32/(window::height: f32)])
    );
};

fn _scene_draw(this: *node) void = {
    const this = this: *scene;

	// gl::glClearColor(background[0], background[1], background[2], 1.0);
	// gl::glClear(gl::GL_COLOR_BUFFER_BIT | gl::GL_DEPTH_BUFFER_BIT);

    // let draw_fb = 0i32, read_fb = 0i32;
    // gl::glGetIntegerv(gl::GL_DRAW_FRAMEBUFFER_BINDING, &draw_fb);
    // gl::glGetIntegerv(gl::GL_READ_FRAMEBUFFER_BINDING, &read_fb);

    // gl::glBindFramebuffer(gl::GL_FRAMEBUFFER, framebuffer);
    gl::glClearColor(0.1f32, 0.1f32, 0.1f32, 1.0f32);
    gl::glClear(gl::GL_COLOR_BUFFER_BIT | gl::GL_DEPTH_BUFFER_BIT);
    gl::glEnable(gl::GL_DEPTH_TEST);

    gl::glEnable(gl::GL_BLEND);
    gl::glBlendFunc(gl::GL_SRC_ALPHA, gl::GL_ONE_MINUS_SRC_ALPHA);
    
    this.paper.draw(this.paper);
    for (let i = 0z; i < len(this.layers); i += 1) {
        for (let j = 0z; j < len(this.layers[i]); j += 1) {
            this.layers[i][j].draw(this.layers[i][j]);
        };
    };

    // gl::glBindFramebuffer(gl::GL_READ_FRAMEBUFFER, framebuffer);
    // gl::glBindFramebuffer(gl::GL_DRAW_FRAMEBUFFER, intermediateFBO);
    // gl::glBlitFramebuffer(0, 0, window::width, window::height, 0, 0, window::width, window::height, gl::GL_COLOR_BUFFER_BIT, gl::GL_NEAREST);

    // gl::glBindFramebuffer(gl::GL_DRAW_FRAMEBUFFER, draw_fb: uint);
    // gl::glBindFramebuffer(gl::GL_READ_FRAMEBUFFER, read_fb: uint);
    // gl::glClearColor(1.0f32, 1.0f32, 1.0f32, 1.0f32);
    // gl::glClear(gl::GL_COLOR_BUFFER_BIT);
    // gl::glDisable(gl::GL_DEPTH_TEST);

    // gl::glUseProgram(msaa_program);
    // gl::glBindVertexArray(quadVAO);
    // gl::glActiveTexture(gl::GL_TEXTURE0);
    // gl::glBindTexture(gl::GL_TEXTURE_2D, screenTexture);
    // gl::glDrawArrays(gl::GL_TRIANGLES, 0, 6);
};

export fn scene_draw() void = {
    if (active_scene == null) {
        return;
    };

    _scene_draw(active_scene as *scene);
};

fn _scene_free(scene: *scene) void = {
    for (let i = 0z; i < len(scene.layers); i += 1) {
        for (let j = 0z; j < len(scene.layers[i]); j += 1) {
            free(scene.layers[i][j]);
        };
        free(scene.layers[i]);
    };

    free(scene.layers);
    free(scene);
};

export fn scene_free() void = {
    if (active_scene != null) {
        const active_scene = active_scene as *scene;
        _scene_free(active_scene);
    };
};
