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
    let scene = nodes::get_scene();

    for (len(selected) > 0) {
        delete(selected[0]);
        free(scene.selection_mask[0]);
        delete(scene.selection_mask[0]);
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

fn select_up(vec: math::vec2) void = {
    let scene = nodes::get_scene();
    defer free(scene.selection);
    defer scene.selection = null;

    let selection = scene.selection: *nodes::rect;

    const end_point: math::vec2 = [
        selection.position[0] + selection.w, 
        selection.position[1] + selection.h,
    ]; 

    const box = [
        math::vec2min(selection.position, end_point),
        math::vec2max(selection.position, end_point),
    ];

    for (let layer &.. scene.layers) {
        for (let node .. layer) {
            if (node.intersects(node, box)) {
                append(selected, node);
            };
        };
    };

    for (const node .. selected) {
        const box = node.bounding_box(node);

        const w = box[1][0] - box[0][0];
        const h = box[1][1] - box[0][1];

        append(scene.selection_mask, nodes::make_rect(
            box[0], w,  h, selection_color, 
        ));
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

        free(scene.selection_mask[0]);
        delete(scene.selection_mask[0]);

        free(selected[0]);
        delete(selected[0]);
    };
};
