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

let selection_move = false;

export fn deselect() void = {
    let scene = nodes::get_scene();

    bezier_last = null;

    for (len(scene.selected) > 0) {
        delete(scene.selected[0]);
    };

    for (len(scene.selection_mask) > 0) {
        free(scene.selection_mask[0]);
        delete(scene.selection_mask[0]);
    };
};

fn select_down(point: math::vec2) void = {
    let scene = nodes::get_scene();

    selection_move = false;
    for (const rect .. scene.selection_mask) {
        const box = rect.bounding_box(rect);

        if ((box[0][0] <= point[0] && box[0][1] <= point[1]) &&
                (box[1][0] >= point[0] && box[1][1] >= point[1])) {
            selection_move = true;
            break;
        };
    };

    if (!selection_move) {
        deselect();

        scene.selection =
            nodes::make_rect(point, 1f32, 1f32, selection_color);
    };
};

fn select_move(vec: math::vec2) void = {
    if (selection_move) {
        let scene = nodes::get_scene();

        for (const node .. scene.selected) {
            node.translation = vec;
        };

        for (const node .. scene.selection_mask) {
            node.translation = vec;
        };
    } else {
        const selection =
            nodes::get_scene().selection: *nodes::rect;

        selection.w = vec[0];
        selection.h = vec[1];
    };
};

fn select_up(vec: math::vec2) void = {
    let scene = nodes::get_scene();

    if (selection_move) {
        for (const node .. scene.selected) {
            if (node._type == nodes::node_type::BEZIER) {
                let node = node: *nodes::bezier;
                for (let handle &.. node.handles) {
                    handle.point = math::vec2add(handle.point, node.translation);
                    handle.control_point = math::vec2add(handle.control_point, node.translation);
                };
            } else {
                node.position = math::vec2add(node.position, node.translation);
            };
            node.translation = [0f32, 0f32];
        };

        for (const node .. scene.selection_mask) {
            node.position = math::vec2add(node.position, node.translation);
            node.translation = [0f32, 0f32];
        };
    } else {
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
                    append(scene.selected, node);
                };
            };
        };

        for (const node .. scene.selected) {
            const box = node.bounding_box(node);

            const w = box[1][0] - box[0][0];
            const h = box[1][1] - box[0][1];

            append(scene.selection_mask, nodes::make_rect(
                box[0], w,  h, selection_color,
            ));
        };
    };
};

export fn select_all() void = {
    deselect();
    let scene = nodes::get_scene();

    for (let layer &.. scene.layers) {
        for (let node .. layer) {
            append(scene.selected, node);
        };
    };

    for (const node .. scene.selected) {
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

    for (len(scene.selected) > 0) {
        for (let i = 0z; i < len(scene.layers); i += 1) {
            for (let j = 0z; j < len(scene.layers[i]); j += 1) {
                if (scene.layers[i][j] == scene.selected[0]) {
                    delete(scene.layers[i][j]);
                    j -= 1;
                };
            };
        };

        free(scene.selected[0]);
        delete(scene.selected[0]);
    };

    for (len(scene.selection_mask) > 0) {
        free(scene.selection_mask[0]);
        delete(scene.selection_mask[0]);
    };
};
