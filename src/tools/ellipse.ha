use src::math;
use src::nodes;

const ellipse = tool {
    mouse_down      = &ellipse_down,
    mouse_move      = &ellipse_move,
    mouse_up        = &ellipse_up,
    transform_point = true,
    transform_move  = true,
};

let ellipse_selected: nullable *nodes::ellipse = null;

fn ellipse_down(point: math::vec2, uniform: bool = false) void = {
	deselect();

	ellipse_selected = nodes::make_ellipse(point, 1f32, 1f32, color);
	nodes::scene_append(ellipse_selected);
};

fn ellipse_move(vec: math::vec2, uniform: bool = false) void = {
	let selected = ellipse_selected: *nodes::ellipse;

	if(uniform){
		vec = math::vec2id(math::min(vec...)); 
	};

	selected.r1 = vec[0];
	selected.r2 = vec[1];
};

fn ellipse_up(vec: math::vec2, uniform: bool = false) void = {
	let selected = ellipse_selected: *nodes::ellipse;

	if(uniform){
		vec = math::vec2id(math::min(vec...)); 
	};

	selected.r1 = vec[0];
	selected.r2 = vec[1];
};
