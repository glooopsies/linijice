use src::math;

export type rect = struct {
    node,
    w: f32,
    h: f32,
};

export fn make_rect(position: math::vec2, w: f32, h: f32) *rect = {
    return alloc(rect {
        position = position,
        w = w,
        h = h,
        draw = &draw_rect,
    });
};

fn init_rect() void = {
    return;
};

fn finalize_rect() void = {
    return;
};

fn draw_rect(this: *node) void = {
    let this = this: *rect;

    return;
};
