use src::gl;
use src::math;

export type node = struct {
    position:    math::vec2,
    translation: math::vec2,
    rotation:    math::mat2,
    scale:       math::vec2,
    draw:        *fn(*node) void,
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

    new_scene();
};

export fn finalize() void = {
    finalize_rect();
    finalize_ellipse();

    scene_free();
    gl::msaa_finalize();
};
