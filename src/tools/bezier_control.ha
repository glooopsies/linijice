use src::math;
use src::nodes;

use fmt;

const bezier_controls = tool {
    mouse_down      = &bezier_controls_down,
    mouse_move      = &bezier_controls_move,
    mouse_up        = &bezier_controls_up,
    transform_point = true,
    transform_move  = true,
};

type move_type = enum {
    POINT, CONTROL, REFLECTED
};

let _move_type: move_type = move_type::CONTROL;

let _handle: nullable *nodes::handle = null;
let original_handle = nodes::handle {...};

fn bezier_controls_down(point: math::vec2, uniform: bool = false) void = {
    for (const node .. nodes::get_scene().selected) {
        if (node._type == nodes::node_type::BEZIER) {
            const node = node: *nodes::bezier;

            for (const handle &.. node.handles) {
                if (math::vec2dist(handle.point, point) <= 6f32) {
                    _move_type = move_type::POINT;
                    _handle = handle;
                    original_handle = *handle;

                    return;
                };

                if (math::vec2dist(handle.control_point, point) <= 6f32) {
                    _move_type = move_type::CONTROL;

                    _handle = handle;
                    original_handle = *handle;

                    return;
                };

                const reflected = math::vec2add(
                    math::vec2fmul(2f32, handle.point),
                    math::vec2fmul(-1f32, handle.control_point)
                );


                if (math::vec2dist(reflected, point) <= 6f32) {
                    _move_type = move_type::REFLECTED;

                    _handle = handle;
                    original_handle = *handle;

                    return;
                };
            };
        };
    };
};

fn bezier_controls_move(vec: math::vec2, uniform: bool = false) void = {
    if (_handle == null) { return; };
    const handle = _handle: *nodes::handle;

    switch (_move_type) {
        case move_type::POINT =>
            handle.point = math::vec2add(original_handle.point, vec);
            handle.control_point = math::vec2add(original_handle.control_point, vec);
        case move_type::CONTROL =>
            handle.control_point = math::vec2add(original_handle.control_point, vec);
        case move_type::REFLECTED =>
            handle.control_point = math::vec2add(
                original_handle.control_point, 
                math::vec2fmul(-1f32, vec)
            );
    };
};

fn bezier_controls_up(vec: math::vec2, uniform: bool = false) void = {
    defer _handle = null;
    bezier_controls_move(vec, uniform);
};
