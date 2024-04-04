use types::c;

use libs::gl;
use src::gl;
use src::math;

export type layer = []*node;
export type scene = struct {
    node,
    w: f32,
    h: f32,
    paper: *node,
    layers: []layer,
};

let active_scene: nullable *scene = null;

fn scene_init(resources: str) void = {
    gl::glEnable(gl::GL_BLEND);
    gl::glBlendFunc(gl::GL_SRC_ALPHA, gl::GL_ONE_MINUS_SRC_ALPHA);

    match (gl::msaa_init(resources)) {
	case void => yield;
    case let err: gl::error => gl::check_error(err);
    };
};

export fn new_scene() void = {
    scene_free();

    const width = 620f32;
    const height = 877f32;

    active_scene = alloc(scene {
        position    = math::vec2id(0f32),
        translation = math::vec2id(0f32),
        rotation    = math::mat2id(1f32),
        scale       = math::vec2id(1f32),
        w           = width,
        h           = height,
        draw        = &_scene_draw,

        paper = make_rect([0f32, 0f32], width, height, [1f32, 1f32, 1f32, 1f32]),
        layers = alloc([[]]),
    });
};

export fn get_scene() *scene = active_scene: *scene;

export fn scene_resize() void = {
    gl::msaa_resize();
};

export fn scene_append(node: *node) void = {
    if (active_scene == null) { return; };
    const active_scene = active_scene: *scene;

    const layer = len(active_scene.layers) - 1;
    append(active_scene.layers[layer], node);
};

export fn scene_transform() math::mat3 = {
    const active_scene = active_scene: *scene;

    return node_transform(active_scene);
};

export fn scene_set_uniforms(program: uint) void = {
    const transform = scene_transform();
    const location = gl::glGetUniformLocation(program, c::nulstr("scene_transform\0"): *i8);
    gl::glUniformMatrix3fv(location, 1, gl::GL_FALSE, &transform[0]: *f32);
    
    const transform = gl::screen_transform();
    const location = gl::glGetUniformLocation(program, c::nulstr("screen_transform\0"): *i8);
    gl::glUniformMatrix3fv(location, 1, gl::GL_FALSE, &transform[0]: *f32);

    gl::glUniform1f(gl::glGetUniformLocation(ellipse_program, c::nulstr("width\0"): nullable *const i8), gl::width: f32);
    gl::glUniform1f(gl::glGetUniformLocation(ellipse_program, c::nulstr("height\0"): nullable *const i8), gl::height: f32);
};

fn get_size() math::vec2 = {
    const active_scene = active_scene: *scene;

    return [gl::width: f32 / active_scene.scale[0], gl::height: f32 / active_scene.scale[1]];
};

fn _scene_draw(this: *node) void = {
    const this = this: *scene;
    gl::msaa_start();

    gl::glClearColor(gl::background[0], gl::background[1], gl::background[2], gl::background[3]);
    gl::glClear(gl::GL_COLOR_BUFFER_BIT | gl::GL_DEPTH_BUFFER_BIT);
    // gl::glEnable(gl::GL_DEPTH_TEST);

    this.paper.draw(this.paper);
    for (let layer &.. this.layers) {
        for (let node .. layer) {
            node.draw(node);
        };
    };

    gl::msaa_end();
};

export fn scene_draw() void = {
    if (active_scene == null) {
        return;
    };

    _scene_draw(active_scene: *scene);
};

fn _scene_free(scene: *scene) void = {
    free(scene.paper);
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
        const active_scene = active_scene: *scene;
        _scene_free(active_scene);
    };
};
