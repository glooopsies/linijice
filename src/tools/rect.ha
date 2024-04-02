use src::math;
use src::nodes;

const rect = tool {
    mouse_down = &rect_down,
    mouse_move = &rect_move,
    mouse_up   = &rect_up,
};

let rect_selected: nullable *nodes::rect = null;

fn rect_down(x: f32, y: f32) void = {
	rect_selected = nodes::make_rect([x, y], 1f32, 1f32, color);
	nodes::scene_append(rect_selected);
};

fn rect_move(x: f32, y: f32) void = {
	let selected = rect_selected: *nodes::rect;
	selected.w = x: f32;
	selected.h = y: f32;
};

fn rect_up(x: f32, y: f32) void = {
	let selected = rect_selected: *nodes::rect;

	selected.w = x: f32;
	selected.h = y: f32;


	rect_selected = null;
};
