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

export fn move_down(point: math::vec2, uniform: bool = false) void = {
    const active_scene = nodes::get_scene();
    original_translation = active_scene.translation;
};

export fn move_move(vec: math::vec2, uniform: bool = false) void = {
    const active_scene = nodes::get_scene();

    active_scene.translation = math::vec2add(original_translation, vec);
};

export fn move_up(vec: math::vec2, uniform: bool = false) void = void;

const scroll_speed_wheel = -40f32;
export fn scroll_wheel(vec: math::vec2) void = {
    const active_scene = nodes::get_scene();

    const vec = math::vec2fmul(scroll_speed_wheel, vec);
    active_scene.translation = math::vec2add(active_scene.translation, vec);
};

const scroll_speed_discrete = -2f32;
export fn scroll_discrete(vec: math::vec2) void = {
    const active_scene = nodes::get_scene();

    const vec = math::vec2fmul(scroll_speed_discrete, vec);
    active_scene.translation = math::vec2add(active_scene.translation, vec);
};
