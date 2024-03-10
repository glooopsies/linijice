use src::math;

export type node = struct {
    position: math::vec2,
    draw: *fn(*node) void,
};

export fn init() void = {
    init_rect();
    init_ellipse();
};

export fn finalize() void = {
    finalize_rect();
    finalize_ellipse();
};
