use types::c;

use gobject;
use gtk4;
use src::g;

use src::tools;

fn radius_changed(self: *gtk4::SpinButton, data: *opaque) void = {
    tools::radius = gtk4::spin_button_get_value(self): f32;
};

fn tools_init(builder: *gtk4::Builder) void = {
    const radius = gtk4::builder_get_object(
        builder, 
        c::nulstr("corner_radius\0")
    ): *gtk4::SpinButton;

    g::signal_connect(radius,
        c::nulstr("value-changed\0"),
        &radius_changed: gobject::Callback, null);
};
