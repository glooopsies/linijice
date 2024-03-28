use os;
use rt;
use types::c;
use strings;

use gio;
use gdk4;
use gobject;
use gtk4;
use adw;

use libs::gl;
use src::nodes;
use src::window;

fn g_signal_connect(
		instance: *opaque,
		detailed_signal: *c::char,
		c_handler: gobject::Callback,
		data: nullable *opaque) void = {

    gobject::signal_connect_data(
		instance,
		detailed_signal,
		c_handler,
		data: *opaque,
		null: gobject::ClosureNotify,
		0u: gobject::ConnectFlags
	);
};

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
	window::width = w;
	window::height = h;

	nodes::scene_resize();
};

fn activate(app: *gio::Application, user_data: *opaque) void = {
	const app = app: *adw::Application;

	const main_ui = strings::concat(resources, "/builder.ui\0");
	defer free(main_ui);

	const builder = gtk4::builder_new();
	gtk4::builder_add_from_file(builder, c::nulstr(main_ui), null);
	defer gobject::object_unref(builder);

	const window = gtk4::builder_get_object(builder, c::nulstr("window\0")): *gtk4::Window;

	const gl_area = gtk4::builder_get_object(builder, c::nulstr("gl_area\0")): *gtk4::GLArea;
	gtk4::glarea_set_required_version(gl_area, 4, 3);

	g_signal_connect(gl_area, c::nulstr("realize\0"), &realize: gobject::Callback, null);
	g_signal_connect(gl_area, c::nulstr("unrealize\0"), &unrealize: gobject::Callback, null);
	g_signal_connect(gl_area, c::nulstr("render\0"), &render: gobject::Callback, null);
	g_signal_connect(gl_area, c::nulstr("resize\0"), &gl_resize: gobject::Callback, null);

	gtk4::window_set_application(window, app);
	gtk4::widget_show(window);
};

export fn main() void = {
	const app = adw::application_new(
		c::nulstr("rs.ac.bg.matf.linijice\0"),
		gio::ApplicationFlags::FLAGS_NONE
	);

	gio::application_connect_activate(app, &activate, null);
	const status = gio::application_run(
		app, rt::argc: int, rt::argv: **c::char
	);

	gobject::object_unref(app);

	os::exit(status);
};
