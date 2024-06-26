use types::c;

use gobject;
use glib;
use gtk4;

use src::g;
use src::math;
use src::nodes;

type tool = struct {
    mouse_down:      *fn(point: math::vec2, uniform: bool = false) void,
    mouse_move:      *fn(vec: math::vec2, uniform: bool = false)   void,
    mouse_up:        *fn(vec: math::vec2, uniform: bool = false)   void,
    transform_point: bool,
    transform_move:  bool,
};

const tools = [
    ("tool_rect\0", &rect),
    ("tool_ellipse\0", &ellipse),
    ("tool_bezier\0", &bezier),
    ("tool_bezier-control\0", &bezier_controls),
    ("tool_move\0", &move),
    ("tool_select\0", &select),
];

export let color: math::vec4 = [0f32, 0f32, 0f32, 1f32];
export let stroke_color: math::vec4 = [0f32, 0f32, 0f32, 1f32];
export let stroke_width: f32 = 2f32;
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

export fn mouse_down(point: math::vec2, uniform: bool = false) void = {
    let vec: math::vec3 = math::vec2to3(point);

    if (active_tool.transform_point) {
        vec = math::mat3vec(math::mat3inv(nodes::scene_transform()), vec);
    };

    active_tool.mouse_down(math::vec3to2(vec), uniform);
};

export fn mouse_move(vec: math::vec2, uniform: bool = false) void = {
    let vec: math::vec3 = math::vec2to3(vec);

    if (active_tool.transform_move) {
        vec = math::mat3vec(
            math::vec2scale(
                math::vec2inv(nodes::get_scene().scale)
            ),
            vec
        );
    };

    active_tool.mouse_move(math::vec3to2(vec), uniform);
};

export fn mouse_up(vec: math::vec2, uniform: bool = false) void = {
    let vec: math::vec3 = math::vec2to3(vec);

    if (active_tool.transform_move) {
        vec = math::mat3vec(
            math::vec2scale(
                math::vec2inv(nodes::get_scene().scale)
            ),
            vec
        );
    };

    active_tool.mouse_up(math::vec3to2(vec), uniform);
};
