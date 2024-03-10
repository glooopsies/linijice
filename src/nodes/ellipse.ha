use src::math;

export type ellipse = struct {
    node,
    r1: f32,
    r2: f32,
};

export fn make_ellipse(position: math::vec2, r1: f32, r2: f32) *ellipse = {
    return alloc(ellipse {
        position = position,
        r1 = r1,
        r2 = r2,
        draw = &draw_ellipse,
    });
};

fn init_ellipse() void = {
    return;
};

fn finalize_ellipse() void = {
    return;
};

fn draw_ellipse(this: *node) void = {
    let this = this: *ellipse;

    return;
};
