use os;
use rt;
use types::c;

use adw;
use gio;
use gobject;
use gtk4;

use src::window;

fn activate(app: *gio::Application, user_data: *opaque) void = {
	const app = app: *adw::Application;

	window::init(app, resources);
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
