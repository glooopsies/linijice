use src::math;
use src::nodes;

let original_scale: math::vec2 = [1f32, 1f32];
let current_scale = 1f32;

export fn scale_begin() void = {
    const active_scene = nodes::get_scene();

    original_scale = active_scene.scale;
};

export fn scale_changed(scale: f32) void = {
    const active_scene = nodes::get_scene();

    current_scale = scale;

    active_scene.scale = math::vec2fmul(scale, original_scale);
};

export fn scale_end() void = {
    const active_scene = nodes::get_scene();

    active_scene.scale = math::vec2fmul(current_scale, original_scale);
};
