use src::math;
use src::nodes;

use fmt;

const select = tool {
    mouse_down      = &select_down,
    mouse_move      = &select_move,
    mouse_up        = &select_up,
    transform_point = true,
    transform_move  = true,
};

const selection_color: math::vec4 = [0f32, 0.5f32, 0.5f32, 0.3f32];

let selected: []*nodes::node = [];

fn select_down(point: math::vec2) void = {
    for (let i = 0z; i < len(selected); i += 1) {
        selected[i].selected = false;
        delete(selected[i]);
    };  

    nodes::get_scene().selection = 
        nodes::make_rect(point, 1f32, 1f32, selection_color);
};

fn select_move(vec: math::vec2) void = {
    const selection = 
        nodes::get_scene().selection: *nodes::rect;

	selection.w = vec[0];
	selection.h = vec[1];
};

fn select_up(vec: math::vec2) void = {
    let scene = nodes::get_scene();
    defer free(scene.selection);
    defer scene.selection = null;

    let selection = scene.selection: *nodes::rect;

    const box = [
        [selection.position[0], selection.position[1]]: math::vec2,
        [selection.position[0] + selection.w, selection.position[1] + selection.h]: math::vec2,
    ];

    for (let layer &.. scene.layers) {
        for (let node .. layer) {
            if (node.intersects(node, box)) {
                append(selected, node);
                node.selected = true;
            };
        };
    };
};

export fn delete_selection() void = {
    fmt::println("usao")!;
};