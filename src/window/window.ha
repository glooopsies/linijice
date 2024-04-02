use errors;
use strings;
use types::c;

use adw;
use gio;
use gdk4;
use gobject;
use gtk4;

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

fn builder_init(resources: str) *gtk4::Builder = {
	const main_ui = strings::concat(resources, "/builder.ui\0");
	defer free(main_ui);

	const builder = gtk4::builder_new();
	gtk4::builder_add_from_file(builder, c::nulstr(main_ui), null);

    return builder;
};

export fn init(app: *adw::Application, resources: str) void = {
    const builder = builder_init(resources);
	defer gobject::object_unref(builder);

    draw_area_init(builder, resources);

	const window = gtk4::builder_get_object(
        builder, 
        c::nulstr("window\0")
    ): *gtk4::Window;

	gtk4::window_set_application(window, app);
	gtk4::widget_show(window);
};
