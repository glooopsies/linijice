use src::math;
use fmt;

export type node = struct {
    position:    math::vec2,
    translation: math::vec2,
    rotation:    math::mat2,
    scale:       math::vec2,
    draw:        *fn(*node) void,
};

export fn get_transofrm(this: *node) math::mat3 = {
    return math::mat3mul(
        math::vec2translation(this.position),
        math::mat3mul(
            math::mat2to3(this.rotation),
            math::vec2scale(this.scale)
        )
    );
};

export fn init(resources: str) void = {
    init_rect(resources);
    init_ellipse(resources);
    
    new_scene();
};

export fn finalize() void = {
    finalize_rect();
    finalize_ellipse();

    scene_free();
};
