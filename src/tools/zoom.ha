use src::math;
use src::nodes;

let zoom_original: math::vec2 = [1f32, 1f32];

let zoom_point = [0f32, 0f32];
let zoom_original_translation = [0f32, 0f32];

export fn zoom_begin(point: math::vec2) void = {
    const active_scene = nodes::get_scene();

    zoom_original = active_scene.scale;
    zoom_original_translation = active_scene.translation;

    zoom_point = point;
};

export fn zoom_changed(scale: f32) void = {
    const active_scene = nodes::get_scene();

    const transform = math::mat3mul(
        math::vec2translation(zoom_point),
        math::vec2scale(math::vec2fmul(scale, math::vec2id(1f32))),
        math::vec2translation(math::vec2fmul(-1f32, zoom_point)),
        math::vec2translation(zoom_original_translation),
        math::vec2scale(zoom_original),
    );

    active_scene.scale = math::vec2fmul(scale, zoom_original);
    active_scene.translation = [transform[2][0], transform[2][1]];
};

export fn zoom_end() void = void;
