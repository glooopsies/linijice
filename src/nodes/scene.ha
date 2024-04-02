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

const background: math::vec4 = [0.1, 0.1, 0.1, 1.0];

let active_scene: nullable *scene = null;

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
        layers = alloc([
            alloc([make_ellipse([100f32, 100f32], 200f32, 100f32, [0f32, 0.6f32, 0.6f32, 0.5f32])])
        ]),
    });
};

export fn scene_resize() void = {
    gl::msaa_resize();
};

fn scene_init(resources: str) void = {
    gl::glEnable(gl::GL_BLEND);
    gl::glBlendFunc(gl::GL_SRC_ALPHA, gl::GL_ONE_MINUS_SRC_ALPHA);

    match (gl::msaa_init(resources)) {
	case void => yield;
    case let err: gl::error =>
        gl::check_error(err);
    };
};

fn scene_transform() math::mat3 = {
    return math::mat3mul(
        math::vec2translation([-1f32, 1f32]),
        math::vec2scale([2f32/(gl::width: f32), -2f32/(gl::height: f32)])
    );
};

fn _scene_draw(this: *node) void = {
    const this = this: *scene;
    gl::msaa_start();

    gl::glClearColor(background[0], background[1], background[2], background[3]);
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

    _scene_draw(active_scene as *scene);
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
        const active_scene = active_scene as *scene;
        _scene_free(active_scene);
    };
};
