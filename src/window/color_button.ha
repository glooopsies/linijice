use types::c;

use gtk4;
use gdk4;
use glib;
use gobject;

use src::g;
use src::tools;

fn color_changed(button: *gtk4::ColorDialogButton, property: *gobject::ParamSpec, data: *opaque) void = {
	const color = gtk4::color_dialog_button_get_rgba(button);
	tools::color = [color.red, color.green, color.blue, color.alpha];
};

fn color_button_init(builder: *gtk4::Builder) void = {
	const color_button = gtk4::builder_get_object(
		builder,
		c::nulstr("tool_color\0")
	): *gtk4::ColorDialogButton;


	const dialog = gtk4::color_dialog_new();
	gtk4::color_dialog_set_with_alpha(dialog, glib::TRUE);

	gtk4::color_dialog_button_set_dialog(
		color_button,
		dialog
	);

	gtk4::color_dialog_button_set_rgba(
		color_button,
		&gdk4::RGBA {
			red   = tools::color[0], 
			green = tools::color[1], 
			blue  = tools::color[2], 
			alpha = tools::color[3]
		}
	);

	g::signal_connect(color_button,
		c::nulstr("notify::rgba\0"),
		&color_changed: gobject::Callback, null
	);
};