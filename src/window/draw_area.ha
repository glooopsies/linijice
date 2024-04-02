use types::c;

use gobject;
use gtk4;

use libs::gl;

use src::g;
use src::gl;
use src::nodes;
use src::tools;

let resources: str = "";

fn realize(area: *gtk4::GLArea) void = {
	gtk4::glarea_make_current(area);
	gl::load();

	nodes::init(resources);
};

fn unrealize(area: *gtk4::GLArea) void = {
	nodes::finalize();
};

fn render(area: *gtk4::GLArea, context: *opaque) bool = {
	nodes::scene_draw();
	return false;
};

fn gl_resize(widget: *gtk4::GLArea, w: int, h: int, data: *opaque) void = {
	gl::width = w;
	gl::height = h;

	nodes::scene_resize();
};

fn drag_begin(gesture: *gtk4::GestureDrag, x: f64, y: f64, area: *gtk4::GLArea) void = {
	tools::mouse_down(x: f32, y: f32);
	gtk4::glarea_queue_render(area);
};

fn drag_update(gesture: *gtk4::GestureDrag, x: f64, y: f64, area: *gtk4::GLArea) void = {
	tools::mouse_move(x: f32, y: f32);
	gtk4::glarea_queue_render(area);
};

fn drag_end(gesture: *gtk4::GestureDrag, x: f64, y: f64, area: *gtk4::GLArea) void = {
	tools::mouse_up(x: f32, y: f32);
	gtk4::glarea_queue_render(area);
};

fn draw_area_init(builder: *gtk4::Builder, res: str) void = {
    resources = res;

    const gl_area = gtk4::builder_get_object(
        builder, 
        c::nulstr("gl_area\0")
    ): *gtk4::GLArea;

	gtk4::glarea_set_required_version(gl_area, 4, 3);

	g::signal_connect(gl_area, 
        c::nulstr("realize\0"), 
        &realize: gobject::Callback, null);

	g::signal_connect(gl_area, 
        c::nulstr("unrealize\0"), 
        &unrealize: gobject::Callback, null);

	g::signal_connect(gl_area, 
        c::nulstr("render\0"), 
        &render: gobject::Callback, null);

	g::signal_connect(gl_area, 
        c::nulstr("resize\0"), 
        &gl_resize: gobject::Callback, null);


	const drag_gesture = gtk4::gesture_drag_new();
	gtk4::gesture_single_set_button(drag_gesture: *gtk4::GestureSingle, 1);
	gtk4::widget_add_controller(gl_area, drag_gesture: *gtk4::EventController);

	g::signal_connect(drag_gesture, 
        c::nulstr("drag-begin\0"), 
        &drag_begin: gobject::Callback, gl_area);

	g::signal_connect(drag_gesture, 
        c::nulstr("drag-update\0"), 
        &drag_update: gobject::Callback, gl_area);

	g::signal_connect(drag_gesture, 
        c::nulstr("drag-end\0"), 
        &drag_end: gobject::Callback, gl_area);

	tools::init(builder);
};
