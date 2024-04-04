use types::c;

use gobject;
use glib;
use gtk4;

use src::g;
use src::math;
use src::nodes;

type tool = struct {
    mouse_down:      *fn(point: math::vec2) void,
    mouse_move:      *fn(vec: math::vec2)   void,
    mouse_up:        *fn(vec: math::vec2)   void,
    transform_point: bool,
    transform_move:  bool,
};

const tools = [
    ("tool_rect\0", &rect),
    ("tool_ellipse\0", &ellipse),
    ("tool_move\0", &move),
];

export let color: math::vec4 = [0f32, 0f32, 0f32, 1f32];
let active_tool = &rect;

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

export fn mouse_down(x: f32, y: f32) void = {
    let vec: math::vec3 = [x, y, 1f32];

    if (active_tool.transform_point) {
        vec = math::mat3vec(math::mat3inv(nodes::scene_transform()), vec); 
    };

    active_tool.mouse_down(math::vec3to2(vec));
};

export fn mouse_move(x: f32, y: f32) void = {
    let vec: math::vec3 = [x, y, 1f32];

    if (active_tool.transform_move) {
        vec = math::mat3vec(
            math::vec2scale(
                math::vec2inv(nodes::get_scene().scale)
            ),
            vec
        );
    };

    active_tool.mouse_move(math::vec3to2(vec));
};

export fn mouse_up(x: f32, y: f32) void = {
    let vec: math::vec3 = [x, y, 1f32];
    
    if (active_tool.transform_move) {
        vec = math::mat3vec(
            math::vec2scale(
                math::vec2inv(nodes::get_scene().scale)
            ),
            vec
        );
    };

    active_tool.mouse_move(math::vec3to2(vec));
};
