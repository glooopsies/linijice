use gio;
use types::c;
use cairo;
use glib;
use gobject;
use pango;
use gdkpixbuf;
export type AppLaunchContext = *opaque;
export @symbol("gdk_app_launch_context_get_display") fn app_launch_context_get_display(context: *AppLaunchContext) *Display;
export @symbol("gdk_app_launch_context_set_desktop") fn app_launch_context_set_desktop(context: *AppLaunchContext, desktop: int) void;
export @symbol("gdk_app_launch_context_set_icon") fn app_launch_context_set_icon(context: *AppLaunchContext, icon: *gio::Icon) void;
export @symbol("gdk_app_launch_context_set_icon_name") fn app_launch_context_set_icon_name(context: *AppLaunchContext, icon_name: *c::char) void;
export @symbol("gdk_app_launch_context_set_timestamp") fn app_launch_context_set_timestamp(context: *AppLaunchContext, timestamp: u32) void;
export type ButtonEvent = *opaque;
export @symbol("gdk_button_event_get_button") fn button_event_get_button(event: *Event) uint;
export type CairoContext = *opaque;
export @symbol("gdk_cairo_context_cairo_create") fn cairo_context_cairo_create(self: *CairoContext) *cairo::Context;
export type Clipboard = *opaque;
export @symbol("gdk_clipboard_get_content") fn clipboard_get_content(clipboard: *Clipboard) *ContentProvider;
export @symbol("gdk_clipboard_get_display") fn clipboard_get_display(clipboard: *Clipboard) *Display;
export @symbol("gdk_clipboard_get_formats") fn clipboard_get_formats(clipboard: *Clipboard) *ContentFormats;
export @symbol("gdk_clipboard_is_local") fn clipboard_is_local(clipboard: *Clipboard) glib::boolean;
export @symbol("gdk_clipboard_read_async") fn clipboard_read_async(clipboard: *Clipboard, mime_types: **c::char, io_priority: int, cancellable: *gio::Cancellable, callback: gio::AsyncReadyCallback, user_data: *opaque) void;
export @symbol("gdk_clipboard_read_finish") fn clipboard_read_finish(clipboard: *Clipboard, result: *gio::AsyncResult, out_mime_type: **c::char, error: nullable **glib::Error) *gio::InputStream;
export @symbol("gdk_clipboard_read_text_async") fn clipboard_read_text_async(clipboard: *Clipboard, cancellable: *gio::Cancellable, callback: gio::AsyncReadyCallback, user_data: *opaque) void;
export @symbol("gdk_clipboard_read_text_finish") fn clipboard_read_text_finish(clipboard: *Clipboard, result: *gio::AsyncResult, error: nullable **glib::Error) *c::char;
export @symbol("gdk_clipboard_read_texture_async") fn clipboard_read_texture_async(clipboard: *Clipboard, cancellable: *gio::Cancellable, callback: gio::AsyncReadyCallback, user_data: *opaque) void;
export @symbol("gdk_clipboard_read_texture_finish") fn clipboard_read_texture_finish(clipboard: *Clipboard, result: *gio::AsyncResult, error: nullable **glib::Error) *Texture;
export @symbol("gdk_clipboard_read_value_async") fn clipboard_read_value_async(clipboard: *Clipboard, type_: glib::Type, io_priority: int, cancellable: *gio::Cancellable, callback: gio::AsyncReadyCallback, user_data: *opaque) void;
export @symbol("gdk_clipboard_read_value_finish") fn clipboard_read_value_finish(clipboard: *Clipboard, result: *gio::AsyncResult, error: nullable **glib::Error) *gobject::Value;
export @symbol("gdk_clipboard_set") fn clipboard_set(clipboard: *Clipboard, type_: glib::Type, ...) void;
export @symbol("gdk_clipboard_set_content") fn clipboard_set_content(clipboard: *Clipboard, provider: *ContentProvider) glib::boolean;
export @symbol("gdk_clipboard_set_text") fn clipboard_set_text(clipboard: *Clipboard, text: *c::char) void;
export @symbol("gdk_clipboard_set_texture") fn clipboard_set_texture(clipboard: *Clipboard, texture: *Texture) void;
export @symbol("gdk_clipboard_set_valist") fn clipboard_set_valist(clipboard: *Clipboard, type_: glib::Type, args: valist) void;
export @symbol("gdk_clipboard_set_value") fn clipboard_set_value(clipboard: *Clipboard, value: *gobject::Value) void;
export @symbol("gdk_clipboard_store_async") fn clipboard_store_async(clipboard: *Clipboard, io_priority: int, cancellable: *gio::Cancellable, callback: gio::AsyncReadyCallback, user_data: *opaque) void;
export @symbol("gdk_clipboard_store_finish") fn clipboard_store_finish(clipboard: *Clipboard, result: *gio::AsyncResult, error: nullable **glib::Error) glib::boolean;
export fn clipboard_connect_changed(
	instance: *Clipboard,
	handler: *fn(instance: *Clipboard, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"changed\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export type ContentDeserializer = *opaque;
export @symbol("gdk_content_deserializer_get_cancellable") fn content_deserializer_get_cancellable(deserializer: *ContentDeserializer) *gio::Cancellable;
export @symbol("gdk_content_deserializer_get_gtype") fn content_deserializer_get_gtype(deserializer: *ContentDeserializer) glib::Type;
export @symbol("gdk_content_deserializer_get_input_stream") fn content_deserializer_get_input_stream(deserializer: *ContentDeserializer) *gio::InputStream;
export @symbol("gdk_content_deserializer_get_mime_type") fn content_deserializer_get_mime_type(deserializer: *ContentDeserializer) *c::char;
export @symbol("gdk_content_deserializer_get_priority") fn content_deserializer_get_priority(deserializer: *ContentDeserializer) int;
export @symbol("gdk_content_deserializer_get_task_data") fn content_deserializer_get_task_data(deserializer: *ContentDeserializer) *opaque;
export @symbol("gdk_content_deserializer_get_user_data") fn content_deserializer_get_user_data(deserializer: *ContentDeserializer) *opaque;
export @symbol("gdk_content_deserializer_get_value") fn content_deserializer_get_value(deserializer: *ContentDeserializer) *gobject::Value;
export @symbol("gdk_content_deserializer_return_error") fn content_deserializer_return_error(deserializer: *ContentDeserializer, error: *glib::Error) void;
export @symbol("gdk_content_deserializer_return_success") fn content_deserializer_return_success(deserializer: *ContentDeserializer) void;
export @symbol("gdk_content_deserializer_set_task_data") fn content_deserializer_set_task_data(deserializer: *ContentDeserializer, data: *opaque, notify: glib::DestroyNotify) void;
export type ContentProvider = struct {
	parent: gobject::Object,
};
export @symbol("gdk_content_provider_new_for_bytes") fn content_provider_new_for_bytes(mime_type: *c::char, bytes: *glib::Bytes) *ContentProvider;
export @symbol("gdk_content_provider_new_for_value") fn content_provider_new_for_value(value: *gobject::Value) *ContentProvider;
export @symbol("gdk_content_provider_new_typed") fn content_provider_new_typed(type_: glib::Type, ...) *ContentProvider;
export @symbol("gdk_content_provider_new_union") fn content_provider_new_union(providers: **ContentProvider, n_providers: size) *ContentProvider;
export @symbol("gdk_content_provider_content_changed") fn content_provider_content_changed(provider: *ContentProvider) void;
export @symbol("gdk_content_provider_get_value") fn content_provider_get_value(provider: *ContentProvider, value: *gobject::Value, error: nullable **glib::Error) glib::boolean;
export @symbol("gdk_content_provider_ref_formats") fn content_provider_ref_formats(provider: *ContentProvider) *ContentFormats;
export @symbol("gdk_content_provider_ref_storable_formats") fn content_provider_ref_storable_formats(provider: *ContentProvider) *ContentFormats;
export @symbol("gdk_content_provider_write_mime_type_async") fn content_provider_write_mime_type_async(provider: *ContentProvider, mime_type: *c::char, stream: *gio::OutputStream, io_priority: int, cancellable: *gio::Cancellable, callback: gio::AsyncReadyCallback, user_data: *opaque) void;
export @symbol("gdk_content_provider_write_mime_type_finish") fn content_provider_write_mime_type_finish(provider: *ContentProvider, result: *gio::AsyncResult, error: nullable **glib::Error) glib::boolean;
export fn content_provider_connect_content_changed(
	instance: *ContentProvider,
	handler: *fn(instance: *ContentProvider, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"content-changed\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export type ContentSerializer = *opaque;
export @symbol("gdk_content_serializer_get_cancellable") fn content_serializer_get_cancellable(serializer: *ContentSerializer) *gio::Cancellable;
export @symbol("gdk_content_serializer_get_gtype") fn content_serializer_get_gtype(serializer: *ContentSerializer) glib::Type;
export @symbol("gdk_content_serializer_get_mime_type") fn content_serializer_get_mime_type(serializer: *ContentSerializer) *c::char;
export @symbol("gdk_content_serializer_get_output_stream") fn content_serializer_get_output_stream(serializer: *ContentSerializer) *gio::OutputStream;
export @symbol("gdk_content_serializer_get_priority") fn content_serializer_get_priority(serializer: *ContentSerializer) int;
export @symbol("gdk_content_serializer_get_task_data") fn content_serializer_get_task_data(serializer: *ContentSerializer) *opaque;
export @symbol("gdk_content_serializer_get_user_data") fn content_serializer_get_user_data(serializer: *ContentSerializer) *opaque;
export @symbol("gdk_content_serializer_get_value") fn content_serializer_get_value(serializer: *ContentSerializer) *gobject::Value;
export @symbol("gdk_content_serializer_return_error") fn content_serializer_return_error(serializer: *ContentSerializer, error: *glib::Error) void;
export @symbol("gdk_content_serializer_return_success") fn content_serializer_return_success(serializer: *ContentSerializer) void;
export @symbol("gdk_content_serializer_set_task_data") fn content_serializer_set_task_data(serializer: *ContentSerializer, data: *opaque, notify: glib::DestroyNotify) void;
export type CrossingEvent = *opaque;
export @symbol("gdk_crossing_event_get_detail") fn crossing_event_get_detail(event: *Event) NotifyType;
export @symbol("gdk_crossing_event_get_focus") fn crossing_event_get_focus(event: *Event) glib::boolean;
export @symbol("gdk_crossing_event_get_mode") fn crossing_event_get_mode(event: *Event) CrossingMode;
export type Cursor = *opaque;
export @symbol("gdk_cursor_new_from_name") fn cursor_new_from_name(name: *c::char, fallback: *Cursor) *Cursor;
export @symbol("gdk_cursor_new_from_texture") fn cursor_new_from_texture(texture: *Texture, hotspot_x: int, hotspot_y: int, fallback: *Cursor) *Cursor;
export @symbol("gdk_cursor_get_fallback") fn cursor_get_fallback(cursor: *Cursor) *Cursor;
export @symbol("gdk_cursor_get_hotspot_x") fn cursor_get_hotspot_x(cursor: *Cursor) int;
export @symbol("gdk_cursor_get_hotspot_y") fn cursor_get_hotspot_y(cursor: *Cursor) int;
export @symbol("gdk_cursor_get_name") fn cursor_get_name(cursor: *Cursor) *c::char;
export @symbol("gdk_cursor_get_texture") fn cursor_get_texture(cursor: *Cursor) *Texture;
export type DNDEvent = *opaque;
export @symbol("gdk_dnd_event_get_drop") fn dndevent_get_drop(event: *Event) *Drop;
export type DeleteEvent = *opaque;
export type Device = *opaque;
export @symbol("gdk_device_get_caps_lock_state") fn device_get_caps_lock_state(device: *Device) glib::boolean;
export @symbol("gdk_device_get_device_tool") fn device_get_device_tool(device: *Device) *DeviceTool;
export @symbol("gdk_device_get_direction") fn device_get_direction(device: *Device) pango::Direction;
export @symbol("gdk_device_get_display") fn device_get_display(device: *Device) *Display;
export @symbol("gdk_device_get_has_cursor") fn device_get_has_cursor(device: *Device) glib::boolean;
export @symbol("gdk_device_get_modifier_state") fn device_get_modifier_state(device: *Device) ModifierType;
export @symbol("gdk_device_get_name") fn device_get_name(device: *Device) *c::char;
export @symbol("gdk_device_get_num_lock_state") fn device_get_num_lock_state(device: *Device) glib::boolean;
export @symbol("gdk_device_get_num_touches") fn device_get_num_touches(device: *Device) uint;
export @symbol("gdk_device_get_product_id") fn device_get_product_id(device: *Device) *c::char;
export @symbol("gdk_device_get_scroll_lock_state") fn device_get_scroll_lock_state(device: *Device) glib::boolean;
export @symbol("gdk_device_get_seat") fn device_get_seat(device: *Device) *Seat;
export @symbol("gdk_device_get_source") fn device_get_source(device: *Device) InputSource;
export @symbol("gdk_device_get_surface_at_position") fn device_get_surface_at_position(device: *Device, win_x: *f64, win_y: *f64) *Surface;
export @symbol("gdk_device_get_timestamp") fn device_get_timestamp(device: *Device) u32;
export @symbol("gdk_device_get_vendor_id") fn device_get_vendor_id(device: *Device) *c::char;
export @symbol("gdk_device_has_bidi_layouts") fn device_has_bidi_layouts(device: *Device) glib::boolean;
export fn device_connect_changed(
	instance: *Device,
	handler: *fn(instance: *Device, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"changed\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn device_connect_tool_changed(
	instance: *Device,
	handler: *fn(instance: *Device, tool: *DeviceTool, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"tool-changed\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export type DeviceTool = *opaque;
export @symbol("gdk_device_tool_get_axes") fn device_tool_get_axes(tool: *DeviceTool) AxisFlags;
export @symbol("gdk_device_tool_get_hardware_id") fn device_tool_get_hardware_id(tool: *DeviceTool) u64;
export @symbol("gdk_device_tool_get_serial") fn device_tool_get_serial(tool: *DeviceTool) u64;
export @symbol("gdk_device_tool_get_tool_type") fn device_tool_get_tool_type(tool: *DeviceTool) DeviceToolType;
export type Display = *opaque;
export @symbol("gdk_display_beep") fn display_beep(display: *Display) void;
export @symbol("gdk_display_close") fn display_close(display: *Display) void;
export @symbol("gdk_display_create_gl_context") fn display_create_gl_context(self: *Display, error: nullable **glib::Error) *GLContext;
export @symbol("gdk_display_device_is_grabbed") fn display_device_is_grabbed(display: *Display, device: *Device) glib::boolean;
export @symbol("gdk_display_flush") fn display_flush(display: *Display) void;
export @symbol("gdk_display_get_app_launch_context") fn display_get_app_launch_context(display: *Display) *AppLaunchContext;
export @symbol("gdk_display_get_clipboard") fn display_get_clipboard(display: *Display) *Clipboard;
export @symbol("gdk_display_get_default_seat") fn display_get_default_seat(display: *Display) *Seat;
export @symbol("gdk_display_get_monitor_at_surface") fn display_get_monitor_at_surface(display: *Display, surface: *Surface) *Monitor;
export @symbol("gdk_display_get_monitors") fn display_get_monitors(self: *Display) *gio::ListModel;
export @symbol("gdk_display_get_name") fn display_get_name(display: *Display) *c::char;
export @symbol("gdk_display_get_primary_clipboard") fn display_get_primary_clipboard(display: *Display) *Clipboard;
export @symbol("gdk_display_get_setting") fn display_get_setting(display: *Display, name: *c::char, value: *gobject::Value) glib::boolean;
export @symbol("gdk_display_get_startup_notification_id") fn display_get_startup_notification_id(display: *Display) *c::char;
export @symbol("gdk_display_is_closed") fn display_is_closed(display: *Display) glib::boolean;
export @symbol("gdk_display_is_composited") fn display_is_composited(display: *Display) glib::boolean;
export @symbol("gdk_display_is_rgba") fn display_is_rgba(display: *Display) glib::boolean;
export @symbol("gdk_display_list_seats") fn display_list_seats(display: *Display) *glib::List;
export @symbol("gdk_display_map_keycode") fn display_map_keycode(display: *Display, keycode: uint, keys: **KeymapKey, keyvals: **uint, n_entries: *int) glib::boolean;
export @symbol("gdk_display_map_keyval") fn display_map_keyval(display: *Display, keyval: uint, keys: **KeymapKey, n_keys: *int) glib::boolean;
export @symbol("gdk_display_notify_startup_complete") fn display_notify_startup_complete(display: *Display, startup_id: *c::char) void;
export @symbol("gdk_display_prepare_gl") fn display_prepare_gl(self: *Display, error: nullable **glib::Error) glib::boolean;
export @symbol("gdk_display_put_event") fn display_put_event(display: *Display, event: *Event) void;
export @symbol("gdk_display_supports_input_shapes") fn display_supports_input_shapes(display: *Display) glib::boolean;
export @symbol("gdk_display_sync") fn display_sync(display: *Display) void;
export @symbol("gdk_display_translate_key") fn display_translate_key(display: *Display, keycode: uint, state: ModifierType, group: int, keyval: *uint, effective_group: *int, level: *int, consumed: *ModifierType) glib::boolean;
export @symbol("gdk_display_get_default") fn display_get_default() *Display;
export @symbol("gdk_display_open") fn display_open(display_name: *c::char) *Display;
export fn display_connect_closed(
	instance: *Display,
	handler: *fn(instance: *Display, is_error: glib::boolean, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"closed\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn display_connect_opened(
	instance: *Display,
	handler: *fn(instance: *Display, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"opened\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn display_connect_seat_added(
	instance: *Display,
	handler: *fn(instance: *Display, seat: *Seat, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"seat-added\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn display_connect_seat_removed(
	instance: *Display,
	handler: *fn(instance: *Display, seat: *Seat, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"seat-removed\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn display_connect_setting_changed(
	instance: *Display,
	handler: *fn(instance: *Display, setting: *c::char, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"setting-changed\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export type DisplayManager = *opaque;
export @symbol("gdk_display_manager_get_default_display") fn display_manager_get_default_display(manager: *DisplayManager) *Display;
export @symbol("gdk_display_manager_list_displays") fn display_manager_list_displays(manager: *DisplayManager) *glib::SList;
export @symbol("gdk_display_manager_open_display") fn display_manager_open_display(manager: *DisplayManager, name: *c::char) *Display;
export @symbol("gdk_display_manager_set_default_display") fn display_manager_set_default_display(manager: *DisplayManager, display: *Display) void;
export @symbol("gdk_display_manager_get") fn display_manager_get() *DisplayManager;
export fn display_manager_connect_display_opened(
	instance: *DisplayManager,
	handler: *fn(instance: *DisplayManager, display: *Display, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"display-opened\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export type Drag = *opaque;
export @symbol("gdk_drag_drop_done") fn drag_drop_done(drag: *Drag, success: glib::boolean) void;
export @symbol("gdk_drag_get_actions") fn drag_get_actions(drag: *Drag) DragAction;
export @symbol("gdk_drag_get_content") fn drag_get_content(drag: *Drag) *ContentProvider;
export @symbol("gdk_drag_get_device") fn drag_get_device(drag: *Drag) *Device;
export @symbol("gdk_drag_get_display") fn drag_get_display(drag: *Drag) *Display;
export @symbol("gdk_drag_get_drag_surface") fn drag_get_drag_surface(drag: *Drag) *Surface;
export @symbol("gdk_drag_get_formats") fn drag_get_formats(drag: *Drag) *ContentFormats;
export @symbol("gdk_drag_get_selected_action") fn drag_get_selected_action(drag: *Drag) DragAction;
export @symbol("gdk_drag_get_surface") fn drag_get_surface(drag: *Drag) *Surface;
export @symbol("gdk_drag_set_hotspot") fn drag_set_hotspot(drag: *Drag, hot_x: int, hot_y: int) void;
export @symbol("gdk_drag_begin") fn drag_begin(surface: *Surface, device: *Device, content: *ContentProvider, actions: DragAction, dx: f64, dy: f64) *Drag;
export fn drag_connect_cancel(
	instance: *Drag,
	handler: *fn(instance: *Drag, reason: DragCancelReason, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"cancel\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn drag_connect_dnd_finished(
	instance: *Drag,
	handler: *fn(instance: *Drag, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"dnd-finished\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn drag_connect_drop_performed(
	instance: *Drag,
	handler: *fn(instance: *Drag, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"drop-performed\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export type DrawContext = *opaque;
export @symbol("gdk_draw_context_begin_frame") fn draw_context_begin_frame(context: *DrawContext, region: *cairo::Region) void;
export @symbol("gdk_draw_context_end_frame") fn draw_context_end_frame(context: *DrawContext) void;
export @symbol("gdk_draw_context_get_display") fn draw_context_get_display(context: *DrawContext) *Display;
export @symbol("gdk_draw_context_get_frame_region") fn draw_context_get_frame_region(context: *DrawContext) *cairo::Region;
export @symbol("gdk_draw_context_get_surface") fn draw_context_get_surface(context: *DrawContext) *Surface;
export @symbol("gdk_draw_context_is_in_frame") fn draw_context_is_in_frame(context: *DrawContext) glib::boolean;
export type Drop = *opaque;
export @symbol("gdk_drop_finish") fn drop_finish(self: *Drop, action: DragAction) void;
export @symbol("gdk_drop_get_actions") fn drop_get_actions(self: *Drop) DragAction;
export @symbol("gdk_drop_get_device") fn drop_get_device(self: *Drop) *Device;
export @symbol("gdk_drop_get_display") fn drop_get_display(self: *Drop) *Display;
export @symbol("gdk_drop_get_drag") fn drop_get_drag(self: *Drop) *Drag;
export @symbol("gdk_drop_get_formats") fn drop_get_formats(self: *Drop) *ContentFormats;
export @symbol("gdk_drop_get_surface") fn drop_get_surface(self: *Drop) *Surface;
export @symbol("gdk_drop_read_async") fn drop_read_async(self: *Drop, mime_types: **c::char, io_priority: int, cancellable: *gio::Cancellable, callback: gio::AsyncReadyCallback, user_data: *opaque) void;
export @symbol("gdk_drop_read_finish") fn drop_read_finish(self: *Drop, result: *gio::AsyncResult, out_mime_type: **c::char, error: nullable **glib::Error) *gio::InputStream;
export @symbol("gdk_drop_read_value_async") fn drop_read_value_async(self: *Drop, type_: glib::Type, io_priority: int, cancellable: *gio::Cancellable, callback: gio::AsyncReadyCallback, user_data: *opaque) void;
export @symbol("gdk_drop_read_value_finish") fn drop_read_value_finish(self: *Drop, result: *gio::AsyncResult, error: nullable **glib::Error) *gobject::Value;
export @symbol("gdk_drop_status") fn drop_status(self: *Drop, actions: DragAction, preferred: DragAction) void;
export type Event = *opaque;
export @symbol("gdk_events_get_angle") fn event__get_angle(event1: *Event, event2: *Event, angle: *f64) glib::boolean;
export @symbol("gdk_events_get_center") fn event__get_center(event1: *Event, event2: *Event, x: *f64, y: *f64) glib::boolean;
export @symbol("gdk_events_get_distance") fn event__get_distance(event1: *Event, event2: *Event, distance: *f64) glib::boolean;
export @symbol("gdk_event_get_axes") fn event_get_axes(event: *Event, axes: **f64, n_axes: *uint) glib::boolean;
export @symbol("gdk_event_get_axis") fn event_get_axis(event: *Event, axis_use: AxisUse, value: *f64) glib::boolean;
export @symbol("gdk_event_get_device") fn event_get_device(event: *Event) *Device;
export @symbol("gdk_event_get_device_tool") fn event_get_device_tool(event: *Event) *DeviceTool;
export @symbol("gdk_event_get_display") fn event_get_display(event: *Event) *Display;
export @symbol("gdk_event_get_event_sequence") fn event_get_event_sequence(event: *Event) *EventSequence;
export @symbol("gdk_event_get_event_type") fn event_get_event_type(event: *Event) EventType;
export @symbol("gdk_event_get_history") fn event_get_history(event: *Event, out_n_coords: *uint) *TimeCoord;
export @symbol("gdk_event_get_modifier_state") fn event_get_modifier_state(event: *Event) ModifierType;
export @symbol("gdk_event_get_pointer_emulated") fn event_get_pointer_emulated(event: *Event) glib::boolean;
export @symbol("gdk_event_get_position") fn event_get_position(event: *Event, x: *f64, y: *f64) glib::boolean;
export @symbol("gdk_event_get_seat") fn event_get_seat(event: *Event) *Seat;
export @symbol("gdk_event_get_surface") fn event_get_surface(event: *Event) *Surface;
export @symbol("gdk_event_get_time") fn event_get_time(event: *Event) u32;
export @symbol("gdk_event_ref") fn event_ref(event: *Event) *Event;
export @symbol("gdk_event_triggers_context_menu") fn event_triggers_context_menu(event: *Event) glib::boolean;
export @symbol("gdk_event_unref") fn event_unref(event: *Event) void;
export type FocusEvent = *opaque;
export @symbol("gdk_focus_event_get_in") fn focus_event_get_in(event: *Event) glib::boolean;
export type FrameClock = *opaque;
export @symbol("gdk_frame_clock_begin_updating") fn frame_clock_begin_updating(frame_clock: *FrameClock) void;
export @symbol("gdk_frame_clock_end_updating") fn frame_clock_end_updating(frame_clock: *FrameClock) void;
export @symbol("gdk_frame_clock_get_current_timings") fn frame_clock_get_current_timings(frame_clock: *FrameClock) *FrameTimings;
export @symbol("gdk_frame_clock_get_fps") fn frame_clock_get_fps(frame_clock: *FrameClock) f64;
export @symbol("gdk_frame_clock_get_frame_counter") fn frame_clock_get_frame_counter(frame_clock: *FrameClock) i64;
export @symbol("gdk_frame_clock_get_frame_time") fn frame_clock_get_frame_time(frame_clock: *FrameClock) i64;
export @symbol("gdk_frame_clock_get_history_start") fn frame_clock_get_history_start(frame_clock: *FrameClock) i64;
export @symbol("gdk_frame_clock_get_refresh_info") fn frame_clock_get_refresh_info(frame_clock: *FrameClock, base_time: i64, refresh_interval_return: *i64, presentation_time_return: *i64) void;
export @symbol("gdk_frame_clock_get_timings") fn frame_clock_get_timings(frame_clock: *FrameClock, frame_counter: i64) *FrameTimings;
export @symbol("gdk_frame_clock_request_phase") fn frame_clock_request_phase(frame_clock: *FrameClock, phase: FrameClockPhase) void;
export fn frame_clock_connect_after_paint(
	instance: *FrameClock,
	handler: *fn(instance: *FrameClock, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"after-paint\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn frame_clock_connect_before_paint(
	instance: *FrameClock,
	handler: *fn(instance: *FrameClock, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"before-paint\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn frame_clock_connect_flush_events(
	instance: *FrameClock,
	handler: *fn(instance: *FrameClock, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"flush-events\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn frame_clock_connect_layout(
	instance: *FrameClock,
	handler: *fn(instance: *FrameClock, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"layout\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn frame_clock_connect_paint(
	instance: *FrameClock,
	handler: *fn(instance: *FrameClock, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"paint\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn frame_clock_connect_resume_events(
	instance: *FrameClock,
	handler: *fn(instance: *FrameClock, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"resume-events\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn frame_clock_connect_update(
	instance: *FrameClock,
	handler: *fn(instance: *FrameClock, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"update\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export type GLContext = *opaque;
export @symbol("gdk_gl_context_get_allowed_apis") fn glcontext_get_allowed_apis(self: *GLContext) GLAPI;
export @symbol("gdk_gl_context_get_api") fn glcontext_get_api(self: *GLContext) GLAPI;
export @symbol("gdk_gl_context_get_debug_enabled") fn glcontext_get_debug_enabled(context: *GLContext) glib::boolean;
export @symbol("gdk_gl_context_get_display") fn glcontext_get_display(context: *GLContext) *Display;
export @symbol("gdk_gl_context_get_forward_compatible") fn glcontext_get_forward_compatible(context: *GLContext) glib::boolean;
export @symbol("gdk_gl_context_get_required_version") fn glcontext_get_required_version(context: *GLContext, major: *int, minor: *int) void;
export @symbol("gdk_gl_context_get_shared_context") fn glcontext_get_shared_context(context: *GLContext) *GLContext;
export @symbol("gdk_gl_context_get_surface") fn glcontext_get_surface(context: *GLContext) *Surface;
export @symbol("gdk_gl_context_get_use_es") fn glcontext_get_use_es(context: *GLContext) glib::boolean;
export @symbol("gdk_gl_context_get_version") fn glcontext_get_version(context: *GLContext, major: *int, minor: *int) void;
export @symbol("gdk_gl_context_is_legacy") fn glcontext_is_legacy(context: *GLContext) glib::boolean;
export @symbol("gdk_gl_context_is_shared") fn glcontext_is_shared(self: *GLContext, other: *GLContext) glib::boolean;
export @symbol("gdk_gl_context_make_current") fn glcontext_make_current(context: *GLContext) void;
export @symbol("gdk_gl_context_realize") fn glcontext_realize(context: *GLContext, error: nullable **glib::Error) glib::boolean;
export @symbol("gdk_gl_context_set_allowed_apis") fn glcontext_set_allowed_apis(self: *GLContext, apis: GLAPI) void;
export @symbol("gdk_gl_context_set_debug_enabled") fn glcontext_set_debug_enabled(context: *GLContext, enabled: glib::boolean) void;
export @symbol("gdk_gl_context_set_forward_compatible") fn glcontext_set_forward_compatible(context: *GLContext, compatible: glib::boolean) void;
export @symbol("gdk_gl_context_set_required_version") fn glcontext_set_required_version(context: *GLContext, major: int, minor: int) void;
export @symbol("gdk_gl_context_set_use_es") fn glcontext_set_use_es(context: *GLContext, use_es: int) void;
export @symbol("gdk_gl_context_clear_current") fn glcontext_clear_current() void;
export @symbol("gdk_gl_context_get_current") fn glcontext_get_current() *GLContext;
export type GLTexture = *opaque;
export @symbol("gdk_gl_texture_new") fn gltexture_new(context: *GLContext, id: uint, width: int, height: int, destroy: glib::DestroyNotify, data: *opaque) *Texture;
export @symbol("gdk_gl_texture_release") fn gltexture_release(self: *GLTexture) void;
export type GLTextureBuilder = *opaque;
export @symbol("gdk_gl_texture_builder_new") fn gltexture_builder_new() *GLTextureBuilder;
export @symbol("gdk_gl_texture_builder_build") fn gltexture_builder_build(self: *GLTextureBuilder, destroy: glib::DestroyNotify, data: *opaque) *Texture;
export @symbol("gdk_gl_texture_builder_get_context") fn gltexture_builder_get_context(self: *GLTextureBuilder) *GLContext;
export @symbol("gdk_gl_texture_builder_get_format") fn gltexture_builder_get_format(self: *GLTextureBuilder) MemoryFormat;
export @symbol("gdk_gl_texture_builder_get_has_mipmap") fn gltexture_builder_get_has_mipmap(self: *GLTextureBuilder) glib::boolean;
export @symbol("gdk_gl_texture_builder_get_height") fn gltexture_builder_get_height(self: *GLTextureBuilder) int;
export @symbol("gdk_gl_texture_builder_get_id") fn gltexture_builder_get_id(self: *GLTextureBuilder) uint;
export @symbol("gdk_gl_texture_builder_get_sync") fn gltexture_builder_get_sync(self: *GLTextureBuilder) *opaque;
export @symbol("gdk_gl_texture_builder_get_update_region") fn gltexture_builder_get_update_region(self: *GLTextureBuilder) *cairo::Region;
export @symbol("gdk_gl_texture_builder_get_update_texture") fn gltexture_builder_get_update_texture(self: *GLTextureBuilder) *Texture;
export @symbol("gdk_gl_texture_builder_get_width") fn gltexture_builder_get_width(self: *GLTextureBuilder) int;
export @symbol("gdk_gl_texture_builder_set_context") fn gltexture_builder_set_context(self: *GLTextureBuilder, context: *GLContext) void;
export @symbol("gdk_gl_texture_builder_set_format") fn gltexture_builder_set_format(self: *GLTextureBuilder, format: MemoryFormat) void;
export @symbol("gdk_gl_texture_builder_set_has_mipmap") fn gltexture_builder_set_has_mipmap(self: *GLTextureBuilder, has_mipmap: glib::boolean) void;
export @symbol("gdk_gl_texture_builder_set_height") fn gltexture_builder_set_height(self: *GLTextureBuilder, height: int) void;
export @symbol("gdk_gl_texture_builder_set_id") fn gltexture_builder_set_id(self: *GLTextureBuilder, id: uint) void;
export @symbol("gdk_gl_texture_builder_set_sync") fn gltexture_builder_set_sync(self: *GLTextureBuilder, sync: *opaque) void;
export @symbol("gdk_gl_texture_builder_set_update_region") fn gltexture_builder_set_update_region(self: *GLTextureBuilder, region: *cairo::Region) void;
export @symbol("gdk_gl_texture_builder_set_update_texture") fn gltexture_builder_set_update_texture(self: *GLTextureBuilder, texture: *Texture) void;
export @symbol("gdk_gl_texture_builder_set_width") fn gltexture_builder_set_width(self: *GLTextureBuilder, width: int) void;
export type GrabBrokenEvent = *opaque;
export @symbol("gdk_grab_broken_event_get_grab_surface") fn grab_broken_event_get_grab_surface(event: *Event) *Surface;
export @symbol("gdk_grab_broken_event_get_implicit") fn grab_broken_event_get_implicit(event: *Event) glib::boolean;
export type KeyEvent = *opaque;
export @symbol("gdk_key_event_get_consumed_modifiers") fn key_event_get_consumed_modifiers(event: *Event) ModifierType;
export @symbol("gdk_key_event_get_keycode") fn key_event_get_keycode(event: *Event) uint;
export @symbol("gdk_key_event_get_keyval") fn key_event_get_keyval(event: *Event) uint;
export @symbol("gdk_key_event_get_layout") fn key_event_get_layout(event: *Event) uint;
export @symbol("gdk_key_event_get_level") fn key_event_get_level(event: *Event) uint;
export @symbol("gdk_key_event_get_match") fn key_event_get_match(event: *Event, keyval: *uint, modifiers: *ModifierType) glib::boolean;
export @symbol("gdk_key_event_is_modifier") fn key_event_is_modifier(event: *Event) glib::boolean;
export @symbol("gdk_key_event_matches") fn key_event_matches(event: *Event, keyval: uint, modifiers: ModifierType) KeyMatch;
export type MemoryTexture = *opaque;
export @symbol("gdk_memory_texture_new") fn memory_texture_new(width: int, height: int, format: MemoryFormat, bytes: *glib::Bytes, stride: size) *Texture;
export type Monitor = *opaque;
export @symbol("gdk_monitor_get_connector") fn monitor_get_connector(monitor: *Monitor) *c::char;
export @symbol("gdk_monitor_get_description") fn monitor_get_description(monitor: *Monitor) *c::char;
export @symbol("gdk_monitor_get_display") fn monitor_get_display(monitor: *Monitor) *Display;
export @symbol("gdk_monitor_get_geometry") fn monitor_get_geometry(monitor: *Monitor, geometry: *Rectangle) void;
export @symbol("gdk_monitor_get_height_mm") fn monitor_get_height_mm(monitor: *Monitor) int;
export @symbol("gdk_monitor_get_manufacturer") fn monitor_get_manufacturer(monitor: *Monitor) *c::char;
export @symbol("gdk_monitor_get_model") fn monitor_get_model(monitor: *Monitor) *c::char;
export @symbol("gdk_monitor_get_refresh_rate") fn monitor_get_refresh_rate(monitor: *Monitor) int;
export @symbol("gdk_monitor_get_scale_factor") fn monitor_get_scale_factor(monitor: *Monitor) int;
export @symbol("gdk_monitor_get_subpixel_layout") fn monitor_get_subpixel_layout(monitor: *Monitor) SubpixelLayout;
export @symbol("gdk_monitor_get_width_mm") fn monitor_get_width_mm(monitor: *Monitor) int;
export @symbol("gdk_monitor_is_valid") fn monitor_is_valid(monitor: *Monitor) glib::boolean;
export fn monitor_connect_invalidate(
	instance: *Monitor,
	handler: *fn(instance: *Monitor, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"invalidate\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export type MotionEvent = *opaque;
export type PadEvent = *opaque;
export @symbol("gdk_pad_event_get_axis_value") fn pad_event_get_axis_value(event: *Event, index: *uint, value: *f64) void;
export @symbol("gdk_pad_event_get_button") fn pad_event_get_button(event: *Event) uint;
export @symbol("gdk_pad_event_get_group_mode") fn pad_event_get_group_mode(event: *Event, group: *uint, mode: *uint) void;
export type ProximityEvent = *opaque;
export type ScrollEvent = *opaque;
export @symbol("gdk_scroll_event_get_deltas") fn scroll_event_get_deltas(event: *Event, delta_x: *f64, delta_y: *f64) void;
export @symbol("gdk_scroll_event_get_direction") fn scroll_event_get_direction(event: *Event) ScrollDirection;
export @symbol("gdk_scroll_event_get_unit") fn scroll_event_get_unit(event: *Event) ScrollUnit;
export @symbol("gdk_scroll_event_is_stop") fn scroll_event_is_stop(event: *Event) glib::boolean;
export type Seat = struct {
	parent_instance: gobject::Object,
};
export @symbol("gdk_seat_get_capabilities") fn seat_get_capabilities(seat: *Seat) SeatCapabilities;
export @symbol("gdk_seat_get_devices") fn seat_get_devices(seat: *Seat, capabilities: SeatCapabilities) *glib::List;
export @symbol("gdk_seat_get_display") fn seat_get_display(seat: *Seat) *Display;
export @symbol("gdk_seat_get_keyboard") fn seat_get_keyboard(seat: *Seat) *Device;
export @symbol("gdk_seat_get_pointer") fn seat_get_pointer(seat: *Seat) *Device;
export @symbol("gdk_seat_get_tools") fn seat_get_tools(seat: *Seat) *glib::List;
export fn seat_connect_device_added(
	instance: *Seat,
	handler: *fn(instance: *Seat, device: *cairo::Device, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"device-added\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn seat_connect_device_removed(
	instance: *Seat,
	handler: *fn(instance: *Seat, device: *cairo::Device, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"device-removed\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn seat_connect_tool_added(
	instance: *Seat,
	handler: *fn(instance: *Seat, tool: *DeviceTool, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"tool-added\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn seat_connect_tool_removed(
	instance: *Seat,
	handler: *fn(instance: *Seat, tool: *DeviceTool, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"tool-removed\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export type Snapshot = *opaque;
export type Surface = *opaque;
export @symbol("gdk_surface_new_popup") fn surface_new_popup(parent: *Surface, autohide: glib::boolean) *Surface;
export @symbol("gdk_surface_new_toplevel") fn surface_new_toplevel(display: *Display) *Surface;
export @symbol("gdk_surface_beep") fn surface_beep(surface: *Surface) void;
export @symbol("gdk_surface_create_cairo_context") fn surface_create_cairo_context(surface: *Surface) *CairoContext;
export @symbol("gdk_surface_create_gl_context") fn surface_create_gl_context(surface: *Surface, error: nullable **glib::Error) *GLContext;
export @symbol("gdk_surface_create_similar_surface") fn surface_create_similar_surface(surface: *Surface, content: cairo::Content, width: int, height: int) *cairo::Surface;
export @symbol("gdk_surface_create_vulkan_context") fn surface_create_vulkan_context(surface: *Surface, error: nullable **glib::Error) *VulkanContext;
export @symbol("gdk_surface_destroy") fn surface_destroy(surface: *Surface) void;
export @symbol("gdk_surface_get_cursor") fn surface_get_cursor(surface: *Surface) *Cursor;
export @symbol("gdk_surface_get_device_cursor") fn surface_get_device_cursor(surface: *Surface, device: *Device) *Cursor;
export @symbol("gdk_surface_get_device_position") fn surface_get_device_position(surface: *Surface, device: *Device, x: *f64, y: *f64, mask: *ModifierType) glib::boolean;
export @symbol("gdk_surface_get_display") fn surface_get_display(surface: *Surface) *Display;
export @symbol("gdk_surface_get_frame_clock") fn surface_get_frame_clock(surface: *Surface) *FrameClock;
export @symbol("gdk_surface_get_height") fn surface_get_height(surface: *Surface) int;
export @symbol("gdk_surface_get_mapped") fn surface_get_mapped(surface: *Surface) glib::boolean;
export @symbol("gdk_surface_get_scale") fn surface_get_scale(surface: *Surface) f64;
export @symbol("gdk_surface_get_scale_factor") fn surface_get_scale_factor(surface: *Surface) int;
export @symbol("gdk_surface_get_width") fn surface_get_width(surface: *Surface) int;
export @symbol("gdk_surface_hide") fn surface_hide(surface: *Surface) void;
export @symbol("gdk_surface_is_destroyed") fn surface_is_destroyed(surface: *Surface) glib::boolean;
export @symbol("gdk_surface_queue_render") fn surface_queue_render(surface: *Surface) void;
export @symbol("gdk_surface_request_layout") fn surface_request_layout(surface: *Surface) void;
export @symbol("gdk_surface_set_cursor") fn surface_set_cursor(surface: *Surface, cursor: *Cursor) void;
export @symbol("gdk_surface_set_device_cursor") fn surface_set_device_cursor(surface: *Surface, device: *Device, cursor: *Cursor) void;
export @symbol("gdk_surface_set_input_region") fn surface_set_input_region(surface: *Surface, region: *cairo::Region) void;
export @symbol("gdk_surface_set_opaque_region") fn surface_set_opaque_region(surface: *Surface, region: *cairo::Region) void;
export @symbol("gdk_surface_translate_coordinates") fn surface_translate_coordinates(from: *Surface, to: *Surface, x: *f64, y: *f64) glib::boolean;
export fn surface_connect_enter_monitor(
	instance: *Surface,
	handler: *fn(instance: *Surface, monitor: *Monitor, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"enter-monitor\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn surface_connect_event(
	instance: *Surface,
	handler: *fn(instance: *Surface, event: *opaque, data: *opaque) glib::boolean,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"event\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn surface_connect_layout(
	instance: *Surface,
	handler: *fn(instance: *Surface, width: int, height: int, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"layout\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn surface_connect_leave_monitor(
	instance: *Surface,
	handler: *fn(instance: *Surface, monitor: *Monitor, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"leave-monitor\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn surface_connect_render(
	instance: *Surface,
	handler: *fn(instance: *Surface, region: cairo::Region, data: *opaque) glib::boolean,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"render\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export type Texture = *opaque;
export @symbol("gdk_texture_new_for_pixbuf") fn texture_new_for_pixbuf(pixbuf: *gdkpixbuf::Pixbuf) *Texture;
export @symbol("gdk_texture_new_from_bytes") fn texture_new_from_bytes(bytes: *glib::Bytes, error: nullable **glib::Error) *Texture;
export @symbol("gdk_texture_new_from_file") fn texture_new_from_file(file: *gio::File, error: nullable **glib::Error) *Texture;
export @symbol("gdk_texture_new_from_filename") fn texture_new_from_filename(path: *c::char, error: nullable **glib::Error) *Texture;
export @symbol("gdk_texture_new_from_resource") fn texture_new_from_resource(resource_path: *c::char) *Texture;
export @symbol("gdk_texture_download") fn texture_download(texture: *Texture, data: *c::uchar, stride: size) void;
export @symbol("gdk_texture_get_format") fn texture_get_format(self: *Texture) MemoryFormat;
export @symbol("gdk_texture_get_height") fn texture_get_height(texture: *Texture) int;
export @symbol("gdk_texture_get_width") fn texture_get_width(texture: *Texture) int;
export @symbol("gdk_texture_save_to_png") fn texture_save_to_png(texture: *Texture, filename: *c::char) glib::boolean;
export @symbol("gdk_texture_save_to_png_bytes") fn texture_save_to_png_bytes(texture: *Texture) *glib::Bytes;
export @symbol("gdk_texture_save_to_tiff") fn texture_save_to_tiff(texture: *Texture, filename: *c::char) glib::boolean;
export @symbol("gdk_texture_save_to_tiff_bytes") fn texture_save_to_tiff_bytes(texture: *Texture) *glib::Bytes;
export type TouchEvent = *opaque;
export @symbol("gdk_touch_event_get_emulating_pointer") fn touch_event_get_emulating_pointer(event: *Event) glib::boolean;
export type TouchpadEvent = *opaque;
export @symbol("gdk_touchpad_event_get_deltas") fn touchpad_event_get_deltas(event: *Event, dx: *f64, dy: *f64) void;
export @symbol("gdk_touchpad_event_get_gesture_phase") fn touchpad_event_get_gesture_phase(event: *Event) TouchpadGesturePhase;
export @symbol("gdk_touchpad_event_get_n_fingers") fn touchpad_event_get_n_fingers(event: *Event) uint;
export @symbol("gdk_touchpad_event_get_pinch_angle_delta") fn touchpad_event_get_pinch_angle_delta(event: *Event) f64;
export @symbol("gdk_touchpad_event_get_pinch_scale") fn touchpad_event_get_pinch_scale(event: *Event) f64;
export type VulkanContext = *opaque;
export fn vulkan_context_connect_images_updated(
	instance: *VulkanContext,
	handler: *fn(instance: *VulkanContext, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"images-updated\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export type DevicePad = *opaque;
export @symbol("gdk_device_pad_get_feature_group") fn device_pad_get_feature_group(pad: *DevicePad, feature: DevicePadFeature, feature_idx: int) int;
export @symbol("gdk_device_pad_get_group_n_modes") fn device_pad_get_group_n_modes(pad: *DevicePad, group_idx: int) int;
export @symbol("gdk_device_pad_get_n_features") fn device_pad_get_n_features(pad: *DevicePad, feature: DevicePadFeature) int;
export @symbol("gdk_device_pad_get_n_groups") fn device_pad_get_n_groups(pad: *DevicePad) int;
export type DragSurface = *opaque;
export @symbol("gdk_drag_surface_present") fn drag_surface_present(drag_surface: *DragSurface, width: int, height: int) glib::boolean;
export fn drag_surface_connect_compute_size(
	instance: *DragSurface,
	handler: *fn(instance: *DragSurface, size_: *DragSurfaceSize, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"compute-size\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export type Paintable = *opaque;
export @symbol("gdk_paintable_compute_concrete_size") fn paintable_compute_concrete_size(paintable: *Paintable, specified_width: f64, specified_height: f64, default_width: f64, default_height: f64, concrete_width: *f64, concrete_height: *f64) void;
export @symbol("gdk_paintable_get_current_image") fn paintable_get_current_image(paintable: *Paintable) *Paintable;
export @symbol("gdk_paintable_get_flags") fn paintable_get_flags(paintable: *Paintable) PaintableFlags;
export @symbol("gdk_paintable_get_intrinsic_aspect_ratio") fn paintable_get_intrinsic_aspect_ratio(paintable: *Paintable) f64;
export @symbol("gdk_paintable_get_intrinsic_height") fn paintable_get_intrinsic_height(paintable: *Paintable) int;
export @symbol("gdk_paintable_get_intrinsic_width") fn paintable_get_intrinsic_width(paintable: *Paintable) int;
export @symbol("gdk_paintable_invalidate_contents") fn paintable_invalidate_contents(paintable: *Paintable) void;
export @symbol("gdk_paintable_invalidate_size") fn paintable_invalidate_size(paintable: *Paintable) void;
export @symbol("gdk_paintable_snapshot") fn paintable_snapshot(paintable: *Paintable, snapshot: *Snapshot, width: f64, height: f64) void;
export @symbol("gdk_paintable_new_empty") fn paintable_new_empty(intrinsic_width: int, intrinsic_height: int) *Paintable;
export fn paintable_connect_invalidate_contents(
	instance: *Paintable,
	handler: *fn(instance: *Paintable, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"invalidate-contents\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn paintable_connect_invalidate_size(
	instance: *Paintable,
	handler: *fn(instance: *Paintable, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"invalidate-size\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export type Popup = *opaque;
export @symbol("gdk_popup_get_autohide") fn popup_get_autohide(popup: *Popup) glib::boolean;
export @symbol("gdk_popup_get_parent") fn popup_get_parent(popup: *Popup) *Surface;
export @symbol("gdk_popup_get_position_x") fn popup_get_position_x(popup: *Popup) int;
export @symbol("gdk_popup_get_position_y") fn popup_get_position_y(popup: *Popup) int;
export @symbol("gdk_popup_get_rect_anchor") fn popup_get_rect_anchor(popup: *Popup) Gravity;
export @symbol("gdk_popup_get_surface_anchor") fn popup_get_surface_anchor(popup: *Popup) Gravity;
export @symbol("gdk_popup_present") fn popup_present(popup: *Popup, width: int, height: int, layout: *PopupLayout) glib::boolean;
export type Toplevel = *opaque;
export @symbol("gdk_toplevel_begin_move") fn toplevel_begin_move(toplevel: *Toplevel, device: *Device, button: int, x: f64, y: f64, timestamp: u32) void;
export @symbol("gdk_toplevel_begin_resize") fn toplevel_begin_resize(toplevel: *Toplevel, edge: SurfaceEdge, device: *Device, button: int, x: f64, y: f64, timestamp: u32) void;
export @symbol("gdk_toplevel_focus") fn toplevel_focus(toplevel: *Toplevel, timestamp: u32) void;
export @symbol("gdk_toplevel_get_state") fn toplevel_get_state(toplevel: *Toplevel) ToplevelState;
export @symbol("gdk_toplevel_inhibit_system_shortcuts") fn toplevel_inhibit_system_shortcuts(toplevel: *Toplevel, event: *Event) void;
export @symbol("gdk_toplevel_lower") fn toplevel_lower(toplevel: *Toplevel) glib::boolean;
export @symbol("gdk_toplevel_minimize") fn toplevel_minimize(toplevel: *Toplevel) glib::boolean;
export @symbol("gdk_toplevel_present") fn toplevel_present(toplevel: *Toplevel, layout: *ToplevelLayout) void;
export @symbol("gdk_toplevel_restore_system_shortcuts") fn toplevel_restore_system_shortcuts(toplevel: *Toplevel) void;
export @symbol("gdk_toplevel_set_decorated") fn toplevel_set_decorated(toplevel: *Toplevel, decorated: glib::boolean) void;
export @symbol("gdk_toplevel_set_deletable") fn toplevel_set_deletable(toplevel: *Toplevel, deletable: glib::boolean) void;
export @symbol("gdk_toplevel_set_icon_list") fn toplevel_set_icon_list(toplevel: *Toplevel, surfaces: *glib::List) void;
export @symbol("gdk_toplevel_set_modal") fn toplevel_set_modal(toplevel: *Toplevel, modal: glib::boolean) void;
export @symbol("gdk_toplevel_set_startup_id") fn toplevel_set_startup_id(toplevel: *Toplevel, startup_id: *c::char) void;
export @symbol("gdk_toplevel_set_title") fn toplevel_set_title(toplevel: *Toplevel, title: *c::char) void;
export @symbol("gdk_toplevel_set_transient_for") fn toplevel_set_transient_for(toplevel: *Toplevel, parent: *Surface) void;
export @symbol("gdk_toplevel_show_window_menu") fn toplevel_show_window_menu(toplevel: *Toplevel, event: *Event) glib::boolean;
export @symbol("gdk_toplevel_supports_edge_constraints") fn toplevel_supports_edge_constraints(toplevel: *Toplevel) glib::boolean;
export @symbol("gdk_toplevel_titlebar_gesture") fn toplevel_titlebar_gesture(toplevel: *Toplevel, gesture: TitlebarGesture) glib::boolean;
export fn toplevel_connect_compute_size(
	instance: *Toplevel,
	handler: *fn(instance: *Toplevel, size_: *ToplevelSize, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"compute-size\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export type ContentFormats = *opaque;
export @symbol("gdk_content_formats_new") fn content_formats_new(mime_types: **c::char, n_mime_types: uint) *ContentFormats;
export @symbol("gdk_content_formats_new_for_gtype") fn content_formats_new_for_gtype(type_: glib::Type) *ContentFormats;
export @symbol("gdk_content_formats_contain_gtype") fn content_formats_contain_gtype(formats: *ContentFormats, type_: glib::Type) glib::boolean;
export @symbol("gdk_content_formats_contain_mime_type") fn content_formats_contain_mime_type(formats: *ContentFormats, mime_type: *c::char) glib::boolean;
export @symbol("gdk_content_formats_get_gtypes") fn content_formats_get_gtypes(formats: *ContentFormats, n_gtypes: *size) *glib::Type;
export @symbol("gdk_content_formats_get_mime_types") fn content_formats_get_mime_types(formats: *ContentFormats, n_mime_types: *size) **c::char;
export @symbol("gdk_content_formats_match") fn content_formats_match(first: *ContentFormats, second: *ContentFormats) glib::boolean;
export @symbol("gdk_content_formats_match_gtype") fn content_formats_match_gtype(first: *ContentFormats, second: *ContentFormats) glib::Type;
export @symbol("gdk_content_formats_match_mime_type") fn content_formats_match_mime_type(first: *ContentFormats, second: *ContentFormats) *c::char;
export @symbol("gdk_content_formats_print") fn content_formats_print(formats: *ContentFormats, string: *glib::String) void;
export @symbol("gdk_content_formats_ref") fn content_formats_ref(formats: *ContentFormats) *ContentFormats;
export @symbol("gdk_content_formats_to_string") fn content_formats_to_string(formats: *ContentFormats) *c::char;
export @symbol("gdk_content_formats_union") fn content_formats_union(first: *ContentFormats, second: *ContentFormats) *ContentFormats;
export @symbol("gdk_content_formats_union_deserialize_gtypes") fn content_formats_union_deserialize_gtypes(formats: *ContentFormats) *ContentFormats;
export @symbol("gdk_content_formats_union_deserialize_mime_types") fn content_formats_union_deserialize_mime_types(formats: *ContentFormats) *ContentFormats;
export @symbol("gdk_content_formats_union_serialize_gtypes") fn content_formats_union_serialize_gtypes(formats: *ContentFormats) *ContentFormats;
export @symbol("gdk_content_formats_union_serialize_mime_types") fn content_formats_union_serialize_mime_types(formats: *ContentFormats) *ContentFormats;
export @symbol("gdk_content_formats_unref") fn content_formats_unref(formats: *ContentFormats) void;
export @symbol("gdk_content_formats_parse") fn content_formats_parse(string: *c::char) *ContentFormats;
export type ContentFormatsBuilder = *opaque;
export @symbol("gdk_content_formats_builder_new") fn content_formats_builder_new() *ContentFormatsBuilder;
export @symbol("gdk_content_formats_builder_add_formats") fn content_formats_builder_add_formats(builder: *ContentFormatsBuilder, formats: *ContentFormats) void;
export @symbol("gdk_content_formats_builder_add_gtype") fn content_formats_builder_add_gtype(builder: *ContentFormatsBuilder, type_: glib::Type) void;
export @symbol("gdk_content_formats_builder_add_mime_type") fn content_formats_builder_add_mime_type(builder: *ContentFormatsBuilder, mime_type: *c::char) void;
export @symbol("gdk_content_formats_builder_free_to_formats") fn content_formats_builder_free_to_formats(builder: *ContentFormatsBuilder) *ContentFormats;
export @symbol("gdk_content_formats_builder_ref") fn content_formats_builder_ref(builder: *ContentFormatsBuilder) *ContentFormatsBuilder;
export @symbol("gdk_content_formats_builder_to_formats") fn content_formats_builder_to_formats(builder: *ContentFormatsBuilder) *ContentFormats;
export @symbol("gdk_content_formats_builder_unref") fn content_formats_builder_unref(builder: *ContentFormatsBuilder) void;
export type ContentProviderClass = struct {
	parent_class: gobject::ObjectClass,
	content_changed: *fn(provider: *ContentProvider) void,
	attach_clipboard: *fn(provider: *ContentProvider, clipboard: *Clipboard) void,
	detach_clipboard: *fn(provider: *ContentProvider, clipboard: *Clipboard) void,
	ref_formats: *fn(provider: *ContentProvider) *ContentFormats,
	ref_storable_formats: *fn(provider: *ContentProvider) *ContentFormats,
	write_mime_type_async: *fn(provider: *ContentProvider, mime_type: *c::char, stream: *gio::OutputStream, io_priority: int, cancellable: *gio::Cancellable, callback: gio::AsyncReadyCallback, user_data: *opaque) void,
	write_mime_type_finish: *fn(provider: *ContentProvider, result: *gio::AsyncResult, error: nullable **glib::Error) glib::boolean,
	get_value: *fn(provider: *ContentProvider, value: *gobject::Value, error: nullable **glib::Error) glib::boolean,
	padding: [8]*opaque,
};
export type DevicePadInterface = *opaque;
export type DragSurfaceInterface = *opaque;
export type DragSurfaceSize = *opaque;
export @symbol("gdk_drag_surface_size_set_size") fn drag_surface_size_set_size(size_: *DragSurfaceSize, width: int, height: int) void;
export type EventSequence = *opaque;
export type FileList = *opaque;
export @symbol("gdk_file_list_new_from_array") fn file_list_new_from_array(files: **gio::File, n_files: size) *FileList;
export @symbol("gdk_file_list_new_from_list") fn file_list_new_from_list(files: *glib::SList) *FileList;
export @symbol("gdk_file_list_get_files") fn file_list_get_files(file_list: *FileList) *glib::SList;
export type FrameClockClass = *opaque;
export type FrameClockPrivate = *opaque;
export type FrameTimings = *opaque;
export @symbol("gdk_frame_timings_get_complete") fn frame_timings_get_complete(timings: *FrameTimings) glib::boolean;
export @symbol("gdk_frame_timings_get_frame_counter") fn frame_timings_get_frame_counter(timings: *FrameTimings) i64;
export @symbol("gdk_frame_timings_get_frame_time") fn frame_timings_get_frame_time(timings: *FrameTimings) i64;
export @symbol("gdk_frame_timings_get_predicted_presentation_time") fn frame_timings_get_predicted_presentation_time(timings: *FrameTimings) i64;
export @symbol("gdk_frame_timings_get_presentation_time") fn frame_timings_get_presentation_time(timings: *FrameTimings) i64;
export @symbol("gdk_frame_timings_get_refresh_interval") fn frame_timings_get_refresh_interval(timings: *FrameTimings) i64;
export @symbol("gdk_frame_timings_ref") fn frame_timings_ref(timings: *FrameTimings) *FrameTimings;
export @symbol("gdk_frame_timings_unref") fn frame_timings_unref(timings: *FrameTimings) void;
export type GLTextureBuilderClass = *opaque;
export type GLTextureClass = *opaque;
export type KeymapKey = struct {
	keycode: uint,
	group: int,
	level: int,
};
export type MemoryTextureClass = *opaque;
export type MonitorClass = *opaque;
export type PaintableInterface = struct {
	g_iface: gobject::TypeInterface,
	snapshot: *fn(paintable: *Paintable, snapshot: *Snapshot, width: f64, height: f64) void,
	get_current_image: *fn(paintable: *Paintable) *Paintable,
	get_flags: *fn(paintable: *Paintable) PaintableFlags,
	get_intrinsic_width: *fn(paintable: *Paintable) int,
	get_intrinsic_height: *fn(paintable: *Paintable) int,
	get_intrinsic_aspect_ratio: *fn(paintable: *Paintable) f64,
};
export type PopupInterface = *opaque;
export type PopupLayout = *opaque;
export @symbol("gdk_popup_layout_new") fn popup_layout_new(anchor_rect: *Rectangle, rect_anchor: Gravity, surface_anchor: Gravity) *PopupLayout;
export @symbol("gdk_popup_layout_copy") fn popup_layout_copy(layout: *PopupLayout) *PopupLayout;
export @symbol("gdk_popup_layout_equal") fn popup_layout_equal(layout: *PopupLayout, other: *PopupLayout) glib::boolean;
export @symbol("gdk_popup_layout_get_anchor_hints") fn popup_layout_get_anchor_hints(layout: *PopupLayout) AnchorHints;
export @symbol("gdk_popup_layout_get_anchor_rect") fn popup_layout_get_anchor_rect(layout: *PopupLayout) *Rectangle;
export @symbol("gdk_popup_layout_get_offset") fn popup_layout_get_offset(layout: *PopupLayout, dx: *int, dy: *int) void;
export @symbol("gdk_popup_layout_get_rect_anchor") fn popup_layout_get_rect_anchor(layout: *PopupLayout) Gravity;
export @symbol("gdk_popup_layout_get_shadow_width") fn popup_layout_get_shadow_width(layout: *PopupLayout, left: *int, right: *int, top: *int, bottom: *int) void;
export @symbol("gdk_popup_layout_get_surface_anchor") fn popup_layout_get_surface_anchor(layout: *PopupLayout) Gravity;
export @symbol("gdk_popup_layout_ref") fn popup_layout_ref(layout: *PopupLayout) *PopupLayout;
export @symbol("gdk_popup_layout_set_anchor_hints") fn popup_layout_set_anchor_hints(layout: *PopupLayout, anchor_hints: AnchorHints) void;
export @symbol("gdk_popup_layout_set_anchor_rect") fn popup_layout_set_anchor_rect(layout: *PopupLayout, anchor_rect: *Rectangle) void;
export @symbol("gdk_popup_layout_set_offset") fn popup_layout_set_offset(layout: *PopupLayout, dx: int, dy: int) void;
export @symbol("gdk_popup_layout_set_rect_anchor") fn popup_layout_set_rect_anchor(layout: *PopupLayout, anchor: Gravity) void;
export @symbol("gdk_popup_layout_set_shadow_width") fn popup_layout_set_shadow_width(layout: *PopupLayout, left: int, right: int, top: int, bottom: int) void;
export @symbol("gdk_popup_layout_set_surface_anchor") fn popup_layout_set_surface_anchor(layout: *PopupLayout, anchor: Gravity) void;
export @symbol("gdk_popup_layout_unref") fn popup_layout_unref(layout: *PopupLayout) void;
export type RGBA = struct {
	red: f32,
	green: f32,
	blue: f32,
	alpha: f32,
};
export @symbol("gdk_rgba_copy") fn rgba_copy(rgba: *RGBA) *RGBA;
export @symbol("gdk_rgba_equal") fn rgba_equal(p1: *opaque, p2: *opaque) glib::boolean;
export @symbol("gdk_rgba_free") fn rgba_free(rgba: *RGBA) void;
export @symbol("gdk_rgba_hash") fn rgba_hash(p: *opaque) uint;
export @symbol("gdk_rgba_is_clear") fn rgba_is_clear(rgba: *RGBA) glib::boolean;
export @symbol("gdk_rgba_is_opaque") fn rgba_is_opaque(rgba: *RGBA) glib::boolean;
export @symbol("gdk_rgba_parse") fn rgba_parse(rgba: *RGBA, spec: *c::char) glib::boolean;
export @symbol("gdk_rgba_to_string") fn rgba_to_string(rgba: *RGBA) *c::char;
export type Rectangle = struct {
	x: int,
	y: int,
	width: int,
	height: int,
};
export @symbol("gdk_rectangle_contains_point") fn rectangle_contains_point(rect: *Rectangle, x: int, y: int) glib::boolean;
export @symbol("gdk_rectangle_equal") fn rectangle_equal(rect1: *Rectangle, rect2: *Rectangle) glib::boolean;
export @symbol("gdk_rectangle_intersect") fn rectangle_intersect(src1: *Rectangle, src2: *Rectangle, dest: *Rectangle) glib::boolean;
export @symbol("gdk_rectangle_union") fn rectangle_union(src1: *Rectangle, src2: *Rectangle, dest: *Rectangle) void;
export type SnapshotClass = *opaque;
export type SurfaceClass = *opaque;
export type TextureClass = *opaque;
export type TextureDownloader = *opaque;
export @symbol("gdk_texture_downloader_new") fn texture_downloader_new(texture: *Texture) *TextureDownloader;
export @symbol("gdk_texture_downloader_copy") fn texture_downloader_copy(self: *TextureDownloader) *TextureDownloader;
export @symbol("gdk_texture_downloader_download_bytes") fn texture_downloader_download_bytes(self: *TextureDownloader, out_stride: *size) *glib::Bytes;
export @symbol("gdk_texture_downloader_download_into") fn texture_downloader_download_into(self: *TextureDownloader, data: *c::uchar, stride: size) void;
export @symbol("gdk_texture_downloader_free") fn texture_downloader_free(self: *TextureDownloader) void;
export @symbol("gdk_texture_downloader_get_format") fn texture_downloader_get_format(self: *TextureDownloader) MemoryFormat;
export @symbol("gdk_texture_downloader_get_texture") fn texture_downloader_get_texture(self: *TextureDownloader) *Texture;
export @symbol("gdk_texture_downloader_set_format") fn texture_downloader_set_format(self: *TextureDownloader, format: MemoryFormat) void;
export @symbol("gdk_texture_downloader_set_texture") fn texture_downloader_set_texture(self: *TextureDownloader, texture: *Texture) void;
export type TimeCoord = struct {
	time: u32,
	flags: AxisFlags,
	axes: [12]f64,
};
export type ToplevelInterface = *opaque;
export type ToplevelLayout = *opaque;
export @symbol("gdk_toplevel_layout_new") fn toplevel_layout_new() *ToplevelLayout;
export @symbol("gdk_toplevel_layout_copy") fn toplevel_layout_copy(layout: *ToplevelLayout) *ToplevelLayout;
export @symbol("gdk_toplevel_layout_equal") fn toplevel_layout_equal(layout: *ToplevelLayout, other: *ToplevelLayout) glib::boolean;
export @symbol("gdk_toplevel_layout_get_fullscreen") fn toplevel_layout_get_fullscreen(layout: *ToplevelLayout, fullscreen: *glib::boolean) glib::boolean;
export @symbol("gdk_toplevel_layout_get_fullscreen_monitor") fn toplevel_layout_get_fullscreen_monitor(layout: *ToplevelLayout) *Monitor;
export @symbol("gdk_toplevel_layout_get_maximized") fn toplevel_layout_get_maximized(layout: *ToplevelLayout, maximized: *glib::boolean) glib::boolean;
export @symbol("gdk_toplevel_layout_get_resizable") fn toplevel_layout_get_resizable(layout: *ToplevelLayout) glib::boolean;
export @symbol("gdk_toplevel_layout_ref") fn toplevel_layout_ref(layout: *ToplevelLayout) *ToplevelLayout;
export @symbol("gdk_toplevel_layout_set_fullscreen") fn toplevel_layout_set_fullscreen(layout: *ToplevelLayout, fullscreen: glib::boolean, monitor: *Monitor) void;
export @symbol("gdk_toplevel_layout_set_maximized") fn toplevel_layout_set_maximized(layout: *ToplevelLayout, maximized: glib::boolean) void;
export @symbol("gdk_toplevel_layout_set_resizable") fn toplevel_layout_set_resizable(layout: *ToplevelLayout, resizable: glib::boolean) void;
export @symbol("gdk_toplevel_layout_unref") fn toplevel_layout_unref(layout: *ToplevelLayout) void;
export type ToplevelSize = *opaque;
export @symbol("gdk_toplevel_size_get_bounds") fn toplevel_size_get_bounds(size_: *ToplevelSize, bounds_width: *int, bounds_height: *int) void;
export @symbol("gdk_toplevel_size_set_min_size") fn toplevel_size_set_min_size(size_: *ToplevelSize, min_width: int, min_height: int) void;
export @symbol("gdk_toplevel_size_set_shadow_width") fn toplevel_size_set_shadow_width(size_: *ToplevelSize, left: int, right: int, top: int, bottom: int) void;
export @symbol("gdk_toplevel_size_set_size") fn toplevel_size_set_size(size_: *ToplevelSize, width: int, height: int) void;
export type AxisUse = enum uint {
	IGNORE = 0,
	X = 1,
	Y = 2,
	DELTA_X = 3,
	DELTA_Y = 4,
	PRESSURE = 5,
	XTILT = 6,
	YTILT = 7,
	WHEEL = 8,
	DISTANCE = 9,
	ROTATION = 10,
	SLIDER = 11,
	LAST = 12,
};
export type CrossingMode = enum uint {
	NORMAL = 0,
	GRAB = 1,
	UNGRAB = 2,
	GTK_GRAB = 3,
	GTK_UNGRAB = 4,
	STATE_CHANGED = 5,
	TOUCH_BEGIN = 6,
	TOUCH_END = 7,
	DEVICE_SWITCH = 8,
};
export type DevicePadFeature = enum uint {
	BUTTON = 0,
	RING = 1,
	STRIP = 2,
};
export type DeviceToolType = enum uint {
	UNKNOWN = 0,
	PEN = 1,
	ERASER = 2,
	BRUSH = 3,
	PENCIL = 4,
	AIRBRUSH = 5,
	MOUSE = 6,
	LENS = 7,
};
export type DragCancelReason = enum uint {
	NO_TARGET = 0,
	USER_CANCELLED = 1,
	ERROR = 2,
};
export type EventType = enum uint {
	DELETE_ = 0,
	MOTION_NOTIFY = 1,
	BUTTON_PRESS = 2,
	BUTTON_RELEASE = 3,
	KEY_PRESS = 4,
	KEY_RELEASE = 5,
	ENTER_NOTIFY = 6,
	LEAVE_NOTIFY = 7,
	FOCUS_CHANGE = 8,
	PROXIMITY_IN = 9,
	PROXIMITY_OUT = 10,
	DRAG_ENTER = 11,
	DRAG_LEAVE = 12,
	DRAG_MOTION = 13,
	DROP_START = 14,
	SCROLL = 15,
	GRAB_BROKEN = 16,
	TOUCH_BEGIN = 17,
	TOUCH_UPDATE = 18,
	TOUCH_END = 19,
	TOUCH_CANCEL = 20,
	TOUCHPAD_SWIPE = 21,
	TOUCHPAD_PINCH = 22,
	PAD_BUTTON_PRESS = 23,
	PAD_BUTTON_RELEASE = 24,
	PAD_RING = 25,
	PAD_STRIP = 26,
	PAD_GROUP_MODE = 27,
	TOUCHPAD_HOLD = 28,
	EVENT_LAST = 29,
};
export type FullscreenMode = enum uint {
	CURRENT_MONITOR = 0,
	ALL_MONITORS = 1,
};
export type GLError = enum uint {
	NOT_AVAILABLE = 0,
	UNSUPPORTED_FORMAT = 1,
	UNSUPPORTED_PROFILE = 2,
	COMPILATION_FAILED = 3,
	LINK_FAILED = 4,
};
export @symbol("gdk_gl_error_quark") fn glerror_quark() glib::Quark;
export type Gravity = enum uint {
	NORTH_WEST = 1,
	NORTH = 2,
	NORTH_EAST = 3,
	WEST = 4,
	CENTER = 5,
	EAST = 6,
	SOUTH_WEST = 7,
	SOUTH = 8,
	SOUTH_EAST = 9,
	STATIC_ = 10,
};
export type InputSource = enum uint {
	MOUSE = 0,
	PEN = 1,
	KEYBOARD = 2,
	TOUCHSCREEN = 3,
	TOUCHPAD = 4,
	TRACKPOINT = 5,
	TABLET_PAD = 6,
};
export type KeyMatch = enum uint {
	NONE = 0,
	PARTIAL = 1,
	EXACT = 2,
};
export type MemoryFormat = enum uint {
	B8G8R8A8_PREMULTIPLIED = 0,
	A8R8G8B8_PREMULTIPLIED = 1,
	R8G8B8A8_PREMULTIPLIED = 2,
	B8G8R8A8 = 3,
	A8R8G8B8 = 4,
	R8G8B8A8 = 5,
	A8B8G8R8 = 6,
	R8G8B8 = 7,
	B8G8R8 = 8,
	R16G16B16 = 9,
	R16G16B16A16_PREMULTIPLIED = 10,
	R16G16B16A16 = 11,
	R16G16B16_FLOAT = 12,
	R16G16B16A16_FLOAT_PREMULTIPLIED = 13,
	R16G16B16A16_FLOAT = 14,
	R32G32B32_FLOAT = 15,
	R32G32B32A32_FLOAT_PREMULTIPLIED = 16,
	R32G32B32A32_FLOAT = 17,
	G8A8_PREMULTIPLIED = 18,
	G8A8 = 19,
	G8 = 20,
	G16A16_PREMULTIPLIED = 21,
	G16A16 = 22,
	G16 = 23,
	A8 = 24,
	A16 = 25,
	A16_FLOAT = 26,
	A32_FLOAT = 27,
	N_FORMATS = 28,
};
export type NotifyType = enum uint {
	ANCESTOR = 0,
	VIRTUAL = 1,
	INFERIOR = 2,
	NONLINEAR = 3,
	NONLINEAR_VIRTUAL = 4,
	UNKNOWN = 5,
};
export type ScrollDirection = enum uint {
	UP = 0,
	DOWN = 1,
	LEFT = 2,
	RIGHT = 3,
	SMOOTH = 4,
};
export type ScrollUnit = enum uint {
	WHEEL = 0,
	SURFACE = 1,
};
export type SubpixelLayout = enum uint {
	UNKNOWN = 0,
	NONE = 1,
	HORIZONTAL_RGB = 2,
	HORIZONTAL_BGR = 3,
	VERTICAL_RGB = 4,
	VERTICAL_BGR = 5,
};
export type SurfaceEdge = enum uint {
	NORTH_WEST = 0,
	NORTH = 1,
	NORTH_EAST = 2,
	WEST = 3,
	EAST = 4,
	SOUTH_WEST = 5,
	SOUTH = 6,
	SOUTH_EAST = 7,
};
export type TextureError = enum uint {
	TOO_LARGE = 0,
	CORRUPT_IMAGE = 1,
	UNSUPPORTED_CONTENT = 2,
	UNSUPPORTED_FORMAT = 3,
};
export @symbol("gdk_texture_error_quark") fn texture_error_quark() glib::Quark;
export type TitlebarGesture = enum uint {
	DOUBLE_CLICK = 1,
	RIGHT_CLICK = 2,
	MIDDLE_CLICK = 3,
};
export type TouchpadGesturePhase = enum uint {
	BEGIN = 0,
	UPDATE = 1,
	END = 2,
	CANCEL = 3,
};
export type VulkanError = enum uint {
	UNSUPPORTED = 0,
	NOT_AVAILABLE = 1,
};
export @symbol("gdk_vulkan_error_quark") fn vulkan_error_quark() glib::Quark;
export @symbol("gdk_cairo_draw_from_gl") fn cairo_draw_from_gl(cr: *cairo::Context, surface: *Surface, source: int, source_type: int, buffer_scale: int, x: int, y: int, width: int, height: int) void;
export @symbol("gdk_cairo_rectangle") fn cairo_rectangle(cr: *cairo::Context, rectangle: *Rectangle) void;
export @symbol("gdk_cairo_region") fn cairo_region(cr: *cairo::Context, region: *cairo::Region) void;
export @symbol("gdk_cairo_region_create_from_surface") fn cairo_region_create_from_surface(surface: *cairo::Surface) *cairo::Region;
export @symbol("gdk_cairo_set_source_pixbuf") fn cairo_set_source_pixbuf(cr: *cairo::Context, pixbuf: *gdkpixbuf::Pixbuf, pixbuf_x: f64, pixbuf_y: f64) void;
export @symbol("gdk_cairo_set_source_rgba") fn cairo_set_source_rgba(cr: *cairo::Context, rgba: *RGBA) void;
export @symbol("gdk_content_deserialize_async") fn content_deserialize_async(stream: *gio::InputStream, mime_type: *c::char, type_: glib::Type, io_priority: int, cancellable: *gio::Cancellable, callback: gio::AsyncReadyCallback, user_data: *opaque) void;
export @symbol("gdk_content_deserialize_finish") fn content_deserialize_finish(result: *gio::AsyncResult, value: *gobject::Value, error: nullable **glib::Error) glib::boolean;
export @symbol("gdk_content_register_deserializer") fn content_register_deserializer(mime_type: *c::char, type_: glib::Type, deserialize: ContentDeserializeFunc, data: *opaque, notify: glib::DestroyNotify) void;
export @symbol("gdk_content_register_serializer") fn content_register_serializer(type_: glib::Type, mime_type: *c::char, serialize: ContentSerializeFunc, data: *opaque, notify: glib::DestroyNotify) void;
export @symbol("gdk_content_serialize_async") fn content_serialize_async(stream: *gio::OutputStream, mime_type: *c::char, value: *gobject::Value, io_priority: int, cancellable: *gio::Cancellable, callback: gio::AsyncReadyCallback, user_data: *opaque) void;
export @symbol("gdk_content_serialize_finish") fn content_serialize_finish(result: *gio::AsyncResult, error: nullable **glib::Error) glib::boolean;
export @symbol("gdk_drag_action_is_unique") fn drag_action_is_unique(action: DragAction) glib::boolean;
export @symbol("gdk_drag_surface_size_get_type") fn drag_surface_size_get_type() glib::Type;
export @symbol("gdk_intern_mime_type") fn intern_mime_type(string: *c::char) *c::char;
export @symbol("gdk_keyval_convert_case") fn keyval_convert_case(symbol: uint, lower: *uint, upper: *uint) void;
export @symbol("gdk_keyval_from_name") fn keyval_from_name(keyval_name: *c::char) uint;
export @symbol("gdk_keyval_is_lower") fn keyval_is_lower(keyval: uint) glib::boolean;
export @symbol("gdk_keyval_is_upper") fn keyval_is_upper(keyval: uint) glib::boolean;
export @symbol("gdk_keyval_name") fn keyval_name(keyval: uint) *c::char;
export @symbol("gdk_keyval_to_lower") fn keyval_to_lower(keyval: uint) uint;
export @symbol("gdk_keyval_to_unicode") fn keyval_to_unicode(keyval: uint) u32;
export @symbol("gdk_keyval_to_upper") fn keyval_to_upper(keyval: uint) uint;
export @symbol("gdk_pango_layout_get_clip_region") fn pango_layout_get_clip_region(layout: *pango::Layout, x_origin: int, y_origin: int, index_ranges: *int, n_ranges: int) *cairo::Region;
export @symbol("gdk_pango_layout_line_get_clip_region") fn pango_layout_line_get_clip_region(line: *pango::LayoutLine, x_origin: int, y_origin: int, index_ranges: *int, n_ranges: int) *cairo::Region;
export @symbol("gdk_pixbuf_get_from_surface") fn pixbuf_get_from_surface(surface: *cairo::Surface, src_x: int, src_y: int, width: int, height: int) *gdkpixbuf::Pixbuf;
export @symbol("gdk_pixbuf_get_from_texture") fn pixbuf_get_from_texture(texture: *Texture) *gdkpixbuf::Pixbuf;
export @symbol("gdk_set_allowed_backends") fn set_allowed_backends(backends: *c::char) void;
export @symbol("gdk_toplevel_size_get_type") fn toplevel_size_get_type() glib::Type;
export @symbol("gdk_unicode_to_keyval") fn unicode_to_keyval(wc: u32) uint;
export type AnchorHints = enum uint {
	FLIP_X = 1,
	FLIP_Y = 2,
	SLIDE_X = 4,
	SLIDE_Y = 8,
	RESIZE_X = 16,
	RESIZE_Y = 32,
	FLIP = 3,
	SLIDE = 12,
	RESIZE = 48,
};
export type AxisFlags = enum uint {
	X = 2,
	Y = 4,
	DELTA_X = 8,
	DELTA_Y = 16,
	PRESSURE = 32,
	XTILT = 64,
	YTILT = 128,
	WHEEL = 256,
	DISTANCE = 512,
	ROTATION = 1024,
	SLIDER = 2048,
};
export type DragAction = enum uint {
	COPY = 1,
	MOVE = 2,
	LINK = 4,
	ASK = 8,
};
export type FrameClockPhase = enum uint {
	NONE = 0,
	FLUSH_EVENTS = 1,
	BEFORE_PAINT = 2,
	UPDATE = 4,
	LAYOUT = 8,
	PAINT = 16,
	RESUME_EVENTS = 32,
	AFTER_PAINT = 64,
};
export type GLAPI = enum uint {
	GL = 1,
	GLES = 2,
};
export type ModifierType = enum uint {
	SHIFT_MASK = 1,
	LOCK_MASK = 2,
	CONTROL_MASK = 4,
	ALT_MASK = 8,
	BUTTON1_MASK = 256,
	BUTTON2_MASK = 512,
	BUTTON3_MASK = 1024,
	BUTTON4_MASK = 2048,
	BUTTON5_MASK = 4096,
	SUPER_MASK = 67108864,
	HYPER_MASK = 134217728,
	META_MASK = 268435456,
};
export type PaintableFlags = enum uint {
	SIZE_ = 1,
	CONTENTS = 2,
};
export type SeatCapabilities = enum uint {
	NONE = 0,
	POINTER = 1,
	TOUCH = 2,
	TABLET_STYLUS = 4,
	KEYBOARD = 8,
	TABLET_PAD = 16,
	ALL_POINTING = 7,
	ALL = 31,
};
export type ToplevelState = enum uint {
	MINIMIZED = 1,
	MAXIMIZED = 2,
	STICKY = 4,
	FULLSCREEN = 8,
	ABOVE = 16,
	BELOW = 32,
	FOCUSED = 64,
	TILED = 128,
	TOP_TILED = 256,
	TOP_RESIZABLE = 512,
	RIGHT_TILED = 1024,
	RIGHT_RESIZABLE = 2048,
	BOTTOM_TILED = 4096,
	BOTTOM_RESIZABLE = 8192,
	LEFT_TILED = 16384,
	LEFT_RESIZABLE = 32768,
	SUSPENDED = 65536,
};
export type ContentDeserializeFunc = *fn(deserializer: *ContentDeserializer) void;
export type ContentSerializeFunc = *fn(serializer: *ContentSerializer) void;
