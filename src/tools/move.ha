use src::math;
use src::nodes;

const move = tool {
    mouse_down      = &move_down,
    mouse_move      = &move_move,
    mouse_up        = &move_up,
    transform_point = true,
    transform_move  = false,
};

let original_translation: math::vec2 = [0f32, 0f32];

fn move_down(point: math::vec2) void = {
    const active_scene = nodes::get_scene();
    original_translation = active_scene.translation;
};

fn move_move(vec: math::vec2) void = {
    const active_scene = nodes::get_scene();

    active_scene.translation = math::vec2add(original_translation, vec);
};

fn move_up(vec: math::vec2) void = {
    const active_scene = nodes::get_scene();

    active_scene.translation = math::vec2add(original_translation, vec);
};
