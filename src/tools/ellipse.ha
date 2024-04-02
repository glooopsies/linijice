use src::math;
use src::nodes;

const ellipse = tool {
    mouse_down = &ellipse_down,
    mouse_move = &ellipse_move,
    mouse_up = &ellipse_up,
};

let ellipse_selected: nullable *nodes::ellipse = null;

fn ellipse_down(x: f32, y: f32) void = {
	ellipse_selected = nodes::make_ellipse([x, y], 1f32, 1f32, color);
	nodes::scene_append(ellipse_selected);
};

fn ellipse_move(x: f32, y: f32) void = {
	let selected = ellipse_selected: *nodes::ellipse;

	selected.r1 = x: f32;
	selected.r2 = y: f32;
};

fn ellipse_up(x: f32, y: f32) void = {
	let selected = ellipse_selected: *nodes::ellipse;

	selected.r1 = x: f32;
	selected.r2 = y: f32;

	ellipse_selected = null;
};