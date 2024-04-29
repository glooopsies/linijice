use types::c;

use gobject;
use glib;
use gdk4;
use gtk4;

use libs::gl;

use src::g;
use src::gl;
use src::nodes;
use src::tools;
use src::math;

let resources: str = "";
let pointer: math::vec2 = [0f32, 0f32];
let gl_area = null: *gtk4::GLArea;

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

fn rerender() void = {
	gtk4::glarea_queue_render(gl_area: *gtk4::GLArea);
};

fn gl_resize(widget: *gtk4::GLArea, w: int, h: int, data: *opaque) void = {
	gl::width = w;
	gl::height = h;

	nodes::scene_resize();
};

fn motion(gesture: *gtk4::EventControllerMotion, x: f64, y: f64, area: *gtk4::GLArea) void = {
	pointer = [x: f32, y: f32];
};

fn key_pressed(gesture: *gtk4::EventControllerKey, keyval: uint, keycode: uint, state: gdk4::ModifierType, area: *gtk4::GLArea) glib::boolean = {
	defer gtk4::glarea_queue_render(area);

	const state = gtk4::event_controller_get_current_event_state(gesture: *gtk4::EventController);

	if (keyval == g::KEY_Delete) {
		tools::delete_selection();
		return glib::TRUE;
	};

	if (state & gdk4::ModifierType::CONTROL_MASK > 0) {
		if (keyval == g::KEY_A || keyval == g::KEY_a) {
			tools::select_all();
			return glib::TRUE;
		};
	};

	return glib::TRUE;
};

fn drag_begin(gesture: *gtk4::GestureDrag, x: f64, y: f64, area: *gtk4::GLArea) void = {
	defer gtk4::glarea_queue_render(area);

	gtk4::widget_grab_focus(area);

	const state = gtk4::event_controller_get_current_event_state(gesture: *gtk4::EventController);

	if (state & gdk4::ModifierType::CONTROL_MASK > 0) {
		tools::move_down([x: f32, y: f32]);
		return;
	};

	tools::mouse_down([x: f32, y: f32]);
};

fn drag_update(gesture: *gtk4::GestureDrag, x: f64, y: f64, area: *gtk4::GLArea) void = {
	defer gtk4::glarea_queue_render(area);

	const state = gtk4::event_controller_get_current_event_state(gesture: *gtk4::EventController);
	if (state & gdk4::ModifierType::CONTROL_MASK > 0) {
		tools::move_move([x: f32, y: f32]);
		return;
	};

	tools::mouse_move([x: f32, y: f32]);
};

fn drag_end(gesture: *gtk4::GestureDrag, x: f64, y: f64, area: *gtk4::GLArea) void = {
	defer gtk4::glarea_queue_render(area);

	const state = gtk4::event_controller_get_current_event_state(gesture: *gtk4::EventController);
	if (state & gdk4::ModifierType::CONTROL_MASK > 0) {
		tools::move_up([x: f32, y: f32]);
		return;
	};

	tools::mouse_up([x: f32, y: f32]);
};


fn drag_begin_right(gesture: *gtk4::GestureDrag, x: f64, y: f64, area: *gtk4::GLArea) void = {
	defer gtk4::glarea_queue_render(area);

	tools::deselect();
};

fn drag_update_right(gesture: *gtk4::GestureDrag, x: f64, y: f64, area: *gtk4::GLArea) void = {
	defer gtk4::glarea_queue_render(area);
};

fn drag_end_right(gesture: *gtk4::GestureDrag, x: f64, y: f64, area: *gtk4::GLArea) void = {
	defer gtk4::glarea_queue_render(area);
};

fn scroll(gesture: *gtk4::EventControllerScroll, x: f64, y: f64, area: *gtk4::GLArea) void = {
	defer gtk4::glarea_queue_render(area);

	if (gtk4::event_controller_scroll_get_unit(gesture) == gdk4::ScrollUnit::WHEEL) {
		const state = gtk4::event_controller_get_current_event_state(gesture: *gtk4::EventController);
		if (state & gdk4::ModifierType::CONTROL_MASK > 0) {
			tools::zoom_begin(pointer);

			const scale = 1f32 + (y: f32 / 5f32);
			tools::zoom_changed(scale);
			return;
		};

		if (state & gdk4::ModifierType::SHIFT_MASK > 0) {
			tools::scroll_wheel([y: f32, x: f32]);
			return;
		};

		tools::scroll_wheel([x: f32, y: f32]);
		return;
	};

	tools::scroll_discrete([x: f32, y: f32]);
};

fn zoom_begin(gesture: *gtk4::GestureZoom, sequence: *gdk4::EventSequence, area: *gtk4::GLArea) void = {
	let x = 0f64, y = 0f64;
	gtk4::gesture_get_point(gesture: *gtk4::Gesture, sequence, &x, &y);

	tools::zoom_begin([x: f32, y: f32]);
	gtk4::glarea_queue_render(area);
};

fn zoom_changed(gesture: *gtk4::GestureZoom, scale: f64, area: *gtk4::GLArea) void = {
	tools::zoom_changed(scale: f32);
	gtk4::glarea_queue_render(area);
};

fn zoom_end(gesture: *gtk4::GestureZoom, sequence: *gdk4::EventSequence, area: *gtk4::GLArea) void = {
	tools::zoom_end();
	gtk4::glarea_queue_render(area);
};

fn draw_area_init(builder: *gtk4::Builder, res: str) void = {
    resources = res;

    gl_area = gtk4::builder_get_object(
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


	const motion_event = gtk4::event_controller_motion_new();
	gtk4::widget_add_controller(gl_area, motion_event);

	g::signal_connect(motion_event,
        c::nulstr("motion\0"),
        &motion: gobject::Callback, gl_area);


	const key_event = gtk4::event_controller_key_new();
	gtk4::widget_add_controller(gl_area, key_event);

	g::signal_connect(key_event,
        c::nulstr("key-pressed\0"),
        &key_pressed: gobject::Callback, gl_area);


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

	const drag_gesture_right = gtk4::gesture_drag_new();
	gtk4::gesture_single_set_button(drag_gesture_right: *gtk4::GestureSingle, 3);
	gtk4::widget_add_controller(gl_area, drag_gesture_right: *gtk4::EventController);

	g::signal_connect(drag_gesture_right,
        c::nulstr("drag-begin\0"),
        &drag_begin_right: gobject::Callback, gl_area);

	g::signal_connect(drag_gesture_right,
        c::nulstr("drag-update\0"),
        &drag_update_right: gobject::Callback, gl_area);

	g::signal_connect(drag_gesture_right,
        c::nulstr("drag-end\0"),
        &drag_end_right: gobject::Callback, gl_area);

	const scroll_event = gtk4::event_controller_scroll_new(
		gtk4::EventControllerScrollFlags::BOTH_AXES
	);
	gtk4::widget_add_controller(gl_area, scroll_event);

	g::signal_connect(scroll_event,
        c::nulstr("scroll\0"),
        &scroll: gobject::Callback, gl_area);


	const zoom_gesture = gtk4::gesture_zoom_new();
	gtk4::widget_add_controller(gl_area, zoom_gesture: *gtk4::EventController);

	g::signal_connect(zoom_gesture,
        c::nulstr("begin\0"),
        &zoom_begin: gobject::Callback, gl_area);

	g::signal_connect(zoom_gesture,
        c::nulstr("scale-changed\0"),
        &zoom_changed: gobject::Callback, gl_area);

	g::signal_connect(zoom_gesture,
        c::nulstr("end\0"),
        &zoom_end: gobject::Callback, gl_area);

	tools::init(builder);
};
