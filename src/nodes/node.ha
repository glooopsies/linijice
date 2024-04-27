use io;
use errors;

use format::xml;

use src::gl;
use src::math;

export type node_type = enum {
    RECT, ELLIPSE, SCENE, BEZIER
};

export type node = struct {
    _type:        node_type,
    color:        math::vec4,
    position:     math::vec2,
    translation:  math::vec2,
    rotation:     math::mat2,
    scale:        math::vec2,
    draw:         *fn(*node) void,
    bounding_box: *fn(*node) [2]math::vec2,
    intersects:   *fn(*node, [2]math::vec2) bool,
    save:         *fn(*node, *io::stream, str = "") void,
};

export fn node_transform(this: *node) math::mat3 = {
    return math::mat3mul(
        math::vec2translation(this.position),
        math::vec2translation(this.translation),
        math::mat2to3(this.rotation),
        math::vec2scale(this.scale)
    );
};

export fn init(resources: str) void = {
    init_rect(resources);
    init_ellipse(resources);
    scene_init(resources);

    active_scene = scene_new();
    append(active_scene.layers, []);
};

export fn finalize() void = {
    finalize_rect();
    finalize_ellipse();

    scene_free();
    gl::msaa_finalize();
};
