use errors;
use strings;
use types::c;

use adw;
use gio;
use gdk4;
use gobject;
use gtk4;

use src::g;

let window: nullable *gtk4::Window = null;

fn resources_init(resources: str) (void|errors::invalid) = {
	const gresources = strings::concat(resources, "/data.gresource\0");
	defer free(gresources);

	const gresources = gio::resource_load(c::nulstr(gresources), null);
	if (gresources == null) {
		return void: errors::invalid;
	};
	gio::resource__register(gresources);

	const css_provider = gtk4::css_provider_new();
	gtk4::css_provider_load_from_resource(
        css_provider, 
        c::nulstr("/rs/ac/bg/matf/linijice/style.css\0")
    );

	const display = gdk4::display_get_default();
	gtk4::style_context_add_provider_for_display(
        display, css_provider: *gtk4::StyleProvider, 
        g::GTK_STYLE_PROVIDER_PRIORITY_USER
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
    resources_init(resources)!;

    const builder = builder_init(resources);
	defer gobject::object_unref(builder);

    draw_area_init(builder, resources);
	color_button_init(builder);

	window = gtk4::builder_get_object(
        builder, 
        c::nulstr("window\0")
    ): *gtk4::Window;

	gtk4::window_set_application(window: *gtk4::Window, app);
	gtk4::widget_show(window);
};
