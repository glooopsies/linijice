use src::math;
use src::nodes;

const bezier = tool {
    mouse_down      = &bezier_down,
    mouse_move      = &bezier_move,
    mouse_up        = &bezier_up,
    transform_point = true,
    transform_move  = true,
};

let bezier_last: nullable *nodes::bezier = null;

fn bezier_down(point: math::vec2) void = {
    if (bezier_last == null) {
        bezier_last = nodes::make_bezier([0f32, 0f32], color, []);
	    nodes::scene_append(bezier_last);
    };

    let last = bezier_last: *nodes::bezier; 
    append(last.handles, nodes::handle {
        point = point,
        control_point = point,
    });
};

fn bezier_move(vec: math::vec2) void = {
    let last = bezier_last: *nodes::bezier;
    let last_handle = &last.handles[len(last.handles)-1];
    last_handle.control_point = math::vec2add(last_handle.point, vec);
};

fn bezier_up(vec: math::vec2) void = {
    let last = bezier_last: *nodes::bezier;
    let last_handle = &last.handles[len(last.handles)-1];
    last_handle.control_point = math::vec2add(last_handle.point, vec);
};
