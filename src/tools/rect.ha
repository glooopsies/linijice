use src::math;
use src::nodes;

const rect = tool {
    mouse_down      = &rect_down,
    mouse_move      = &rect_move,
    mouse_up        = &rect_up,
    transform_point = true,
    transform_move  = true,
};

export let radius = 0.0f32;
export let stroke = 0.0f32;

let rect_selected: nullable *nodes::rect = null;

fn rect_down(point: math::vec2, uniform: bool = false) void = {
	deselect();

	rect_selected = nodes::make_rect(point, 1f32, 1f32, color, radius);
	nodes::scene_append(rect_selected);
};

fn rect_move(vec: math::vec2, uniform: bool = false) void = {
	let selected = rect_selected: *nodes::rect;

	if(uniform){
		vec = math::vec2id(math::min(vec...)); 
	};

	selected.w = vec[0];
	selected.h = vec[1];
};

fn rect_up(vec: math::vec2, uniform: bool = false) void = {
	let selected = rect_selected: *nodes::rect;

	if(uniform){
		vec = math::vec2id(math::min(vec...)); 
	};

	selected.w = vec[0];
	selected.h = vec[1];
};
