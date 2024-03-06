use gio;
use glib;
use gobject;
use gtk4;
use adw;
use os;
use rt;
use types::c;
use strings;

let split_view: nullable *adw::OverlaySplitView = null;

fn show_toolbar(widget: *gtk4::Button, data: *opaque) void = {
	adw::overlay_split_view_set_show_sidebar(split_view: *adw::OverlaySplitView, glib::TRUE);
};

fn activate(app: *gio::Application, user_data: *opaque) void = {
	const app = app: *adw::Application;

	const main_ui = strings::concat(resources, "/builder.ui");
	defer free(main_ui);
	
	const main_ui = c::fromstr(main_ui);
	defer free(main_ui);
	
	const builder = gtk4::builder_new();
	gtk4::builder_add_from_file(builder, main_ui, null);
	defer gobject::object_unref(builder);

	const window = c::fromstr("window");
	defer free(window);
	const window = gtk4::builder_get_object(builder, window): *gtk4::Window;

	const _split_view = c::fromstr("split_view");
	defer free(_split_view);
	split_view = gtk4::builder_get_object(builder, _split_view): *adw::OverlaySplitView;
	
	const show_toolbar_button = c::fromstr("show_toolbar");
	defer free(show_toolbar_button);
	const show_toolbar_button = gtk4::builder_get_object(builder, show_toolbar_button): *gtk4::Button;
	gtk4::button_connect_clicked(show_toolbar_button, &show_toolbar, null);

	gtk4::window_set_application(window, app);
	gtk4::widget_show(window);
};

export fn main() void = {
	const app = adw::application_new(
		c::fromstr("rs.ac.bg.matf.linijice"),
		gio::ApplicationFlags::FLAGS_NONE
	): *gio::Application;
	
	gio::application_connect_activate(app, &activate, null);
	const status = gio::application_run(
		app, rt::argc: int, rt::argv: **c::char,
	);
	
	gobject::object_unref(app);

	os::exit(status);
};

