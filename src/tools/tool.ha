use types::c;

use gobject;
use glib;
use gtk4;

use src::g;
use src::math;
use src::nodes;

type tool = struct {
    mouse_down: *fn(x: f32, y:f32) void,
    mouse_move: *fn(x: f32, y:f32) void,
    mouse_up:   *fn(x: f32, y:f32) void,
};

const tools = [
    ("tool_rect\0", &rect),
    ("tool_ellipse\0", &ellipse),
];

fn toggled(button: *gtk4::ToggleButton, data: *opaque) void = {
    const data = data: *tool;

    if (gtk4::toggle_button_get_active(button) == glib::TRUE) {
        active_tool = data;
    };
};

export fn init(builder: *gtk4::Builder) void = {
    for (let tool .. tools) {
        const tool_button = gtk4::builder_get_object(
            builder, 
            c::nulstr(tool.0)
        ): *gtk4::ToggleButton;

        g::signal_connect(tool_button, 
            c::nulstr("toggled\0"), 
            &toggled: gobject::Callback, tool.1);
    };
};

export let color: math::vec4 = [0.1f32, 0.1f32, 0.1f32, 1f32];

let active_tool = &rect;

export fn mouse_down(x: f32, y: f32) void = {
    const v: math::vec3 = [x, y, 1f32];
    const res = math::vec3to2(
        math::mat3vec(nodes::scene_transform_inv(), v)
    ); 
    active_tool.mouse_down(res[0], res[1]);
};

export fn mouse_move(x: f32, y: f32) void = {
    const v: math::vec3 = [x, y, 1f32];
    const res = math::vec3to2(
        math::mat3vec(nodes::scene_scale(), v)
    ); 
    active_tool.mouse_move(res[0], res[1]);
};

export fn mouse_up(x: f32, y: f32) void = {
    const v: math::vec3 = [x, y, 1f32];
    const res = math::vec3to2(
        math::mat3vec(nodes::scene_scale(), v)
    ); 
    active_tool.mouse_up(res[0], res[1]);
};
