use types::c;
use io;

use format::xml;
use src::g;
use gobject;
use gio;
use glib;
use gtk4;

use src::nodes;

fn new_file(button: *gio::SimpleAction, parameter: *glib::Variant, user_data: *opaque) void = {
    defer rerender();
    free(nodes::active_scene);
    nodes::active_scene = nodes::scene_new();
    append(nodes::active_scene.layers, []);
};

fn on_open_file(source_object: *opaque, res: *gio::AsyncResult, file_dialog: *gtk4::FileDialog) void = {
    defer gobject::object_unref(file_dialog);
    let err = null: *glib::Error;

    const file = gtk4::file_dialog_open_finish(file_dialog, res, &err);
    if (err != null) { return; };
    defer gobject::object_unref(file);

    const stream = g::file_stream(file)!;
    defer io::close(&stream)!;

    nodes::load(&stream)!;
    rerender();
};

fn open_file(button: *gio::SimpleAction, parameter: *glib::Variant, user_data: *opaque) void = {
    const file_dialog = gtk4::file_dialog_new();

    gtk4::file_dialog_open(
        file_dialog,
        window,
        null: *gio::Cancellable,
        &on_open_file: gio::AsyncReadyCallback,
        file_dialog
    );
};

fn on_save_file(source_object: *opaque, res: *gio::AsyncResult, file_dialog: *gtk4::FileDialog) void = {
    defer gobject::object_unref(file_dialog);
    let err = null: *glib::Error;

    const file = gtk4::file_dialog_save_finish(file_dialog, res, &err);
    if (err != null) { return; };
    defer gobject::object_unref(file);

    const stream = g::rewrite_stream(file)!;
    defer io::close(&stream)!;

    nodes::save(&stream);
};

fn save_file(button: *gio::SimpleAction, parameter: *glib::Variant, user_data: *opaque) void = {
    const file_dialog = gtk4::file_dialog_new();

    gtk4::file_dialog_save(
        file_dialog,
        window,
        null: *gio::Cancellable,
        &on_save_file: gio::AsyncReadyCallback,
        file_dialog
    );
};

fn menu_init(builder: *gtk4::Builder) void = {
    const app_menu = gtk4::builder_get_object(
        builder,
        c::nulstr("app_menu\0")
    ): *gtk4::MenuButton;

    const file_action_group = gio::simple_action_group_new();
    gtk4::widget_insert_action_group(app_menu: *gtk4::Widget, c::nulstr("file\0"), file_action_group: *gio::ActionGroup);

    const new_action = gio::simple_action_new(c::nulstr("new\0"), null: *glib::VariantType);
    gio::action_map_add_action(file_action_group: *gio::ActionMap, new_action: *gio::Action);
    g::signal_connect(new_action,
        c::nulstr("activate\0"),
        &new_file: gobject::Callback, null);

    const open_action = gio::simple_action_new(c::nulstr("open\0"), null: *glib::VariantType);
    gio::action_map_add_action(file_action_group: *gio::ActionMap, open_action: *gio::Action);
    g::signal_connect(open_action,
        c::nulstr("activate\0"),
        &open_file: gobject::Callback, null);

    const save_action = gio::simple_action_new(c::nulstr("save\0"), null: *glib::VariantType);
    gio::action_map_add_action(file_action_group: *gio::ActionMap, save_action: *gio::Action);
    g::signal_connect(save_action,
        c::nulstr("activate\0"),
        &save_file: gobject::Callback, null);
};
