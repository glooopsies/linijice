use libs::gl;
use src::math;
use src::window;

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
            alloc([make_ellipse([300f32, 100f32], 400f32, 200f32, [0f32, 0.6f32, 0.6f32, 0.8f32])])
        ]), 
    });
};

fn scene_init(resources: str) void = {
    return;
};

fn scene_transform() math::mat3 = {
    return math::mat3mul(
        math::vec2translation([-1f32, 1f32]),
        math::vec2scale([2f32/(window::width: f32), -2f32/(window::height: f32)])
    );
};

fn _scene_draw(this: *node) void = {
    const this = this: *scene;

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
