use types::c;

use gobject;
use glib;
use gtk4;

use src::g;
use src::math;

type tool = struct {
    mouse_down: *fn(x: f32, y:f32) void,
    mouse_move: *fn(x: f32, y:f32) void,
    mouse_up: *fn(x: f32, y:f32) void,
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

let color: math::vec4 = [0f32, 0.5f32, 0.5f32, 0.5f32];

let active_tool = &rect;

export fn mouse_down(x: f32, y: f32) void = {
    active_tool.mouse_down(x, y);
};

export fn mouse_move(x: f32, y: f32) void = {
    active_tool.mouse_move(x, y);
};

export fn mouse_up(x: f32, y: f32) void = {
    active_tool.mouse_up(x, y);
};
