use types::c;

use gobject;

export fn signal_connect(
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

export const GTK_STYLE_PROVIDER_PRIORITY_USER = 800u;
