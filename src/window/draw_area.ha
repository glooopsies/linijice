use types::c;

use gobject;
use gtk4;

use libs::gl;
use src::gl;
use src::math;
use src::nodes;

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

fn draw_area_init(builder: *gtk4::Builder, res: str) void = {
    resources = res;

    const gl_area = gtk4::builder_get_object(
        builder, 
        c::nulstr("gl_area\0")
    ): *gtk4::GLArea;

	gtk4::glarea_set_required_version(gl_area, 4, 3);

	g_signal_connect(gl_area, 
        c::nulstr("realize\0"), 
        &realize: gobject::Callback, null);

	g_signal_connect(gl_area, 
        c::nulstr("unrealize\0"), 
        &unrealize: gobject::Callback, null);

	g_signal_connect(gl_area, 
        c::nulstr("render\0"), 
        &render: gobject::Callback, null);

	g_signal_connect(gl_area, 
        c::nulstr("resize\0"), 
        &gl_resize: gobject::Callback, null);
};
