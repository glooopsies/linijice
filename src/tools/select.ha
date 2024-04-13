use src::math;
use src::nodes;

const select = tool {
    mouse_down      = &select_down,
    mouse_move      = &select_move,
    mouse_up        = &select_up,
    transform_point = true,
    transform_move  = true,
};

const selection_color: math::vec4 = [0f32, 0.5f32, 0.5f32, 0.3f32];

let selected: []*nodes::node = [];

fn deselect() void = {
    for (len(selected) > 0) {
        selected[0].selected = false;
        delete(selected[0]);
    };
};

fn select_down(point: math::vec2) void = {
    deselect();

    nodes::get_scene().selection = 
        nodes::make_rect(point, 1f32, 1f32, selection_color);
};

fn select_move(vec: math::vec2) void = {
    const selection = 
        nodes::get_scene().selection: *nodes::rect;

	selection.w = vec[0];
	selection.h = vec[1];
};

fn get_box_coords(b: [2]math::vec2) [2]math::vec2 = {
    if (b[0][0] < b[1][0] && b[0][1] > b[1][1]) {
        return [
            [b[0][0], b[1][1]], 
            [b[1][0], b[0][1]]
        ];
    }
    else if (b[0][0] > b[1][0] && b[0][1] > b[1][1]) {
        return [
            [b[1][0], b[1][1]], 
            [b[0][0], b[0][1]]
        ];
    }
    else if (b[0][0] > b[1][0] && b[0][1] < b[1][1]) {
        return [
            [b[1][0], b[0][1]], 
            [b[0][0], b[1][1]]
        ];
    };
    return b;
};

fn select_up(vec: math::vec2) void = {
    let scene = nodes::get_scene();
    defer free(scene.selection);
    defer scene.selection = null;

    let selection = scene.selection: *nodes::rect;

    const box = get_box_coords(
        [
            [selection.position[0], selection.position[1]]: math::vec2,
            [selection.position[0] + selection.w, selection.position[1] + selection.h]: math::vec2,
        ]
    );

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
    let scene = nodes::get_scene();

    for (len(selected) > 0) {
        for (let i = 0z; i < len(scene.layers); i += 1) {
            for (let j = 0z; j < len(scene.layers[i]); j += 1) {
                if (scene.layers[i][j] == selected[0]) {
                    delete(scene.layers[i][j]);
                    j -= 1;
                };
            };
        };

        free(selected[0]);
        delete(selected[0]);
    };
};
