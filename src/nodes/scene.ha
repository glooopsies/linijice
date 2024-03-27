use libs::gl;
use src::math;
use src::window;

use types::c;
use fmt;

export type layer = []*node;
export type scene = struct {
    node,
    w: f32,
    h: f32,
    layers: []layer,
};

const background: math::vec3 = [0.1, 0.1, 0.1];

let active_scene: nullable *scene = null;

export fn new_scene() void = {
    scene_free();

    active_scene = alloc(scene {
        position    = math::vec2id(0f32),
        translation = math::vec2id(0f32),
        rotation    = math::mat2id(1f32),
        scale       = math::vec2id(1f32),
        w           = 500f32,
        h           = 500f32,
        draw        = &_scene_draw,

        layers = alloc([
            alloc([make_rect([100f32, 100f32], 200f32, 100f32)])
        ]), 
    });
};

fn scene_transform() math::mat3 = {
    //return math::vec2scale([1f32/(window::width: f32), 1f32/(window::height: f32)]);
    return math::mat3mul(
        math::vec2translation([-1f32, 1f32]),
        math::vec2scale([2f32/(window::width: f32), -2f32/(window::height: f32)])
    );
};

fn _scene_draw(this: *node) void = {
    const this = this: *scene;

    gl::glDisable(gl::GL_DEPTH_TEST);
    gl::glEnable(gl::GL_BLEND);
    gl::glBlendFunc(gl::GL_SRC_ALPHA, gl::GL_ONE_MINUS_SRC_ALPHA);

	gl::glClearColor(background[0], background[1], background[2], 1.0);
	gl::glClear(gl::GL_COLOR_BUFFER_BIT | gl::GL_DEPTH_BUFFER_BIT);

    for (let i = 0z; i < len(this.layers); i += 1) {
        for (let j = 0z; j < len(this.layers[i]); j += 1) {
            this.layers[i][j].draw(this.layers[i][j]);
        };
    };

    gl::glFlush();
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
