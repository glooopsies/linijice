use gobject;
use glib;
use types::c;
export type AppInfoMonitor = *opaque;
export @symbol("g_app_info_monitor_get") fn app_info_monitor_get() *AppInfoMonitor;
export fn app_info_monitor_connect_changed(
	instance: *AppInfoMonitor,
	handler: *fn(instance: *AppInfoMonitor, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"changed\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export type AppLaunchContext = struct {
	parent_instance: gobject::Object,
	priv: *AppLaunchContextPrivate,
};
export @symbol("g_app_launch_context_new") fn app_launch_context_new() *AppLaunchContext;
export @symbol("g_app_launch_context_get_display") fn app_launch_context_get_display(context: *AppLaunchContext, info: *AppInfo, files: *glib::List) *c::char;
export @symbol("g_app_launch_context_get_environment") fn app_launch_context_get_environment(context: *AppLaunchContext) **c::char;
export @symbol("g_app_launch_context_get_startup_notify_id") fn app_launch_context_get_startup_notify_id(context: *AppLaunchContext, info: *AppInfo, files: *glib::List) *c::char;
export @symbol("g_app_launch_context_launch_failed") fn app_launch_context_launch_failed(context: *AppLaunchContext, startup_notify_id: *c::char) void;
export @symbol("g_app_launch_context_setenv") fn app_launch_context_setenv(context: *AppLaunchContext, variable: *c::char, value: *c::char) void;
export @symbol("g_app_launch_context_unsetenv") fn app_launch_context_unsetenv(context: *AppLaunchContext, variable: *c::char) void;
export fn app_launch_context_connect_launch_failed(
	instance: *AppLaunchContext,
	handler: *fn(instance: *AppLaunchContext, startup_notify_id: *c::char, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"launch-failed\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn app_launch_context_connect_launch_started(
	instance: *AppLaunchContext,
	handler: *fn(instance: *AppLaunchContext, info: *AppInfo, platform_data: glib::Variant, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"launch-started\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn app_launch_context_connect_launched(
	instance: *AppLaunchContext,
	handler: *fn(instance: *AppLaunchContext, info: *AppInfo, platform_data: glib::Variant, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"launched\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export type Application = struct {
	parent_instance: gobject::Object,
	priv: *ApplicationPrivate,
};
export @symbol("g_application_new") fn application_new(application_id: *c::char, flags: ApplicationFlags) *Application;
export @symbol("g_application_activate") fn application_activate(application: *Application) void;
export @symbol("g_application_add_main_option") fn application_add_main_option(application: *Application, long_name: *c::char, short_name: c::char, flags: glib::OptionFlags, arg: glib::OptionArg, description: *c::char, arg_description: *c::char) void;
export @symbol("g_application_add_main_option_entries") fn application_add_main_option_entries(application: *Application, entries: *glib::OptionEntry) void;
export @symbol("g_application_add_option_group") fn application_add_option_group(application: *Application, group: *glib::OptionGroup) void;
export @symbol("g_application_bind_busy_property") fn application_bind_busy_property(application: *Application, object: *opaque, property: *c::char) void;
export @symbol("g_application_get_application_id") fn application_get_application_id(application: *Application) *c::char;
export @symbol("g_application_get_dbus_connection") fn application_get_dbus_connection(application: *Application) *DBusConnection;
export @symbol("g_application_get_dbus_object_path") fn application_get_dbus_object_path(application: *Application) *c::char;
export @symbol("g_application_get_flags") fn application_get_flags(application: *Application) ApplicationFlags;
export @symbol("g_application_get_inactivity_timeout") fn application_get_inactivity_timeout(application: *Application) uint;
export @symbol("g_application_get_is_busy") fn application_get_is_busy(application: *Application) glib::boolean;
export @symbol("g_application_get_is_registered") fn application_get_is_registered(application: *Application) glib::boolean;
export @symbol("g_application_get_is_remote") fn application_get_is_remote(application: *Application) glib::boolean;
export @symbol("g_application_get_resource_base_path") fn application_get_resource_base_path(application: *Application) *c::char;
export @symbol("g_application_hold") fn application_hold(application: *Application) void;
export @symbol("g_application_mark_busy") fn application_mark_busy(application: *Application) void;
export @symbol("g_application_open") fn application_open(application: *Application, files: **File, n_files: int, hint: *c::char) void;
export @symbol("g_application_quit") fn application_quit(application: *Application) void;
export @symbol("g_application_register") fn application_register(application: *Application, cancellable: *Cancellable, error: nullable **glib::Error) glib::boolean;
export @symbol("g_application_release") fn application_release(application: *Application) void;
export @symbol("g_application_run") fn application_run(application: *Application, argc: int, argv: **c::char) int;
export @symbol("g_application_send_notification") fn application_send_notification(application: *Application, id: *c::char, notification: *Notification) void;
export @symbol("g_application_set_action_group") fn application_set_action_group(application: *Application, action_group: *ActionGroup) void;
export @symbol("g_application_set_application_id") fn application_set_application_id(application: *Application, application_id: *c::char) void;
export @symbol("g_application_set_default") fn application_set_default(application: *Application) void;
export @symbol("g_application_set_flags") fn application_set_flags(application: *Application, flags: ApplicationFlags) void;
export @symbol("g_application_set_inactivity_timeout") fn application_set_inactivity_timeout(application: *Application, inactivity_timeout: uint) void;
export @symbol("g_application_set_option_context_description") fn application_set_option_context_description(application: *Application, description: *c::char) void;
export @symbol("g_application_set_option_context_parameter_string") fn application_set_option_context_parameter_string(application: *Application, parameter_string: *c::char) void;
export @symbol("g_application_set_option_context_summary") fn application_set_option_context_summary(application: *Application, summary: *c::char) void;
export @symbol("g_application_set_resource_base_path") fn application_set_resource_base_path(application: *Application, resource_path: *c::char) void;
export @symbol("g_application_unbind_busy_property") fn application_unbind_busy_property(application: *Application, object: *opaque, property: *c::char) void;
export @symbol("g_application_unmark_busy") fn application_unmark_busy(application: *Application) void;
export @symbol("g_application_withdraw_notification") fn application_withdraw_notification(application: *Application, id: *c::char) void;
export @symbol("g_application_get_default") fn application_get_default() *Application;
export @symbol("g_application_id_is_valid") fn application_id_is_valid(application_id: *c::char) glib::boolean;
export fn application_connect_activate(
	instance: *Application,
	handler: *fn(instance: *Application, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"activate\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn application_connect_command_line(
	instance: *Application,
	handler: *fn(instance: *Application, command_line: *ApplicationCommandLine, data: *opaque) int,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"command-line\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn application_connect_handle_local_options(
	instance: *Application,
	handler: *fn(instance: *Application, options: glib::VariantDict, data: *opaque) int,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"handle-local-options\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn application_connect_name_lost(
	instance: *Application,
	handler: *fn(instance: *Application, data: *opaque) glib::boolean,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"name-lost\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn application_connect_open(
	instance: *Application,
	handler: *fn(instance: *Application, files: *opaque, n_files: int, hint: *c::char, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"open\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn application_connect_shutdown(
	instance: *Application,
	handler: *fn(instance: *Application, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"shutdown\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn application_connect_startup(
	instance: *Application,
	handler: *fn(instance: *Application, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"startup\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export type ApplicationCommandLine = struct {
	parent_instance: gobject::Object,
	priv: *ApplicationCommandLinePrivate,
};
export @symbol("g_application_command_line_create_file_for_arg") fn application_command_line_create_file_for_arg(cmdline: *ApplicationCommandLine, arg: *c::char) *File;
export @symbol("g_application_command_line_get_arguments") fn application_command_line_get_arguments(cmdline: *ApplicationCommandLine, argc: *int) **c::char;
export @symbol("g_application_command_line_get_cwd") fn application_command_line_get_cwd(cmdline: *ApplicationCommandLine) *c::char;
export @symbol("g_application_command_line_get_environ") fn application_command_line_get_environ(cmdline: *ApplicationCommandLine) **c::char;
export @symbol("g_application_command_line_get_exit_status") fn application_command_line_get_exit_status(cmdline: *ApplicationCommandLine) int;
export @symbol("g_application_command_line_get_is_remote") fn application_command_line_get_is_remote(cmdline: *ApplicationCommandLine) glib::boolean;
export @symbol("g_application_command_line_get_options_dict") fn application_command_line_get_options_dict(cmdline: *ApplicationCommandLine) *glib::VariantDict;
export @symbol("g_application_command_line_get_platform_data") fn application_command_line_get_platform_data(cmdline: *ApplicationCommandLine) *glib::Variant;
export @symbol("g_application_command_line_get_stdin") fn application_command_line_get_stdin(cmdline: *ApplicationCommandLine) *InputStream;
export @symbol("g_application_command_line_getenv") fn application_command_line_getenv(cmdline: *ApplicationCommandLine, name: *c::char) *c::char;
export @symbol("g_application_command_line_print") fn application_command_line_print(cmdline: *ApplicationCommandLine, format: *c::char, ...) void;
export @symbol("g_application_command_line_printerr") fn application_command_line_printerr(cmdline: *ApplicationCommandLine, format: *c::char, ...) void;
export @symbol("g_application_command_line_set_exit_status") fn application_command_line_set_exit_status(cmdline: *ApplicationCommandLine, exit_status: int) void;
export type BufferedInputStream = struct {
	parent_instance: FilterInputStream,
	priv: *BufferedInputStreamPrivate,
};
export @symbol("g_buffered_input_stream_new") fn buffered_input_stream_new(base_stream: *InputStream) *InputStream;
export @symbol("g_buffered_input_stream_new_sized") fn buffered_input_stream_new_sized(base_stream: *InputStream, size_: size) *InputStream;
export @symbol("g_buffered_input_stream_fill") fn buffered_input_stream_fill(stream: *BufferedInputStream, count: c::ssize, cancellable: *Cancellable, error: nullable **glib::Error) c::ssize;
export @symbol("g_buffered_input_stream_fill_async") fn buffered_input_stream_fill_async(stream: *BufferedInputStream, count: c::ssize, io_priority: int, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void;
export @symbol("g_buffered_input_stream_fill_finish") fn buffered_input_stream_fill_finish(stream: *BufferedInputStream, result: *AsyncResult, error: nullable **glib::Error) c::ssize;
export @symbol("g_buffered_input_stream_get_available") fn buffered_input_stream_get_available(stream: *BufferedInputStream) size;
export @symbol("g_buffered_input_stream_get_buffer_size") fn buffered_input_stream_get_buffer_size(stream: *BufferedInputStream) size;
export @symbol("g_buffered_input_stream_peek") fn buffered_input_stream_peek(stream: *BufferedInputStream, buffer: *opaque, offset_: size, count: size) size;
export @symbol("g_buffered_input_stream_peek_buffer") fn buffered_input_stream_peek_buffer(stream: *BufferedInputStream, count: *size) *opaque;
export @symbol("g_buffered_input_stream_read_byte") fn buffered_input_stream_read_byte(stream: *BufferedInputStream, cancellable: *Cancellable, error: nullable **glib::Error) int;
export @symbol("g_buffered_input_stream_set_buffer_size") fn buffered_input_stream_set_buffer_size(stream: *BufferedInputStream, size_: size) void;
export type BufferedOutputStream = struct {
	parent_instance: FilterOutputStream,
	priv: *BufferedOutputStreamPrivate,
};
export @symbol("g_buffered_output_stream_new") fn buffered_output_stream_new(base_stream: *OutputStream) *OutputStream;
export @symbol("g_buffered_output_stream_new_sized") fn buffered_output_stream_new_sized(base_stream: *OutputStream, size_: size) *OutputStream;
export @symbol("g_buffered_output_stream_get_auto_grow") fn buffered_output_stream_get_auto_grow(stream: *BufferedOutputStream) glib::boolean;
export @symbol("g_buffered_output_stream_get_buffer_size") fn buffered_output_stream_get_buffer_size(stream: *BufferedOutputStream) size;
export @symbol("g_buffered_output_stream_set_auto_grow") fn buffered_output_stream_set_auto_grow(stream: *BufferedOutputStream, auto_grow: glib::boolean) void;
export @symbol("g_buffered_output_stream_set_buffer_size") fn buffered_output_stream_set_buffer_size(stream: *BufferedOutputStream, size_: size) void;
export type BytesIcon = *opaque;
export @symbol("g_bytes_icon_new") fn bytes_icon_new(bytes: *glib::Bytes) *Icon;
export @symbol("g_bytes_icon_get_bytes") fn bytes_icon_get_bytes(icon: *BytesIcon) *glib::Bytes;
export type Cancellable = struct {
	parent_instance: gobject::Object,
	priv: *CancellablePrivate,
};
export @symbol("g_cancellable_new") fn cancellable_new() *Cancellable;
export @symbol("g_cancellable_cancel") fn cancellable_cancel(cancellable: *Cancellable) void;
export @symbol("g_cancellable_connect") fn cancellable_connect(cancellable: *Cancellable, callback: gobject::Callback, data: *opaque, data_destroy_func: glib::DestroyNotify) c::ulong;
export @symbol("g_cancellable_disconnect") fn cancellable_disconnect(cancellable: *Cancellable, handler_id: c::ulong) void;
export @symbol("g_cancellable_get_fd") fn cancellable_get_fd(cancellable: *Cancellable) int;
export @symbol("g_cancellable_is_cancelled") fn cancellable_is_cancelled(cancellable: *Cancellable) glib::boolean;
export @symbol("g_cancellable_make_pollfd") fn cancellable_make_pollfd(cancellable: *Cancellable, pollfd: *glib::PollFD) glib::boolean;
export @symbol("g_cancellable_pop_current") fn cancellable_pop_current(cancellable: *Cancellable) void;
export @symbol("g_cancellable_push_current") fn cancellable_push_current(cancellable: *Cancellable) void;
export @symbol("g_cancellable_release_fd") fn cancellable_release_fd(cancellable: *Cancellable) void;
export @symbol("g_cancellable_reset") fn cancellable_reset(cancellable: *Cancellable) void;
export @symbol("g_cancellable_set_error_if_cancelled") fn cancellable_set_error_if_cancelled(cancellable: *Cancellable, error: nullable **glib::Error) glib::boolean;
export @symbol("g_cancellable_source_new") fn cancellable_source_new(cancellable: *Cancellable) *glib::Source;
export @symbol("g_cancellable_get_current") fn cancellable_get_current() *Cancellable;
export fn cancellable_connect_cancelled(
	instance: *Cancellable,
	handler: *fn(instance: *Cancellable, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"cancelled\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export type CharsetConverter = *opaque;
export @symbol("g_charset_converter_new") fn charset_converter_new(to_charset: *c::char, from_charset: *c::char, error: nullable **glib::Error) *CharsetConverter;
export @symbol("g_charset_converter_get_num_fallbacks") fn charset_converter_get_num_fallbacks(converter: *CharsetConverter) uint;
export @symbol("g_charset_converter_get_use_fallback") fn charset_converter_get_use_fallback(converter: *CharsetConverter) glib::boolean;
export @symbol("g_charset_converter_set_use_fallback") fn charset_converter_set_use_fallback(converter: *CharsetConverter, use_fallback: glib::boolean) void;
export type ConverterInputStream = struct {
	parent_instance: FilterInputStream,
	priv: *ConverterInputStreamPrivate,
};
export @symbol("g_converter_input_stream_new") fn converter_input_stream_new(base_stream: *InputStream, converter: *Converter) *InputStream;
export @symbol("g_converter_input_stream_get_converter") fn converter_input_stream_get_converter(converter_stream: *ConverterInputStream) *Converter;
export type ConverterOutputStream = struct {
	parent_instance: FilterOutputStream,
	priv: *ConverterOutputStreamPrivate,
};
export @symbol("g_converter_output_stream_new") fn converter_output_stream_new(base_stream: *OutputStream, converter: *Converter) *OutputStream;
export @symbol("g_converter_output_stream_get_converter") fn converter_output_stream_get_converter(converter_stream: *ConverterOutputStream) *Converter;
export type Credentials = *opaque;
export @symbol("g_credentials_new") fn credentials_new() *Credentials;
export @symbol("g_credentials_get_native") fn credentials_get_native(credentials: *Credentials, native_type: CredentialsType) *opaque;
export @symbol("g_credentials_get_unix_pid") fn credentials_get_unix_pid(credentials: *Credentials, error: nullable **glib::Error) uint;
export @symbol("g_credentials_get_unix_user") fn credentials_get_unix_user(credentials: *Credentials, error: nullable **glib::Error) uint;
export @symbol("g_credentials_is_same_user") fn credentials_is_same_user(credentials: *Credentials, other_credentials: *Credentials, error: nullable **glib::Error) glib::boolean;
export @symbol("g_credentials_set_native") fn credentials_set_native(credentials: *Credentials, native_type: CredentialsType, native: *opaque) void;
export @symbol("g_credentials_set_unix_user") fn credentials_set_unix_user(credentials: *Credentials, uid: uint, error: nullable **glib::Error) glib::boolean;
export @symbol("g_credentials_to_string") fn credentials_to_string(credentials: *Credentials) *c::char;
export type DBusActionGroup = *opaque;
export @symbol("g_dbus_action_group_get") fn dbus_action_group_get(connection: *DBusConnection, bus_name: *c::char, object_path: *c::char) *DBusActionGroup;
export type DBusAuthObserver = *opaque;
export @symbol("g_dbus_auth_observer_new") fn dbus_auth_observer_new() *DBusAuthObserver;
export @symbol("g_dbus_auth_observer_allow_mechanism") fn dbus_auth_observer_allow_mechanism(observer: *DBusAuthObserver, mechanism: *c::char) glib::boolean;
export @symbol("g_dbus_auth_observer_authorize_authenticated_peer") fn dbus_auth_observer_authorize_authenticated_peer(observer: *DBusAuthObserver, stream: *IOStream, credentials: *Credentials) glib::boolean;
export fn dbus_auth_observer_connect_allow_mechanism(
	instance: *DBusAuthObserver,
	handler: *fn(instance: *DBusAuthObserver, mechanism: *c::char, data: *opaque) glib::boolean,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"allow-mechanism\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn dbus_auth_observer_connect_authorize_authenticated_peer(
	instance: *DBusAuthObserver,
	handler: *fn(instance: *DBusAuthObserver, stream: *IOStream, credentials: *Credentials, data: *opaque) glib::boolean,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"authorize-authenticated-peer\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export type DBusConnection = *opaque;
export @symbol("g_dbus_connection_new_finish") fn dbus_connection_new_finish(res: *AsyncResult, error: nullable **glib::Error) *DBusConnection;
export @symbol("g_dbus_connection_new_for_address_finish") fn dbus_connection_new_for_address_finish(res: *AsyncResult, error: nullable **glib::Error) *DBusConnection;
export @symbol("g_dbus_connection_new_for_address_sync") fn dbus_connection_new_for_address_sync(address: *c::char, flags: DBusConnectionFlags, observer: *DBusAuthObserver, cancellable: *Cancellable, error: nullable **glib::Error) *DBusConnection;
export @symbol("g_dbus_connection_new_sync") fn dbus_connection_new_sync(stream: *IOStream, guid: *c::char, flags: DBusConnectionFlags, observer: *DBusAuthObserver, cancellable: *Cancellable, error: nullable **glib::Error) *DBusConnection;
export @symbol("g_dbus_connection_add_filter") fn dbus_connection_add_filter(connection: *DBusConnection, filter_function: DBusMessageFilterFunction, user_data: *opaque, user_data_free_func: glib::DestroyNotify) uint;
export @symbol("g_dbus_connection_call") fn dbus_connection_call(connection: *DBusConnection, bus_name: *c::char, object_path: *c::char, interface_name: *c::char, method_name: *c::char, parameters: *glib::Variant, reply_type: *glib::VariantType, flags: DBusCallFlags, timeout_msec: int, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void;
export @symbol("g_dbus_connection_call_finish") fn dbus_connection_call_finish(connection: *DBusConnection, res: *AsyncResult, error: nullable **glib::Error) *glib::Variant;
export @symbol("g_dbus_connection_call_sync") fn dbus_connection_call_sync(connection: *DBusConnection, bus_name: *c::char, object_path: *c::char, interface_name: *c::char, method_name: *c::char, parameters: *glib::Variant, reply_type: *glib::VariantType, flags: DBusCallFlags, timeout_msec: int, cancellable: *Cancellable, error: nullable **glib::Error) *glib::Variant;
export @symbol("g_dbus_connection_call_with_unix_fd_list") fn dbus_connection_call_with_unix_fd_list(connection: *DBusConnection, bus_name: *c::char, object_path: *c::char, interface_name: *c::char, method_name: *c::char, parameters: *glib::Variant, reply_type: *glib::VariantType, flags: DBusCallFlags, timeout_msec: int, fd_list: *UnixFDList, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void;
export @symbol("g_dbus_connection_call_with_unix_fd_list_finish") fn dbus_connection_call_with_unix_fd_list_finish(connection: *DBusConnection, out_fd_list: **UnixFDList, res: *AsyncResult, error: nullable **glib::Error) *glib::Variant;
export @symbol("g_dbus_connection_call_with_unix_fd_list_sync") fn dbus_connection_call_with_unix_fd_list_sync(connection: *DBusConnection, bus_name: *c::char, object_path: *c::char, interface_name: *c::char, method_name: *c::char, parameters: *glib::Variant, reply_type: *glib::VariantType, flags: DBusCallFlags, timeout_msec: int, fd_list: *UnixFDList, out_fd_list: **UnixFDList, cancellable: *Cancellable, error: nullable **glib::Error) *glib::Variant;
export @symbol("g_dbus_connection_close") fn dbus_connection_close(connection: *DBusConnection, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void;
export @symbol("g_dbus_connection_close_finish") fn dbus_connection_close_finish(connection: *DBusConnection, res: *AsyncResult, error: nullable **glib::Error) glib::boolean;
export @symbol("g_dbus_connection_close_sync") fn dbus_connection_close_sync(connection: *DBusConnection, cancellable: *Cancellable, error: nullable **glib::Error) glib::boolean;
export @symbol("g_dbus_connection_emit_signal") fn dbus_connection_emit_signal(connection: *DBusConnection, destination_bus_name: *c::char, object_path: *c::char, interface_name: *c::char, signal_name: *c::char, parameters: *glib::Variant, error: nullable **glib::Error) glib::boolean;
export @symbol("g_dbus_connection_export_action_group") fn dbus_connection_export_action_group(connection: *DBusConnection, object_path: *c::char, action_group: *ActionGroup, error: nullable **glib::Error) uint;
export @symbol("g_dbus_connection_export_menu_model") fn dbus_connection_export_menu_model(connection: *DBusConnection, object_path: *c::char, menu: *MenuModel, error: nullable **glib::Error) uint;
export @symbol("g_dbus_connection_flush") fn dbus_connection_flush(connection: *DBusConnection, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void;
export @symbol("g_dbus_connection_flush_finish") fn dbus_connection_flush_finish(connection: *DBusConnection, res: *AsyncResult, error: nullable **glib::Error) glib::boolean;
export @symbol("g_dbus_connection_flush_sync") fn dbus_connection_flush_sync(connection: *DBusConnection, cancellable: *Cancellable, error: nullable **glib::Error) glib::boolean;
export @symbol("g_dbus_connection_get_capabilities") fn dbus_connection_get_capabilities(connection: *DBusConnection) DBusCapabilityFlags;
export @symbol("g_dbus_connection_get_exit_on_close") fn dbus_connection_get_exit_on_close(connection: *DBusConnection) glib::boolean;
export @symbol("g_dbus_connection_get_flags") fn dbus_connection_get_flags(connection: *DBusConnection) DBusConnectionFlags;
export @symbol("g_dbus_connection_get_guid") fn dbus_connection_get_guid(connection: *DBusConnection) *c::char;
export @symbol("g_dbus_connection_get_last_serial") fn dbus_connection_get_last_serial(connection: *DBusConnection) u32;
export @symbol("g_dbus_connection_get_peer_credentials") fn dbus_connection_get_peer_credentials(connection: *DBusConnection) *Credentials;
export @symbol("g_dbus_connection_get_stream") fn dbus_connection_get_stream(connection: *DBusConnection) *IOStream;
export @symbol("g_dbus_connection_get_unique_name") fn dbus_connection_get_unique_name(connection: *DBusConnection) *c::char;
export @symbol("g_dbus_connection_is_closed") fn dbus_connection_is_closed(connection: *DBusConnection) glib::boolean;
export @symbol("g_dbus_connection_register_object") fn dbus_connection_register_object(connection: *DBusConnection, object_path: *c::char, interface_info: *DBusInterfaceInfo, vtable: *DBusInterfaceVTable, user_data: *opaque, user_data_free_func: glib::DestroyNotify, error: nullable **glib::Error) uint;
export @symbol("g_dbus_connection_register_object_with_closures") fn dbus_connection_register_object_with_closures(connection: *DBusConnection, object_path: *c::char, interface_info: *DBusInterfaceInfo, method_call_closure: *gobject::Closure, get_property_closure: *gobject::Closure, set_property_closure: *gobject::Closure, error: nullable **glib::Error) uint;
export @symbol("g_dbus_connection_register_subtree") fn dbus_connection_register_subtree(connection: *DBusConnection, object_path: *c::char, vtable: *DBusSubtreeVTable, flags: DBusSubtreeFlags, user_data: *opaque, user_data_free_func: glib::DestroyNotify, error: nullable **glib::Error) uint;
export @symbol("g_dbus_connection_remove_filter") fn dbus_connection_remove_filter(connection: *DBusConnection, filter_id: uint) void;
export @symbol("g_dbus_connection_send_message") fn dbus_connection_send_message(connection: *DBusConnection, message: *DBusMessage, flags: DBusSendMessageFlags, out_serial: *u32, error: nullable **glib::Error) glib::boolean;
export @symbol("g_dbus_connection_send_message_with_reply") fn dbus_connection_send_message_with_reply(connection: *DBusConnection, message: *DBusMessage, flags: DBusSendMessageFlags, timeout_msec: int, out_serial: *u32, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void;
export @symbol("g_dbus_connection_send_message_with_reply_finish") fn dbus_connection_send_message_with_reply_finish(connection: *DBusConnection, res: *AsyncResult, error: nullable **glib::Error) *DBusMessage;
export @symbol("g_dbus_connection_send_message_with_reply_sync") fn dbus_connection_send_message_with_reply_sync(connection: *DBusConnection, message: *DBusMessage, flags: DBusSendMessageFlags, timeout_msec: int, out_serial: *u32, cancellable: *Cancellable, error: nullable **glib::Error) *DBusMessage;
export @symbol("g_dbus_connection_set_exit_on_close") fn dbus_connection_set_exit_on_close(connection: *DBusConnection, exit_on_close: glib::boolean) void;
export @symbol("g_dbus_connection_signal_subscribe") fn dbus_connection_signal_subscribe(connection: *DBusConnection, sender: *c::char, interface_name: *c::char, member: *c::char, object_path: *c::char, arg0: *c::char, flags: DBusSignalFlags, callback: DBusSignalCallback, user_data: *opaque, user_data_free_func: glib::DestroyNotify) uint;
export @symbol("g_dbus_connection_signal_unsubscribe") fn dbus_connection_signal_unsubscribe(connection: *DBusConnection, subscription_id: uint) void;
export @symbol("g_dbus_connection_start_message_processing") fn dbus_connection_start_message_processing(connection: *DBusConnection) void;
export @symbol("g_dbus_connection_unexport_action_group") fn dbus_connection_unexport_action_group(connection: *DBusConnection, export_id: uint) void;
export @symbol("g_dbus_connection_unexport_menu_model") fn dbus_connection_unexport_menu_model(connection: *DBusConnection, export_id: uint) void;
export @symbol("g_dbus_connection_unregister_object") fn dbus_connection_unregister_object(connection: *DBusConnection, registration_id: uint) glib::boolean;
export @symbol("g_dbus_connection_unregister_subtree") fn dbus_connection_unregister_subtree(connection: *DBusConnection, registration_id: uint) glib::boolean;
export @symbol("g_dbus_connection_new") fn dbus_connection_new(stream: *IOStream, guid: *c::char, flags: DBusConnectionFlags, observer: *DBusAuthObserver, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void;
export @symbol("g_dbus_connection_new_for_address") fn dbus_connection_new_for_address(address: *c::char, flags: DBusConnectionFlags, observer: *DBusAuthObserver, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void;
export fn dbus_connection_connect_closed(
	instance: *DBusConnection,
	handler: *fn(instance: *DBusConnection, remote_peer_vanished: glib::boolean, error: glib::Error, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"closed\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export type DBusInterfaceSkeleton = struct {
	parent_instance: gobject::Object,
	priv: *DBusInterfaceSkeletonPrivate,
};
export @symbol("g_dbus_interface_skeleton_export") fn dbus_interface_skeleton_export(interface_: *DBusInterfaceSkeleton, connection: *DBusConnection, object_path: *c::char, error: nullable **glib::Error) glib::boolean;
export @symbol("g_dbus_interface_skeleton_flush") fn dbus_interface_skeleton_flush(interface_: *DBusInterfaceSkeleton) void;
export @symbol("g_dbus_interface_skeleton_get_connection") fn dbus_interface_skeleton_get_connection(interface_: *DBusInterfaceSkeleton) *DBusConnection;
export @symbol("g_dbus_interface_skeleton_get_connections") fn dbus_interface_skeleton_get_connections(interface_: *DBusInterfaceSkeleton) *glib::List;
export @symbol("g_dbus_interface_skeleton_get_flags") fn dbus_interface_skeleton_get_flags(interface_: *DBusInterfaceSkeleton) DBusInterfaceSkeletonFlags;
export @symbol("g_dbus_interface_skeleton_get_info") fn dbus_interface_skeleton_get_info(interface_: *DBusInterfaceSkeleton) *DBusInterfaceInfo;
export @symbol("g_dbus_interface_skeleton_get_object_path") fn dbus_interface_skeleton_get_object_path(interface_: *DBusInterfaceSkeleton) *c::char;
export @symbol("g_dbus_interface_skeleton_get_properties") fn dbus_interface_skeleton_get_properties(interface_: *DBusInterfaceSkeleton) *glib::Variant;
export @symbol("g_dbus_interface_skeleton_get_vtable") fn dbus_interface_skeleton_get_vtable(interface_: *DBusInterfaceSkeleton) *DBusInterfaceVTable;
export @symbol("g_dbus_interface_skeleton_has_connection") fn dbus_interface_skeleton_has_connection(interface_: *DBusInterfaceSkeleton, connection: *DBusConnection) glib::boolean;
export @symbol("g_dbus_interface_skeleton_set_flags") fn dbus_interface_skeleton_set_flags(interface_: *DBusInterfaceSkeleton, flags: DBusInterfaceSkeletonFlags) void;
export @symbol("g_dbus_interface_skeleton_unexport") fn dbus_interface_skeleton_unexport(interface_: *DBusInterfaceSkeleton) void;
export @symbol("g_dbus_interface_skeleton_unexport_from_connection") fn dbus_interface_skeleton_unexport_from_connection(interface_: *DBusInterfaceSkeleton, connection: *DBusConnection) void;
export fn dbus_interface_skeleton_connect_g_authorize_method(
	instance: *DBusInterfaceSkeleton,
	handler: *fn(instance: *DBusInterfaceSkeleton, invocation: *DBusMethodInvocation, data: *opaque) glib::boolean,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"g-authorize-method\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export type DBusMenuModel = *opaque;
export @symbol("g_dbus_menu_model_get") fn dbus_menu_model_get(connection: *DBusConnection, bus_name: *c::char, object_path: *c::char) *DBusMenuModel;
export type DBusMessage = *opaque;
export @symbol("g_dbus_message_new") fn dbus_message_new() *DBusMessage;
export @symbol("g_dbus_message_new_from_blob") fn dbus_message_new_from_blob(blob: *c::uchar, blob_len: size, capabilities: DBusCapabilityFlags, error: nullable **glib::Error) *DBusMessage;
export @symbol("g_dbus_message_new_method_call") fn dbus_message_new_method_call(name: *c::char, path: *c::char, interface_: *c::char, method: *c::char) *DBusMessage;
export @symbol("g_dbus_message_new_signal") fn dbus_message_new_signal(path: *c::char, interface_: *c::char, signal: *c::char) *DBusMessage;
export @symbol("g_dbus_message_copy") fn dbus_message_copy(message: *DBusMessage, error: nullable **glib::Error) *DBusMessage;
export @symbol("g_dbus_message_get_arg0") fn dbus_message_get_arg0(message: *DBusMessage) *c::char;
export @symbol("g_dbus_message_get_body") fn dbus_message_get_body(message: *DBusMessage) *glib::Variant;
export @symbol("g_dbus_message_get_byte_order") fn dbus_message_get_byte_order(message: *DBusMessage) DBusMessageByteOrder;
export @symbol("g_dbus_message_get_destination") fn dbus_message_get_destination(message: *DBusMessage) *c::char;
export @symbol("g_dbus_message_get_error_name") fn dbus_message_get_error_name(message: *DBusMessage) *c::char;
export @symbol("g_dbus_message_get_flags") fn dbus_message_get_flags(message: *DBusMessage) DBusMessageFlags;
export @symbol("g_dbus_message_get_header") fn dbus_message_get_header(message: *DBusMessage, header_field: DBusMessageHeaderField) *glib::Variant;
export @symbol("g_dbus_message_get_header_fields") fn dbus_message_get_header_fields(message: *DBusMessage) *c::uchar;
export @symbol("g_dbus_message_get_interface") fn dbus_message_get_interface(message: *DBusMessage) *c::char;
export @symbol("g_dbus_message_get_locked") fn dbus_message_get_locked(message: *DBusMessage) glib::boolean;
export @symbol("g_dbus_message_get_member") fn dbus_message_get_member(message: *DBusMessage) *c::char;
export @symbol("g_dbus_message_get_message_type") fn dbus_message_get_message_type(message: *DBusMessage) DBusMessageType;
export @symbol("g_dbus_message_get_num_unix_fds") fn dbus_message_get_num_unix_fds(message: *DBusMessage) u32;
export @symbol("g_dbus_message_get_path") fn dbus_message_get_path(message: *DBusMessage) *c::char;
export @symbol("g_dbus_message_get_reply_serial") fn dbus_message_get_reply_serial(message: *DBusMessage) u32;
export @symbol("g_dbus_message_get_sender") fn dbus_message_get_sender(message: *DBusMessage) *c::char;
export @symbol("g_dbus_message_get_serial") fn dbus_message_get_serial(message: *DBusMessage) u32;
export @symbol("g_dbus_message_get_signature") fn dbus_message_get_signature(message: *DBusMessage) *c::char;
export @symbol("g_dbus_message_get_unix_fd_list") fn dbus_message_get_unix_fd_list(message: *DBusMessage) *UnixFDList;
export @symbol("g_dbus_message_lock") fn dbus_message_lock(message: *DBusMessage) void;
export @symbol("g_dbus_message_new_method_error") fn dbus_message_new_method_error(method_call_message: *DBusMessage, error_name: *c::char, error_message_format: *c::char, ...) *DBusMessage;
export @symbol("g_dbus_message_new_method_error_literal") fn dbus_message_new_method_error_literal(method_call_message: *DBusMessage, error_name: *c::char, error_message: *c::char) *DBusMessage;
export @symbol("g_dbus_message_new_method_error_valist") fn dbus_message_new_method_error_valist(method_call_message: *DBusMessage, error_name: *c::char, error_message_format: *c::char, var_args: valist) *DBusMessage;
export @symbol("g_dbus_message_new_method_reply") fn dbus_message_new_method_reply(method_call_message: *DBusMessage) *DBusMessage;
export @symbol("g_dbus_message_print") fn dbus_message_print(message: *DBusMessage, indent: uint) *c::char;
export @symbol("g_dbus_message_set_body") fn dbus_message_set_body(message: *DBusMessage, body: *glib::Variant) void;
export @symbol("g_dbus_message_set_byte_order") fn dbus_message_set_byte_order(message: *DBusMessage, byte_order: DBusMessageByteOrder) void;
export @symbol("g_dbus_message_set_destination") fn dbus_message_set_destination(message: *DBusMessage, value: *c::char) void;
export @symbol("g_dbus_message_set_error_name") fn dbus_message_set_error_name(message: *DBusMessage, value: *c::char) void;
export @symbol("g_dbus_message_set_flags") fn dbus_message_set_flags(message: *DBusMessage, flags: DBusMessageFlags) void;
export @symbol("g_dbus_message_set_header") fn dbus_message_set_header(message: *DBusMessage, header_field: DBusMessageHeaderField, value: *glib::Variant) void;
export @symbol("g_dbus_message_set_interface") fn dbus_message_set_interface(message: *DBusMessage, value: *c::char) void;
export @symbol("g_dbus_message_set_member") fn dbus_message_set_member(message: *DBusMessage, value: *c::char) void;
export @symbol("g_dbus_message_set_message_type") fn dbus_message_set_message_type(message: *DBusMessage, type_: DBusMessageType) void;
export @symbol("g_dbus_message_set_num_unix_fds") fn dbus_message_set_num_unix_fds(message: *DBusMessage, value: u32) void;
export @symbol("g_dbus_message_set_path") fn dbus_message_set_path(message: *DBusMessage, value: *c::char) void;
export @symbol("g_dbus_message_set_reply_serial") fn dbus_message_set_reply_serial(message: *DBusMessage, value: u32) void;
export @symbol("g_dbus_message_set_sender") fn dbus_message_set_sender(message: *DBusMessage, value: *c::char) void;
export @symbol("g_dbus_message_set_serial") fn dbus_message_set_serial(message: *DBusMessage, serial: u32) void;
export @symbol("g_dbus_message_set_signature") fn dbus_message_set_signature(message: *DBusMessage, value: *c::char) void;
export @symbol("g_dbus_message_set_unix_fd_list") fn dbus_message_set_unix_fd_list(message: *DBusMessage, fd_list: *UnixFDList) void;
export @symbol("g_dbus_message_to_blob") fn dbus_message_to_blob(message: *DBusMessage, out_size: *size, capabilities: DBusCapabilityFlags, error: nullable **glib::Error) *c::uchar;
export @symbol("g_dbus_message_to_gerror") fn dbus_message_to_gerror(message: *DBusMessage, error: nullable **glib::Error) glib::boolean;
export @symbol("g_dbus_message_bytes_needed") fn dbus_message_bytes_needed(blob: *c::uchar, blob_len: size, error: nullable **glib::Error) c::ssize;
export type DBusMethodInvocation = *opaque;
export @symbol("g_dbus_method_invocation_get_connection") fn dbus_method_invocation_get_connection(invocation: *DBusMethodInvocation) *DBusConnection;
export @symbol("g_dbus_method_invocation_get_interface_name") fn dbus_method_invocation_get_interface_name(invocation: *DBusMethodInvocation) *c::char;
export @symbol("g_dbus_method_invocation_get_message") fn dbus_method_invocation_get_message(invocation: *DBusMethodInvocation) *DBusMessage;
export @symbol("g_dbus_method_invocation_get_method_info") fn dbus_method_invocation_get_method_info(invocation: *DBusMethodInvocation) *DBusMethodInfo;
export @symbol("g_dbus_method_invocation_get_method_name") fn dbus_method_invocation_get_method_name(invocation: *DBusMethodInvocation) *c::char;
export @symbol("g_dbus_method_invocation_get_object_path") fn dbus_method_invocation_get_object_path(invocation: *DBusMethodInvocation) *c::char;
export @symbol("g_dbus_method_invocation_get_parameters") fn dbus_method_invocation_get_parameters(invocation: *DBusMethodInvocation) *glib::Variant;
export @symbol("g_dbus_method_invocation_get_property_info") fn dbus_method_invocation_get_property_info(invocation: *DBusMethodInvocation) *DBusPropertyInfo;
export @symbol("g_dbus_method_invocation_get_sender") fn dbus_method_invocation_get_sender(invocation: *DBusMethodInvocation) *c::char;
export @symbol("g_dbus_method_invocation_get_user_data") fn dbus_method_invocation_get_user_data(invocation: *DBusMethodInvocation) *opaque;
export @symbol("g_dbus_method_invocation_return_dbus_error") fn dbus_method_invocation_return_dbus_error(invocation: *DBusMethodInvocation, error_name: *c::char, error_message: *c::char) void;
export @symbol("g_dbus_method_invocation_return_error") fn dbus_method_invocation_return_error(invocation: *DBusMethodInvocation, domain: glib::Quark, code: int, format: *c::char, ...) void;
export @symbol("g_dbus_method_invocation_return_error_literal") fn dbus_method_invocation_return_error_literal(invocation: *DBusMethodInvocation, domain: glib::Quark, code: int, message: *c::char) void;
export @symbol("g_dbus_method_invocation_return_error_valist") fn dbus_method_invocation_return_error_valist(invocation: *DBusMethodInvocation, domain: glib::Quark, code: int, format: *c::char, var_args: valist) void;
export @symbol("g_dbus_method_invocation_return_gerror") fn dbus_method_invocation_return_gerror(invocation: *DBusMethodInvocation, error: *glib::Error) void;
export @symbol("g_dbus_method_invocation_return_value") fn dbus_method_invocation_return_value(invocation: *DBusMethodInvocation, parameters: *glib::Variant) void;
export @symbol("g_dbus_method_invocation_return_value_with_unix_fd_list") fn dbus_method_invocation_return_value_with_unix_fd_list(invocation: *DBusMethodInvocation, parameters: *glib::Variant, fd_list: *UnixFDList) void;
export @symbol("g_dbus_method_invocation_take_error") fn dbus_method_invocation_take_error(invocation: *DBusMethodInvocation, error: *glib::Error) void;
export type DBusObjectManagerClient = struct {
	parent_instance: gobject::Object,
	priv: *DBusObjectManagerClientPrivate,
};
export @symbol("g_dbus_object_manager_client_new_finish") fn dbus_object_manager_client_new_finish(res: *AsyncResult, error: nullable **glib::Error) *DBusObjectManager;
export @symbol("g_dbus_object_manager_client_new_for_bus_finish") fn dbus_object_manager_client_new_for_bus_finish(res: *AsyncResult, error: nullable **glib::Error) *DBusObjectManager;
export @symbol("g_dbus_object_manager_client_new_for_bus_sync") fn dbus_object_manager_client_new_for_bus_sync(bus_type: BusType, flags: DBusObjectManagerClientFlags, name: *c::char, object_path: *c::char, get_proxy_type_func: DBusProxyTypeFunc, get_proxy_type_user_data: *opaque, get_proxy_type_destroy_notify: glib::DestroyNotify, cancellable: *Cancellable, error: nullable **glib::Error) *DBusObjectManager;
export @symbol("g_dbus_object_manager_client_new_sync") fn dbus_object_manager_client_new_sync(connection: *DBusConnection, flags: DBusObjectManagerClientFlags, name: *c::char, object_path: *c::char, get_proxy_type_func: DBusProxyTypeFunc, get_proxy_type_user_data: *opaque, get_proxy_type_destroy_notify: glib::DestroyNotify, cancellable: *Cancellable, error: nullable **glib::Error) *DBusObjectManager;
export @symbol("g_dbus_object_manager_client_get_connection") fn dbus_object_manager_client_get_connection(manager: *DBusObjectManagerClient) *DBusConnection;
export @symbol("g_dbus_object_manager_client_get_flags") fn dbus_object_manager_client_get_flags(manager: *DBusObjectManagerClient) DBusObjectManagerClientFlags;
export @symbol("g_dbus_object_manager_client_get_name") fn dbus_object_manager_client_get_name(manager: *DBusObjectManagerClient) *c::char;
export @symbol("g_dbus_object_manager_client_get_name_owner") fn dbus_object_manager_client_get_name_owner(manager: *DBusObjectManagerClient) *c::char;
export @symbol("g_dbus_object_manager_client_new") fn dbus_object_manager_client_new(connection: *DBusConnection, flags: DBusObjectManagerClientFlags, name: *c::char, object_path: *c::char, get_proxy_type_func: DBusProxyTypeFunc, get_proxy_type_user_data: *opaque, get_proxy_type_destroy_notify: glib::DestroyNotify, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void;
export @symbol("g_dbus_object_manager_client_new_for_bus") fn dbus_object_manager_client_new_for_bus(bus_type: BusType, flags: DBusObjectManagerClientFlags, name: *c::char, object_path: *c::char, get_proxy_type_func: DBusProxyTypeFunc, get_proxy_type_user_data: *opaque, get_proxy_type_destroy_notify: glib::DestroyNotify, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void;
export fn dbus_object_manager_client_connect_interface_proxy_properties_changed(
	instance: *DBusObjectManagerClient,
	handler: *fn(instance: *DBusObjectManagerClient, object_proxy: *DBusObjectProxy, interface_proxy: *DBusProxy, changed_properties: glib::Variant, invalidated_properties: **c::char, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"interface-proxy-properties-changed\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn dbus_object_manager_client_connect_interface_proxy_signal(
	instance: *DBusObjectManagerClient,
	handler: *fn(instance: *DBusObjectManagerClient, object_proxy: *DBusObjectProxy, interface_proxy: *DBusProxy, sender_name: *c::char, signal_name: *c::char, parameters: glib::Variant, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"interface-proxy-signal\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export type DBusObjectManagerServer = struct {
	parent_instance: gobject::Object,
	priv: *DBusObjectManagerServerPrivate,
};
export @symbol("g_dbus_object_manager_server_new") fn dbus_object_manager_server_new(object_path: *c::char) *DBusObjectManagerServer;
export @symbol("g_dbus_object_manager_server_export") fn dbus_object_manager_server_export(manager: *DBusObjectManagerServer, object: *DBusObjectSkeleton) void;
export @symbol("g_dbus_object_manager_server_export_uniquely") fn dbus_object_manager_server_export_uniquely(manager: *DBusObjectManagerServer, object: *DBusObjectSkeleton) void;
export @symbol("g_dbus_object_manager_server_get_connection") fn dbus_object_manager_server_get_connection(manager: *DBusObjectManagerServer) *DBusConnection;
export @symbol("g_dbus_object_manager_server_is_exported") fn dbus_object_manager_server_is_exported(manager: *DBusObjectManagerServer, object: *DBusObjectSkeleton) glib::boolean;
export @symbol("g_dbus_object_manager_server_set_connection") fn dbus_object_manager_server_set_connection(manager: *DBusObjectManagerServer, connection: *DBusConnection) void;
export @symbol("g_dbus_object_manager_server_unexport") fn dbus_object_manager_server_unexport(manager: *DBusObjectManagerServer, object_path: *c::char) glib::boolean;
export type DBusObjectProxy = struct {
	parent_instance: gobject::Object,
	priv: *DBusObjectProxyPrivate,
};
export @symbol("g_dbus_object_proxy_new") fn dbus_object_proxy_new(connection: *DBusConnection, object_path: *c::char) *DBusObjectProxy;
export @symbol("g_dbus_object_proxy_get_connection") fn dbus_object_proxy_get_connection(proxy: *DBusObjectProxy) *DBusConnection;
export type DBusObjectSkeleton = struct {
	parent_instance: gobject::Object,
	priv: *DBusObjectSkeletonPrivate,
};
export @symbol("g_dbus_object_skeleton_new") fn dbus_object_skeleton_new(object_path: *c::char) *DBusObjectSkeleton;
export @symbol("g_dbus_object_skeleton_add_interface") fn dbus_object_skeleton_add_interface(object: *DBusObjectSkeleton, interface_: *DBusInterfaceSkeleton) void;
export @symbol("g_dbus_object_skeleton_flush") fn dbus_object_skeleton_flush(object: *DBusObjectSkeleton) void;
export @symbol("g_dbus_object_skeleton_remove_interface") fn dbus_object_skeleton_remove_interface(object: *DBusObjectSkeleton, interface_: *DBusInterfaceSkeleton) void;
export @symbol("g_dbus_object_skeleton_remove_interface_by_name") fn dbus_object_skeleton_remove_interface_by_name(object: *DBusObjectSkeleton, interface_name: *c::char) void;
export @symbol("g_dbus_object_skeleton_set_object_path") fn dbus_object_skeleton_set_object_path(object: *DBusObjectSkeleton, object_path: *c::char) void;
export fn dbus_object_skeleton_connect_authorize_method(
	instance: *DBusObjectSkeleton,
	handler: *fn(instance: *DBusObjectSkeleton, interface: *DBusInterfaceSkeleton, invocation: *DBusMethodInvocation, data: *opaque) glib::boolean,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"authorize-method\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export type DBusProxy = struct {
	parent_instance: gobject::Object,
	priv: *DBusProxyPrivate,
};
export @symbol("g_dbus_proxy_new_finish") fn dbus_proxy_new_finish(res: *AsyncResult, error: nullable **glib::Error) *DBusProxy;
export @symbol("g_dbus_proxy_new_for_bus_finish") fn dbus_proxy_new_for_bus_finish(res: *AsyncResult, error: nullable **glib::Error) *DBusProxy;
export @symbol("g_dbus_proxy_new_for_bus_sync") fn dbus_proxy_new_for_bus_sync(bus_type: BusType, flags: DBusProxyFlags, info: *DBusInterfaceInfo, name: *c::char, object_path: *c::char, interface_name: *c::char, cancellable: *Cancellable, error: nullable **glib::Error) *DBusProxy;
export @symbol("g_dbus_proxy_new_sync") fn dbus_proxy_new_sync(connection: *DBusConnection, flags: DBusProxyFlags, info: *DBusInterfaceInfo, name: *c::char, object_path: *c::char, interface_name: *c::char, cancellable: *Cancellable, error: nullable **glib::Error) *DBusProxy;
export @symbol("g_dbus_proxy_call") fn dbus_proxy_call(proxy: *DBusProxy, method_name: *c::char, parameters: *glib::Variant, flags: DBusCallFlags, timeout_msec: int, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void;
export @symbol("g_dbus_proxy_call_finish") fn dbus_proxy_call_finish(proxy: *DBusProxy, res: *AsyncResult, error: nullable **glib::Error) *glib::Variant;
export @symbol("g_dbus_proxy_call_sync") fn dbus_proxy_call_sync(proxy: *DBusProxy, method_name: *c::char, parameters: *glib::Variant, flags: DBusCallFlags, timeout_msec: int, cancellable: *Cancellable, error: nullable **glib::Error) *glib::Variant;
export @symbol("g_dbus_proxy_call_with_unix_fd_list") fn dbus_proxy_call_with_unix_fd_list(proxy: *DBusProxy, method_name: *c::char, parameters: *glib::Variant, flags: DBusCallFlags, timeout_msec: int, fd_list: *UnixFDList, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void;
export @symbol("g_dbus_proxy_call_with_unix_fd_list_finish") fn dbus_proxy_call_with_unix_fd_list_finish(proxy: *DBusProxy, out_fd_list: **UnixFDList, res: *AsyncResult, error: nullable **glib::Error) *glib::Variant;
export @symbol("g_dbus_proxy_call_with_unix_fd_list_sync") fn dbus_proxy_call_with_unix_fd_list_sync(proxy: *DBusProxy, method_name: *c::char, parameters: *glib::Variant, flags: DBusCallFlags, timeout_msec: int, fd_list: *UnixFDList, out_fd_list: **UnixFDList, cancellable: *Cancellable, error: nullable **glib::Error) *glib::Variant;
export @symbol("g_dbus_proxy_get_cached_property") fn dbus_proxy_get_cached_property(proxy: *DBusProxy, property_name: *c::char) *glib::Variant;
export @symbol("g_dbus_proxy_get_cached_property_names") fn dbus_proxy_get_cached_property_names(proxy: *DBusProxy) **c::char;
export @symbol("g_dbus_proxy_get_connection") fn dbus_proxy_get_connection(proxy: *DBusProxy) *DBusConnection;
export @symbol("g_dbus_proxy_get_default_timeout") fn dbus_proxy_get_default_timeout(proxy: *DBusProxy) int;
export @symbol("g_dbus_proxy_get_flags") fn dbus_proxy_get_flags(proxy: *DBusProxy) DBusProxyFlags;
export @symbol("g_dbus_proxy_get_interface_info") fn dbus_proxy_get_interface_info(proxy: *DBusProxy) *DBusInterfaceInfo;
export @symbol("g_dbus_proxy_get_interface_name") fn dbus_proxy_get_interface_name(proxy: *DBusProxy) *c::char;
export @symbol("g_dbus_proxy_get_name") fn dbus_proxy_get_name(proxy: *DBusProxy) *c::char;
export @symbol("g_dbus_proxy_get_name_owner") fn dbus_proxy_get_name_owner(proxy: *DBusProxy) *c::char;
export @symbol("g_dbus_proxy_get_object_path") fn dbus_proxy_get_object_path(proxy: *DBusProxy) *c::char;
export @symbol("g_dbus_proxy_set_cached_property") fn dbus_proxy_set_cached_property(proxy: *DBusProxy, property_name: *c::char, value: *glib::Variant) void;
export @symbol("g_dbus_proxy_set_default_timeout") fn dbus_proxy_set_default_timeout(proxy: *DBusProxy, timeout_msec: int) void;
export @symbol("g_dbus_proxy_set_interface_info") fn dbus_proxy_set_interface_info(proxy: *DBusProxy, info: *DBusInterfaceInfo) void;
export @symbol("g_dbus_proxy_new") fn dbus_proxy_new(connection: *DBusConnection, flags: DBusProxyFlags, info: *DBusInterfaceInfo, name: *c::char, object_path: *c::char, interface_name: *c::char, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void;
export @symbol("g_dbus_proxy_new_for_bus") fn dbus_proxy_new_for_bus(bus_type: BusType, flags: DBusProxyFlags, info: *DBusInterfaceInfo, name: *c::char, object_path: *c::char, interface_name: *c::char, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void;
export fn dbus_proxy_connect_g_properties_changed(
	instance: *DBusProxy,
	handler: *fn(instance: *DBusProxy, changed_properties: glib::Variant, invalidated_properties: **c::char, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"g-properties-changed\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn dbus_proxy_connect_g_signal(
	instance: *DBusProxy,
	handler: *fn(instance: *DBusProxy, sender_name: *c::char, signal_name: *c::char, parameters: glib::Variant, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"g-signal\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export type DBusServer = *opaque;
export @symbol("g_dbus_server_new_sync") fn dbus_server_new_sync(address: *c::char, flags: DBusServerFlags, guid: *c::char, observer: *DBusAuthObserver, cancellable: *Cancellable, error: nullable **glib::Error) *DBusServer;
export @symbol("g_dbus_server_get_client_address") fn dbus_server_get_client_address(server: *DBusServer) *c::char;
export @symbol("g_dbus_server_get_flags") fn dbus_server_get_flags(server: *DBusServer) DBusServerFlags;
export @symbol("g_dbus_server_get_guid") fn dbus_server_get_guid(server: *DBusServer) *c::char;
export @symbol("g_dbus_server_is_active") fn dbus_server_is_active(server: *DBusServer) glib::boolean;
export @symbol("g_dbus_server_start") fn dbus_server_start(server: *DBusServer) void;
export @symbol("g_dbus_server_stop") fn dbus_server_stop(server: *DBusServer) void;
export fn dbus_server_connect_new_connection(
	instance: *DBusServer,
	handler: *fn(instance: *DBusServer, connection: *DBusConnection, data: *opaque) glib::boolean,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"new-connection\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export type DataInputStream = struct {
	parent_instance: BufferedInputStream,
	priv: *DataInputStreamPrivate,
};
export @symbol("g_data_input_stream_new") fn data_input_stream_new(base_stream: *InputStream) *DataInputStream;
export @symbol("g_data_input_stream_get_byte_order") fn data_input_stream_get_byte_order(stream: *DataInputStream) DataStreamByteOrder;
export @symbol("g_data_input_stream_get_newline_type") fn data_input_stream_get_newline_type(stream: *DataInputStream) DataStreamNewlineType;
export @symbol("g_data_input_stream_read_byte") fn data_input_stream_read_byte(stream: *DataInputStream, cancellable: *Cancellable, error: nullable **glib::Error) c::uchar;
export @symbol("g_data_input_stream_read_int16") fn data_input_stream_read_int16(stream: *DataInputStream, cancellable: *Cancellable, error: nullable **glib::Error) i16;
export @symbol("g_data_input_stream_read_int32") fn data_input_stream_read_int32(stream: *DataInputStream, cancellable: *Cancellable, error: nullable **glib::Error) i32;
export @symbol("g_data_input_stream_read_int64") fn data_input_stream_read_int64(stream: *DataInputStream, cancellable: *Cancellable, error: nullable **glib::Error) i64;
export @symbol("g_data_input_stream_read_line") fn data_input_stream_read_line(stream: *DataInputStream, length: *size, cancellable: *Cancellable, error: nullable **glib::Error) *c::char;
export @symbol("g_data_input_stream_read_line_async") fn data_input_stream_read_line_async(stream: *DataInputStream, io_priority: int, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void;
export @symbol("g_data_input_stream_read_line_finish") fn data_input_stream_read_line_finish(stream: *DataInputStream, result: *AsyncResult, length: *size, error: nullable **glib::Error) *c::char;
export @symbol("g_data_input_stream_read_line_finish_utf8") fn data_input_stream_read_line_finish_utf8(stream: *DataInputStream, result: *AsyncResult, length: *size, error: nullable **glib::Error) *c::char;
export @symbol("g_data_input_stream_read_line_utf8") fn data_input_stream_read_line_utf8(stream: *DataInputStream, length: *size, cancellable: *Cancellable, error: nullable **glib::Error) *c::char;
export @symbol("g_data_input_stream_read_uint16") fn data_input_stream_read_uint16(stream: *DataInputStream, cancellable: *Cancellable, error: nullable **glib::Error) u16;
export @symbol("g_data_input_stream_read_uint32") fn data_input_stream_read_uint32(stream: *DataInputStream, cancellable: *Cancellable, error: nullable **glib::Error) u32;
export @symbol("g_data_input_stream_read_uint64") fn data_input_stream_read_uint64(stream: *DataInputStream, cancellable: *Cancellable, error: nullable **glib::Error) u64;
export @symbol("g_data_input_stream_read_until") fn data_input_stream_read_until(stream: *DataInputStream, stop_chars: *c::char, length: *size, cancellable: *Cancellable, error: nullable **glib::Error) *c::char;
export @symbol("g_data_input_stream_read_until_async") fn data_input_stream_read_until_async(stream: *DataInputStream, stop_chars: *c::char, io_priority: int, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void;
export @symbol("g_data_input_stream_read_until_finish") fn data_input_stream_read_until_finish(stream: *DataInputStream, result: *AsyncResult, length: *size, error: nullable **glib::Error) *c::char;
export @symbol("g_data_input_stream_read_upto") fn data_input_stream_read_upto(stream: *DataInputStream, stop_chars: *c::char, stop_chars_len: c::ssize, length: *size, cancellable: *Cancellable, error: nullable **glib::Error) *c::char;
export @symbol("g_data_input_stream_read_upto_async") fn data_input_stream_read_upto_async(stream: *DataInputStream, stop_chars: *c::char, stop_chars_len: c::ssize, io_priority: int, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void;
export @symbol("g_data_input_stream_read_upto_finish") fn data_input_stream_read_upto_finish(stream: *DataInputStream, result: *AsyncResult, length: *size, error: nullable **glib::Error) *c::char;
export @symbol("g_data_input_stream_set_byte_order") fn data_input_stream_set_byte_order(stream: *DataInputStream, order: DataStreamByteOrder) void;
export @symbol("g_data_input_stream_set_newline_type") fn data_input_stream_set_newline_type(stream: *DataInputStream, type_: DataStreamNewlineType) void;
export type DataOutputStream = struct {
	parent_instance: FilterOutputStream,
	priv: *DataOutputStreamPrivate,
};
export @symbol("g_data_output_stream_new") fn data_output_stream_new(base_stream: *OutputStream) *DataOutputStream;
export @symbol("g_data_output_stream_get_byte_order") fn data_output_stream_get_byte_order(stream: *DataOutputStream) DataStreamByteOrder;
export @symbol("g_data_output_stream_put_byte") fn data_output_stream_put_byte(stream: *DataOutputStream, data: c::uchar, cancellable: *Cancellable, error: nullable **glib::Error) glib::boolean;
export @symbol("g_data_output_stream_put_int16") fn data_output_stream_put_int16(stream: *DataOutputStream, data: i16, cancellable: *Cancellable, error: nullable **glib::Error) glib::boolean;
export @symbol("g_data_output_stream_put_int32") fn data_output_stream_put_int32(stream: *DataOutputStream, data: i32, cancellable: *Cancellable, error: nullable **glib::Error) glib::boolean;
export @symbol("g_data_output_stream_put_int64") fn data_output_stream_put_int64(stream: *DataOutputStream, data: i64, cancellable: *Cancellable, error: nullable **glib::Error) glib::boolean;
export @symbol("g_data_output_stream_put_string") fn data_output_stream_put_string(stream: *DataOutputStream, str_: *c::char, cancellable: *Cancellable, error: nullable **glib::Error) glib::boolean;
export @symbol("g_data_output_stream_put_uint16") fn data_output_stream_put_uint16(stream: *DataOutputStream, data: u16, cancellable: *Cancellable, error: nullable **glib::Error) glib::boolean;
export @symbol("g_data_output_stream_put_uint32") fn data_output_stream_put_uint32(stream: *DataOutputStream, data: u32, cancellable: *Cancellable, error: nullable **glib::Error) glib::boolean;
export @symbol("g_data_output_stream_put_uint64") fn data_output_stream_put_uint64(stream: *DataOutputStream, data: u64, cancellable: *Cancellable, error: nullable **glib::Error) glib::boolean;
export @symbol("g_data_output_stream_set_byte_order") fn data_output_stream_set_byte_order(stream: *DataOutputStream, order: DataStreamByteOrder) void;
export type DebugControllerDBus = struct {
	parent_instance: gobject::Object,
};
export @symbol("g_debug_controller_dbus_new") fn debug_controller_dbus_new(connection: *DBusConnection, cancellable: *Cancellable, error: nullable **glib::Error) *DebugControllerDBus;
export @symbol("g_debug_controller_dbus_stop") fn debug_controller_dbus_stop(self: *DebugControllerDBus) void;
export fn debug_controller_dbus_connect_authorize(
	instance: *DebugControllerDBus,
	handler: *fn(instance: *DebugControllerDBus, invocation: *DBusMethodInvocation, data: *opaque) glib::boolean,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"authorize\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export type DesktopAppInfo = *opaque;
export @symbol("g_desktop_app_info_new") fn desktop_app_info_new(desktop_id: *c::char) *DesktopAppInfo;
export @symbol("g_desktop_app_info_new_from_filename") fn desktop_app_info_new_from_filename(filename: *c::char) *DesktopAppInfo;
export @symbol("g_desktop_app_info_new_from_keyfile") fn desktop_app_info_new_from_keyfile(key_file: *glib::KeyFile) *DesktopAppInfo;
export @symbol("g_desktop_app_info_get_action_name") fn desktop_app_info_get_action_name(info: *DesktopAppInfo, action_name: *c::char) *c::char;
export @symbol("g_desktop_app_info_get_boolean") fn desktop_app_info_get_boolean(info: *DesktopAppInfo, key: *c::char) glib::boolean;
export @symbol("g_desktop_app_info_get_categories") fn desktop_app_info_get_categories(info: *DesktopAppInfo) *c::char;
export @symbol("g_desktop_app_info_get_filename") fn desktop_app_info_get_filename(info: *DesktopAppInfo) *c::char;
export @symbol("g_desktop_app_info_get_generic_name") fn desktop_app_info_get_generic_name(info: *DesktopAppInfo) *c::char;
export @symbol("g_desktop_app_info_get_is_hidden") fn desktop_app_info_get_is_hidden(info: *DesktopAppInfo) glib::boolean;
export @symbol("g_desktop_app_info_get_keywords") fn desktop_app_info_get_keywords(info: *DesktopAppInfo) **c::char;
export @symbol("g_desktop_app_info_get_locale_string") fn desktop_app_info_get_locale_string(info: *DesktopAppInfo, key: *c::char) *c::char;
export @symbol("g_desktop_app_info_get_nodisplay") fn desktop_app_info_get_nodisplay(info: *DesktopAppInfo) glib::boolean;
export @symbol("g_desktop_app_info_get_show_in") fn desktop_app_info_get_show_in(info: *DesktopAppInfo, desktop_env: *c::char) glib::boolean;
export @symbol("g_desktop_app_info_get_startup_wm_class") fn desktop_app_info_get_startup_wm_class(info: *DesktopAppInfo) *c::char;
export @symbol("g_desktop_app_info_get_string") fn desktop_app_info_get_string(info: *DesktopAppInfo, key: *c::char) *c::char;
export @symbol("g_desktop_app_info_get_string_list") fn desktop_app_info_get_string_list(info: *DesktopAppInfo, key: *c::char, length: *size) **c::char;
export @symbol("g_desktop_app_info_has_key") fn desktop_app_info_has_key(info: *DesktopAppInfo, key: *c::char) glib::boolean;
export @symbol("g_desktop_app_info_launch_action") fn desktop_app_info_launch_action(info: *DesktopAppInfo, action_name: *c::char, launch_context: *AppLaunchContext) void;
export @symbol("g_desktop_app_info_launch_uris_as_manager") fn desktop_app_info_launch_uris_as_manager(appinfo: *DesktopAppInfo, uris: *glib::List, launch_context: *AppLaunchContext, spawn_flags: glib::SpawnFlags, user_setup: glib::SpawnChildSetupFunc, user_setup_data: *opaque, pid_callback: DesktopAppLaunchCallback, pid_callback_data: *opaque, error: nullable **glib::Error) glib::boolean;
export @symbol("g_desktop_app_info_launch_uris_as_manager_with_fds") fn desktop_app_info_launch_uris_as_manager_with_fds(appinfo: *DesktopAppInfo, uris: *glib::List, launch_context: *AppLaunchContext, spawn_flags: glib::SpawnFlags, user_setup: glib::SpawnChildSetupFunc, user_setup_data: *opaque, pid_callback: DesktopAppLaunchCallback, pid_callback_data: *opaque, stdin_fd: int, stdout_fd: int, stderr_fd: int, error: nullable **glib::Error) glib::boolean;
export @symbol("g_desktop_app_info_list_actions") fn desktop_app_info_list_actions(info: *DesktopAppInfo) **c::char;
export @symbol("g_desktop_app_info_get_implementations") fn desktop_app_info_get_implementations(interface: *c::char) *glib::List;
export @symbol("g_desktop_app_info_search") fn desktop_app_info_search(search_string: *c::char) ***c::char;
export @symbol("g_desktop_app_info_set_desktop_env") fn desktop_app_info_set_desktop_env(desktop_env: *c::char) void;
export type Emblem = *opaque;
export @symbol("g_emblem_new") fn emblem_new(icon: *Icon) *Emblem;
export @symbol("g_emblem_new_with_origin") fn emblem_new_with_origin(icon: *Icon, origin: EmblemOrigin) *Emblem;
export @symbol("g_emblem_get_icon") fn emblem_get_icon(emblem: *Emblem) *Icon;
export @symbol("g_emblem_get_origin") fn emblem_get_origin(emblem: *Emblem) EmblemOrigin;
export type EmblemedIcon = struct {
	parent_instance: gobject::Object,
	priv: *EmblemedIconPrivate,
};
export @symbol("g_emblemed_icon_new") fn emblemed_icon_new(icon: *Icon, emblem: *Emblem) *Icon;
export @symbol("g_emblemed_icon_add_emblem") fn emblemed_icon_add_emblem(emblemed: *EmblemedIcon, emblem: *Emblem) void;
export @symbol("g_emblemed_icon_clear_emblems") fn emblemed_icon_clear_emblems(emblemed: *EmblemedIcon) void;
export @symbol("g_emblemed_icon_get_emblems") fn emblemed_icon_get_emblems(emblemed: *EmblemedIcon) *glib::List;
export @symbol("g_emblemed_icon_get_icon") fn emblemed_icon_get_icon(emblemed: *EmblemedIcon) *Icon;
export type FileEnumerator = struct {
	parent_instance: gobject::Object,
	priv: *FileEnumeratorPrivate,
};
export @symbol("g_file_enumerator_close") fn file_enumerator_close(enumerator: *FileEnumerator, cancellable: *Cancellable, error: nullable **glib::Error) glib::boolean;
export @symbol("g_file_enumerator_close_async") fn file_enumerator_close_async(enumerator: *FileEnumerator, io_priority: int, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void;
export @symbol("g_file_enumerator_close_finish") fn file_enumerator_close_finish(enumerator: *FileEnumerator, result: *AsyncResult, error: nullable **glib::Error) glib::boolean;
export @symbol("g_file_enumerator_get_child") fn file_enumerator_get_child(enumerator: *FileEnumerator, info: *FileInfo) *File;
export @symbol("g_file_enumerator_get_container") fn file_enumerator_get_container(enumerator: *FileEnumerator) *File;
export @symbol("g_file_enumerator_has_pending") fn file_enumerator_has_pending(enumerator: *FileEnumerator) glib::boolean;
export @symbol("g_file_enumerator_is_closed") fn file_enumerator_is_closed(enumerator: *FileEnumerator) glib::boolean;
export @symbol("g_file_enumerator_iterate") fn file_enumerator_iterate(direnum: *FileEnumerator, out_info: **FileInfo, out_child: **File, cancellable: *Cancellable, error: nullable **glib::Error) glib::boolean;
export @symbol("g_file_enumerator_next_file") fn file_enumerator_next_file(enumerator: *FileEnumerator, cancellable: *Cancellable, error: nullable **glib::Error) *FileInfo;
export @symbol("g_file_enumerator_next_files_async") fn file_enumerator_next_files_async(enumerator: *FileEnumerator, num_files: int, io_priority: int, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void;
export @symbol("g_file_enumerator_next_files_finish") fn file_enumerator_next_files_finish(enumerator: *FileEnumerator, result: *AsyncResult, error: nullable **glib::Error) *glib::List;
export @symbol("g_file_enumerator_set_pending") fn file_enumerator_set_pending(enumerator: *FileEnumerator, pending: glib::boolean) void;
export type FileIOStream = struct {
	parent_instance: IOStream,
	priv: *FileIOStreamPrivate,
};
export @symbol("g_file_io_stream_get_etag") fn file_iostream_get_etag(stream: *FileIOStream) *c::char;
export @symbol("g_file_io_stream_query_info") fn file_iostream_query_info(stream: *FileIOStream, attributes: *c::char, cancellable: *Cancellable, error: nullable **glib::Error) *FileInfo;
export @symbol("g_file_io_stream_query_info_async") fn file_iostream_query_info_async(stream: *FileIOStream, attributes: *c::char, io_priority: int, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void;
export @symbol("g_file_io_stream_query_info_finish") fn file_iostream_query_info_finish(stream: *FileIOStream, result: *AsyncResult, error: nullable **glib::Error) *FileInfo;
export type FileIcon = *opaque;
export @symbol("g_file_icon_new") fn file_icon_new(file: *File) *Icon;
export @symbol("g_file_icon_get_file") fn file_icon_get_file(icon: *FileIcon) *File;
export type FileInfo = *opaque;
export @symbol("g_file_info_new") fn file_info_new() *FileInfo;
export @symbol("g_file_info_clear_status") fn file_info_clear_status(info: *FileInfo) void;
export @symbol("g_file_info_copy_into") fn file_info_copy_into(src_info: *FileInfo, dest_info: *FileInfo) void;
export @symbol("g_file_info_dup") fn file_info_dup(other: *FileInfo) *FileInfo;
export @symbol("g_file_info_get_access_date_time") fn file_info_get_access_date_time(info: *FileInfo) *glib::DateTime;
export @symbol("g_file_info_get_attribute_as_string") fn file_info_get_attribute_as_string(info: *FileInfo, attribute: *c::char) *c::char;
export @symbol("g_file_info_get_attribute_boolean") fn file_info_get_attribute_boolean(info: *FileInfo, attribute: *c::char) glib::boolean;
export @symbol("g_file_info_get_attribute_byte_string") fn file_info_get_attribute_byte_string(info: *FileInfo, attribute: *c::char) *c::char;
export @symbol("g_file_info_get_attribute_data") fn file_info_get_attribute_data(info: *FileInfo, attribute: *c::char, type_: *FileAttributeType, value_pp: **opaque, status: *FileAttributeStatus) glib::boolean;
export @symbol("g_file_info_get_attribute_file_path") fn file_info_get_attribute_file_path(info: *FileInfo, attribute: *c::char) *c::char;
export @symbol("g_file_info_get_attribute_int32") fn file_info_get_attribute_int32(info: *FileInfo, attribute: *c::char) i32;
export @symbol("g_file_info_get_attribute_int64") fn file_info_get_attribute_int64(info: *FileInfo, attribute: *c::char) i64;
export @symbol("g_file_info_get_attribute_object") fn file_info_get_attribute_object(info: *FileInfo, attribute: *c::char) *gobject::Object;
export @symbol("g_file_info_get_attribute_status") fn file_info_get_attribute_status(info: *FileInfo, attribute: *c::char) FileAttributeStatus;
export @symbol("g_file_info_get_attribute_string") fn file_info_get_attribute_string(info: *FileInfo, attribute: *c::char) *c::char;
export @symbol("g_file_info_get_attribute_stringv") fn file_info_get_attribute_stringv(info: *FileInfo, attribute: *c::char) **c::char;
export @symbol("g_file_info_get_attribute_type") fn file_info_get_attribute_type(info: *FileInfo, attribute: *c::char) FileAttributeType;
export @symbol("g_file_info_get_attribute_uint32") fn file_info_get_attribute_uint32(info: *FileInfo, attribute: *c::char) u32;
export @symbol("g_file_info_get_attribute_uint64") fn file_info_get_attribute_uint64(info: *FileInfo, attribute: *c::char) u64;
export @symbol("g_file_info_get_content_type") fn file_info_get_content_type(info: *FileInfo) *c::char;
export @symbol("g_file_info_get_creation_date_time") fn file_info_get_creation_date_time(info: *FileInfo) *glib::DateTime;
export @symbol("g_file_info_get_deletion_date") fn file_info_get_deletion_date(info: *FileInfo) *glib::DateTime;
export @symbol("g_file_info_get_display_name") fn file_info_get_display_name(info: *FileInfo) *c::char;
export @symbol("g_file_info_get_edit_name") fn file_info_get_edit_name(info: *FileInfo) *c::char;
export @symbol("g_file_info_get_etag") fn file_info_get_etag(info: *FileInfo) *c::char;
export @symbol("g_file_info_get_file_type") fn file_info_get_file_type(info: *FileInfo) FileType;
export @symbol("g_file_info_get_icon") fn file_info_get_icon(info: *FileInfo) *Icon;
export @symbol("g_file_info_get_is_backup") fn file_info_get_is_backup(info: *FileInfo) glib::boolean;
export @symbol("g_file_info_get_is_hidden") fn file_info_get_is_hidden(info: *FileInfo) glib::boolean;
export @symbol("g_file_info_get_is_symlink") fn file_info_get_is_symlink(info: *FileInfo) glib::boolean;
export @symbol("g_file_info_get_modification_date_time") fn file_info_get_modification_date_time(info: *FileInfo) *glib::DateTime;
export @symbol("g_file_info_get_modification_time") fn file_info_get_modification_time(info: *FileInfo, result: *glib::TimeVal) void;
export @symbol("g_file_info_get_name") fn file_info_get_name(info: *FileInfo) *c::char;
export @symbol("g_file_info_get_size") fn file_info_get_size(info: *FileInfo) i64;
export @symbol("g_file_info_get_sort_order") fn file_info_get_sort_order(info: *FileInfo) i32;
export @symbol("g_file_info_get_symbolic_icon") fn file_info_get_symbolic_icon(info: *FileInfo) *Icon;
export @symbol("g_file_info_get_symlink_target") fn file_info_get_symlink_target(info: *FileInfo) *c::char;
export @symbol("g_file_info_has_attribute") fn file_info_has_attribute(info: *FileInfo, attribute: *c::char) glib::boolean;
export @symbol("g_file_info_has_namespace") fn file_info_has_namespace(info: *FileInfo, name_space: *c::char) glib::boolean;
export @symbol("g_file_info_list_attributes") fn file_info_list_attributes(info: *FileInfo, name_space: *c::char) **c::char;
export @symbol("g_file_info_remove_attribute") fn file_info_remove_attribute(info: *FileInfo, attribute: *c::char) void;
export @symbol("g_file_info_set_access_date_time") fn file_info_set_access_date_time(info: *FileInfo, atime: *glib::DateTime) void;
export @symbol("g_file_info_set_attribute") fn file_info_set_attribute(info: *FileInfo, attribute: *c::char, type_: FileAttributeType, value_p: *opaque) void;
export @symbol("g_file_info_set_attribute_boolean") fn file_info_set_attribute_boolean(info: *FileInfo, attribute: *c::char, attr_value: glib::boolean) void;
export @symbol("g_file_info_set_attribute_byte_string") fn file_info_set_attribute_byte_string(info: *FileInfo, attribute: *c::char, attr_value: *c::char) void;
export @symbol("g_file_info_set_attribute_file_path") fn file_info_set_attribute_file_path(info: *FileInfo, attribute: *c::char, attr_value: *c::char) void;
export @symbol("g_file_info_set_attribute_int32") fn file_info_set_attribute_int32(info: *FileInfo, attribute: *c::char, attr_value: i32) void;
export @symbol("g_file_info_set_attribute_int64") fn file_info_set_attribute_int64(info: *FileInfo, attribute: *c::char, attr_value: i64) void;
export @symbol("g_file_info_set_attribute_mask") fn file_info_set_attribute_mask(info: *FileInfo, mask: *FileAttributeMatcher) void;
export @symbol("g_file_info_set_attribute_object") fn file_info_set_attribute_object(info: *FileInfo, attribute: *c::char, attr_value: *gobject::Object) void;
export @symbol("g_file_info_set_attribute_status") fn file_info_set_attribute_status(info: *FileInfo, attribute: *c::char, status: FileAttributeStatus) glib::boolean;
export @symbol("g_file_info_set_attribute_string") fn file_info_set_attribute_string(info: *FileInfo, attribute: *c::char, attr_value: *c::char) void;
export @symbol("g_file_info_set_attribute_stringv") fn file_info_set_attribute_stringv(info: *FileInfo, attribute: *c::char, attr_value: **c::char) void;
export @symbol("g_file_info_set_attribute_uint32") fn file_info_set_attribute_uint32(info: *FileInfo, attribute: *c::char, attr_value: u32) void;
export @symbol("g_file_info_set_attribute_uint64") fn file_info_set_attribute_uint64(info: *FileInfo, attribute: *c::char, attr_value: u64) void;
export @symbol("g_file_info_set_content_type") fn file_info_set_content_type(info: *FileInfo, content_type: *c::char) void;
export @symbol("g_file_info_set_creation_date_time") fn file_info_set_creation_date_time(info: *FileInfo, creation_time: *glib::DateTime) void;
export @symbol("g_file_info_set_display_name") fn file_info_set_display_name(info: *FileInfo, display_name: *c::char) void;
export @symbol("g_file_info_set_edit_name") fn file_info_set_edit_name(info: *FileInfo, edit_name: *c::char) void;
export @symbol("g_file_info_set_file_type") fn file_info_set_file_type(info: *FileInfo, type_: FileType) void;
export @symbol("g_file_info_set_icon") fn file_info_set_icon(info: *FileInfo, icon: *Icon) void;
export @symbol("g_file_info_set_is_hidden") fn file_info_set_is_hidden(info: *FileInfo, is_hidden: glib::boolean) void;
export @symbol("g_file_info_set_is_symlink") fn file_info_set_is_symlink(info: *FileInfo, is_symlink: glib::boolean) void;
export @symbol("g_file_info_set_modification_date_time") fn file_info_set_modification_date_time(info: *FileInfo, mtime: *glib::DateTime) void;
export @symbol("g_file_info_set_modification_time") fn file_info_set_modification_time(info: *FileInfo, mtime: *glib::TimeVal) void;
export @symbol("g_file_info_set_name") fn file_info_set_name(info: *FileInfo, name: *c::char) void;
export @symbol("g_file_info_set_size") fn file_info_set_size(info: *FileInfo, size_: i64) void;
export @symbol("g_file_info_set_sort_order") fn file_info_set_sort_order(info: *FileInfo, sort_order: i32) void;
export @symbol("g_file_info_set_symbolic_icon") fn file_info_set_symbolic_icon(info: *FileInfo, icon: *Icon) void;
export @symbol("g_file_info_set_symlink_target") fn file_info_set_symlink_target(info: *FileInfo, symlink_target: *c::char) void;
export @symbol("g_file_info_unset_attribute_mask") fn file_info_unset_attribute_mask(info: *FileInfo) void;
export type FileInputStream = struct {
	parent_instance: InputStream,
	priv: *FileInputStreamPrivate,
};
export @symbol("g_file_input_stream_query_info") fn file_input_stream_query_info(stream: *FileInputStream, attributes: *c::char, cancellable: *Cancellable, error: nullable **glib::Error) *FileInfo;
export @symbol("g_file_input_stream_query_info_async") fn file_input_stream_query_info_async(stream: *FileInputStream, attributes: *c::char, io_priority: int, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void;
export @symbol("g_file_input_stream_query_info_finish") fn file_input_stream_query_info_finish(stream: *FileInputStream, result: *AsyncResult, error: nullable **glib::Error) *FileInfo;
export type FileMonitor = struct {
	parent_instance: gobject::Object,
	priv: *FileMonitorPrivate,
};
export @symbol("g_file_monitor_cancel") fn file_monitor_cancel(monitor: *FileMonitor) glib::boolean;
export @symbol("g_file_monitor_emit_event") fn file_monitor_emit_event(monitor: *FileMonitor, child: *File, other_file: *File, event_type: FileMonitorEvent) void;
export @symbol("g_file_monitor_is_cancelled") fn file_monitor_is_cancelled(monitor: *FileMonitor) glib::boolean;
export @symbol("g_file_monitor_set_rate_limit") fn file_monitor_set_rate_limit(monitor: *FileMonitor, limit_msecs: int) void;
export fn file_monitor_connect_changed(
	instance: *FileMonitor,
	handler: *fn(instance: *FileMonitor, file: *File, other_file: *File, event_type: FileMonitorEvent, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"changed\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export type FileOutputStream = struct {
	parent_instance: OutputStream,
	priv: *FileOutputStreamPrivate,
};
export @symbol("g_file_output_stream_get_etag") fn file_output_stream_get_etag(stream: *FileOutputStream) *c::char;
export @symbol("g_file_output_stream_query_info") fn file_output_stream_query_info(stream: *FileOutputStream, attributes: *c::char, cancellable: *Cancellable, error: nullable **glib::Error) *FileInfo;
export @symbol("g_file_output_stream_query_info_async") fn file_output_stream_query_info_async(stream: *FileOutputStream, attributes: *c::char, io_priority: int, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void;
export @symbol("g_file_output_stream_query_info_finish") fn file_output_stream_query_info_finish(stream: *FileOutputStream, result: *AsyncResult, error: nullable **glib::Error) *FileInfo;
export type FilenameCompleter = *opaque;
export @symbol("g_filename_completer_new") fn filename_completer_new() *FilenameCompleter;
export @symbol("g_filename_completer_get_completion_suffix") fn filename_completer_get_completion_suffix(completer: *FilenameCompleter, initial_text: *c::char) *c::char;
export @symbol("g_filename_completer_get_completions") fn filename_completer_get_completions(completer: *FilenameCompleter, initial_text: *c::char) **c::char;
export @symbol("g_filename_completer_set_dirs_only") fn filename_completer_set_dirs_only(completer: *FilenameCompleter, dirs_only: glib::boolean) void;
export fn filename_completer_connect_got_completion_data(
	instance: *FilenameCompleter,
	handler: *fn(instance: *FilenameCompleter, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"got-completion-data\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export type FilterInputStream = struct {
	parent_instance: InputStream,
	base_stream: *InputStream,
};
export @symbol("g_filter_input_stream_get_base_stream") fn filter_input_stream_get_base_stream(stream: *FilterInputStream) *InputStream;
export @symbol("g_filter_input_stream_get_close_base_stream") fn filter_input_stream_get_close_base_stream(stream: *FilterInputStream) glib::boolean;
export @symbol("g_filter_input_stream_set_close_base_stream") fn filter_input_stream_set_close_base_stream(stream: *FilterInputStream, close_base: glib::boolean) void;
export type FilterOutputStream = struct {
	parent_instance: OutputStream,
	base_stream: *OutputStream,
};
export @symbol("g_filter_output_stream_get_base_stream") fn filter_output_stream_get_base_stream(stream: *FilterOutputStream) *OutputStream;
export @symbol("g_filter_output_stream_get_close_base_stream") fn filter_output_stream_get_close_base_stream(stream: *FilterOutputStream) glib::boolean;
export @symbol("g_filter_output_stream_set_close_base_stream") fn filter_output_stream_set_close_base_stream(stream: *FilterOutputStream, close_base: glib::boolean) void;
export type IOModule = *opaque;
export @symbol("g_io_module_new") fn iomodule_new(filename: *c::char) *IOModule;
export @symbol("g_io_module_load") fn iomodule_load(module: *IOModule) void;
export @symbol("g_io_module_unload") fn iomodule_unload(module: *IOModule) void;
export @symbol("g_io_module_query") fn iomodule_query() **c::char;
export type IOStream = struct {
	parent_instance: gobject::Object,
	priv: *IOStreamPrivate,
};
export @symbol("g_io_stream_clear_pending") fn iostream_clear_pending(stream: *IOStream) void;
export @symbol("g_io_stream_close") fn iostream_close(stream: *IOStream, cancellable: *Cancellable, error: nullable **glib::Error) glib::boolean;
export @symbol("g_io_stream_close_async") fn iostream_close_async(stream: *IOStream, io_priority: int, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void;
export @symbol("g_io_stream_close_finish") fn iostream_close_finish(stream: *IOStream, result: *AsyncResult, error: nullable **glib::Error) glib::boolean;
export @symbol("g_io_stream_get_input_stream") fn iostream_get_input_stream(stream: *IOStream) *InputStream;
export @symbol("g_io_stream_get_output_stream") fn iostream_get_output_stream(stream: *IOStream) *OutputStream;
export @symbol("g_io_stream_has_pending") fn iostream_has_pending(stream: *IOStream) glib::boolean;
export @symbol("g_io_stream_is_closed") fn iostream_is_closed(stream: *IOStream) glib::boolean;
export @symbol("g_io_stream_set_pending") fn iostream_set_pending(stream: *IOStream, error: nullable **glib::Error) glib::boolean;
export @symbol("g_io_stream_splice_async") fn iostream_splice_async(stream1: *IOStream, stream2: *IOStream, flags: IOStreamSpliceFlags, io_priority: int, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void;
export @symbol("g_io_stream_splice_finish") fn iostream_splice_finish(result: *AsyncResult, error: nullable **glib::Error) glib::boolean;
export type InetAddress = struct {
	parent_instance: gobject::Object,
	priv: *InetAddressPrivate,
};
export @symbol("g_inet_address_new_any") fn inet_address_new_any(family: SocketFamily) *InetAddress;
export @symbol("g_inet_address_new_from_bytes") fn inet_address_new_from_bytes(bytes: *u8, family: SocketFamily) *InetAddress;
export @symbol("g_inet_address_new_from_string") fn inet_address_new_from_string(string: *c::char) *InetAddress;
export @symbol("g_inet_address_new_loopback") fn inet_address_new_loopback(family: SocketFamily) *InetAddress;
export @symbol("g_inet_address_equal") fn inet_address_equal(address: *InetAddress, other_address: *InetAddress) glib::boolean;
export @symbol("g_inet_address_get_family") fn inet_address_get_family(address: *InetAddress) SocketFamily;
export @symbol("g_inet_address_get_is_any") fn inet_address_get_is_any(address: *InetAddress) glib::boolean;
export @symbol("g_inet_address_get_is_link_local") fn inet_address_get_is_link_local(address: *InetAddress) glib::boolean;
export @symbol("g_inet_address_get_is_loopback") fn inet_address_get_is_loopback(address: *InetAddress) glib::boolean;
export @symbol("g_inet_address_get_is_mc_global") fn inet_address_get_is_mc_global(address: *InetAddress) glib::boolean;
export @symbol("g_inet_address_get_is_mc_link_local") fn inet_address_get_is_mc_link_local(address: *InetAddress) glib::boolean;
export @symbol("g_inet_address_get_is_mc_node_local") fn inet_address_get_is_mc_node_local(address: *InetAddress) glib::boolean;
export @symbol("g_inet_address_get_is_mc_org_local") fn inet_address_get_is_mc_org_local(address: *InetAddress) glib::boolean;
export @symbol("g_inet_address_get_is_mc_site_local") fn inet_address_get_is_mc_site_local(address: *InetAddress) glib::boolean;
export @symbol("g_inet_address_get_is_multicast") fn inet_address_get_is_multicast(address: *InetAddress) glib::boolean;
export @symbol("g_inet_address_get_is_site_local") fn inet_address_get_is_site_local(address: *InetAddress) glib::boolean;
export @symbol("g_inet_address_get_native_size") fn inet_address_get_native_size(address: *InetAddress) size;
export @symbol("g_inet_address_to_bytes") fn inet_address_to_bytes(address: *InetAddress) *u8;
export @symbol("g_inet_address_to_string") fn inet_address_to_string(address: *InetAddress) *c::char;
export type InetAddressMask = struct {
	parent_instance: gobject::Object,
	priv: *InetAddressMaskPrivate,
};
export @symbol("g_inet_address_mask_new") fn inet_address_mask_new(addr: *InetAddress, length: uint, error: nullable **glib::Error) *InetAddressMask;
export @symbol("g_inet_address_mask_new_from_string") fn inet_address_mask_new_from_string(mask_string: *c::char, error: nullable **glib::Error) *InetAddressMask;
export @symbol("g_inet_address_mask_equal") fn inet_address_mask_equal(mask: *InetAddressMask, mask2: *InetAddressMask) glib::boolean;
export @symbol("g_inet_address_mask_get_address") fn inet_address_mask_get_address(mask: *InetAddressMask) *InetAddress;
export @symbol("g_inet_address_mask_get_family") fn inet_address_mask_get_family(mask: *InetAddressMask) SocketFamily;
export @symbol("g_inet_address_mask_get_length") fn inet_address_mask_get_length(mask: *InetAddressMask) uint;
export @symbol("g_inet_address_mask_matches") fn inet_address_mask_matches(mask: *InetAddressMask, address: *InetAddress) glib::boolean;
export @symbol("g_inet_address_mask_to_string") fn inet_address_mask_to_string(mask: *InetAddressMask) *c::char;
export type InetSocketAddress = struct {
	parent_instance: SocketAddress,
	priv: *InetSocketAddressPrivate,
};
export @symbol("g_inet_socket_address_new") fn inet_socket_address_new(address: *InetAddress, port: u16) *SocketAddress;
export @symbol("g_inet_socket_address_new_from_string") fn inet_socket_address_new_from_string(address: *c::char, port: uint) *SocketAddress;
export @symbol("g_inet_socket_address_get_address") fn inet_socket_address_get_address(address: *InetSocketAddress) *InetAddress;
export @symbol("g_inet_socket_address_get_flowinfo") fn inet_socket_address_get_flowinfo(address: *InetSocketAddress) u32;
export @symbol("g_inet_socket_address_get_port") fn inet_socket_address_get_port(address: *InetSocketAddress) u16;
export @symbol("g_inet_socket_address_get_scope_id") fn inet_socket_address_get_scope_id(address: *InetSocketAddress) u32;
export type InputStream = struct {
	parent_instance: gobject::Object,
	priv: *InputStreamPrivate,
};
export @symbol("g_input_stream_clear_pending") fn input_stream_clear_pending(stream: *InputStream) void;
export @symbol("g_input_stream_close") fn input_stream_close(stream: *InputStream, cancellable: *Cancellable, error: nullable **glib::Error) glib::boolean;
export @symbol("g_input_stream_close_async") fn input_stream_close_async(stream: *InputStream, io_priority: int, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void;
export @symbol("g_input_stream_close_finish") fn input_stream_close_finish(stream: *InputStream, result: *AsyncResult, error: nullable **glib::Error) glib::boolean;
export @symbol("g_input_stream_has_pending") fn input_stream_has_pending(stream: *InputStream) glib::boolean;
export @symbol("g_input_stream_is_closed") fn input_stream_is_closed(stream: *InputStream) glib::boolean;
export @symbol("g_input_stream_read") fn input_stream_read(stream: *InputStream, buffer: *opaque, count: size, cancellable: *Cancellable, error: nullable **glib::Error) c::ssize;
export @symbol("g_input_stream_read_all") fn input_stream_read_all(stream: *InputStream, buffer: *opaque, count: size, bytes_read: *size, cancellable: *Cancellable, error: nullable **glib::Error) glib::boolean;
export @symbol("g_input_stream_read_all_async") fn input_stream_read_all_async(stream: *InputStream, buffer: *opaque, count: size, io_priority: int, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void;
export @symbol("g_input_stream_read_all_finish") fn input_stream_read_all_finish(stream: *InputStream, result: *AsyncResult, bytes_read: *size, error: nullable **glib::Error) glib::boolean;
export @symbol("g_input_stream_read_async") fn input_stream_read_async(stream: *InputStream, buffer: *opaque, count: size, io_priority: int, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void;
export @symbol("g_input_stream_read_bytes") fn input_stream_read_bytes(stream: *InputStream, count: size, cancellable: *Cancellable, error: nullable **glib::Error) *glib::Bytes;
export @symbol("g_input_stream_read_bytes_async") fn input_stream_read_bytes_async(stream: *InputStream, count: size, io_priority: int, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void;
export @symbol("g_input_stream_read_bytes_finish") fn input_stream_read_bytes_finish(stream: *InputStream, result: *AsyncResult, error: nullable **glib::Error) *glib::Bytes;
export @symbol("g_input_stream_read_finish") fn input_stream_read_finish(stream: *InputStream, result: *AsyncResult, error: nullable **glib::Error) c::ssize;
export @symbol("g_input_stream_set_pending") fn input_stream_set_pending(stream: *InputStream, error: nullable **glib::Error) glib::boolean;
export @symbol("g_input_stream_skip") fn input_stream_skip(stream: *InputStream, count: size, cancellable: *Cancellable, error: nullable **glib::Error) c::ssize;
export @symbol("g_input_stream_skip_async") fn input_stream_skip_async(stream: *InputStream, count: size, io_priority: int, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void;
export @symbol("g_input_stream_skip_finish") fn input_stream_skip_finish(stream: *InputStream, result: *AsyncResult, error: nullable **glib::Error) c::ssize;
export type ListStore = *opaque;
export @symbol("g_list_store_new") fn list_store_new(item_type: glib::Type) *ListStore;
export @symbol("g_list_store_append") fn list_store_append(store: *ListStore, item: *opaque) void;
export @symbol("g_list_store_find") fn list_store_find(store: *ListStore, item: *opaque, position: *uint) glib::boolean;
export @symbol("g_list_store_find_with_equal_func") fn list_store_find_with_equal_func(store: *ListStore, item: *opaque, equal_func: glib::EqualFunc, position: *uint) glib::boolean;
export @symbol("g_list_store_find_with_equal_func_full") fn list_store_find_with_equal_func_full(store: *ListStore, item: *opaque, equal_func: glib::EqualFuncFull, user_data: *opaque, position: *uint) glib::boolean;
export @symbol("g_list_store_insert") fn list_store_insert(store: *ListStore, position: uint, item: *opaque) void;
export @symbol("g_list_store_insert_sorted") fn list_store_insert_sorted(store: *ListStore, item: *opaque, compare_func: glib::CompareDataFunc, user_data: *opaque) uint;
export @symbol("g_list_store_remove") fn list_store_remove(store: *ListStore, position: uint) void;
export @symbol("g_list_store_remove_all") fn list_store_remove_all(store: *ListStore) void;
export @symbol("g_list_store_sort") fn list_store_sort(store: *ListStore, compare_func: glib::CompareDataFunc, user_data: *opaque) void;
export @symbol("g_list_store_splice") fn list_store_splice(store: *ListStore, position: uint, n_removals: uint, additions: **opaque, n_additions: uint) void;
export type MemoryInputStream = struct {
	parent_instance: InputStream,
	priv: *MemoryInputStreamPrivate,
};
export @symbol("g_memory_input_stream_new") fn memory_input_stream_new() *InputStream;
export @symbol("g_memory_input_stream_new_from_bytes") fn memory_input_stream_new_from_bytes(bytes: *glib::Bytes) *InputStream;
export @symbol("g_memory_input_stream_new_from_data") fn memory_input_stream_new_from_data(data: *opaque, len_: c::ssize, destroy: glib::DestroyNotify) *InputStream;
export @symbol("g_memory_input_stream_add_bytes") fn memory_input_stream_add_bytes(stream: *MemoryInputStream, bytes: *glib::Bytes) void;
export @symbol("g_memory_input_stream_add_data") fn memory_input_stream_add_data(stream: *MemoryInputStream, data: *opaque, len_: c::ssize, destroy: glib::DestroyNotify) void;
export type MemoryOutputStream = struct {
	parent_instance: OutputStream,
	priv: *MemoryOutputStreamPrivate,
};
export @symbol("g_memory_output_stream_new") fn memory_output_stream_new(data: *opaque, size_: size, realloc_function: ReallocFunc, destroy_function: glib::DestroyNotify) *OutputStream;
export @symbol("g_memory_output_stream_new_resizable") fn memory_output_stream_new_resizable() *OutputStream;
export @symbol("g_memory_output_stream_get_data") fn memory_output_stream_get_data(ostream: *MemoryOutputStream) *opaque;
export @symbol("g_memory_output_stream_get_data_size") fn memory_output_stream_get_data_size(ostream: *MemoryOutputStream) size;
export @symbol("g_memory_output_stream_get_size") fn memory_output_stream_get_size(ostream: *MemoryOutputStream) size;
export @symbol("g_memory_output_stream_steal_as_bytes") fn memory_output_stream_steal_as_bytes(ostream: *MemoryOutputStream) *glib::Bytes;
export @symbol("g_memory_output_stream_steal_data") fn memory_output_stream_steal_data(ostream: *MemoryOutputStream) *opaque;
export type Menu = *opaque;
export @symbol("g_menu_new") fn menu_new() *Menu;
export @symbol("g_menu_append") fn menu_append(menu: *Menu, label: *c::char, detailed_action: *c::char) void;
export @symbol("g_menu_append_item") fn menu_append_item(menu: *Menu, item: *MenuItem) void;
export @symbol("g_menu_append_section") fn menu_append_section(menu: *Menu, label: *c::char, section: *MenuModel) void;
export @symbol("g_menu_append_submenu") fn menu_append_submenu(menu: *Menu, label: *c::char, submenu: *MenuModel) void;
export @symbol("g_menu_freeze") fn menu_freeze(menu: *Menu) void;
export @symbol("g_menu_insert") fn menu_insert(menu: *Menu, position: int, label: *c::char, detailed_action: *c::char) void;
export @symbol("g_menu_insert_item") fn menu_insert_item(menu: *Menu, position: int, item: *MenuItem) void;
export @symbol("g_menu_insert_section") fn menu_insert_section(menu: *Menu, position: int, label: *c::char, section: *MenuModel) void;
export @symbol("g_menu_insert_submenu") fn menu_insert_submenu(menu: *Menu, position: int, label: *c::char, submenu: *MenuModel) void;
export @symbol("g_menu_prepend") fn menu_prepend(menu: *Menu, label: *c::char, detailed_action: *c::char) void;
export @symbol("g_menu_prepend_item") fn menu_prepend_item(menu: *Menu, item: *MenuItem) void;
export @symbol("g_menu_prepend_section") fn menu_prepend_section(menu: *Menu, label: *c::char, section: *MenuModel) void;
export @symbol("g_menu_prepend_submenu") fn menu_prepend_submenu(menu: *Menu, label: *c::char, submenu: *MenuModel) void;
export @symbol("g_menu_remove") fn menu_remove(menu: *Menu, position: int) void;
export @symbol("g_menu_remove_all") fn menu_remove_all(menu: *Menu) void;
export type MenuAttributeIter = struct {
	parent_instance: gobject::Object,
	priv: *MenuAttributeIterPrivate,
};
export @symbol("g_menu_attribute_iter_get_name") fn menu_attribute_iter_get_name(iter: *MenuAttributeIter) *c::char;
export @symbol("g_menu_attribute_iter_get_next") fn menu_attribute_iter_get_next(iter: *MenuAttributeIter, out_name: **c::char, value: **glib::Variant) glib::boolean;
export @symbol("g_menu_attribute_iter_get_value") fn menu_attribute_iter_get_value(iter: *MenuAttributeIter) *glib::Variant;
export @symbol("g_menu_attribute_iter_next") fn menu_attribute_iter_next(iter: *MenuAttributeIter) glib::boolean;
export type MenuItem = *opaque;
export @symbol("g_menu_item_new") fn menu_item_new(label: *c::char, detailed_action: *c::char) *MenuItem;
export @symbol("g_menu_item_new_from_model") fn menu_item_new_from_model(model: *MenuModel, item_index: int) *MenuItem;
export @symbol("g_menu_item_new_section") fn menu_item_new_section(label: *c::char, section: *MenuModel) *MenuItem;
export @symbol("g_menu_item_new_submenu") fn menu_item_new_submenu(label: *c::char, submenu: *MenuModel) *MenuItem;
export @symbol("g_menu_item_get_attribute") fn menu_item_get_attribute(menu_item: *MenuItem, attribute: *c::char, format_string: *c::char, ...) glib::boolean;
export @symbol("g_menu_item_get_attribute_value") fn menu_item_get_attribute_value(menu_item: *MenuItem, attribute: *c::char, expected_type: *glib::VariantType) *glib::Variant;
export @symbol("g_menu_item_get_link") fn menu_item_get_link(menu_item: *MenuItem, link: *c::char) *MenuModel;
export @symbol("g_menu_item_set_action_and_target") fn menu_item_set_action_and_target(menu_item: *MenuItem, action: *c::char, format_string: *c::char, ...) void;
export @symbol("g_menu_item_set_action_and_target_value") fn menu_item_set_action_and_target_value(menu_item: *MenuItem, action: *c::char, target_value: *glib::Variant) void;
export @symbol("g_menu_item_set_attribute") fn menu_item_set_attribute(menu_item: *MenuItem, attribute: *c::char, format_string: *c::char, ...) void;
export @symbol("g_menu_item_set_attribute_value") fn menu_item_set_attribute_value(menu_item: *MenuItem, attribute: *c::char, value: *glib::Variant) void;
export @symbol("g_menu_item_set_detailed_action") fn menu_item_set_detailed_action(menu_item: *MenuItem, detailed_action: *c::char) void;
export @symbol("g_menu_item_set_icon") fn menu_item_set_icon(menu_item: *MenuItem, icon: *Icon) void;
export @symbol("g_menu_item_set_label") fn menu_item_set_label(menu_item: *MenuItem, label: *c::char) void;
export @symbol("g_menu_item_set_link") fn menu_item_set_link(menu_item: *MenuItem, link: *c::char, model: *MenuModel) void;
export @symbol("g_menu_item_set_section") fn menu_item_set_section(menu_item: *MenuItem, section: *MenuModel) void;
export @symbol("g_menu_item_set_submenu") fn menu_item_set_submenu(menu_item: *MenuItem, submenu: *MenuModel) void;
export type MenuLinkIter = struct {
	parent_instance: gobject::Object,
	priv: *MenuLinkIterPrivate,
};
export @symbol("g_menu_link_iter_get_name") fn menu_link_iter_get_name(iter: *MenuLinkIter) *c::char;
export @symbol("g_menu_link_iter_get_next") fn menu_link_iter_get_next(iter: *MenuLinkIter, out_link: **c::char, value: **MenuModel) glib::boolean;
export @symbol("g_menu_link_iter_get_value") fn menu_link_iter_get_value(iter: *MenuLinkIter) *MenuModel;
export @symbol("g_menu_link_iter_next") fn menu_link_iter_next(iter: *MenuLinkIter) glib::boolean;
export type MenuModel = struct {
	parent_instance: gobject::Object,
	priv: *MenuModelPrivate,
};
export @symbol("g_menu_model_get_item_attribute") fn menu_model_get_item_attribute(model: *MenuModel, item_index: int, attribute: *c::char, format_string: *c::char, ...) glib::boolean;
export @symbol("g_menu_model_get_item_attribute_value") fn menu_model_get_item_attribute_value(model: *MenuModel, item_index: int, attribute: *c::char, expected_type: *glib::VariantType) *glib::Variant;
export @symbol("g_menu_model_get_item_link") fn menu_model_get_item_link(model: *MenuModel, item_index: int, link: *c::char) *MenuModel;
export @symbol("g_menu_model_get_n_items") fn menu_model_get_n_items(model: *MenuModel) int;
export @symbol("g_menu_model_is_mutable") fn menu_model_is_mutable(model: *MenuModel) glib::boolean;
export @symbol("g_menu_model_items_changed") fn menu_model_items_changed(model: *MenuModel, position: int, removed: int, added: int) void;
export @symbol("g_menu_model_iterate_item_attributes") fn menu_model_iterate_item_attributes(model: *MenuModel, item_index: int) *MenuAttributeIter;
export @symbol("g_menu_model_iterate_item_links") fn menu_model_iterate_item_links(model: *MenuModel, item_index: int) *MenuLinkIter;
export fn menu_model_connect_items_changed(
	instance: *MenuModel,
	handler: *fn(instance: *MenuModel, position: int, removed: int, added: int, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"items-changed\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export type MountOperation = struct {
	parent_instance: gobject::Object,
	priv: *MountOperationPrivate,
};
export @symbol("g_mount_operation_new") fn mount_operation_new() *MountOperation;
export @symbol("g_mount_operation_get_anonymous") fn mount_operation_get_anonymous(op: *MountOperation) glib::boolean;
export @symbol("g_mount_operation_get_choice") fn mount_operation_get_choice(op: *MountOperation) int;
export @symbol("g_mount_operation_get_domain") fn mount_operation_get_domain(op: *MountOperation) *c::char;
export @symbol("g_mount_operation_get_is_tcrypt_hidden_volume") fn mount_operation_get_is_tcrypt_hidden_volume(op: *MountOperation) glib::boolean;
export @symbol("g_mount_operation_get_is_tcrypt_system_volume") fn mount_operation_get_is_tcrypt_system_volume(op: *MountOperation) glib::boolean;
export @symbol("g_mount_operation_get_password") fn mount_operation_get_password(op: *MountOperation) *c::char;
export @symbol("g_mount_operation_get_password_save") fn mount_operation_get_password_save(op: *MountOperation) PasswordSave;
export @symbol("g_mount_operation_get_pim") fn mount_operation_get_pim(op: *MountOperation) uint;
export @symbol("g_mount_operation_get_username") fn mount_operation_get_username(op: *MountOperation) *c::char;
export @symbol("g_mount_operation_reply") fn mount_operation_reply(op: *MountOperation, result: MountOperationResult) void;
export @symbol("g_mount_operation_set_anonymous") fn mount_operation_set_anonymous(op: *MountOperation, anonymous: glib::boolean) void;
export @symbol("g_mount_operation_set_choice") fn mount_operation_set_choice(op: *MountOperation, choice: int) void;
export @symbol("g_mount_operation_set_domain") fn mount_operation_set_domain(op: *MountOperation, domain: *c::char) void;
export @symbol("g_mount_operation_set_is_tcrypt_hidden_volume") fn mount_operation_set_is_tcrypt_hidden_volume(op: *MountOperation, hidden_volume: glib::boolean) void;
export @symbol("g_mount_operation_set_is_tcrypt_system_volume") fn mount_operation_set_is_tcrypt_system_volume(op: *MountOperation, system_volume: glib::boolean) void;
export @symbol("g_mount_operation_set_password") fn mount_operation_set_password(op: *MountOperation, password: *c::char) void;
export @symbol("g_mount_operation_set_password_save") fn mount_operation_set_password_save(op: *MountOperation, save: PasswordSave) void;
export @symbol("g_mount_operation_set_pim") fn mount_operation_set_pim(op: *MountOperation, pim: uint) void;
export @symbol("g_mount_operation_set_username") fn mount_operation_set_username(op: *MountOperation, username: *c::char) void;
export fn mount_operation_connect_aborted(
	instance: *MountOperation,
	handler: *fn(instance: *MountOperation, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"aborted\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn mount_operation_connect_ask_password(
	instance: *MountOperation,
	handler: *fn(instance: *MountOperation, message: *c::char, default_user: *c::char, default_domain: *c::char, flags: AskPasswordFlags, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"ask-password\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn mount_operation_connect_ask_question(
	instance: *MountOperation,
	handler: *fn(instance: *MountOperation, message: *c::char, choices: **c::char, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"ask-question\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn mount_operation_connect_reply(
	instance: *MountOperation,
	handler: *fn(instance: *MountOperation, result: MountOperationResult, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"reply\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn mount_operation_connect_show_processes(
	instance: *MountOperation,
	handler: *fn(instance: *MountOperation, message: *c::char, processes: *glib::Pid, choices: **c::char, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"show-processes\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn mount_operation_connect_show_unmount_progress(
	instance: *MountOperation,
	handler: *fn(instance: *MountOperation, message: *c::char, time_left: i64, bytes_left: i64, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"show-unmount-progress\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export type NativeSocketAddress = struct {
	parent_instance: SocketAddress,
	priv: *NativeSocketAddressPrivate,
};
export @symbol("g_native_socket_address_new") fn native_socket_address_new(native: *opaque, len_: size) *SocketAddress;
export type NativeVolumeMonitor = struct {
	parent_instance: VolumeMonitor,
};
export type NetworkAddress = struct {
	parent_instance: gobject::Object,
	priv: *NetworkAddressPrivate,
};
export @symbol("g_network_address_new") fn network_address_new(hostname: *c::char, port: u16) *SocketConnectable;
export @symbol("g_network_address_new_loopback") fn network_address_new_loopback(port: u16) *SocketConnectable;
export @symbol("g_network_address_get_hostname") fn network_address_get_hostname(addr: *NetworkAddress) *c::char;
export @symbol("g_network_address_get_port") fn network_address_get_port(addr: *NetworkAddress) u16;
export @symbol("g_network_address_get_scheme") fn network_address_get_scheme(addr: *NetworkAddress) *c::char;
export @symbol("g_network_address_parse") fn network_address_parse(host_and_port: *c::char, default_port: u16, error: nullable **glib::Error) *SocketConnectable;
export @symbol("g_network_address_parse_uri") fn network_address_parse_uri(uri: *c::char, default_port: u16, error: nullable **glib::Error) *SocketConnectable;
export type NetworkService = struct {
	parent_instance: gobject::Object,
	priv: *NetworkServicePrivate,
};
export @symbol("g_network_service_new") fn network_service_new(service: *c::char, protocol: *c::char, domain: *c::char) *SocketConnectable;
export @symbol("g_network_service_get_domain") fn network_service_get_domain(srv: *NetworkService) *c::char;
export @symbol("g_network_service_get_protocol") fn network_service_get_protocol(srv: *NetworkService) *c::char;
export @symbol("g_network_service_get_scheme") fn network_service_get_scheme(srv: *NetworkService) *c::char;
export @symbol("g_network_service_get_service") fn network_service_get_service(srv: *NetworkService) *c::char;
export @symbol("g_network_service_set_scheme") fn network_service_set_scheme(srv: *NetworkService, scheme: *c::char) void;
export type Notification = *opaque;
export @symbol("g_notification_new") fn notification_new(title: *c::char) *Notification;
export @symbol("g_notification_add_button") fn notification_add_button(notification: *Notification, label: *c::char, detailed_action: *c::char) void;
export @symbol("g_notification_add_button_with_target") fn notification_add_button_with_target(notification: *Notification, label: *c::char, action: *c::char, target_format: *c::char, ...) void;
export @symbol("g_notification_add_button_with_target_value") fn notification_add_button_with_target_value(notification: *Notification, label: *c::char, action: *c::char, target: *glib::Variant) void;
export @symbol("g_notification_set_body") fn notification_set_body(notification: *Notification, body: *c::char) void;
export @symbol("g_notification_set_category") fn notification_set_category(notification: *Notification, category: *c::char) void;
export @symbol("g_notification_set_default_action") fn notification_set_default_action(notification: *Notification, detailed_action: *c::char) void;
export @symbol("g_notification_set_default_action_and_target") fn notification_set_default_action_and_target(notification: *Notification, action: *c::char, target_format: *c::char, ...) void;
export @symbol("g_notification_set_default_action_and_target_value") fn notification_set_default_action_and_target_value(notification: *Notification, action: *c::char, target: *glib::Variant) void;
export @symbol("g_notification_set_icon") fn notification_set_icon(notification: *Notification, icon: *Icon) void;
export @symbol("g_notification_set_priority") fn notification_set_priority(notification: *Notification, priority: NotificationPriority) void;
export @symbol("g_notification_set_title") fn notification_set_title(notification: *Notification, title: *c::char) void;
export @symbol("g_notification_set_urgent") fn notification_set_urgent(notification: *Notification, urgent: glib::boolean) void;
export type OutputStream = struct {
	parent_instance: gobject::Object,
	priv: *OutputStreamPrivate,
};
export @symbol("g_output_stream_clear_pending") fn output_stream_clear_pending(stream: *OutputStream) void;
export @symbol("g_output_stream_close") fn output_stream_close(stream: *OutputStream, cancellable: *Cancellable, error: nullable **glib::Error) glib::boolean;
export @symbol("g_output_stream_close_async") fn output_stream_close_async(stream: *OutputStream, io_priority: int, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void;
export @symbol("g_output_stream_close_finish") fn output_stream_close_finish(stream: *OutputStream, result: *AsyncResult, error: nullable **glib::Error) glib::boolean;
export @symbol("g_output_stream_flush") fn output_stream_flush(stream: *OutputStream, cancellable: *Cancellable, error: nullable **glib::Error) glib::boolean;
export @symbol("g_output_stream_flush_async") fn output_stream_flush_async(stream: *OutputStream, io_priority: int, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void;
export @symbol("g_output_stream_flush_finish") fn output_stream_flush_finish(stream: *OutputStream, result: *AsyncResult, error: nullable **glib::Error) glib::boolean;
export @symbol("g_output_stream_has_pending") fn output_stream_has_pending(stream: *OutputStream) glib::boolean;
export @symbol("g_output_stream_is_closed") fn output_stream_is_closed(stream: *OutputStream) glib::boolean;
export @symbol("g_output_stream_is_closing") fn output_stream_is_closing(stream: *OutputStream) glib::boolean;
export @symbol("g_output_stream_printf") fn output_stream_printf(stream: *OutputStream, bytes_written: *size, cancellable: *Cancellable, error: **glib::Error, format: *c::char, ...) glib::boolean;
export @symbol("g_output_stream_set_pending") fn output_stream_set_pending(stream: *OutputStream, error: nullable **glib::Error) glib::boolean;
export @symbol("g_output_stream_splice") fn output_stream_splice(stream: *OutputStream, source: *InputStream, flags: OutputStreamSpliceFlags, cancellable: *Cancellable, error: nullable **glib::Error) c::ssize;
export @symbol("g_output_stream_splice_async") fn output_stream_splice_async(stream: *OutputStream, source: *InputStream, flags: OutputStreamSpliceFlags, io_priority: int, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void;
export @symbol("g_output_stream_splice_finish") fn output_stream_splice_finish(stream: *OutputStream, result: *AsyncResult, error: nullable **glib::Error) c::ssize;
export @symbol("g_output_stream_vprintf") fn output_stream_vprintf(stream: *OutputStream, bytes_written: *size, cancellable: *Cancellable, error: **glib::Error, format: *c::char, args: valist) glib::boolean;
export @symbol("g_output_stream_write") fn output_stream_write(stream: *OutputStream, buffer: *opaque, count: size, cancellable: *Cancellable, error: nullable **glib::Error) c::ssize;
export @symbol("g_output_stream_write_all") fn output_stream_write_all(stream: *OutputStream, buffer: *opaque, count: size, bytes_written: *size, cancellable: *Cancellable, error: nullable **glib::Error) glib::boolean;
export @symbol("g_output_stream_write_all_async") fn output_stream_write_all_async(stream: *OutputStream, buffer: *opaque, count: size, io_priority: int, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void;
export @symbol("g_output_stream_write_all_finish") fn output_stream_write_all_finish(stream: *OutputStream, result: *AsyncResult, bytes_written: *size, error: nullable **glib::Error) glib::boolean;
export @symbol("g_output_stream_write_async") fn output_stream_write_async(stream: *OutputStream, buffer: *opaque, count: size, io_priority: int, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void;
export @symbol("g_output_stream_write_bytes") fn output_stream_write_bytes(stream: *OutputStream, bytes: *glib::Bytes, cancellable: *Cancellable, error: nullable **glib::Error) c::ssize;
export @symbol("g_output_stream_write_bytes_async") fn output_stream_write_bytes_async(stream: *OutputStream, bytes: *glib::Bytes, io_priority: int, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void;
export @symbol("g_output_stream_write_bytes_finish") fn output_stream_write_bytes_finish(stream: *OutputStream, result: *AsyncResult, error: nullable **glib::Error) c::ssize;
export @symbol("g_output_stream_write_finish") fn output_stream_write_finish(stream: *OutputStream, result: *AsyncResult, error: nullable **glib::Error) c::ssize;
export @symbol("g_output_stream_writev") fn output_stream_writev(stream: *OutputStream, vectors: *OutputVector, n_vectors: size, bytes_written: *size, cancellable: *Cancellable, error: nullable **glib::Error) glib::boolean;
export @symbol("g_output_stream_writev_all") fn output_stream_writev_all(stream: *OutputStream, vectors: *OutputVector, n_vectors: size, bytes_written: *size, cancellable: *Cancellable, error: nullable **glib::Error) glib::boolean;
export @symbol("g_output_stream_writev_all_async") fn output_stream_writev_all_async(stream: *OutputStream, vectors: *OutputVector, n_vectors: size, io_priority: int, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void;
export @symbol("g_output_stream_writev_all_finish") fn output_stream_writev_all_finish(stream: *OutputStream, result: *AsyncResult, bytes_written: *size, error: nullable **glib::Error) glib::boolean;
export @symbol("g_output_stream_writev_async") fn output_stream_writev_async(stream: *OutputStream, vectors: *OutputVector, n_vectors: size, io_priority: int, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void;
export @symbol("g_output_stream_writev_finish") fn output_stream_writev_finish(stream: *OutputStream, result: *AsyncResult, bytes_written: *size, error: nullable **glib::Error) glib::boolean;
export type Permission = struct {
	parent_instance: gobject::Object,
	priv: *PermissionPrivate,
};
export @symbol("g_permission_acquire") fn permission_acquire(permission: *Permission, cancellable: *Cancellable, error: nullable **glib::Error) glib::boolean;
export @symbol("g_permission_acquire_async") fn permission_acquire_async(permission: *Permission, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void;
export @symbol("g_permission_acquire_finish") fn permission_acquire_finish(permission: *Permission, result: *AsyncResult, error: nullable **glib::Error) glib::boolean;
export @symbol("g_permission_get_allowed") fn permission_get_allowed(permission: *Permission) glib::boolean;
export @symbol("g_permission_get_can_acquire") fn permission_get_can_acquire(permission: *Permission) glib::boolean;
export @symbol("g_permission_get_can_release") fn permission_get_can_release(permission: *Permission) glib::boolean;
export @symbol("g_permission_impl_update") fn permission_impl_update(permission: *Permission, allowed: glib::boolean, can_acquire: glib::boolean, can_release: glib::boolean) void;
export @symbol("g_permission_release") fn permission_release(permission: *Permission, cancellable: *Cancellable, error: nullable **glib::Error) glib::boolean;
export @symbol("g_permission_release_async") fn permission_release_async(permission: *Permission, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void;
export @symbol("g_permission_release_finish") fn permission_release_finish(permission: *Permission, result: *AsyncResult, error: nullable **glib::Error) glib::boolean;
export type PropertyAction = *opaque;
export @symbol("g_property_action_new") fn property_action_new(name: *c::char, object: *opaque, property_name: *c::char) *PropertyAction;
export type ProxyAddress = struct {
	parent_instance: InetSocketAddress,
	priv: *ProxyAddressPrivate,
};
export @symbol("g_proxy_address_new") fn proxy_address_new(inetaddr: *InetAddress, port: u16, protocol: *c::char, dest_hostname: *c::char, dest_port: u16, username: *c::char, password: *c::char) *SocketAddress;
export @symbol("g_proxy_address_get_destination_hostname") fn proxy_address_get_destination_hostname(proxy: *ProxyAddress) *c::char;
export @symbol("g_proxy_address_get_destination_port") fn proxy_address_get_destination_port(proxy: *ProxyAddress) u16;
export @symbol("g_proxy_address_get_destination_protocol") fn proxy_address_get_destination_protocol(proxy: *ProxyAddress) *c::char;
export @symbol("g_proxy_address_get_password") fn proxy_address_get_password(proxy: *ProxyAddress) *c::char;
export @symbol("g_proxy_address_get_protocol") fn proxy_address_get_protocol(proxy: *ProxyAddress) *c::char;
export @symbol("g_proxy_address_get_uri") fn proxy_address_get_uri(proxy: *ProxyAddress) *c::char;
export @symbol("g_proxy_address_get_username") fn proxy_address_get_username(proxy: *ProxyAddress) *c::char;
export type ProxyAddressEnumerator = struct {
	parent_instance: SocketAddressEnumerator,
	priv: *ProxyAddressEnumeratorPrivate,
};
export type Resolver = struct {
	parent_instance: gobject::Object,
	priv: *ResolverPrivate,
};
export @symbol("g_resolver_get_timeout") fn resolver_get_timeout(resolver: *Resolver) uint;
export @symbol("g_resolver_lookup_by_address") fn resolver_lookup_by_address(resolver: *Resolver, address: *InetAddress, cancellable: *Cancellable, error: nullable **glib::Error) *c::char;
export @symbol("g_resolver_lookup_by_address_async") fn resolver_lookup_by_address_async(resolver: *Resolver, address: *InetAddress, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void;
export @symbol("g_resolver_lookup_by_address_finish") fn resolver_lookup_by_address_finish(resolver: *Resolver, result: *AsyncResult, error: nullable **glib::Error) *c::char;
export @symbol("g_resolver_lookup_by_name") fn resolver_lookup_by_name(resolver: *Resolver, hostname: *c::char, cancellable: *Cancellable, error: nullable **glib::Error) *glib::List;
export @symbol("g_resolver_lookup_by_name_async") fn resolver_lookup_by_name_async(resolver: *Resolver, hostname: *c::char, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void;
export @symbol("g_resolver_lookup_by_name_finish") fn resolver_lookup_by_name_finish(resolver: *Resolver, result: *AsyncResult, error: nullable **glib::Error) *glib::List;
export @symbol("g_resolver_lookup_by_name_with_flags") fn resolver_lookup_by_name_with_flags(resolver: *Resolver, hostname: *c::char, flags: ResolverNameLookupFlags, cancellable: *Cancellable, error: nullable **glib::Error) *glib::List;
export @symbol("g_resolver_lookup_by_name_with_flags_async") fn resolver_lookup_by_name_with_flags_async(resolver: *Resolver, hostname: *c::char, flags: ResolverNameLookupFlags, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void;
export @symbol("g_resolver_lookup_by_name_with_flags_finish") fn resolver_lookup_by_name_with_flags_finish(resolver: *Resolver, result: *AsyncResult, error: nullable **glib::Error) *glib::List;
export @symbol("g_resolver_lookup_records") fn resolver_lookup_records(resolver: *Resolver, rrname: *c::char, record_type: ResolverRecordType, cancellable: *Cancellable, error: nullable **glib::Error) *glib::List;
export @symbol("g_resolver_lookup_records_async") fn resolver_lookup_records_async(resolver: *Resolver, rrname: *c::char, record_type: ResolverRecordType, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void;
export @symbol("g_resolver_lookup_records_finish") fn resolver_lookup_records_finish(resolver: *Resolver, result: *AsyncResult, error: nullable **glib::Error) *glib::List;
export @symbol("g_resolver_lookup_service") fn resolver_lookup_service(resolver: *Resolver, service: *c::char, protocol: *c::char, domain: *c::char, cancellable: *Cancellable, error: nullable **glib::Error) *glib::List;
export @symbol("g_resolver_lookup_service_async") fn resolver_lookup_service_async(resolver: *Resolver, service: *c::char, protocol: *c::char, domain: *c::char, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void;
export @symbol("g_resolver_lookup_service_finish") fn resolver_lookup_service_finish(resolver: *Resolver, result: *AsyncResult, error: nullable **glib::Error) *glib::List;
export @symbol("g_resolver_set_default") fn resolver_set_default(resolver: *Resolver) void;
export @symbol("g_resolver_set_timeout") fn resolver_set_timeout(resolver: *Resolver, timeout_ms: uint) void;
export @symbol("g_resolver_free_addresses") fn resolver_free_addresses(addresses: *glib::List) void;
export @symbol("g_resolver_free_targets") fn resolver_free_targets(targets: *glib::List) void;
export @symbol("g_resolver_get_default") fn resolver_get_default() *Resolver;
export fn resolver_connect_reload(
	instance: *Resolver,
	handler: *fn(instance: *Resolver, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"reload\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export type Settings = struct {
	parent_instance: gobject::Object,
	priv: *SettingsPrivate,
};
export @symbol("g_settings_new") fn settings_new(schema_id: *c::char) *Settings;
export @symbol("g_settings_new_full") fn settings_new_full(schema: *SettingsSchema, backend: *SettingsBackend, path: *c::char) *Settings;
export @symbol("g_settings_new_with_backend") fn settings_new_with_backend(schema_id: *c::char, backend: *SettingsBackend) *Settings;
export @symbol("g_settings_new_with_backend_and_path") fn settings_new_with_backend_and_path(schema_id: *c::char, backend: *SettingsBackend, path: *c::char) *Settings;
export @symbol("g_settings_new_with_path") fn settings_new_with_path(schema_id: *c::char, path: *c::char) *Settings;
export @symbol("g_settings_apply") fn settings_apply(settings: *Settings) void;
export @symbol("g_settings_bind") fn settings_bind(settings: *Settings, key: *c::char, object: *opaque, property: *c::char, flags: SettingsBindFlags) void;
export @symbol("g_settings_bind_with_mapping") fn settings_bind_with_mapping(settings: *Settings, key: *c::char, object: *opaque, property: *c::char, flags: SettingsBindFlags, get_mapping: SettingsBindGetMapping, set_mapping: SettingsBindSetMapping, user_data: *opaque, destroy: glib::DestroyNotify) void;
export @symbol("g_settings_bind_writable") fn settings_bind_writable(settings: *Settings, key: *c::char, object: *opaque, property: *c::char, inverted: glib::boolean) void;
export @symbol("g_settings_create_action") fn settings_create_action(settings: *Settings, key: *c::char) *Action;
export @symbol("g_settings_delay") fn settings_delay(settings: *Settings) void;
export @symbol("g_settings_get") fn settings_get(settings: *Settings, key: *c::char, format: *c::char, ...) void;
export @symbol("g_settings_get_boolean") fn settings_get_boolean(settings: *Settings, key: *c::char) glib::boolean;
export @symbol("g_settings_get_child") fn settings_get_child(settings: *Settings, name: *c::char) *Settings;
export @symbol("g_settings_get_default_value") fn settings_get_default_value(settings: *Settings, key: *c::char) *glib::Variant;
export @symbol("g_settings_get_double") fn settings_get_double(settings: *Settings, key: *c::char) f64;
export @symbol("g_settings_get_enum") fn settings_get_enum(settings: *Settings, key: *c::char) int;
export @symbol("g_settings_get_flags") fn settings_get_flags(settings: *Settings, key: *c::char) uint;
export @symbol("g_settings_get_has_unapplied") fn settings_get_has_unapplied(settings: *Settings) glib::boolean;
export @symbol("g_settings_get_int") fn settings_get_int(settings: *Settings, key: *c::char) int;
export @symbol("g_settings_get_int64") fn settings_get_int64(settings: *Settings, key: *c::char) i64;
export @symbol("g_settings_get_mapped") fn settings_get_mapped(settings: *Settings, key: *c::char, mapping: SettingsGetMapping, user_data: *opaque) *opaque;
export @symbol("g_settings_get_range") fn settings_get_range(settings: *Settings, key: *c::char) *glib::Variant;
export @symbol("g_settings_get_string") fn settings_get_string(settings: *Settings, key: *c::char) *c::char;
export @symbol("g_settings_get_strv") fn settings_get_strv(settings: *Settings, key: *c::char) **c::char;
export @symbol("g_settings_get_uint") fn settings_get_uint(settings: *Settings, key: *c::char) uint;
export @symbol("g_settings_get_uint64") fn settings_get_uint64(settings: *Settings, key: *c::char) u64;
export @symbol("g_settings_get_user_value") fn settings_get_user_value(settings: *Settings, key: *c::char) *glib::Variant;
export @symbol("g_settings_get_value") fn settings_get_value(settings: *Settings, key: *c::char) *glib::Variant;
export @symbol("g_settings_is_writable") fn settings_is_writable(settings: *Settings, name: *c::char) glib::boolean;
export @symbol("g_settings_list_children") fn settings_list_children(settings: *Settings) **c::char;
export @symbol("g_settings_list_keys") fn settings_list_keys(settings: *Settings) **c::char;
export @symbol("g_settings_range_check") fn settings_range_check(settings: *Settings, key: *c::char, value: *glib::Variant) glib::boolean;
export @symbol("g_settings_reset") fn settings_reset(settings: *Settings, key: *c::char) void;
export @symbol("g_settings_revert") fn settings_revert(settings: *Settings) void;
export @symbol("g_settings_set") fn settings_set(settings: *Settings, key: *c::char, format: *c::char, ...) glib::boolean;
export @symbol("g_settings_set_boolean") fn settings_set_boolean(settings: *Settings, key: *c::char, value: glib::boolean) glib::boolean;
export @symbol("g_settings_set_double") fn settings_set_double(settings: *Settings, key: *c::char, value: f64) glib::boolean;
export @symbol("g_settings_set_enum") fn settings_set_enum(settings: *Settings, key: *c::char, value: int) glib::boolean;
export @symbol("g_settings_set_flags") fn settings_set_flags(settings: *Settings, key: *c::char, value: uint) glib::boolean;
export @symbol("g_settings_set_int") fn settings_set_int(settings: *Settings, key: *c::char, value: int) glib::boolean;
export @symbol("g_settings_set_int64") fn settings_set_int64(settings: *Settings, key: *c::char, value: i64) glib::boolean;
export @symbol("g_settings_set_string") fn settings_set_string(settings: *Settings, key: *c::char, value: *c::char) glib::boolean;
export @symbol("g_settings_set_strv") fn settings_set_strv(settings: *Settings, key: *c::char, value: **c::char) glib::boolean;
export @symbol("g_settings_set_uint") fn settings_set_uint(settings: *Settings, key: *c::char, value: uint) glib::boolean;
export @symbol("g_settings_set_uint64") fn settings_set_uint64(settings: *Settings, key: *c::char, value: u64) glib::boolean;
export @symbol("g_settings_set_value") fn settings_set_value(settings: *Settings, key: *c::char, value: *glib::Variant) glib::boolean;
export @symbol("g_settings_list_relocatable_schemas") fn settings_list_relocatable_schemas() **c::char;
export @symbol("g_settings_list_schemas") fn settings_list_schemas() **c::char;
export @symbol("g_settings_sync") fn settings_sync() void;
export @symbol("g_settings_unbind") fn settings_unbind(object: *opaque, property: *c::char) void;
export fn settings_connect_change_event(
	instance: *Settings,
	handler: *fn(instance: *Settings, keys: *opaque, n_keys: int, data: *opaque) glib::boolean,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"change-event\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn settings_connect_changed(
	instance: *Settings,
	handler: *fn(instance: *Settings, key: *c::char, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"changed\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn settings_connect_writable_change_event(
	instance: *Settings,
	handler: *fn(instance: *Settings, key: uint, data: *opaque) glib::boolean,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"writable-change-event\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn settings_connect_writable_changed(
	instance: *Settings,
	handler: *fn(instance: *Settings, key: *c::char, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"writable-changed\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export type SettingsBackend = struct {
	parent_instance: gobject::Object,
	priv: *SettingsBackendPrivate,
};
export @symbol("g_settings_backend_changed") fn settings_backend_changed(backend: *SettingsBackend, key: *c::char, origin_tag: *opaque) void;
export @symbol("g_settings_backend_changed_tree") fn settings_backend_changed_tree(backend: *SettingsBackend, tree: *glib::Tree, origin_tag: *opaque) void;
export @symbol("g_settings_backend_keys_changed") fn settings_backend_keys_changed(backend: *SettingsBackend, path: *c::char, items: **c::char, origin_tag: *opaque) void;
export @symbol("g_settings_backend_path_changed") fn settings_backend_path_changed(backend: *SettingsBackend, path: *c::char, origin_tag: *opaque) void;
export @symbol("g_settings_backend_path_writable_changed") fn settings_backend_path_writable_changed(backend: *SettingsBackend, path: *c::char) void;
export @symbol("g_settings_backend_writable_changed") fn settings_backend_writable_changed(backend: *SettingsBackend, key: *c::char) void;
export @symbol("g_settings_backend_flatten_tree") fn settings_backend_flatten_tree(tree: *glib::Tree, path: **c::char, keys: ***c::char, values: ***glib::Variant) void;
export @symbol("g_settings_backend_get_default") fn settings_backend_get_default() *SettingsBackend;
export type SimpleAction = *opaque;
export @symbol("g_simple_action_new") fn simple_action_new(name: *c::char, parameter_type: *glib::VariantType) *SimpleAction;
export @symbol("g_simple_action_new_stateful") fn simple_action_new_stateful(name: *c::char, parameter_type: *glib::VariantType, state: *glib::Variant) *SimpleAction;
export @symbol("g_simple_action_set_enabled") fn simple_action_set_enabled(simple: *SimpleAction, enabled: glib::boolean) void;
export @symbol("g_simple_action_set_state") fn simple_action_set_state(simple: *SimpleAction, value: *glib::Variant) void;
export @symbol("g_simple_action_set_state_hint") fn simple_action_set_state_hint(simple: *SimpleAction, state_hint: *glib::Variant) void;
export fn simple_action_connect_activate(
	instance: *SimpleAction,
	handler: *fn(instance: *SimpleAction, parameter: glib::Variant, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"activate\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn simple_action_connect_change_state(
	instance: *SimpleAction,
	handler: *fn(instance: *SimpleAction, value: glib::Variant, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"change-state\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export type SimpleActionGroup = struct {
	parent_instance: gobject::Object,
	priv: *SimpleActionGroupPrivate,
};
export @symbol("g_simple_action_group_new") fn simple_action_group_new() *SimpleActionGroup;
export @symbol("g_simple_action_group_add_entries") fn simple_action_group_add_entries(simple: *SimpleActionGroup, entries: *ActionEntry, n_entries: int, user_data: *opaque) void;
export @symbol("g_simple_action_group_insert") fn simple_action_group_insert(simple: *SimpleActionGroup, action: *Action) void;
export @symbol("g_simple_action_group_lookup") fn simple_action_group_lookup(simple: *SimpleActionGroup, action_name: *c::char) *Action;
export @symbol("g_simple_action_group_remove") fn simple_action_group_remove(simple: *SimpleActionGroup, action_name: *c::char) void;
export type SimpleAsyncResult = *opaque;
export @symbol("g_simple_async_result_new") fn simple_async_result_new(source_object: *gobject::Object, callback: AsyncReadyCallback, user_data: *opaque, source_tag: *opaque) *SimpleAsyncResult;
export @symbol("g_simple_async_result_new_error") fn simple_async_result_new_error(source_object: *gobject::Object, callback: AsyncReadyCallback, user_data: *opaque, domain: glib::Quark, code: int, format: *c::char, ...) *SimpleAsyncResult;
export @symbol("g_simple_async_result_new_from_error") fn simple_async_result_new_from_error(source_object: *gobject::Object, callback: AsyncReadyCallback, user_data: *opaque, error: *glib::Error) *SimpleAsyncResult;
export @symbol("g_simple_async_result_new_take_error") fn simple_async_result_new_take_error(source_object: *gobject::Object, callback: AsyncReadyCallback, user_data: *opaque, error: *glib::Error) *SimpleAsyncResult;
export @symbol("g_simple_async_result_complete") fn simple_async_result_complete(simple: *SimpleAsyncResult) void;
export @symbol("g_simple_async_result_complete_in_idle") fn simple_async_result_complete_in_idle(simple: *SimpleAsyncResult) void;
export @symbol("g_simple_async_result_get_op_res_gboolean") fn simple_async_result_get_op_res_gboolean(simple: *SimpleAsyncResult) glib::boolean;
export @symbol("g_simple_async_result_get_op_res_gpointer") fn simple_async_result_get_op_res_gpointer(simple: *SimpleAsyncResult) *opaque;
export @symbol("g_simple_async_result_get_op_res_gssize") fn simple_async_result_get_op_res_gssize(simple: *SimpleAsyncResult) c::ssize;
export @symbol("g_simple_async_result_get_source_tag") fn simple_async_result_get_source_tag(simple: *SimpleAsyncResult) *opaque;
export @symbol("g_simple_async_result_propagate_error") fn simple_async_result_propagate_error(simple: *SimpleAsyncResult, error: nullable **glib::Error) glib::boolean;
export @symbol("g_simple_async_result_run_in_thread") fn simple_async_result_run_in_thread(simple: *SimpleAsyncResult, func: SimpleAsyncThreadFunc, io_priority: int, cancellable: *Cancellable) void;
export @symbol("g_simple_async_result_set_check_cancellable") fn simple_async_result_set_check_cancellable(simple: *SimpleAsyncResult, check_cancellable: *Cancellable) void;
export @symbol("g_simple_async_result_set_error") fn simple_async_result_set_error(simple: *SimpleAsyncResult, domain: glib::Quark, code: int, format: *c::char, ...) void;
export @symbol("g_simple_async_result_set_error_va") fn simple_async_result_set_error_va(simple: *SimpleAsyncResult, domain: glib::Quark, code: int, format: *c::char, args: valist) void;
export @symbol("g_simple_async_result_set_from_error") fn simple_async_result_set_from_error(simple: *SimpleAsyncResult, error: *glib::Error) void;
export @symbol("g_simple_async_result_set_handle_cancellation") fn simple_async_result_set_handle_cancellation(simple: *SimpleAsyncResult, handle_cancellation: glib::boolean) void;
export @symbol("g_simple_async_result_set_op_res_gboolean") fn simple_async_result_set_op_res_gboolean(simple: *SimpleAsyncResult, op_res: glib::boolean) void;
export @symbol("g_simple_async_result_set_op_res_gpointer") fn simple_async_result_set_op_res_gpointer(simple: *SimpleAsyncResult, op_res: *opaque, destroy_op_res: glib::DestroyNotify) void;
export @symbol("g_simple_async_result_set_op_res_gssize") fn simple_async_result_set_op_res_gssize(simple: *SimpleAsyncResult, op_res: c::ssize) void;
export @symbol("g_simple_async_result_take_error") fn simple_async_result_take_error(simple: *SimpleAsyncResult, error: *glib::Error) void;
export @symbol("g_simple_async_result_is_valid") fn simple_async_result_is_valid(result: *AsyncResult, source: *gobject::Object, source_tag: *opaque) glib::boolean;
export type SimpleIOStream = *opaque;
export @symbol("g_simple_io_stream_new") fn simple_iostream_new(input_stream: *InputStream, output_stream: *OutputStream) *IOStream;
export type SimplePermission = *opaque;
export @symbol("g_simple_permission_new") fn simple_permission_new(allowed: glib::boolean) *Permission;
export type SimpleProxyResolver = struct {
	parent_instance: gobject::Object,
	priv: *SimpleProxyResolverPrivate,
};
export @symbol("g_simple_proxy_resolver_set_default_proxy") fn simple_proxy_resolver_set_default_proxy(resolver: *SimpleProxyResolver, default_proxy: *c::char) void;
export @symbol("g_simple_proxy_resolver_set_ignore_hosts") fn simple_proxy_resolver_set_ignore_hosts(resolver: *SimpleProxyResolver, ignore_hosts: **c::char) void;
export @symbol("g_simple_proxy_resolver_set_uri_proxy") fn simple_proxy_resolver_set_uri_proxy(resolver: *SimpleProxyResolver, uri_scheme: *c::char, proxy: *c::char) void;
export @symbol("g_simple_proxy_resolver_new") fn simple_proxy_resolver_new(default_proxy: *c::char, ignore_hosts: **c::char) *ProxyResolver;
export type Socket = struct {
	parent_instance: gobject::Object,
	priv: *SocketPrivate,
};
export @symbol("g_socket_new") fn socket_new(family: SocketFamily, type_: SocketType, protocol: SocketProtocol, error: nullable **glib::Error) *Socket;
export @symbol("g_socket_new_from_fd") fn socket_new_from_fd(fd: int, error: nullable **glib::Error) *Socket;
export @symbol("g_socket_accept") fn socket_accept(socket: *Socket, cancellable: *Cancellable, error: nullable **glib::Error) *Socket;
export @symbol("g_socket_bind") fn socket_bind(socket: *Socket, address: *SocketAddress, allow_reuse: glib::boolean, error: nullable **glib::Error) glib::boolean;
export @symbol("g_socket_check_connect_result") fn socket_check_connect_result(socket: *Socket, error: nullable **glib::Error) glib::boolean;
export @symbol("g_socket_close") fn socket_close(socket: *Socket, error: nullable **glib::Error) glib::boolean;
export @symbol("g_socket_condition_check") fn socket_condition_check(socket: *Socket, condition: glib::IOCondition) glib::IOCondition;
export @symbol("g_socket_condition_timed_wait") fn socket_condition_timed_wait(socket: *Socket, condition: glib::IOCondition, timeout_us: i64, cancellable: *Cancellable, error: nullable **glib::Error) glib::boolean;
export @symbol("g_socket_condition_wait") fn socket_condition_wait(socket: *Socket, condition: glib::IOCondition, cancellable: *Cancellable, error: nullable **glib::Error) glib::boolean;
export @symbol("g_socket_connect") fn socket_connect(socket: *Socket, address: *SocketAddress, cancellable: *Cancellable, error: nullable **glib::Error) glib::boolean;
export @symbol("g_socket_connection_factory_create_connection") fn socket_connection_factory_create_connection(socket: *Socket) *SocketConnection;
export @symbol("g_socket_create_source") fn socket_create_source(socket: *Socket, condition: glib::IOCondition, cancellable: *Cancellable) *glib::Source;
export @symbol("g_socket_get_available_bytes") fn socket_get_available_bytes(socket: *Socket) c::ssize;
export @symbol("g_socket_get_blocking") fn socket_get_blocking(socket: *Socket) glib::boolean;
export @symbol("g_socket_get_broadcast") fn socket_get_broadcast(socket: *Socket) glib::boolean;
export @symbol("g_socket_get_credentials") fn socket_get_credentials(socket: *Socket, error: nullable **glib::Error) *Credentials;
export @symbol("g_socket_get_family") fn socket_get_family(socket: *Socket) SocketFamily;
export @symbol("g_socket_get_fd") fn socket_get_fd(socket: *Socket) int;
export @symbol("g_socket_get_keepalive") fn socket_get_keepalive(socket: *Socket) glib::boolean;
export @symbol("g_socket_get_listen_backlog") fn socket_get_listen_backlog(socket: *Socket) int;
export @symbol("g_socket_get_local_address") fn socket_get_local_address(socket: *Socket, error: nullable **glib::Error) *SocketAddress;
export @symbol("g_socket_get_multicast_loopback") fn socket_get_multicast_loopback(socket: *Socket) glib::boolean;
export @symbol("g_socket_get_multicast_ttl") fn socket_get_multicast_ttl(socket: *Socket) uint;
export @symbol("g_socket_get_option") fn socket_get_option(socket: *Socket, level: int, optname: int, value: *int, error: nullable **glib::Error) glib::boolean;
export @symbol("g_socket_get_protocol") fn socket_get_protocol(socket: *Socket) SocketProtocol;
export @symbol("g_socket_get_remote_address") fn socket_get_remote_address(socket: *Socket, error: nullable **glib::Error) *SocketAddress;
export @symbol("g_socket_get_socket_type") fn socket_get_socket_type(socket: *Socket) SocketType;
export @symbol("g_socket_get_timeout") fn socket_get_timeout(socket: *Socket) uint;
export @symbol("g_socket_get_ttl") fn socket_get_ttl(socket: *Socket) uint;
export @symbol("g_socket_is_closed") fn socket_is_closed(socket: *Socket) glib::boolean;
export @symbol("g_socket_is_connected") fn socket_is_connected(socket: *Socket) glib::boolean;
export @symbol("g_socket_join_multicast_group") fn socket_join_multicast_group(socket: *Socket, group: *InetAddress, source_specific: glib::boolean, iface: *c::char, error: nullable **glib::Error) glib::boolean;
export @symbol("g_socket_join_multicast_group_ssm") fn socket_join_multicast_group_ssm(socket: *Socket, group: *InetAddress, source_specific: *InetAddress, iface: *c::char, error: nullable **glib::Error) glib::boolean;
export @symbol("g_socket_leave_multicast_group") fn socket_leave_multicast_group(socket: *Socket, group: *InetAddress, source_specific: glib::boolean, iface: *c::char, error: nullable **glib::Error) glib::boolean;
export @symbol("g_socket_leave_multicast_group_ssm") fn socket_leave_multicast_group_ssm(socket: *Socket, group: *InetAddress, source_specific: *InetAddress, iface: *c::char, error: nullable **glib::Error) glib::boolean;
export @symbol("g_socket_listen") fn socket_listen(socket: *Socket, error: nullable **glib::Error) glib::boolean;
export @symbol("g_socket_receive") fn socket_receive(socket: *Socket, buffer: *c::char, size_: size, cancellable: *Cancellable, error: nullable **glib::Error) c::ssize;
export @symbol("g_socket_receive_from") fn socket_receive_from(socket: *Socket, address: **SocketAddress, buffer: *c::char, size_: size, cancellable: *Cancellable, error: nullable **glib::Error) c::ssize;
export @symbol("g_socket_receive_message") fn socket_receive_message(socket: *Socket, address: **SocketAddress, vectors: *InputVector, num_vectors: int, messages: ***SocketControlMessage, num_messages: *int, flags: *int, cancellable: *Cancellable, error: nullable **glib::Error) c::ssize;
export @symbol("g_socket_receive_messages") fn socket_receive_messages(socket: *Socket, messages: *InputMessage, num_messages: uint, flags: int, cancellable: *Cancellable, error: nullable **glib::Error) int;
export @symbol("g_socket_receive_with_blocking") fn socket_receive_with_blocking(socket: *Socket, buffer: *c::char, size_: size, blocking: glib::boolean, cancellable: *Cancellable, error: nullable **glib::Error) c::ssize;
export @symbol("g_socket_send") fn socket_send(socket: *Socket, buffer: *c::char, size_: size, cancellable: *Cancellable, error: nullable **glib::Error) c::ssize;
export @symbol("g_socket_send_message") fn socket_send_message(socket: *Socket, address: *SocketAddress, vectors: *OutputVector, num_vectors: int, messages: **SocketControlMessage, num_messages: int, flags: int, cancellable: *Cancellable, error: nullable **glib::Error) c::ssize;
export @symbol("g_socket_send_message_with_timeout") fn socket_send_message_with_timeout(socket: *Socket, address: *SocketAddress, vectors: *OutputVector, num_vectors: int, messages: **SocketControlMessage, num_messages: int, flags: int, timeout_us: i64, bytes_written: *size, cancellable: *Cancellable, error: nullable **glib::Error) PollableReturn;
export @symbol("g_socket_send_messages") fn socket_send_messages(socket: *Socket, messages: *OutputMessage, num_messages: uint, flags: int, cancellable: *Cancellable, error: nullable **glib::Error) int;
export @symbol("g_socket_send_to") fn socket_send_to(socket: *Socket, address: *SocketAddress, buffer: *c::char, size_: size, cancellable: *Cancellable, error: nullable **glib::Error) c::ssize;
export @symbol("g_socket_send_with_blocking") fn socket_send_with_blocking(socket: *Socket, buffer: *c::char, size_: size, blocking: glib::boolean, cancellable: *Cancellable, error: nullable **glib::Error) c::ssize;
export @symbol("g_socket_set_blocking") fn socket_set_blocking(socket: *Socket, blocking: glib::boolean) void;
export @symbol("g_socket_set_broadcast") fn socket_set_broadcast(socket: *Socket, broadcast: glib::boolean) void;
export @symbol("g_socket_set_keepalive") fn socket_set_keepalive(socket: *Socket, keepalive: glib::boolean) void;
export @symbol("g_socket_set_listen_backlog") fn socket_set_listen_backlog(socket: *Socket, backlog: int) void;
export @symbol("g_socket_set_multicast_loopback") fn socket_set_multicast_loopback(socket: *Socket, loopback: glib::boolean) void;
export @symbol("g_socket_set_multicast_ttl") fn socket_set_multicast_ttl(socket: *Socket, ttl: uint) void;
export @symbol("g_socket_set_option") fn socket_set_option(socket: *Socket, level: int, optname: int, value: int, error: nullable **glib::Error) glib::boolean;
export @symbol("g_socket_set_timeout") fn socket_set_timeout(socket: *Socket, timeout: uint) void;
export @symbol("g_socket_set_ttl") fn socket_set_ttl(socket: *Socket, ttl: uint) void;
export @symbol("g_socket_shutdown") fn socket_shutdown(socket: *Socket, shutdown_read: glib::boolean, shutdown_write: glib::boolean, error: nullable **glib::Error) glib::boolean;
export @symbol("g_socket_speaks_ipv4") fn socket_speaks_ipv4(socket: *Socket) glib::boolean;
export type SocketAddress = struct {
	parent_instance: gobject::Object,
};
export @symbol("g_socket_address_new_from_native") fn socket_address_new_from_native(native: *opaque, len_: size) *SocketAddress;
export @symbol("g_socket_address_get_family") fn socket_address_get_family(address: *SocketAddress) SocketFamily;
export @symbol("g_socket_address_get_native_size") fn socket_address_get_native_size(address: *SocketAddress) c::ssize;
export @symbol("g_socket_address_to_native") fn socket_address_to_native(address: *SocketAddress, dest: *opaque, destlen: size, error: nullable **glib::Error) glib::boolean;
export type SocketAddressEnumerator = struct {
	parent_instance: gobject::Object,
};
export @symbol("g_socket_address_enumerator_next") fn socket_address_enumerator_next(enumerator: *SocketAddressEnumerator, cancellable: *Cancellable, error: nullable **glib::Error) *SocketAddress;
export @symbol("g_socket_address_enumerator_next_async") fn socket_address_enumerator_next_async(enumerator: *SocketAddressEnumerator, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void;
export @symbol("g_socket_address_enumerator_next_finish") fn socket_address_enumerator_next_finish(enumerator: *SocketAddressEnumerator, result: *AsyncResult, error: nullable **glib::Error) *SocketAddress;
export type SocketClient = struct {
	parent_instance: gobject::Object,
	priv: *SocketClientPrivate,
};
export @symbol("g_socket_client_new") fn socket_client_new() *SocketClient;
export @symbol("g_socket_client_add_application_proxy") fn socket_client_add_application_proxy(client: *SocketClient, protocol: *c::char) void;
export @symbol("g_socket_client_connect") fn socket_client_connect(client: *SocketClient, connectable: *SocketConnectable, cancellable: *Cancellable, error: nullable **glib::Error) *SocketConnection;
export @symbol("g_socket_client_connect_async") fn socket_client_connect_async(client: *SocketClient, connectable: *SocketConnectable, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void;
export @symbol("g_socket_client_connect_finish") fn socket_client_connect_finish(client: *SocketClient, result: *AsyncResult, error: nullable **glib::Error) *SocketConnection;
export @symbol("g_socket_client_connect_to_host") fn socket_client_connect_to_host(client: *SocketClient, host_and_port: *c::char, default_port: u16, cancellable: *Cancellable, error: nullable **glib::Error) *SocketConnection;
export @symbol("g_socket_client_connect_to_host_async") fn socket_client_connect_to_host_async(client: *SocketClient, host_and_port: *c::char, default_port: u16, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void;
export @symbol("g_socket_client_connect_to_host_finish") fn socket_client_connect_to_host_finish(client: *SocketClient, result: *AsyncResult, error: nullable **glib::Error) *SocketConnection;
export @symbol("g_socket_client_connect_to_service") fn socket_client_connect_to_service(client: *SocketClient, domain: *c::char, service: *c::char, cancellable: *Cancellable, error: nullable **glib::Error) *SocketConnection;
export @symbol("g_socket_client_connect_to_service_async") fn socket_client_connect_to_service_async(client: *SocketClient, domain: *c::char, service: *c::char, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void;
export @symbol("g_socket_client_connect_to_service_finish") fn socket_client_connect_to_service_finish(client: *SocketClient, result: *AsyncResult, error: nullable **glib::Error) *SocketConnection;
export @symbol("g_socket_client_connect_to_uri") fn socket_client_connect_to_uri(client: *SocketClient, uri: *c::char, default_port: u16, cancellable: *Cancellable, error: nullable **glib::Error) *SocketConnection;
export @symbol("g_socket_client_connect_to_uri_async") fn socket_client_connect_to_uri_async(client: *SocketClient, uri: *c::char, default_port: u16, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void;
export @symbol("g_socket_client_connect_to_uri_finish") fn socket_client_connect_to_uri_finish(client: *SocketClient, result: *AsyncResult, error: nullable **glib::Error) *SocketConnection;
export @symbol("g_socket_client_get_enable_proxy") fn socket_client_get_enable_proxy(client: *SocketClient) glib::boolean;
export @symbol("g_socket_client_get_family") fn socket_client_get_family(client: *SocketClient) SocketFamily;
export @symbol("g_socket_client_get_local_address") fn socket_client_get_local_address(client: *SocketClient) *SocketAddress;
export @symbol("g_socket_client_get_protocol") fn socket_client_get_protocol(client: *SocketClient) SocketProtocol;
export @symbol("g_socket_client_get_proxy_resolver") fn socket_client_get_proxy_resolver(client: *SocketClient) *ProxyResolver;
export @symbol("g_socket_client_get_socket_type") fn socket_client_get_socket_type(client: *SocketClient) SocketType;
export @symbol("g_socket_client_get_timeout") fn socket_client_get_timeout(client: *SocketClient) uint;
export @symbol("g_socket_client_get_tls") fn socket_client_get_tls(client: *SocketClient) glib::boolean;
export @symbol("g_socket_client_get_tls_validation_flags") fn socket_client_get_tls_validation_flags(client: *SocketClient) TlsCertificateFlags;
export @symbol("g_socket_client_set_enable_proxy") fn socket_client_set_enable_proxy(client: *SocketClient, enable: glib::boolean) void;
export @symbol("g_socket_client_set_family") fn socket_client_set_family(client: *SocketClient, family: SocketFamily) void;
export @symbol("g_socket_client_set_local_address") fn socket_client_set_local_address(client: *SocketClient, address: *SocketAddress) void;
export @symbol("g_socket_client_set_protocol") fn socket_client_set_protocol(client: *SocketClient, protocol: SocketProtocol) void;
export @symbol("g_socket_client_set_proxy_resolver") fn socket_client_set_proxy_resolver(client: *SocketClient, proxy_resolver: *ProxyResolver) void;
export @symbol("g_socket_client_set_socket_type") fn socket_client_set_socket_type(client: *SocketClient, type_: SocketType) void;
export @symbol("g_socket_client_set_timeout") fn socket_client_set_timeout(client: *SocketClient, timeout: uint) void;
export @symbol("g_socket_client_set_tls") fn socket_client_set_tls(client: *SocketClient, tls: glib::boolean) void;
export @symbol("g_socket_client_set_tls_validation_flags") fn socket_client_set_tls_validation_flags(client: *SocketClient, flags: TlsCertificateFlags) void;
export fn socket_client_connect_event(
	instance: *SocketClient,
	handler: *fn(instance: *SocketClient, event: SocketClientEvent, connectable: *SocketConnectable, connection: *IOStream, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"event\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export type SocketConnection = struct {
	parent_instance: IOStream,
	priv: *SocketConnectionPrivate,
};
export @symbol("g_socket_connection_connect") fn socket_connection_connect(connection: *SocketConnection, address: *SocketAddress, cancellable: *Cancellable, error: nullable **glib::Error) glib::boolean;
export @symbol("g_socket_connection_connect_async") fn socket_connection_connect_async(connection: *SocketConnection, address: *SocketAddress, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void;
export @symbol("g_socket_connection_connect_finish") fn socket_connection_connect_finish(connection: *SocketConnection, result: *AsyncResult, error: nullable **glib::Error) glib::boolean;
export @symbol("g_socket_connection_get_local_address") fn socket_connection_get_local_address(connection: *SocketConnection, error: nullable **glib::Error) *SocketAddress;
export @symbol("g_socket_connection_get_remote_address") fn socket_connection_get_remote_address(connection: *SocketConnection, error: nullable **glib::Error) *SocketAddress;
export @symbol("g_socket_connection_get_socket") fn socket_connection_get_socket(connection: *SocketConnection) *Socket;
export @symbol("g_socket_connection_is_connected") fn socket_connection_is_connected(connection: *SocketConnection) glib::boolean;
export @symbol("g_socket_connection_factory_lookup_type") fn socket_connection_factory_lookup_type(family: SocketFamily, type_: SocketType, protocol_id: int) glib::Type;
export @symbol("g_socket_connection_factory_register_type") fn socket_connection_factory_register_type(g_type: glib::Type, family: SocketFamily, type_: SocketType, protocol: int) void;
export type SocketControlMessage = struct {
	parent_instance: gobject::Object,
	priv: *SocketControlMessagePrivate,
};
export @symbol("g_socket_control_message_get_level") fn socket_control_message_get_level(message: *SocketControlMessage) int;
export @symbol("g_socket_control_message_get_msg_type") fn socket_control_message_get_msg_type(message: *SocketControlMessage) int;
export @symbol("g_socket_control_message_get_size") fn socket_control_message_get_size(message: *SocketControlMessage) size;
export @symbol("g_socket_control_message_serialize") fn socket_control_message_serialize(message: *SocketControlMessage, data: *opaque) void;
export @symbol("g_socket_control_message_deserialize") fn socket_control_message_deserialize(level: int, type_: int, size_: size, data: *opaque) *SocketControlMessage;
export type SocketListener = struct {
	parent_instance: gobject::Object,
	priv: *SocketListenerPrivate,
};
export @symbol("g_socket_listener_new") fn socket_listener_new() *SocketListener;
export @symbol("g_socket_listener_accept") fn socket_listener_accept(listener: *SocketListener, source_object: **gobject::Object, cancellable: *Cancellable, error: nullable **glib::Error) *SocketConnection;
export @symbol("g_socket_listener_accept_async") fn socket_listener_accept_async(listener: *SocketListener, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void;
export @symbol("g_socket_listener_accept_finish") fn socket_listener_accept_finish(listener: *SocketListener, result: *AsyncResult, source_object: **gobject::Object, error: nullable **glib::Error) *SocketConnection;
export @symbol("g_socket_listener_accept_socket") fn socket_listener_accept_socket(listener: *SocketListener, source_object: **gobject::Object, cancellable: *Cancellable, error: nullable **glib::Error) *Socket;
export @symbol("g_socket_listener_accept_socket_async") fn socket_listener_accept_socket_async(listener: *SocketListener, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void;
export @symbol("g_socket_listener_accept_socket_finish") fn socket_listener_accept_socket_finish(listener: *SocketListener, result: *AsyncResult, source_object: **gobject::Object, error: nullable **glib::Error) *Socket;
export @symbol("g_socket_listener_add_address") fn socket_listener_add_address(listener: *SocketListener, address: *SocketAddress, type_: SocketType, protocol: SocketProtocol, source_object: *gobject::Object, effective_address: **SocketAddress, error: nullable **glib::Error) glib::boolean;
export @symbol("g_socket_listener_add_any_inet_port") fn socket_listener_add_any_inet_port(listener: *SocketListener, source_object: *gobject::Object, error: nullable **glib::Error) u16;
export @symbol("g_socket_listener_add_inet_port") fn socket_listener_add_inet_port(listener: *SocketListener, port: u16, source_object: *gobject::Object, error: nullable **glib::Error) glib::boolean;
export @symbol("g_socket_listener_add_socket") fn socket_listener_add_socket(listener: *SocketListener, socket: *Socket, source_object: *gobject::Object, error: nullable **glib::Error) glib::boolean;
export @symbol("g_socket_listener_close") fn socket_listener_close(listener: *SocketListener) void;
export @symbol("g_socket_listener_set_backlog") fn socket_listener_set_backlog(listener: *SocketListener, listen_backlog: int) void;
export fn socket_listener_connect_event(
	instance: *SocketListener,
	handler: *fn(instance: *SocketListener, event: SocketListenerEvent, socket: *Socket, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"event\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export type SocketService = struct {
	parent_instance: SocketListener,
	priv: *SocketServicePrivate,
};
export @symbol("g_socket_service_new") fn socket_service_new() *SocketService;
export @symbol("g_socket_service_is_active") fn socket_service_is_active(service: *SocketService) glib::boolean;
export @symbol("g_socket_service_start") fn socket_service_start(service: *SocketService) void;
export @symbol("g_socket_service_stop") fn socket_service_stop(service: *SocketService) void;
export fn socket_service_connect_incoming(
	instance: *SocketService,
	handler: *fn(instance: *SocketService, connection: *SocketConnection, source_object: gobject::Object, data: *opaque) glib::boolean,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"incoming\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export type Subprocess = *opaque;
export @symbol("g_subprocess_new") fn subprocess_new(flags: SubprocessFlags, error: **glib::Error, argv0: *c::char, ...) *Subprocess;
export @symbol("g_subprocess_newv") fn subprocess_newv(argv: **c::char, flags: SubprocessFlags, error: nullable **glib::Error) *Subprocess;
export @symbol("g_subprocess_communicate") fn subprocess_communicate(subprocess: *Subprocess, stdin_buf: *glib::Bytes, cancellable: *Cancellable, stdout_buf: **glib::Bytes, stderr_buf: **glib::Bytes, error: nullable **glib::Error) glib::boolean;
export @symbol("g_subprocess_communicate_async") fn subprocess_communicate_async(subprocess: *Subprocess, stdin_buf: *glib::Bytes, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void;
export @symbol("g_subprocess_communicate_finish") fn subprocess_communicate_finish(subprocess: *Subprocess, result: *AsyncResult, stdout_buf: **glib::Bytes, stderr_buf: **glib::Bytes, error: nullable **glib::Error) glib::boolean;
export @symbol("g_subprocess_communicate_utf8") fn subprocess_communicate_utf8(subprocess: *Subprocess, stdin_buf: *c::char, cancellable: *Cancellable, stdout_buf: **c::char, stderr_buf: **c::char, error: nullable **glib::Error) glib::boolean;
export @symbol("g_subprocess_communicate_utf8_async") fn subprocess_communicate_utf8_async(subprocess: *Subprocess, stdin_buf: *c::char, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void;
export @symbol("g_subprocess_communicate_utf8_finish") fn subprocess_communicate_utf8_finish(subprocess: *Subprocess, result: *AsyncResult, stdout_buf: **c::char, stderr_buf: **c::char, error: nullable **glib::Error) glib::boolean;
export @symbol("g_subprocess_force_exit") fn subprocess_force_exit(subprocess: *Subprocess) void;
export @symbol("g_subprocess_get_exit_status") fn subprocess_get_exit_status(subprocess: *Subprocess) int;
export @symbol("g_subprocess_get_identifier") fn subprocess_get_identifier(subprocess: *Subprocess) *c::char;
export @symbol("g_subprocess_get_if_exited") fn subprocess_get_if_exited(subprocess: *Subprocess) glib::boolean;
export @symbol("g_subprocess_get_if_signaled") fn subprocess_get_if_signaled(subprocess: *Subprocess) glib::boolean;
export @symbol("g_subprocess_get_status") fn subprocess_get_status(subprocess: *Subprocess) int;
export @symbol("g_subprocess_get_stderr_pipe") fn subprocess_get_stderr_pipe(subprocess: *Subprocess) *InputStream;
export @symbol("g_subprocess_get_stdin_pipe") fn subprocess_get_stdin_pipe(subprocess: *Subprocess) *OutputStream;
export @symbol("g_subprocess_get_stdout_pipe") fn subprocess_get_stdout_pipe(subprocess: *Subprocess) *InputStream;
export @symbol("g_subprocess_get_successful") fn subprocess_get_successful(subprocess: *Subprocess) glib::boolean;
export @symbol("g_subprocess_get_term_sig") fn subprocess_get_term_sig(subprocess: *Subprocess) int;
export @symbol("g_subprocess_send_signal") fn subprocess_send_signal(subprocess: *Subprocess, signal_num: int) void;
export @symbol("g_subprocess_wait") fn subprocess_wait(subprocess: *Subprocess, cancellable: *Cancellable, error: nullable **glib::Error) glib::boolean;
export @symbol("g_subprocess_wait_async") fn subprocess_wait_async(subprocess: *Subprocess, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void;
export @symbol("g_subprocess_wait_check") fn subprocess_wait_check(subprocess: *Subprocess, cancellable: *Cancellable, error: nullable **glib::Error) glib::boolean;
export @symbol("g_subprocess_wait_check_async") fn subprocess_wait_check_async(subprocess: *Subprocess, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void;
export @symbol("g_subprocess_wait_check_finish") fn subprocess_wait_check_finish(subprocess: *Subprocess, result: *AsyncResult, error: nullable **glib::Error) glib::boolean;
export @symbol("g_subprocess_wait_finish") fn subprocess_wait_finish(subprocess: *Subprocess, result: *AsyncResult, error: nullable **glib::Error) glib::boolean;
export type SubprocessLauncher = *opaque;
export @symbol("g_subprocess_launcher_new") fn subprocess_launcher_new(flags: SubprocessFlags) *SubprocessLauncher;
export @symbol("g_subprocess_launcher_close") fn subprocess_launcher_close(self: *SubprocessLauncher) void;
export @symbol("g_subprocess_launcher_getenv") fn subprocess_launcher_getenv(self: *SubprocessLauncher, variable: *c::char) *c::char;
export @symbol("g_subprocess_launcher_set_child_setup") fn subprocess_launcher_set_child_setup(self: *SubprocessLauncher, child_setup: glib::SpawnChildSetupFunc, user_data: *opaque, destroy_notify: glib::DestroyNotify) void;
export @symbol("g_subprocess_launcher_set_cwd") fn subprocess_launcher_set_cwd(self: *SubprocessLauncher, cwd: *c::char) void;
export @symbol("g_subprocess_launcher_set_environ") fn subprocess_launcher_set_environ(self: *SubprocessLauncher, env: **c::char) void;
export @symbol("g_subprocess_launcher_set_flags") fn subprocess_launcher_set_flags(self: *SubprocessLauncher, flags: SubprocessFlags) void;
export @symbol("g_subprocess_launcher_set_stderr_file_path") fn subprocess_launcher_set_stderr_file_path(self: *SubprocessLauncher, path: *c::char) void;
export @symbol("g_subprocess_launcher_set_stdin_file_path") fn subprocess_launcher_set_stdin_file_path(self: *SubprocessLauncher, path: *c::char) void;
export @symbol("g_subprocess_launcher_set_stdout_file_path") fn subprocess_launcher_set_stdout_file_path(self: *SubprocessLauncher, path: *c::char) void;
export @symbol("g_subprocess_launcher_setenv") fn subprocess_launcher_setenv(self: *SubprocessLauncher, variable: *c::char, value: *c::char, overwrite: glib::boolean) void;
export @symbol("g_subprocess_launcher_spawn") fn subprocess_launcher_spawn(self: *SubprocessLauncher, error: **glib::Error, argv0: *c::char, ...) *Subprocess;
export @symbol("g_subprocess_launcher_spawnv") fn subprocess_launcher_spawnv(self: *SubprocessLauncher, argv: **c::char, error: nullable **glib::Error) *Subprocess;
export @symbol("g_subprocess_launcher_take_fd") fn subprocess_launcher_take_fd(self: *SubprocessLauncher, source_fd: int, target_fd: int) void;
export @symbol("g_subprocess_launcher_take_stderr_fd") fn subprocess_launcher_take_stderr_fd(self: *SubprocessLauncher, fd: int) void;
export @symbol("g_subprocess_launcher_take_stdin_fd") fn subprocess_launcher_take_stdin_fd(self: *SubprocessLauncher, fd: int) void;
export @symbol("g_subprocess_launcher_take_stdout_fd") fn subprocess_launcher_take_stdout_fd(self: *SubprocessLauncher, fd: int) void;
export @symbol("g_subprocess_launcher_unsetenv") fn subprocess_launcher_unsetenv(self: *SubprocessLauncher, variable: *c::char) void;
export type Task = *opaque;
export @symbol("g_task_new") fn task_new(source_object: *opaque, cancellable: *Cancellable, callback: AsyncReadyCallback, callback_data: *opaque) *Task;
export @symbol("g_task_attach_source") fn task_attach_source(task: *Task, source: *glib::Source, callback: glib::SourceFunc) void;
export @symbol("g_task_get_cancellable") fn task_get_cancellable(task: *Task) *Cancellable;
export @symbol("g_task_get_check_cancellable") fn task_get_check_cancellable(task: *Task) glib::boolean;
export @symbol("g_task_get_completed") fn task_get_completed(task: *Task) glib::boolean;
export @symbol("g_task_get_context") fn task_get_context(task: *Task) *glib::MainContext;
export @symbol("g_task_get_name") fn task_get_name(task: *Task) *c::char;
export @symbol("g_task_get_priority") fn task_get_priority(task: *Task) int;
export @symbol("g_task_get_return_on_cancel") fn task_get_return_on_cancel(task: *Task) glib::boolean;
export @symbol("g_task_get_source_object") fn task_get_source_object(task: *Task) *opaque;
export @symbol("g_task_get_source_tag") fn task_get_source_tag(task: *Task) *opaque;
export @symbol("g_task_get_task_data") fn task_get_task_data(task: *Task) *opaque;
export @symbol("g_task_had_error") fn task_had_error(task: *Task) glib::boolean;
export @symbol("g_task_propagate_boolean") fn task_propagate_boolean(task: *Task, error: nullable **glib::Error) glib::boolean;
export @symbol("g_task_propagate_int") fn task_propagate_int(task: *Task, error: nullable **glib::Error) c::ssize;
export @symbol("g_task_propagate_pointer") fn task_propagate_pointer(task: *Task, error: nullable **glib::Error) *opaque;
export @symbol("g_task_propagate_value") fn task_propagate_value(task: *Task, value: *gobject::Value, error: nullable **glib::Error) glib::boolean;
export @symbol("g_task_return_boolean") fn task_return_boolean(task: *Task, result: glib::boolean) void;
export @symbol("g_task_return_error") fn task_return_error(task: *Task, error: *glib::Error) void;
export @symbol("g_task_return_error_if_cancelled") fn task_return_error_if_cancelled(task: *Task) glib::boolean;
export @symbol("g_task_return_int") fn task_return_int(task: *Task, result: c::ssize) void;
export @symbol("g_task_return_new_error") fn task_return_new_error(task: *Task, domain: glib::Quark, code: int, format: *c::char, ...) void;
export @symbol("g_task_return_pointer") fn task_return_pointer(task: *Task, result: *opaque, result_destroy: glib::DestroyNotify) void;
export @symbol("g_task_return_value") fn task_return_value(task: *Task, result: *gobject::Value) void;
export @symbol("g_task_run_in_thread") fn task_run_in_thread(task: *Task, task_func: TaskThreadFunc) void;
export @symbol("g_task_run_in_thread_sync") fn task_run_in_thread_sync(task: *Task, task_func: TaskThreadFunc) void;
export @symbol("g_task_set_check_cancellable") fn task_set_check_cancellable(task: *Task, check_cancellable: glib::boolean) void;
export @symbol("g_task_set_name") fn task_set_name(task: *Task, name: *c::char) void;
export @symbol("g_task_set_priority") fn task_set_priority(task: *Task, priority: int) void;
export @symbol("g_task_set_return_on_cancel") fn task_set_return_on_cancel(task: *Task, return_on_cancel: glib::boolean) glib::boolean;
export @symbol("g_task_set_source_tag") fn task_set_source_tag(task: *Task, source_tag: *opaque) void;
export @symbol("g_task_set_static_name") fn task_set_static_name(task: *Task, name: *c::char) void;
export @symbol("g_task_set_task_data") fn task_set_task_data(task: *Task, task_data: *opaque, task_data_destroy: glib::DestroyNotify) void;
export @symbol("g_task_is_valid") fn task_is_valid(result: *opaque, source_object: *opaque) glib::boolean;
export @symbol("g_task_report_error") fn task_report_error(source_object: *opaque, callback: AsyncReadyCallback, callback_data: *opaque, source_tag: *opaque, error: *glib::Error) void;
export @symbol("g_task_report_new_error") fn task_report_new_error(source_object: *opaque, callback: AsyncReadyCallback, callback_data: *opaque, source_tag: *opaque, domain: glib::Quark, code: int, format: *c::char, ...) void;
export type TcpConnection = struct {
	parent_instance: SocketConnection,
	priv: *TcpConnectionPrivate,
};
export @symbol("g_tcp_connection_get_graceful_disconnect") fn tcp_connection_get_graceful_disconnect(connection: *TcpConnection) glib::boolean;
export @symbol("g_tcp_connection_set_graceful_disconnect") fn tcp_connection_set_graceful_disconnect(connection: *TcpConnection, graceful_disconnect: glib::boolean) void;
export type TcpWrapperConnection = struct {
	parent_instance: TcpConnection,
	priv: *TcpWrapperConnectionPrivate,
};
export @symbol("g_tcp_wrapper_connection_new") fn tcp_wrapper_connection_new(base_io_stream: *IOStream, socket: *Socket) *SocketConnection;
export @symbol("g_tcp_wrapper_connection_get_base_io_stream") fn tcp_wrapper_connection_get_base_io_stream(conn: *TcpWrapperConnection) *IOStream;
export type TestDBus = *opaque;
export @symbol("g_test_dbus_new") fn test_dbus_new(flags: TestDBusFlags) *TestDBus;
export @symbol("g_test_dbus_add_service_dir") fn test_dbus_add_service_dir(self: *TestDBus, path: *c::char) void;
export @symbol("g_test_dbus_down") fn test_dbus_down(self: *TestDBus) void;
export @symbol("g_test_dbus_get_bus_address") fn test_dbus_get_bus_address(self: *TestDBus) *c::char;
export @symbol("g_test_dbus_get_flags") fn test_dbus_get_flags(self: *TestDBus) TestDBusFlags;
export @symbol("g_test_dbus_stop") fn test_dbus_stop(self: *TestDBus) void;
export @symbol("g_test_dbus_up") fn test_dbus_up(self: *TestDBus) void;
export @symbol("g_test_dbus_unset") fn test_dbus_unset() void;
export type ThemedIcon = *opaque;
export @symbol("g_themed_icon_new") fn themed_icon_new(iconname: *c::char) *Icon;
export @symbol("g_themed_icon_new_from_names") fn themed_icon_new_from_names(iconnames: **c::char, len_: int) *Icon;
export @symbol("g_themed_icon_new_with_default_fallbacks") fn themed_icon_new_with_default_fallbacks(iconname: *c::char) *Icon;
export @symbol("g_themed_icon_append_name") fn themed_icon_append_name(icon: *ThemedIcon, iconname: *c::char) void;
export @symbol("g_themed_icon_get_names") fn themed_icon_get_names(icon: *ThemedIcon) **c::char;
export @symbol("g_themed_icon_prepend_name") fn themed_icon_prepend_name(icon: *ThemedIcon, iconname: *c::char) void;
export type ThreadedSocketService = struct {
	parent_instance: SocketService,
	priv: *ThreadedSocketServicePrivate,
};
export @symbol("g_threaded_socket_service_new") fn threaded_socket_service_new(max_threads: int) *SocketService;
export fn threaded_socket_service_connect_run(
	instance: *ThreadedSocketService,
	handler: *fn(instance: *ThreadedSocketService, connection: *SocketConnection, source_object: gobject::Object, data: *opaque) glib::boolean,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"run\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export type TlsCertificate = struct {
	parent_instance: gobject::Object,
	priv: *TlsCertificatePrivate,
};
export @symbol("g_tls_certificate_new_from_file") fn tls_certificate_new_from_file(file: *c::char, error: nullable **glib::Error) *TlsCertificate;
export @symbol("g_tls_certificate_new_from_file_with_password") fn tls_certificate_new_from_file_with_password(file: *c::char, password: *c::char, error: nullable **glib::Error) *TlsCertificate;
export @symbol("g_tls_certificate_new_from_files") fn tls_certificate_new_from_files(cert_file: *c::char, key_file: *c::char, error: nullable **glib::Error) *TlsCertificate;
export @symbol("g_tls_certificate_new_from_pem") fn tls_certificate_new_from_pem(data: *c::char, length: c::ssize, error: nullable **glib::Error) *TlsCertificate;
export @symbol("g_tls_certificate_new_from_pkcs11_uris") fn tls_certificate_new_from_pkcs11_uris(pkcs11_uri: *c::char, private_key_pkcs11_uri: *c::char, error: nullable **glib::Error) *TlsCertificate;
export @symbol("g_tls_certificate_new_from_pkcs12") fn tls_certificate_new_from_pkcs12(data: *u8, length: size, password: *c::char, error: nullable **glib::Error) *TlsCertificate;
export @symbol("g_tls_certificate_get_dns_names") fn tls_certificate_get_dns_names(cert: *TlsCertificate) *glib::PtrArray;
export @symbol("g_tls_certificate_get_ip_addresses") fn tls_certificate_get_ip_addresses(cert: *TlsCertificate) *glib::PtrArray;
export @symbol("g_tls_certificate_get_issuer") fn tls_certificate_get_issuer(cert: *TlsCertificate) *TlsCertificate;
export @symbol("g_tls_certificate_get_issuer_name") fn tls_certificate_get_issuer_name(cert: *TlsCertificate) *c::char;
export @symbol("g_tls_certificate_get_not_valid_after") fn tls_certificate_get_not_valid_after(cert: *TlsCertificate) *glib::DateTime;
export @symbol("g_tls_certificate_get_not_valid_before") fn tls_certificate_get_not_valid_before(cert: *TlsCertificate) *glib::DateTime;
export @symbol("g_tls_certificate_get_subject_name") fn tls_certificate_get_subject_name(cert: *TlsCertificate) *c::char;
export @symbol("g_tls_certificate_is_same") fn tls_certificate_is_same(cert_one: *TlsCertificate, cert_two: *TlsCertificate) glib::boolean;
export @symbol("g_tls_certificate_verify") fn tls_certificate_verify(cert: *TlsCertificate, identity: *SocketConnectable, trusted_ca: *TlsCertificate) TlsCertificateFlags;
export @symbol("g_tls_certificate_list_new_from_file") fn tls_certificate_list_new_from_file(file: *c::char, error: nullable **glib::Error) *glib::List;
export type TlsConnection = struct {
	parent_instance: IOStream,
	priv: *TlsConnectionPrivate,
};
export @symbol("g_tls_connection_emit_accept_certificate") fn tls_connection_emit_accept_certificate(conn: *TlsConnection, peer_cert: *TlsCertificate, errors: TlsCertificateFlags) glib::boolean;
export @symbol("g_tls_connection_get_certificate") fn tls_connection_get_certificate(conn: *TlsConnection) *TlsCertificate;
export @symbol("g_tls_connection_get_channel_binding_data") fn tls_connection_get_channel_binding_data(conn: *TlsConnection, type_: TlsChannelBindingType, data: *glib::ByteArray, error: nullable **glib::Error) glib::boolean;
export @symbol("g_tls_connection_get_ciphersuite_name") fn tls_connection_get_ciphersuite_name(conn: *TlsConnection) *c::char;
export @symbol("g_tls_connection_get_database") fn tls_connection_get_database(conn: *TlsConnection) *TlsDatabase;
export @symbol("g_tls_connection_get_interaction") fn tls_connection_get_interaction(conn: *TlsConnection) *TlsInteraction;
export @symbol("g_tls_connection_get_negotiated_protocol") fn tls_connection_get_negotiated_protocol(conn: *TlsConnection) *c::char;
export @symbol("g_tls_connection_get_peer_certificate") fn tls_connection_get_peer_certificate(conn: *TlsConnection) *TlsCertificate;
export @symbol("g_tls_connection_get_peer_certificate_errors") fn tls_connection_get_peer_certificate_errors(conn: *TlsConnection) TlsCertificateFlags;
export @symbol("g_tls_connection_get_protocol_version") fn tls_connection_get_protocol_version(conn: *TlsConnection) TlsProtocolVersion;
export @symbol("g_tls_connection_get_rehandshake_mode") fn tls_connection_get_rehandshake_mode(conn: *TlsConnection) TlsRehandshakeMode;
export @symbol("g_tls_connection_get_require_close_notify") fn tls_connection_get_require_close_notify(conn: *TlsConnection) glib::boolean;
export @symbol("g_tls_connection_get_use_system_certdb") fn tls_connection_get_use_system_certdb(conn: *TlsConnection) glib::boolean;
export @symbol("g_tls_connection_handshake") fn tls_connection_handshake(conn: *TlsConnection, cancellable: *Cancellable, error: nullable **glib::Error) glib::boolean;
export @symbol("g_tls_connection_handshake_async") fn tls_connection_handshake_async(conn: *TlsConnection, io_priority: int, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void;
export @symbol("g_tls_connection_handshake_finish") fn tls_connection_handshake_finish(conn: *TlsConnection, result: *AsyncResult, error: nullable **glib::Error) glib::boolean;
export @symbol("g_tls_connection_set_advertised_protocols") fn tls_connection_set_advertised_protocols(conn: *TlsConnection, protocols: **c::char) void;
export @symbol("g_tls_connection_set_certificate") fn tls_connection_set_certificate(conn: *TlsConnection, certificate: *TlsCertificate) void;
export @symbol("g_tls_connection_set_database") fn tls_connection_set_database(conn: *TlsConnection, database: *TlsDatabase) void;
export @symbol("g_tls_connection_set_interaction") fn tls_connection_set_interaction(conn: *TlsConnection, interaction: *TlsInteraction) void;
export @symbol("g_tls_connection_set_rehandshake_mode") fn tls_connection_set_rehandshake_mode(conn: *TlsConnection, mode: TlsRehandshakeMode) void;
export @symbol("g_tls_connection_set_require_close_notify") fn tls_connection_set_require_close_notify(conn: *TlsConnection, require_close_notify: glib::boolean) void;
export @symbol("g_tls_connection_set_use_system_certdb") fn tls_connection_set_use_system_certdb(conn: *TlsConnection, use_system_certdb: glib::boolean) void;
export fn tls_connection_connect_accept_certificate(
	instance: *TlsConnection,
	handler: *fn(instance: *TlsConnection, peer_cert: *TlsCertificate, errors: TlsCertificateFlags, data: *opaque) glib::boolean,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"accept-certificate\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export type TlsDatabase = struct {
	parent_instance: gobject::Object,
	priv: *TlsDatabasePrivate,
};
export @symbol("g_tls_database_create_certificate_handle") fn tls_database_create_certificate_handle(self: *TlsDatabase, certificate: *TlsCertificate) *c::char;
export @symbol("g_tls_database_lookup_certificate_for_handle") fn tls_database_lookup_certificate_for_handle(self: *TlsDatabase, handle: *c::char, interaction: *TlsInteraction, flags: TlsDatabaseLookupFlags, cancellable: *Cancellable, error: nullable **glib::Error) *TlsCertificate;
export @symbol("g_tls_database_lookup_certificate_for_handle_async") fn tls_database_lookup_certificate_for_handle_async(self: *TlsDatabase, handle: *c::char, interaction: *TlsInteraction, flags: TlsDatabaseLookupFlags, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void;
export @symbol("g_tls_database_lookup_certificate_for_handle_finish") fn tls_database_lookup_certificate_for_handle_finish(self: *TlsDatabase, result: *AsyncResult, error: nullable **glib::Error) *TlsCertificate;
export @symbol("g_tls_database_lookup_certificate_issuer") fn tls_database_lookup_certificate_issuer(self: *TlsDatabase, certificate: *TlsCertificate, interaction: *TlsInteraction, flags: TlsDatabaseLookupFlags, cancellable: *Cancellable, error: nullable **glib::Error) *TlsCertificate;
export @symbol("g_tls_database_lookup_certificate_issuer_async") fn tls_database_lookup_certificate_issuer_async(self: *TlsDatabase, certificate: *TlsCertificate, interaction: *TlsInteraction, flags: TlsDatabaseLookupFlags, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void;
export @symbol("g_tls_database_lookup_certificate_issuer_finish") fn tls_database_lookup_certificate_issuer_finish(self: *TlsDatabase, result: *AsyncResult, error: nullable **glib::Error) *TlsCertificate;
export @symbol("g_tls_database_lookup_certificates_issued_by") fn tls_database_lookup_certificates_issued_by(self: *TlsDatabase, issuer_raw_dn: *glib::ByteArray, interaction: *TlsInteraction, flags: TlsDatabaseLookupFlags, cancellable: *Cancellable, error: nullable **glib::Error) *glib::List;
export @symbol("g_tls_database_lookup_certificates_issued_by_async") fn tls_database_lookup_certificates_issued_by_async(self: *TlsDatabase, issuer_raw_dn: *glib::ByteArray, interaction: *TlsInteraction, flags: TlsDatabaseLookupFlags, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void;
export @symbol("g_tls_database_lookup_certificates_issued_by_finish") fn tls_database_lookup_certificates_issued_by_finish(self: *TlsDatabase, result: *AsyncResult, error: nullable **glib::Error) *glib::List;
export @symbol("g_tls_database_verify_chain") fn tls_database_verify_chain(self: *TlsDatabase, chain: *TlsCertificate, purpose: *c::char, identity: *SocketConnectable, interaction: *TlsInteraction, flags: TlsDatabaseVerifyFlags, cancellable: *Cancellable, error: nullable **glib::Error) TlsCertificateFlags;
export @symbol("g_tls_database_verify_chain_async") fn tls_database_verify_chain_async(self: *TlsDatabase, chain: *TlsCertificate, purpose: *c::char, identity: *SocketConnectable, interaction: *TlsInteraction, flags: TlsDatabaseVerifyFlags, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void;
export @symbol("g_tls_database_verify_chain_finish") fn tls_database_verify_chain_finish(self: *TlsDatabase, result: *AsyncResult, error: nullable **glib::Error) TlsCertificateFlags;
export type TlsInteraction = struct {
	parent_instance: gobject::Object,
	priv: *TlsInteractionPrivate,
};
export @symbol("g_tls_interaction_ask_password") fn tls_interaction_ask_password(interaction: *TlsInteraction, password: *TlsPassword, cancellable: *Cancellable, error: nullable **glib::Error) TlsInteractionResult;
export @symbol("g_tls_interaction_ask_password_async") fn tls_interaction_ask_password_async(interaction: *TlsInteraction, password: *TlsPassword, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void;
export @symbol("g_tls_interaction_ask_password_finish") fn tls_interaction_ask_password_finish(interaction: *TlsInteraction, result: *AsyncResult, error: nullable **glib::Error) TlsInteractionResult;
export @symbol("g_tls_interaction_invoke_ask_password") fn tls_interaction_invoke_ask_password(interaction: *TlsInteraction, password: *TlsPassword, cancellable: *Cancellable, error: nullable **glib::Error) TlsInteractionResult;
export @symbol("g_tls_interaction_invoke_request_certificate") fn tls_interaction_invoke_request_certificate(interaction: *TlsInteraction, connection: *TlsConnection, flags: TlsCertificateRequestFlags, cancellable: *Cancellable, error: nullable **glib::Error) TlsInteractionResult;
export @symbol("g_tls_interaction_request_certificate") fn tls_interaction_request_certificate(interaction: *TlsInteraction, connection: *TlsConnection, flags: TlsCertificateRequestFlags, cancellable: *Cancellable, error: nullable **glib::Error) TlsInteractionResult;
export @symbol("g_tls_interaction_request_certificate_async") fn tls_interaction_request_certificate_async(interaction: *TlsInteraction, connection: *TlsConnection, flags: TlsCertificateRequestFlags, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void;
export @symbol("g_tls_interaction_request_certificate_finish") fn tls_interaction_request_certificate_finish(interaction: *TlsInteraction, result: *AsyncResult, error: nullable **glib::Error) TlsInteractionResult;
export type TlsPassword = struct {
	parent_instance: gobject::Object,
	priv: *TlsPasswordPrivate,
};
export @symbol("g_tls_password_new") fn tls_password_new(flags: TlsPasswordFlags, description: *c::char) *TlsPassword;
export @symbol("g_tls_password_get_description") fn tls_password_get_description(password: *TlsPassword) *c::char;
export @symbol("g_tls_password_get_flags") fn tls_password_get_flags(password: *TlsPassword) TlsPasswordFlags;
export @symbol("g_tls_password_get_value") fn tls_password_get_value(password: *TlsPassword, length: *size) *c::uchar;
export @symbol("g_tls_password_get_warning") fn tls_password_get_warning(password: *TlsPassword) *c::char;
export @symbol("g_tls_password_set_description") fn tls_password_set_description(password: *TlsPassword, description: *c::char) void;
export @symbol("g_tls_password_set_flags") fn tls_password_set_flags(password: *TlsPassword, flags: TlsPasswordFlags) void;
export @symbol("g_tls_password_set_value") fn tls_password_set_value(password: *TlsPassword, value: *c::uchar, length: c::ssize) void;
export @symbol("g_tls_password_set_value_full") fn tls_password_set_value_full(password: *TlsPassword, value: *c::uchar, length: c::ssize, destroy: glib::DestroyNotify) void;
export @symbol("g_tls_password_set_warning") fn tls_password_set_warning(password: *TlsPassword, warning: *c::char) void;
export type UnixConnection = struct {
	parent_instance: SocketConnection,
	priv: *UnixConnectionPrivate,
};
export @symbol("g_unix_connection_receive_credentials") fn unix_connection_receive_credentials(connection: *UnixConnection, cancellable: *Cancellable, error: nullable **glib::Error) *Credentials;
export @symbol("g_unix_connection_receive_credentials_async") fn unix_connection_receive_credentials_async(connection: *UnixConnection, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void;
export @symbol("g_unix_connection_receive_credentials_finish") fn unix_connection_receive_credentials_finish(connection: *UnixConnection, result: *AsyncResult, error: nullable **glib::Error) *Credentials;
export @symbol("g_unix_connection_receive_fd") fn unix_connection_receive_fd(connection: *UnixConnection, cancellable: *Cancellable, error: nullable **glib::Error) int;
export @symbol("g_unix_connection_send_credentials") fn unix_connection_send_credentials(connection: *UnixConnection, cancellable: *Cancellable, error: nullable **glib::Error) glib::boolean;
export @symbol("g_unix_connection_send_credentials_async") fn unix_connection_send_credentials_async(connection: *UnixConnection, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void;
export @symbol("g_unix_connection_send_credentials_finish") fn unix_connection_send_credentials_finish(connection: *UnixConnection, result: *AsyncResult, error: nullable **glib::Error) glib::boolean;
export @symbol("g_unix_connection_send_fd") fn unix_connection_send_fd(connection: *UnixConnection, fd: int, cancellable: *Cancellable, error: nullable **glib::Error) glib::boolean;
export type UnixCredentialsMessage = struct {
	parent_instance: SocketControlMessage,
	priv: *UnixCredentialsMessagePrivate,
};
export @symbol("g_unix_credentials_message_new") fn unix_credentials_message_new() *SocketControlMessage;
export @symbol("g_unix_credentials_message_new_with_credentials") fn unix_credentials_message_new_with_credentials(credentials: *Credentials) *SocketControlMessage;
export @symbol("g_unix_credentials_message_get_credentials") fn unix_credentials_message_get_credentials(message: *UnixCredentialsMessage) *Credentials;
export @symbol("g_unix_credentials_message_is_supported") fn unix_credentials_message_is_supported() glib::boolean;
export type UnixFDList = struct {
	parent_instance: gobject::Object,
	priv: *UnixFDListPrivate,
};
export @symbol("g_unix_fd_list_new") fn unix_fdlist_new() *UnixFDList;
export @symbol("g_unix_fd_list_new_from_array") fn unix_fdlist_new_from_array(fds: *int, n_fds: int) *UnixFDList;
export @symbol("g_unix_fd_list_append") fn unix_fdlist_append(list: *UnixFDList, fd: int, error: nullable **glib::Error) int;
export @symbol("g_unix_fd_list_get") fn unix_fdlist_get(list: *UnixFDList, index_: int, error: nullable **glib::Error) int;
export @symbol("g_unix_fd_list_get_length") fn unix_fdlist_get_length(list: *UnixFDList) int;
export @symbol("g_unix_fd_list_peek_fds") fn unix_fdlist_peek_fds(list: *UnixFDList, length: *int) *int;
export @symbol("g_unix_fd_list_steal_fds") fn unix_fdlist_steal_fds(list: *UnixFDList, length: *int) *int;
export type UnixFDMessage = struct {
	parent_instance: SocketControlMessage,
	priv: *UnixFDMessagePrivate,
};
export @symbol("g_unix_fd_message_new") fn unix_fdmessage_new() *SocketControlMessage;
export @symbol("g_unix_fd_message_new_with_fd_list") fn unix_fdmessage_new_with_fd_list(fd_list: *UnixFDList) *SocketControlMessage;
export @symbol("g_unix_fd_message_append_fd") fn unix_fdmessage_append_fd(message: *UnixFDMessage, fd: int, error: nullable **glib::Error) glib::boolean;
export @symbol("g_unix_fd_message_get_fd_list") fn unix_fdmessage_get_fd_list(message: *UnixFDMessage) *UnixFDList;
export @symbol("g_unix_fd_message_steal_fds") fn unix_fdmessage_steal_fds(message: *UnixFDMessage, length: *int) *int;
export type UnixInputStream = struct {
	parent_instance: InputStream,
	priv: *UnixInputStreamPrivate,
};
export @symbol("g_unix_input_stream_new") fn unix_input_stream_new(fd: int, close_fd: glib::boolean) *InputStream;
export @symbol("g_unix_input_stream_get_close_fd") fn unix_input_stream_get_close_fd(stream: *UnixInputStream) glib::boolean;
export @symbol("g_unix_input_stream_get_fd") fn unix_input_stream_get_fd(stream: *UnixInputStream) int;
export @symbol("g_unix_input_stream_set_close_fd") fn unix_input_stream_set_close_fd(stream: *UnixInputStream, close_fd: glib::boolean) void;
export type UnixMountMonitor = *opaque;
export @symbol("g_unix_mount_monitor_new") fn unix_mount_monitor_new() *UnixMountMonitor;
export @symbol("g_unix_mount_monitor_set_rate_limit") fn unix_mount_monitor_set_rate_limit(mount_monitor: *UnixMountMonitor, limit_msec: int) void;
export @symbol("g_unix_mount_monitor_get") fn unix_mount_monitor_get() *UnixMountMonitor;
export fn unix_mount_monitor_connect_mountpoints_changed(
	instance: *UnixMountMonitor,
	handler: *fn(instance: *UnixMountMonitor, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"mountpoints-changed\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn unix_mount_monitor_connect_mounts_changed(
	instance: *UnixMountMonitor,
	handler: *fn(instance: *UnixMountMonitor, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"mounts-changed\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export type UnixOutputStream = struct {
	parent_instance: OutputStream,
	priv: *UnixOutputStreamPrivate,
};
export @symbol("g_unix_output_stream_new") fn unix_output_stream_new(fd: int, close_fd: glib::boolean) *OutputStream;
export @symbol("g_unix_output_stream_get_close_fd") fn unix_output_stream_get_close_fd(stream: *UnixOutputStream) glib::boolean;
export @symbol("g_unix_output_stream_get_fd") fn unix_output_stream_get_fd(stream: *UnixOutputStream) int;
export @symbol("g_unix_output_stream_set_close_fd") fn unix_output_stream_set_close_fd(stream: *UnixOutputStream, close_fd: glib::boolean) void;
export type UnixSocketAddress = struct {
	parent_instance: SocketAddress,
	priv: *UnixSocketAddressPrivate,
};
export @symbol("g_unix_socket_address_new") fn unix_socket_address_new(path: *c::char) *SocketAddress;
export @symbol("g_unix_socket_address_new_abstract") fn unix_socket_address_new_abstract(path: *c::char, path_len: int) *SocketAddress;
export @symbol("g_unix_socket_address_new_with_type") fn unix_socket_address_new_with_type(path: *c::char, path_len: int, type_: UnixSocketAddressType) *SocketAddress;
export @symbol("g_unix_socket_address_get_address_type") fn unix_socket_address_get_address_type(address: *UnixSocketAddress) UnixSocketAddressType;
export @symbol("g_unix_socket_address_get_is_abstract") fn unix_socket_address_get_is_abstract(address: *UnixSocketAddress) glib::boolean;
export @symbol("g_unix_socket_address_get_path") fn unix_socket_address_get_path(address: *UnixSocketAddress) *c::char;
export @symbol("g_unix_socket_address_get_path_len") fn unix_socket_address_get_path_len(address: *UnixSocketAddress) size;
export @symbol("g_unix_socket_address_abstract_names_supported") fn unix_socket_address_abstract_names_supported() glib::boolean;
export type Vfs = struct {
	parent_instance: gobject::Object,
};
export @symbol("g_vfs_get_file_for_path") fn vfs_get_file_for_path(vfs: *Vfs, path: *c::char) *File;
export @symbol("g_vfs_get_file_for_uri") fn vfs_get_file_for_uri(vfs: *Vfs, uri: *c::char) *File;
export @symbol("g_vfs_get_supported_uri_schemes") fn vfs_get_supported_uri_schemes(vfs: *Vfs) **c::char;
export @symbol("g_vfs_is_active") fn vfs_is_active(vfs: *Vfs) glib::boolean;
export @symbol("g_vfs_parse_name") fn vfs_parse_name(vfs: *Vfs, parse_name: *c::char) *File;
export @symbol("g_vfs_register_uri_scheme") fn vfs_register_uri_scheme(vfs: *Vfs, scheme: *c::char, uri_func: VfsFileLookupFunc, uri_data: *opaque, uri_destroy: glib::DestroyNotify, parse_name_func: VfsFileLookupFunc, parse_name_data: *opaque, parse_name_destroy: glib::DestroyNotify) glib::boolean;
export @symbol("g_vfs_unregister_uri_scheme") fn vfs_unregister_uri_scheme(vfs: *Vfs, scheme: *c::char) glib::boolean;
export @symbol("g_vfs_get_default") fn vfs_get_default() *Vfs;
export @symbol("g_vfs_get_local") fn vfs_get_local() *Vfs;
export type VolumeMonitor = struct {
	parent_instance: gobject::Object,
	priv: *opaque,
};
export @symbol("g_volume_monitor_get_connected_drives") fn volume_monitor_get_connected_drives(volume_monitor: *VolumeMonitor) *glib::List;
export @symbol("g_volume_monitor_get_mount_for_uuid") fn volume_monitor_get_mount_for_uuid(volume_monitor: *VolumeMonitor, uuid: *c::char) *Mount;
export @symbol("g_volume_monitor_get_mounts") fn volume_monitor_get_mounts(volume_monitor: *VolumeMonitor) *glib::List;
export @symbol("g_volume_monitor_get_volume_for_uuid") fn volume_monitor_get_volume_for_uuid(volume_monitor: *VolumeMonitor, uuid: *c::char) *Volume;
export @symbol("g_volume_monitor_get_volumes") fn volume_monitor_get_volumes(volume_monitor: *VolumeMonitor) *glib::List;
export @symbol("g_volume_monitor_adopt_orphan_mount") fn volume_monitor_adopt_orphan_mount(mount: *Mount) *Volume;
export @symbol("g_volume_monitor_get") fn volume_monitor_get() *VolumeMonitor;
export fn volume_monitor_connect_drive_changed(
	instance: *VolumeMonitor,
	handler: *fn(instance: *VolumeMonitor, drive: *Drive, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"drive-changed\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn volume_monitor_connect_drive_connected(
	instance: *VolumeMonitor,
	handler: *fn(instance: *VolumeMonitor, drive: *Drive, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"drive-connected\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn volume_monitor_connect_drive_disconnected(
	instance: *VolumeMonitor,
	handler: *fn(instance: *VolumeMonitor, drive: *Drive, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"drive-disconnected\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn volume_monitor_connect_drive_eject_button(
	instance: *VolumeMonitor,
	handler: *fn(instance: *VolumeMonitor, drive: *Drive, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"drive-eject-button\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn volume_monitor_connect_drive_stop_button(
	instance: *VolumeMonitor,
	handler: *fn(instance: *VolumeMonitor, drive: *Drive, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"drive-stop-button\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn volume_monitor_connect_mount_added(
	instance: *VolumeMonitor,
	handler: *fn(instance: *VolumeMonitor, mount: *Mount, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"mount-added\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn volume_monitor_connect_mount_changed(
	instance: *VolumeMonitor,
	handler: *fn(instance: *VolumeMonitor, mount: *Mount, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"mount-changed\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn volume_monitor_connect_mount_pre_unmount(
	instance: *VolumeMonitor,
	handler: *fn(instance: *VolumeMonitor, mount: *Mount, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"mount-pre-unmount\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn volume_monitor_connect_mount_removed(
	instance: *VolumeMonitor,
	handler: *fn(instance: *VolumeMonitor, mount: *Mount, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"mount-removed\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn volume_monitor_connect_volume_added(
	instance: *VolumeMonitor,
	handler: *fn(instance: *VolumeMonitor, volume: *Volume, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"volume-added\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn volume_monitor_connect_volume_changed(
	instance: *VolumeMonitor,
	handler: *fn(instance: *VolumeMonitor, volume: *Volume, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"volume-changed\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn volume_monitor_connect_volume_removed(
	instance: *VolumeMonitor,
	handler: *fn(instance: *VolumeMonitor, volume: *Volume, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"volume-removed\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export type ZlibCompressor = *opaque;
export @symbol("g_zlib_compressor_new") fn zlib_compressor_new(format: ZlibCompressorFormat, level: int) *ZlibCompressor;
export @symbol("g_zlib_compressor_get_file_info") fn zlib_compressor_get_file_info(compressor: *ZlibCompressor) *FileInfo;
export @symbol("g_zlib_compressor_set_file_info") fn zlib_compressor_set_file_info(compressor: *ZlibCompressor, file_info: *FileInfo) void;
export type ZlibDecompressor = *opaque;
export @symbol("g_zlib_decompressor_new") fn zlib_decompressor_new(format: ZlibCompressorFormat) *ZlibDecompressor;
export @symbol("g_zlib_decompressor_get_file_info") fn zlib_decompressor_get_file_info(decompressor: *ZlibDecompressor) *FileInfo;
export type Action = *opaque;
export @symbol("g_action_activate") fn action_activate(action: *Action, parameter: *glib::Variant) void;
export @symbol("g_action_change_state") fn action_change_state(action: *Action, value: *glib::Variant) void;
export @symbol("g_action_get_enabled") fn action_get_enabled(action: *Action) glib::boolean;
export @symbol("g_action_get_name") fn action_get_name(action: *Action) *c::char;
export @symbol("g_action_get_parameter_type") fn action_get_parameter_type(action: *Action) *glib::VariantType;
export @symbol("g_action_get_state") fn action_get_state(action: *Action) *glib::Variant;
export @symbol("g_action_get_state_hint") fn action_get_state_hint(action: *Action) *glib::Variant;
export @symbol("g_action_get_state_type") fn action_get_state_type(action: *Action) *glib::VariantType;
export @symbol("g_action_name_is_valid") fn action_name_is_valid(action_name: *c::char) glib::boolean;
export @symbol("g_action_parse_detailed_name") fn action_parse_detailed_name(detailed_name: *c::char, action_name: **c::char, target_value: **glib::Variant, error: nullable **glib::Error) glib::boolean;
export @symbol("g_action_print_detailed_name") fn action_print_detailed_name(action_name: *c::char, target_value: *glib::Variant) *c::char;
export type ActionGroup = *opaque;
export @symbol("g_action_group_action_added") fn action_group_action_added(action_group: *ActionGroup, action_name: *c::char) void;
export @symbol("g_action_group_action_enabled_changed") fn action_group_action_enabled_changed(action_group: *ActionGroup, action_name: *c::char, enabled: glib::boolean) void;
export @symbol("g_action_group_action_removed") fn action_group_action_removed(action_group: *ActionGroup, action_name: *c::char) void;
export @symbol("g_action_group_action_state_changed") fn action_group_action_state_changed(action_group: *ActionGroup, action_name: *c::char, state: *glib::Variant) void;
export @symbol("g_action_group_activate_action") fn action_group_activate_action(action_group: *ActionGroup, action_name: *c::char, parameter: *glib::Variant) void;
export @symbol("g_action_group_change_action_state") fn action_group_change_action_state(action_group: *ActionGroup, action_name: *c::char, value: *glib::Variant) void;
export @symbol("g_action_group_get_action_enabled") fn action_group_get_action_enabled(action_group: *ActionGroup, action_name: *c::char) glib::boolean;
export @symbol("g_action_group_get_action_parameter_type") fn action_group_get_action_parameter_type(action_group: *ActionGroup, action_name: *c::char) *glib::VariantType;
export @symbol("g_action_group_get_action_state") fn action_group_get_action_state(action_group: *ActionGroup, action_name: *c::char) *glib::Variant;
export @symbol("g_action_group_get_action_state_hint") fn action_group_get_action_state_hint(action_group: *ActionGroup, action_name: *c::char) *glib::Variant;
export @symbol("g_action_group_get_action_state_type") fn action_group_get_action_state_type(action_group: *ActionGroup, action_name: *c::char) *glib::VariantType;
export @symbol("g_action_group_has_action") fn action_group_has_action(action_group: *ActionGroup, action_name: *c::char) glib::boolean;
export @symbol("g_action_group_list_actions") fn action_group_list_actions(action_group: *ActionGroup) **c::char;
export @symbol("g_action_group_query_action") fn action_group_query_action(action_group: *ActionGroup, action_name: *c::char, enabled: *glib::boolean, parameter_type: **glib::VariantType, state_type: **glib::VariantType, state_hint: **glib::Variant, state: **glib::Variant) glib::boolean;
export fn action_group_connect_action_added(
	instance: *ActionGroup,
	handler: *fn(instance: *ActionGroup, action_name: *c::char, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"action-added\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn action_group_connect_action_enabled_changed(
	instance: *ActionGroup,
	handler: *fn(instance: *ActionGroup, action_name: *c::char, enabled: glib::boolean, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"action-enabled-changed\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn action_group_connect_action_removed(
	instance: *ActionGroup,
	handler: *fn(instance: *ActionGroup, action_name: *c::char, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"action-removed\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn action_group_connect_action_state_changed(
	instance: *ActionGroup,
	handler: *fn(instance: *ActionGroup, action_name: *c::char, value: glib::Variant, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"action-state-changed\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export type ActionMap = *opaque;
export @symbol("g_action_map_add_action") fn action_map_add_action(action_map: *ActionMap, action: *Action) void;
export @symbol("g_action_map_add_action_entries") fn action_map_add_action_entries(action_map: *ActionMap, entries: *ActionEntry, n_entries: int, user_data: *opaque) void;
export @symbol("g_action_map_lookup_action") fn action_map_lookup_action(action_map: *ActionMap, action_name: *c::char) *Action;
export @symbol("g_action_map_remove_action") fn action_map_remove_action(action_map: *ActionMap, action_name: *c::char) void;
export @symbol("g_action_map_remove_action_entries") fn action_map_remove_action_entries(action_map: *ActionMap, entries: *ActionEntry, n_entries: int) void;
export type AppInfo = *opaque;
export @symbol("g_app_info_add_supports_type") fn app_info_add_supports_type(appinfo: *AppInfo, content_type: *c::char, error: nullable **glib::Error) glib::boolean;
export @symbol("g_app_info_can_delete") fn app_info_can_delete(appinfo: *AppInfo) glib::boolean;
export @symbol("g_app_info_can_remove_supports_type") fn app_info_can_remove_supports_type(appinfo: *AppInfo) glib::boolean;
export @symbol("g_app_info_delete") fn app_info_delete(appinfo: *AppInfo) glib::boolean;
export @symbol("g_app_info_dup") fn app_info_dup(appinfo: *AppInfo) *AppInfo;
export @symbol("g_app_info_equal") fn app_info_equal(appinfo1: *AppInfo, appinfo2: *AppInfo) glib::boolean;
export @symbol("g_app_info_get_commandline") fn app_info_get_commandline(appinfo: *AppInfo) *c::char;
export @symbol("g_app_info_get_description") fn app_info_get_description(appinfo: *AppInfo) *c::char;
export @symbol("g_app_info_get_display_name") fn app_info_get_display_name(appinfo: *AppInfo) *c::char;
export @symbol("g_app_info_get_executable") fn app_info_get_executable(appinfo: *AppInfo) *c::char;
export @symbol("g_app_info_get_icon") fn app_info_get_icon(appinfo: *AppInfo) *Icon;
export @symbol("g_app_info_get_id") fn app_info_get_id(appinfo: *AppInfo) *c::char;
export @symbol("g_app_info_get_name") fn app_info_get_name(appinfo: *AppInfo) *c::char;
export @symbol("g_app_info_get_supported_types") fn app_info_get_supported_types(appinfo: *AppInfo) **c::char;
export @symbol("g_app_info_launch") fn app_info_launch(appinfo: *AppInfo, files: *glib::List, context: *AppLaunchContext, error: nullable **glib::Error) glib::boolean;
export @symbol("g_app_info_launch_uris") fn app_info_launch_uris(appinfo: *AppInfo, uris: *glib::List, context: *AppLaunchContext, error: nullable **glib::Error) glib::boolean;
export @symbol("g_app_info_launch_uris_async") fn app_info_launch_uris_async(appinfo: *AppInfo, uris: *glib::List, context: *AppLaunchContext, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void;
export @symbol("g_app_info_launch_uris_finish") fn app_info_launch_uris_finish(appinfo: *AppInfo, result: *AsyncResult, error: nullable **glib::Error) glib::boolean;
export @symbol("g_app_info_remove_supports_type") fn app_info_remove_supports_type(appinfo: *AppInfo, content_type: *c::char, error: nullable **glib::Error) glib::boolean;
export @symbol("g_app_info_set_as_default_for_extension") fn app_info_set_as_default_for_extension(appinfo: *AppInfo, extension: *c::char, error: nullable **glib::Error) glib::boolean;
export @symbol("g_app_info_set_as_default_for_type") fn app_info_set_as_default_for_type(appinfo: *AppInfo, content_type: *c::char, error: nullable **glib::Error) glib::boolean;
export @symbol("g_app_info_set_as_last_used_for_type") fn app_info_set_as_last_used_for_type(appinfo: *AppInfo, content_type: *c::char, error: nullable **glib::Error) glib::boolean;
export @symbol("g_app_info_should_show") fn app_info_should_show(appinfo: *AppInfo) glib::boolean;
export @symbol("g_app_info_supports_files") fn app_info_supports_files(appinfo: *AppInfo) glib::boolean;
export @symbol("g_app_info_supports_uris") fn app_info_supports_uris(appinfo: *AppInfo) glib::boolean;
export @symbol("g_app_info_create_from_commandline") fn app_info_create_from_commandline(commandline: *c::char, application_name: *c::char, flags: AppInfoCreateFlags, error: nullable **glib::Error) *AppInfo;
export @symbol("g_app_info_get_all") fn app_info_get_all() *glib::List;
export @symbol("g_app_info_get_all_for_type") fn app_info_get_all_for_type(content_type: *c::char) *glib::List;
export @symbol("g_app_info_get_default_for_type") fn app_info_get_default_for_type(content_type: *c::char, must_support_uris: glib::boolean) *AppInfo;
export @symbol("g_app_info_get_default_for_type_async") fn app_info_get_default_for_type_async(content_type: *c::char, must_support_uris: glib::boolean, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void;
export @symbol("g_app_info_get_default_for_type_finish") fn app_info_get_default_for_type_finish(result: *AsyncResult, error: nullable **glib::Error) *AppInfo;
export @symbol("g_app_info_get_default_for_uri_scheme") fn app_info_get_default_for_uri_scheme(uri_scheme: *c::char) *AppInfo;
export @symbol("g_app_info_get_default_for_uri_scheme_async") fn app_info_get_default_for_uri_scheme_async(uri_scheme: *c::char, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void;
export @symbol("g_app_info_get_default_for_uri_scheme_finish") fn app_info_get_default_for_uri_scheme_finish(result: *AsyncResult, error: nullable **glib::Error) *AppInfo;
export @symbol("g_app_info_get_fallback_for_type") fn app_info_get_fallback_for_type(content_type: *c::char) *glib::List;
export @symbol("g_app_info_get_recommended_for_type") fn app_info_get_recommended_for_type(content_type: *c::char) *glib::List;
export @symbol("g_app_info_launch_default_for_uri") fn app_info_launch_default_for_uri(uri: *c::char, context: *AppLaunchContext, error: nullable **glib::Error) glib::boolean;
export @symbol("g_app_info_launch_default_for_uri_async") fn app_info_launch_default_for_uri_async(uri: *c::char, context: *AppLaunchContext, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void;
export @symbol("g_app_info_launch_default_for_uri_finish") fn app_info_launch_default_for_uri_finish(result: *AsyncResult, error: nullable **glib::Error) glib::boolean;
export @symbol("g_app_info_reset_type_associations") fn app_info_reset_type_associations(content_type: *c::char) void;
export type AsyncInitable = *opaque;
export @symbol("g_async_initable_init_async") fn async_initable_init_async(initable: *AsyncInitable, io_priority: int, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void;
export @symbol("g_async_initable_init_finish") fn async_initable_init_finish(initable: *AsyncInitable, res: *AsyncResult, error: nullable **glib::Error) glib::boolean;
export @symbol("g_async_initable_new_finish") fn async_initable_new_finish(initable: *AsyncInitable, res: *AsyncResult, error: nullable **glib::Error) *gobject::Object;
export @symbol("g_async_initable_new_async") fn async_initable_new_async(object_type: glib::Type, io_priority: int, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque, first_property_name: *c::char, ...) void;
export @symbol("g_async_initable_new_valist_async") fn async_initable_new_valist_async(object_type: glib::Type, first_property_name: *c::char, var_args: valist, io_priority: int, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void;
export @symbol("g_async_initable_newv_async") fn async_initable_newv_async(object_type: glib::Type, n_parameters: uint, parameters: *gobject::Parameter, io_priority: int, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void;
export type AsyncResult = *opaque;
export @symbol("g_async_result_get_source_object") fn async_result_get_source_object(res: *AsyncResult) *gobject::Object;
export @symbol("g_async_result_get_user_data") fn async_result_get_user_data(res: *AsyncResult) *opaque;
export @symbol("g_async_result_is_tagged") fn async_result_is_tagged(res: *AsyncResult, source_tag: *opaque) glib::boolean;
export @symbol("g_async_result_legacy_propagate_error") fn async_result_legacy_propagate_error(res: *AsyncResult, error: nullable **glib::Error) glib::boolean;
export type Converter = *opaque;
export @symbol("g_converter_convert") fn converter_convert(converter: *Converter, inbuf: *opaque, inbuf_size: size, outbuf: *opaque, outbuf_size: size, flags: ConverterFlags, bytes_read: *size, bytes_written: *size, error: nullable **glib::Error) ConverterResult;
export @symbol("g_converter_reset") fn converter_reset(converter: *Converter) void;
export type DBusInterface = *opaque;
export @symbol("g_dbus_interface_dup_object") fn dbus_interface_dup_object(interface_: *DBusInterface) *DBusObject;
export @symbol("g_dbus_interface_get_info") fn dbus_interface_get_info(interface_: *DBusInterface) *DBusInterfaceInfo;
export @symbol("g_dbus_interface_get_object") fn dbus_interface_get_object(interface_: *DBusInterface) *DBusObject;
export @symbol("g_dbus_interface_set_object") fn dbus_interface_set_object(interface_: *DBusInterface, object: *DBusObject) void;
export type DBusObject = *opaque;
export @symbol("g_dbus_object_get_interface") fn dbus_object_get_interface(object: *DBusObject, interface_name: *c::char) *DBusInterface;
export @symbol("g_dbus_object_get_interfaces") fn dbus_object_get_interfaces(object: *DBusObject) *glib::List;
export @symbol("g_dbus_object_get_object_path") fn dbus_object_get_object_path(object: *DBusObject) *c::char;
export fn dbus_object_connect_interface_added(
	instance: *DBusObject,
	handler: *fn(instance: *DBusObject, interface: *DBusInterface, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"interface-added\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn dbus_object_connect_interface_removed(
	instance: *DBusObject,
	handler: *fn(instance: *DBusObject, interface: *DBusInterface, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"interface-removed\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export type DBusObjectManager = *opaque;
export @symbol("g_dbus_object_manager_get_interface") fn dbus_object_manager_get_interface(manager: *DBusObjectManager, object_path: *c::char, interface_name: *c::char) *DBusInterface;
export @symbol("g_dbus_object_manager_get_object") fn dbus_object_manager_get_object(manager: *DBusObjectManager, object_path: *c::char) *DBusObject;
export @symbol("g_dbus_object_manager_get_object_path") fn dbus_object_manager_get_object_path(manager: *DBusObjectManager) *c::char;
export @symbol("g_dbus_object_manager_get_objects") fn dbus_object_manager_get_objects(manager: *DBusObjectManager) *glib::List;
export fn dbus_object_manager_connect_interface_added(
	instance: *DBusObjectManager,
	handler: *fn(instance: *DBusObjectManager, object: *DBusObject, interface: *DBusInterface, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"interface-added\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn dbus_object_manager_connect_interface_removed(
	instance: *DBusObjectManager,
	handler: *fn(instance: *DBusObjectManager, object: *DBusObject, interface: *DBusInterface, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"interface-removed\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn dbus_object_manager_connect_object_added(
	instance: *DBusObjectManager,
	handler: *fn(instance: *DBusObjectManager, object: *DBusObject, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"object-added\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn dbus_object_manager_connect_object_removed(
	instance: *DBusObjectManager,
	handler: *fn(instance: *DBusObjectManager, object: *DBusObject, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"object-removed\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export type DatagramBased = *opaque;
export @symbol("g_datagram_based_condition_check") fn datagram_based_condition_check(datagram_based: *DatagramBased, condition: glib::IOCondition) glib::IOCondition;
export @symbol("g_datagram_based_condition_wait") fn datagram_based_condition_wait(datagram_based: *DatagramBased, condition: glib::IOCondition, timeout: i64, cancellable: *Cancellable, error: nullable **glib::Error) glib::boolean;
export @symbol("g_datagram_based_create_source") fn datagram_based_create_source(datagram_based: *DatagramBased, condition: glib::IOCondition, cancellable: *Cancellable) *glib::Source;
export @symbol("g_datagram_based_receive_messages") fn datagram_based_receive_messages(datagram_based: *DatagramBased, messages: *InputMessage, num_messages: uint, flags: int, timeout: i64, cancellable: *Cancellable, error: nullable **glib::Error) int;
export @symbol("g_datagram_based_send_messages") fn datagram_based_send_messages(datagram_based: *DatagramBased, messages: *OutputMessage, num_messages: uint, flags: int, timeout: i64, cancellable: *Cancellable, error: nullable **glib::Error) int;
export type DebugController = *opaque;
export @symbol("g_debug_controller_get_debug_enabled") fn debug_controller_get_debug_enabled(self: *DebugController) glib::boolean;
export @symbol("g_debug_controller_set_debug_enabled") fn debug_controller_set_debug_enabled(self: *DebugController, debug_enabled: glib::boolean) void;
export type DesktopAppInfoLookup = *opaque;
export @symbol("g_desktop_app_info_lookup_get_default_for_uri_scheme") fn desktop_app_info_lookup_get_default_for_uri_scheme(lookup: *DesktopAppInfoLookup, uri_scheme: *c::char) *AppInfo;
export type Drive = *opaque;
export @symbol("g_drive_can_eject") fn drive_can_eject(drive: *Drive) glib::boolean;
export @symbol("g_drive_can_poll_for_media") fn drive_can_poll_for_media(drive: *Drive) glib::boolean;
export @symbol("g_drive_can_start") fn drive_can_start(drive: *Drive) glib::boolean;
export @symbol("g_drive_can_start_degraded") fn drive_can_start_degraded(drive: *Drive) glib::boolean;
export @symbol("g_drive_can_stop") fn drive_can_stop(drive: *Drive) glib::boolean;
export @symbol("g_drive_eject") fn drive_eject(drive: *Drive, flags: MountUnmountFlags, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void;
export @symbol("g_drive_eject_finish") fn drive_eject_finish(drive: *Drive, result: *AsyncResult, error: nullable **glib::Error) glib::boolean;
export @symbol("g_drive_eject_with_operation") fn drive_eject_with_operation(drive: *Drive, flags: MountUnmountFlags, mount_operation: *MountOperation, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void;
export @symbol("g_drive_eject_with_operation_finish") fn drive_eject_with_operation_finish(drive: *Drive, result: *AsyncResult, error: nullable **glib::Error) glib::boolean;
export @symbol("g_drive_enumerate_identifiers") fn drive_enumerate_identifiers(drive: *Drive) **c::char;
export @symbol("g_drive_get_icon") fn drive_get_icon(drive: *Drive) *Icon;
export @symbol("g_drive_get_identifier") fn drive_get_identifier(drive: *Drive, kind: *c::char) *c::char;
export @symbol("g_drive_get_name") fn drive_get_name(drive: *Drive) *c::char;
export @symbol("g_drive_get_sort_key") fn drive_get_sort_key(drive: *Drive) *c::char;
export @symbol("g_drive_get_start_stop_type") fn drive_get_start_stop_type(drive: *Drive) DriveStartStopType;
export @symbol("g_drive_get_symbolic_icon") fn drive_get_symbolic_icon(drive: *Drive) *Icon;
export @symbol("g_drive_get_volumes") fn drive_get_volumes(drive: *Drive) *glib::List;
export @symbol("g_drive_has_media") fn drive_has_media(drive: *Drive) glib::boolean;
export @symbol("g_drive_has_volumes") fn drive_has_volumes(drive: *Drive) glib::boolean;
export @symbol("g_drive_is_media_check_automatic") fn drive_is_media_check_automatic(drive: *Drive) glib::boolean;
export @symbol("g_drive_is_media_removable") fn drive_is_media_removable(drive: *Drive) glib::boolean;
export @symbol("g_drive_is_removable") fn drive_is_removable(drive: *Drive) glib::boolean;
export @symbol("g_drive_poll_for_media") fn drive_poll_for_media(drive: *Drive, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void;
export @symbol("g_drive_poll_for_media_finish") fn drive_poll_for_media_finish(drive: *Drive, result: *AsyncResult, error: nullable **glib::Error) glib::boolean;
export @symbol("g_drive_start") fn drive_start(drive: *Drive, flags: DriveStartFlags, mount_operation: *MountOperation, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void;
export @symbol("g_drive_start_finish") fn drive_start_finish(drive: *Drive, result: *AsyncResult, error: nullable **glib::Error) glib::boolean;
export @symbol("g_drive_stop") fn drive_stop(drive: *Drive, flags: MountUnmountFlags, mount_operation: *MountOperation, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void;
export @symbol("g_drive_stop_finish") fn drive_stop_finish(drive: *Drive, result: *AsyncResult, error: nullable **glib::Error) glib::boolean;
export fn drive_connect_changed(
	instance: *Drive,
	handler: *fn(instance: *Drive, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"changed\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn drive_connect_disconnected(
	instance: *Drive,
	handler: *fn(instance: *Drive, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"disconnected\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn drive_connect_eject_button(
	instance: *Drive,
	handler: *fn(instance: *Drive, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"eject-button\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn drive_connect_stop_button(
	instance: *Drive,
	handler: *fn(instance: *Drive, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"stop-button\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export type DtlsClientConnection = *opaque;
export @symbol("g_dtls_client_connection_get_accepted_cas") fn dtls_client_connection_get_accepted_cas(conn: *DtlsClientConnection) *glib::List;
export @symbol("g_dtls_client_connection_get_server_identity") fn dtls_client_connection_get_server_identity(conn: *DtlsClientConnection) *SocketConnectable;
export @symbol("g_dtls_client_connection_get_validation_flags") fn dtls_client_connection_get_validation_flags(conn: *DtlsClientConnection) TlsCertificateFlags;
export @symbol("g_dtls_client_connection_set_server_identity") fn dtls_client_connection_set_server_identity(conn: *DtlsClientConnection, identity: *SocketConnectable) void;
export @symbol("g_dtls_client_connection_set_validation_flags") fn dtls_client_connection_set_validation_flags(conn: *DtlsClientConnection, flags: TlsCertificateFlags) void;
export @symbol("g_dtls_client_connection_new") fn dtls_client_connection_new(base_socket: *DatagramBased, server_identity: *SocketConnectable, error: nullable **glib::Error) *DatagramBased;
export type DtlsConnection = *opaque;
export @symbol("g_dtls_connection_close") fn dtls_connection_close(conn: *DtlsConnection, cancellable: *Cancellable, error: nullable **glib::Error) glib::boolean;
export @symbol("g_dtls_connection_close_async") fn dtls_connection_close_async(conn: *DtlsConnection, io_priority: int, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void;
export @symbol("g_dtls_connection_close_finish") fn dtls_connection_close_finish(conn: *DtlsConnection, result: *AsyncResult, error: nullable **glib::Error) glib::boolean;
export @symbol("g_dtls_connection_emit_accept_certificate") fn dtls_connection_emit_accept_certificate(conn: *DtlsConnection, peer_cert: *TlsCertificate, errors: TlsCertificateFlags) glib::boolean;
export @symbol("g_dtls_connection_get_certificate") fn dtls_connection_get_certificate(conn: *DtlsConnection) *TlsCertificate;
export @symbol("g_dtls_connection_get_channel_binding_data") fn dtls_connection_get_channel_binding_data(conn: *DtlsConnection, type_: TlsChannelBindingType, data: *glib::ByteArray, error: nullable **glib::Error) glib::boolean;
export @symbol("g_dtls_connection_get_ciphersuite_name") fn dtls_connection_get_ciphersuite_name(conn: *DtlsConnection) *c::char;
export @symbol("g_dtls_connection_get_database") fn dtls_connection_get_database(conn: *DtlsConnection) *TlsDatabase;
export @symbol("g_dtls_connection_get_interaction") fn dtls_connection_get_interaction(conn: *DtlsConnection) *TlsInteraction;
export @symbol("g_dtls_connection_get_negotiated_protocol") fn dtls_connection_get_negotiated_protocol(conn: *DtlsConnection) *c::char;
export @symbol("g_dtls_connection_get_peer_certificate") fn dtls_connection_get_peer_certificate(conn: *DtlsConnection) *TlsCertificate;
export @symbol("g_dtls_connection_get_peer_certificate_errors") fn dtls_connection_get_peer_certificate_errors(conn: *DtlsConnection) TlsCertificateFlags;
export @symbol("g_dtls_connection_get_protocol_version") fn dtls_connection_get_protocol_version(conn: *DtlsConnection) TlsProtocolVersion;
export @symbol("g_dtls_connection_get_rehandshake_mode") fn dtls_connection_get_rehandshake_mode(conn: *DtlsConnection) TlsRehandshakeMode;
export @symbol("g_dtls_connection_get_require_close_notify") fn dtls_connection_get_require_close_notify(conn: *DtlsConnection) glib::boolean;
export @symbol("g_dtls_connection_handshake") fn dtls_connection_handshake(conn: *DtlsConnection, cancellable: *Cancellable, error: nullable **glib::Error) glib::boolean;
export @symbol("g_dtls_connection_handshake_async") fn dtls_connection_handshake_async(conn: *DtlsConnection, io_priority: int, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void;
export @symbol("g_dtls_connection_handshake_finish") fn dtls_connection_handshake_finish(conn: *DtlsConnection, result: *AsyncResult, error: nullable **glib::Error) glib::boolean;
export @symbol("g_dtls_connection_set_advertised_protocols") fn dtls_connection_set_advertised_protocols(conn: *DtlsConnection, protocols: **c::char) void;
export @symbol("g_dtls_connection_set_certificate") fn dtls_connection_set_certificate(conn: *DtlsConnection, certificate: *TlsCertificate) void;
export @symbol("g_dtls_connection_set_database") fn dtls_connection_set_database(conn: *DtlsConnection, database: *TlsDatabase) void;
export @symbol("g_dtls_connection_set_interaction") fn dtls_connection_set_interaction(conn: *DtlsConnection, interaction: *TlsInteraction) void;
export @symbol("g_dtls_connection_set_rehandshake_mode") fn dtls_connection_set_rehandshake_mode(conn: *DtlsConnection, mode: TlsRehandshakeMode) void;
export @symbol("g_dtls_connection_set_require_close_notify") fn dtls_connection_set_require_close_notify(conn: *DtlsConnection, require_close_notify: glib::boolean) void;
export @symbol("g_dtls_connection_shutdown") fn dtls_connection_shutdown(conn: *DtlsConnection, shutdown_read: glib::boolean, shutdown_write: glib::boolean, cancellable: *Cancellable, error: nullable **glib::Error) glib::boolean;
export @symbol("g_dtls_connection_shutdown_async") fn dtls_connection_shutdown_async(conn: *DtlsConnection, shutdown_read: glib::boolean, shutdown_write: glib::boolean, io_priority: int, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void;
export @symbol("g_dtls_connection_shutdown_finish") fn dtls_connection_shutdown_finish(conn: *DtlsConnection, result: *AsyncResult, error: nullable **glib::Error) glib::boolean;
export fn dtls_connection_connect_accept_certificate(
	instance: *DtlsConnection,
	handler: *fn(instance: *DtlsConnection, peer_cert: *TlsCertificate, errors: TlsCertificateFlags, data: *opaque) glib::boolean,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"accept-certificate\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export type DtlsServerConnection = *opaque;
export @symbol("g_dtls_server_connection_new") fn dtls_server_connection_new(base_socket: *DatagramBased, certificate: *TlsCertificate, error: nullable **glib::Error) *DatagramBased;
export type File = *opaque;
export @symbol("g_file_append_to") fn file_append_to(file: *File, flags: FileCreateFlags, cancellable: *Cancellable, error: nullable **glib::Error) *FileOutputStream;
export @symbol("g_file_append_to_async") fn file_append_to_async(file: *File, flags: FileCreateFlags, io_priority: int, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void;
export @symbol("g_file_append_to_finish") fn file_append_to_finish(file: *File, res: *AsyncResult, error: nullable **glib::Error) *FileOutputStream;
export @symbol("g_file_build_attribute_list_for_copy") fn file_build_attribute_list_for_copy(file: *File, flags: FileCopyFlags, cancellable: *Cancellable, error: nullable **glib::Error) *c::char;
export @symbol("g_file_copy") fn file_copy(source: *File, destination: *File, flags: FileCopyFlags, cancellable: *Cancellable, progress_callback: FileProgressCallback, progress_callback_data: *opaque, error: nullable **glib::Error) glib::boolean;
export @symbol("g_file_copy_async") fn file_copy_async(source: *File, destination: *File, flags: FileCopyFlags, io_priority: int, cancellable: *Cancellable, progress_callback: FileProgressCallback, progress_callback_data: *opaque, callback: AsyncReadyCallback, user_data: *opaque) void;
export @symbol("g_file_copy_attributes") fn file_copy_attributes(source: *File, destination: *File, flags: FileCopyFlags, cancellable: *Cancellable, error: nullable **glib::Error) glib::boolean;
export @symbol("g_file_copy_finish") fn file_copy_finish(file: *File, res: *AsyncResult, error: nullable **glib::Error) glib::boolean;
export @symbol("g_file_create") fn file_create(file: *File, flags: FileCreateFlags, cancellable: *Cancellable, error: nullable **glib::Error) *FileOutputStream;
export @symbol("g_file_create_async") fn file_create_async(file: *File, flags: FileCreateFlags, io_priority: int, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void;
export @symbol("g_file_create_finish") fn file_create_finish(file: *File, res: *AsyncResult, error: nullable **glib::Error) *FileOutputStream;
export @symbol("g_file_create_readwrite") fn file_create_readwrite(file: *File, flags: FileCreateFlags, cancellable: *Cancellable, error: nullable **glib::Error) *FileIOStream;
export @symbol("g_file_create_readwrite_async") fn file_create_readwrite_async(file: *File, flags: FileCreateFlags, io_priority: int, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void;
export @symbol("g_file_create_readwrite_finish") fn file_create_readwrite_finish(file: *File, res: *AsyncResult, error: nullable **glib::Error) *FileIOStream;
export @symbol("g_file_delete") fn file_delete(file: *File, cancellable: *Cancellable, error: nullable **glib::Error) glib::boolean;
export @symbol("g_file_delete_async") fn file_delete_async(file: *File, io_priority: int, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void;
export @symbol("g_file_delete_finish") fn file_delete_finish(file: *File, result: *AsyncResult, error: nullable **glib::Error) glib::boolean;
export @symbol("g_file_dup") fn file_dup(file: *File) *File;
export @symbol("g_file_eject_mountable") fn file_eject_mountable(file: *File, flags: MountUnmountFlags, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void;
export @symbol("g_file_eject_mountable_finish") fn file_eject_mountable_finish(file: *File, result: *AsyncResult, error: nullable **glib::Error) glib::boolean;
export @symbol("g_file_eject_mountable_with_operation") fn file_eject_mountable_with_operation(file: *File, flags: MountUnmountFlags, mount_operation: *MountOperation, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void;
export @symbol("g_file_eject_mountable_with_operation_finish") fn file_eject_mountable_with_operation_finish(file: *File, result: *AsyncResult, error: nullable **glib::Error) glib::boolean;
export @symbol("g_file_enumerate_children") fn file_enumerate_children(file: *File, attributes: *c::char, flags: FileQueryInfoFlags, cancellable: *Cancellable, error: nullable **glib::Error) *FileEnumerator;
export @symbol("g_file_enumerate_children_async") fn file_enumerate_children_async(file: *File, attributes: *c::char, flags: FileQueryInfoFlags, io_priority: int, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void;
export @symbol("g_file_enumerate_children_finish") fn file_enumerate_children_finish(file: *File, res: *AsyncResult, error: nullable **glib::Error) *FileEnumerator;
export @symbol("g_file_equal") fn file_equal(file1: *File, file2: *File) glib::boolean;
export @symbol("g_file_find_enclosing_mount") fn file_find_enclosing_mount(file: *File, cancellable: *Cancellable, error: nullable **glib::Error) *Mount;
export @symbol("g_file_find_enclosing_mount_async") fn file_find_enclosing_mount_async(file: *File, io_priority: int, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void;
export @symbol("g_file_find_enclosing_mount_finish") fn file_find_enclosing_mount_finish(file: *File, res: *AsyncResult, error: nullable **glib::Error) *Mount;
export @symbol("g_file_get_basename") fn file_get_basename(file: *File) *c::char;
export @symbol("g_file_get_child") fn file_get_child(file: *File, name: *c::char) *File;
export @symbol("g_file_get_child_for_display_name") fn file_get_child_for_display_name(file: *File, display_name: *c::char, error: nullable **glib::Error) *File;
export @symbol("g_file_get_parent") fn file_get_parent(file: *File) *File;
export @symbol("g_file_get_parse_name") fn file_get_parse_name(file: *File) *c::char;
export @symbol("g_file_get_path") fn file_get_path(file: *File) *c::char;
export @symbol("g_file_get_relative_path") fn file_get_relative_path(parent: *File, descendant: *File) *c::char;
export @symbol("g_file_get_uri") fn file_get_uri(file: *File) *c::char;
export @symbol("g_file_get_uri_scheme") fn file_get_uri_scheme(file: *File) *c::char;
export @symbol("g_file_has_parent") fn file_has_parent(file: *File, parent: *File) glib::boolean;
export @symbol("g_file_has_prefix") fn file_has_prefix(file: *File, prefix: *File) glib::boolean;
export @symbol("g_file_has_uri_scheme") fn file_has_uri_scheme(file: *File, uri_scheme: *c::char) glib::boolean;
export @symbol("g_file_hash") fn file_hash(file: *opaque) uint;
export @symbol("g_file_is_native") fn file_is_native(file: *File) glib::boolean;
export @symbol("g_file_load_bytes") fn file_load_bytes(file: *File, cancellable: *Cancellable, etag_out: **c::char, error: nullable **glib::Error) *glib::Bytes;
export @symbol("g_file_load_bytes_async") fn file_load_bytes_async(file: *File, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void;
export @symbol("g_file_load_bytes_finish") fn file_load_bytes_finish(file: *File, result: *AsyncResult, etag_out: **c::char, error: nullable **glib::Error) *glib::Bytes;
export @symbol("g_file_load_contents") fn file_load_contents(file: *File, cancellable: *Cancellable, contents: **c::char, length: *size, etag_out: **c::char, error: nullable **glib::Error) glib::boolean;
export @symbol("g_file_load_contents_async") fn file_load_contents_async(file: *File, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void;
export @symbol("g_file_load_contents_finish") fn file_load_contents_finish(file: *File, res: *AsyncResult, contents: **c::char, length: *size, etag_out: **c::char, error: nullable **glib::Error) glib::boolean;
export @symbol("g_file_load_partial_contents_async") fn file_load_partial_contents_async(file: *File, cancellable: *Cancellable, read_more_callback: FileReadMoreCallback, callback: AsyncReadyCallback, user_data: *opaque) void;
export @symbol("g_file_load_partial_contents_finish") fn file_load_partial_contents_finish(file: *File, res: *AsyncResult, contents: **c::char, length: *size, etag_out: **c::char, error: nullable **glib::Error) glib::boolean;
export @symbol("g_file_make_directory") fn file_make_directory(file: *File, cancellable: *Cancellable, error: nullable **glib::Error) glib::boolean;
export @symbol("g_file_make_directory_async") fn file_make_directory_async(file: *File, io_priority: int, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void;
export @symbol("g_file_make_directory_finish") fn file_make_directory_finish(file: *File, result: *AsyncResult, error: nullable **glib::Error) glib::boolean;
export @symbol("g_file_make_directory_with_parents") fn file_make_directory_with_parents(file: *File, cancellable: *Cancellable, error: nullable **glib::Error) glib::boolean;
export @symbol("g_file_make_symbolic_link") fn file_make_symbolic_link(file: *File, symlink_value: *c::char, cancellable: *Cancellable, error: nullable **glib::Error) glib::boolean;
export @symbol("g_file_make_symbolic_link_async") fn file_make_symbolic_link_async(file: *File, symlink_value: *c::char, io_priority: int, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void;
export @symbol("g_file_make_symbolic_link_finish") fn file_make_symbolic_link_finish(file: *File, result: *AsyncResult, error: nullable **glib::Error) glib::boolean;
export @symbol("g_file_measure_disk_usage") fn file_measure_disk_usage(file: *File, flags: FileMeasureFlags, cancellable: *Cancellable, progress_callback: FileMeasureProgressCallback, progress_data: *opaque, disk_usage: *u64, num_dirs: *u64, num_files: *u64, error: nullable **glib::Error) glib::boolean;
export @symbol("g_file_measure_disk_usage_async") fn file_measure_disk_usage_async(file: *File, flags: FileMeasureFlags, io_priority: int, cancellable: *Cancellable, progress_callback: FileMeasureProgressCallback, progress_data: *opaque, callback: AsyncReadyCallback, user_data: *opaque) void;
export @symbol("g_file_measure_disk_usage_finish") fn file_measure_disk_usage_finish(file: *File, result: *AsyncResult, disk_usage: *u64, num_dirs: *u64, num_files: *u64, error: nullable **glib::Error) glib::boolean;
export @symbol("g_file_monitor") fn file_monitor(file: *File, flags: FileMonitorFlags, cancellable: *Cancellable, error: nullable **glib::Error) *FileMonitor;
export @symbol("g_file_monitor_directory") fn file_monitor_directory(file: *File, flags: FileMonitorFlags, cancellable: *Cancellable, error: nullable **glib::Error) *FileMonitor;
export @symbol("g_file_monitor_file") fn file_monitor_file(file: *File, flags: FileMonitorFlags, cancellable: *Cancellable, error: nullable **glib::Error) *FileMonitor;
export @symbol("g_file_mount_enclosing_volume") fn file_mount_enclosing_volume(location: *File, flags: MountMountFlags, mount_operation: *MountOperation, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void;
export @symbol("g_file_mount_enclosing_volume_finish") fn file_mount_enclosing_volume_finish(location: *File, result: *AsyncResult, error: nullable **glib::Error) glib::boolean;
export @symbol("g_file_mount_mountable") fn file_mount_mountable(file: *File, flags: MountMountFlags, mount_operation: *MountOperation, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void;
export @symbol("g_file_mount_mountable_finish") fn file_mount_mountable_finish(file: *File, result: *AsyncResult, error: nullable **glib::Error) *File;
export @symbol("g_file_move") fn file_move(source: *File, destination: *File, flags: FileCopyFlags, cancellable: *Cancellable, progress_callback: FileProgressCallback, progress_callback_data: *opaque, error: nullable **glib::Error) glib::boolean;
export @symbol("g_file_move_async") fn file_move_async(source: *File, destination: *File, flags: FileCopyFlags, io_priority: int, cancellable: *Cancellable, progress_callback: FileProgressCallback, progress_callback_data: *opaque, callback: AsyncReadyCallback, user_data: *opaque) void;
export @symbol("g_file_move_finish") fn file_move_finish(file: *File, result: *AsyncResult, error: nullable **glib::Error) glib::boolean;
export @symbol("g_file_open_readwrite") fn file_open_readwrite(file: *File, cancellable: *Cancellable, error: nullable **glib::Error) *FileIOStream;
export @symbol("g_file_open_readwrite_async") fn file_open_readwrite_async(file: *File, io_priority: int, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void;
export @symbol("g_file_open_readwrite_finish") fn file_open_readwrite_finish(file: *File, res: *AsyncResult, error: nullable **glib::Error) *FileIOStream;
export @symbol("g_file_peek_path") fn file_peek_path(file: *File) *c::char;
export @symbol("g_file_poll_mountable") fn file_poll_mountable(file: *File, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void;
export @symbol("g_file_poll_mountable_finish") fn file_poll_mountable_finish(file: *File, result: *AsyncResult, error: nullable **glib::Error) glib::boolean;
export @symbol("g_file_query_default_handler") fn file_query_default_handler(file: *File, cancellable: *Cancellable, error: nullable **glib::Error) *AppInfo;
export @symbol("g_file_query_default_handler_async") fn file_query_default_handler_async(file: *File, io_priority: int, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void;
export @symbol("g_file_query_default_handler_finish") fn file_query_default_handler_finish(file: *File, result: *AsyncResult, error: nullable **glib::Error) *AppInfo;
export @symbol("g_file_query_exists") fn file_query_exists(file: *File, cancellable: *Cancellable) glib::boolean;
export @symbol("g_file_query_file_type") fn file_query_file_type(file: *File, flags: FileQueryInfoFlags, cancellable: *Cancellable) FileType;
export @symbol("g_file_query_filesystem_info") fn file_query_filesystem_info(file: *File, attributes: *c::char, cancellable: *Cancellable, error: nullable **glib::Error) *FileInfo;
export @symbol("g_file_query_filesystem_info_async") fn file_query_filesystem_info_async(file: *File, attributes: *c::char, io_priority: int, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void;
export @symbol("g_file_query_filesystem_info_finish") fn file_query_filesystem_info_finish(file: *File, res: *AsyncResult, error: nullable **glib::Error) *FileInfo;
export @symbol("g_file_query_info") fn file_query_info(file: *File, attributes: *c::char, flags: FileQueryInfoFlags, cancellable: *Cancellable, error: nullable **glib::Error) *FileInfo;
export @symbol("g_file_query_info_async") fn file_query_info_async(file: *File, attributes: *c::char, flags: FileQueryInfoFlags, io_priority: int, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void;
export @symbol("g_file_query_info_finish") fn file_query_info_finish(file: *File, res: *AsyncResult, error: nullable **glib::Error) *FileInfo;
export @symbol("g_file_query_settable_attributes") fn file_query_settable_attributes(file: *File, cancellable: *Cancellable, error: nullable **glib::Error) *FileAttributeInfoList;
export @symbol("g_file_query_writable_namespaces") fn file_query_writable_namespaces(file: *File, cancellable: *Cancellable, error: nullable **glib::Error) *FileAttributeInfoList;
export @symbol("g_file_read") fn file_read(file: *File, cancellable: *Cancellable, error: nullable **glib::Error) *FileInputStream;
export @symbol("g_file_read_async") fn file_read_async(file: *File, io_priority: int, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void;
export @symbol("g_file_read_finish") fn file_read_finish(file: *File, res: *AsyncResult, error: nullable **glib::Error) *FileInputStream;
export @symbol("g_file_replace") fn file_replace(file: *File, etag: *c::char, make_backup: glib::boolean, flags: FileCreateFlags, cancellable: *Cancellable, error: nullable **glib::Error) *FileOutputStream;
export @symbol("g_file_replace_async") fn file_replace_async(file: *File, etag: *c::char, make_backup: glib::boolean, flags: FileCreateFlags, io_priority: int, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void;
export @symbol("g_file_replace_contents") fn file_replace_contents(file: *File, contents: *c::char, length: size, etag: *c::char, make_backup: glib::boolean, flags: FileCreateFlags, new_etag: **c::char, cancellable: *Cancellable, error: nullable **glib::Error) glib::boolean;
export @symbol("g_file_replace_contents_async") fn file_replace_contents_async(file: *File, contents: *c::char, length: size, etag: *c::char, make_backup: glib::boolean, flags: FileCreateFlags, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void;
export @symbol("g_file_replace_contents_bytes_async") fn file_replace_contents_bytes_async(file: *File, contents: *glib::Bytes, etag: *c::char, make_backup: glib::boolean, flags: FileCreateFlags, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void;
export @symbol("g_file_replace_contents_finish") fn file_replace_contents_finish(file: *File, res: *AsyncResult, new_etag: **c::char, error: nullable **glib::Error) glib::boolean;
export @symbol("g_file_replace_finish") fn file_replace_finish(file: *File, res: *AsyncResult, error: nullable **glib::Error) *FileOutputStream;
export @symbol("g_file_replace_readwrite") fn file_replace_readwrite(file: *File, etag: *c::char, make_backup: glib::boolean, flags: FileCreateFlags, cancellable: *Cancellable, error: nullable **glib::Error) *FileIOStream;
export @symbol("g_file_replace_readwrite_async") fn file_replace_readwrite_async(file: *File, etag: *c::char, make_backup: glib::boolean, flags: FileCreateFlags, io_priority: int, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void;
export @symbol("g_file_replace_readwrite_finish") fn file_replace_readwrite_finish(file: *File, res: *AsyncResult, error: nullable **glib::Error) *FileIOStream;
export @symbol("g_file_resolve_relative_path") fn file_resolve_relative_path(file: *File, relative_path: *c::char) *File;
export @symbol("g_file_set_attribute") fn file_set_attribute(file: *File, attribute: *c::char, type_: FileAttributeType, value_p: *opaque, flags: FileQueryInfoFlags, cancellable: *Cancellable, error: nullable **glib::Error) glib::boolean;
export @symbol("g_file_set_attribute_byte_string") fn file_set_attribute_byte_string(file: *File, attribute: *c::char, value: *c::char, flags: FileQueryInfoFlags, cancellable: *Cancellable, error: nullable **glib::Error) glib::boolean;
export @symbol("g_file_set_attribute_int32") fn file_set_attribute_int32(file: *File, attribute: *c::char, value: i32, flags: FileQueryInfoFlags, cancellable: *Cancellable, error: nullable **glib::Error) glib::boolean;
export @symbol("g_file_set_attribute_int64") fn file_set_attribute_int64(file: *File, attribute: *c::char, value: i64, flags: FileQueryInfoFlags, cancellable: *Cancellable, error: nullable **glib::Error) glib::boolean;
export @symbol("g_file_set_attribute_string") fn file_set_attribute_string(file: *File, attribute: *c::char, value: *c::char, flags: FileQueryInfoFlags, cancellable: *Cancellable, error: nullable **glib::Error) glib::boolean;
export @symbol("g_file_set_attribute_uint32") fn file_set_attribute_uint32(file: *File, attribute: *c::char, value: u32, flags: FileQueryInfoFlags, cancellable: *Cancellable, error: nullable **glib::Error) glib::boolean;
export @symbol("g_file_set_attribute_uint64") fn file_set_attribute_uint64(file: *File, attribute: *c::char, value: u64, flags: FileQueryInfoFlags, cancellable: *Cancellable, error: nullable **glib::Error) glib::boolean;
export @symbol("g_file_set_attributes_async") fn file_set_attributes_async(file: *File, info: *FileInfo, flags: FileQueryInfoFlags, io_priority: int, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void;
export @symbol("g_file_set_attributes_finish") fn file_set_attributes_finish(file: *File, result: *AsyncResult, info: **FileInfo, error: nullable **glib::Error) glib::boolean;
export @symbol("g_file_set_attributes_from_info") fn file_set_attributes_from_info(file: *File, info: *FileInfo, flags: FileQueryInfoFlags, cancellable: *Cancellable, error: nullable **glib::Error) glib::boolean;
export @symbol("g_file_set_display_name") fn file_set_display_name(file: *File, display_name: *c::char, cancellable: *Cancellable, error: nullable **glib::Error) *File;
export @symbol("g_file_set_display_name_async") fn file_set_display_name_async(file: *File, display_name: *c::char, io_priority: int, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void;
export @symbol("g_file_set_display_name_finish") fn file_set_display_name_finish(file: *File, res: *AsyncResult, error: nullable **glib::Error) *File;
export @symbol("g_file_start_mountable") fn file_start_mountable(file: *File, flags: DriveStartFlags, start_operation: *MountOperation, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void;
export @symbol("g_file_start_mountable_finish") fn file_start_mountable_finish(file: *File, result: *AsyncResult, error: nullable **glib::Error) glib::boolean;
export @symbol("g_file_stop_mountable") fn file_stop_mountable(file: *File, flags: MountUnmountFlags, mount_operation: *MountOperation, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void;
export @symbol("g_file_stop_mountable_finish") fn file_stop_mountable_finish(file: *File, result: *AsyncResult, error: nullable **glib::Error) glib::boolean;
export @symbol("g_file_supports_thread_contexts") fn file_supports_thread_contexts(file: *File) glib::boolean;
export @symbol("g_file_trash") fn file_trash(file: *File, cancellable: *Cancellable, error: nullable **glib::Error) glib::boolean;
export @symbol("g_file_trash_async") fn file_trash_async(file: *File, io_priority: int, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void;
export @symbol("g_file_trash_finish") fn file_trash_finish(file: *File, result: *AsyncResult, error: nullable **glib::Error) glib::boolean;
export @symbol("g_file_unmount_mountable") fn file_unmount_mountable(file: *File, flags: MountUnmountFlags, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void;
export @symbol("g_file_unmount_mountable_finish") fn file_unmount_mountable_finish(file: *File, result: *AsyncResult, error: nullable **glib::Error) glib::boolean;
export @symbol("g_file_unmount_mountable_with_operation") fn file_unmount_mountable_with_operation(file: *File, flags: MountUnmountFlags, mount_operation: *MountOperation, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void;
export @symbol("g_file_unmount_mountable_with_operation_finish") fn file_unmount_mountable_with_operation_finish(file: *File, result: *AsyncResult, error: nullable **glib::Error) glib::boolean;
export @symbol("g_file_new_build_filename") fn file_new_build_filename(first_element: *c::char, ...) *File;
export @symbol("g_file_new_build_filenamev") fn file_new_build_filenamev(args: **c::char) *File;
export @symbol("g_file_new_for_commandline_arg") fn file_new_for_commandline_arg(arg: *c::char) *File;
export @symbol("g_file_new_for_commandline_arg_and_cwd") fn file_new_for_commandline_arg_and_cwd(arg: *c::char, cwd: *c::char) *File;
export @symbol("g_file_new_for_path") fn file_new_for_path(path: *c::char) *File;
export @symbol("g_file_new_for_uri") fn file_new_for_uri(uri: *c::char) *File;
export @symbol("g_file_new_tmp") fn file_new_tmp(tmpl: *c::char, iostream: **FileIOStream, error: nullable **glib::Error) *File;
export @symbol("g_file_new_tmp_async") fn file_new_tmp_async(tmpl: *c::char, io_priority: int, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void;
export @symbol("g_file_new_tmp_dir_async") fn file_new_tmp_dir_async(tmpl: *c::char, io_priority: int, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void;
export @symbol("g_file_new_tmp_dir_finish") fn file_new_tmp_dir_finish(result: *AsyncResult, error: nullable **glib::Error) *File;
export @symbol("g_file_new_tmp_finish") fn file_new_tmp_finish(result: *AsyncResult, iostream: **FileIOStream, error: nullable **glib::Error) *File;
export @symbol("g_file_parse_name") fn file_parse_name(parse_name: *c::char) *File;
export type FileDescriptorBased = *opaque;
export @symbol("g_file_descriptor_based_get_fd") fn file_descriptor_based_get_fd(fd_based: *FileDescriptorBased) int;
export type Icon = *opaque;
export @symbol("g_icon_equal") fn icon_equal(icon1: *Icon, icon2: *Icon) glib::boolean;
export @symbol("g_icon_hash") fn icon_hash(icon: *opaque) uint;
export @symbol("g_icon_serialize") fn icon_serialize(icon: *Icon) *glib::Variant;
export @symbol("g_icon_to_string") fn icon_to_string(icon: *Icon) *c::char;
export @symbol("g_icon_deserialize") fn icon_deserialize(value: *glib::Variant) *Icon;
export @symbol("g_icon_new_for_string") fn icon_new_for_string(str_: *c::char, error: nullable **glib::Error) *Icon;
export type Initable = *opaque;
export @symbol("g_initable_init") fn initable_init(initable: *Initable, cancellable: *Cancellable, error: nullable **glib::Error) glib::boolean;
export @symbol("g_initable_new") fn initable_new(object_type: glib::Type, cancellable: *Cancellable, error: **glib::Error, first_property_name: *c::char, ...) *opaque;
export @symbol("g_initable_new_valist") fn initable_new_valist(object_type: glib::Type, first_property_name: *c::char, var_args: valist, cancellable: *Cancellable, error: nullable **glib::Error) *gobject::Object;
export @symbol("g_initable_newv") fn initable_newv(object_type: glib::Type, n_parameters: uint, parameters: *gobject::Parameter, cancellable: *Cancellable, error: nullable **glib::Error) *opaque;
export type ListModel = *opaque;
export @symbol("g_list_model_get_item") fn list_model_get_item(list: *ListModel, position: uint) *opaque;
export @symbol("g_list_model_get_item_type") fn list_model_get_item_type(list: *ListModel) glib::Type;
export @symbol("g_list_model_get_n_items") fn list_model_get_n_items(list: *ListModel) uint;
export @symbol("g_list_model_get_object") fn list_model_get_object(list: *ListModel, position: uint) *gobject::Object;
export @symbol("g_list_model_items_changed") fn list_model_items_changed(list: *ListModel, position: uint, removed: uint, added: uint) void;
export fn list_model_connect_items_changed(
	instance: *ListModel,
	handler: *fn(instance: *ListModel, position: uint, removed: uint, added: uint, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"items-changed\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export type LoadableIcon = *opaque;
export @symbol("g_loadable_icon_load") fn loadable_icon_load(icon: *LoadableIcon, size_: int, type_: **c::char, cancellable: *Cancellable, error: nullable **glib::Error) *InputStream;
export @symbol("g_loadable_icon_load_async") fn loadable_icon_load_async(icon: *LoadableIcon, size_: int, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void;
export @symbol("g_loadable_icon_load_finish") fn loadable_icon_load_finish(icon: *LoadableIcon, res: *AsyncResult, type_: **c::char, error: nullable **glib::Error) *InputStream;
export type MemoryMonitor = *opaque;
export @symbol("g_memory_monitor_dup_default") fn memory_monitor_dup_default() *MemoryMonitor;
export fn memory_monitor_connect_low_memory_warning(
	instance: *MemoryMonitor,
	handler: *fn(instance: *MemoryMonitor, level: MemoryMonitorWarningLevel, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"low-memory-warning\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export type Mount = *opaque;
export @symbol("g_mount_can_eject") fn mount_can_eject(mount: *Mount) glib::boolean;
export @symbol("g_mount_can_unmount") fn mount_can_unmount(mount: *Mount) glib::boolean;
export @symbol("g_mount_eject") fn mount_eject(mount: *Mount, flags: MountUnmountFlags, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void;
export @symbol("g_mount_eject_finish") fn mount_eject_finish(mount: *Mount, result: *AsyncResult, error: nullable **glib::Error) glib::boolean;
export @symbol("g_mount_eject_with_operation") fn mount_eject_with_operation(mount: *Mount, flags: MountUnmountFlags, mount_operation: *MountOperation, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void;
export @symbol("g_mount_eject_with_operation_finish") fn mount_eject_with_operation_finish(mount: *Mount, result: *AsyncResult, error: nullable **glib::Error) glib::boolean;
export @symbol("g_mount_get_default_location") fn mount_get_default_location(mount: *Mount) *File;
export @symbol("g_mount_get_drive") fn mount_get_drive(mount: *Mount) *Drive;
export @symbol("g_mount_get_icon") fn mount_get_icon(mount: *Mount) *Icon;
export @symbol("g_mount_get_name") fn mount_get_name(mount: *Mount) *c::char;
export @symbol("g_mount_get_root") fn mount_get_root(mount: *Mount) *File;
export @symbol("g_mount_get_sort_key") fn mount_get_sort_key(mount: *Mount) *c::char;
export @symbol("g_mount_get_symbolic_icon") fn mount_get_symbolic_icon(mount: *Mount) *Icon;
export @symbol("g_mount_get_uuid") fn mount_get_uuid(mount: *Mount) *c::char;
export @symbol("g_mount_get_volume") fn mount_get_volume(mount: *Mount) *Volume;
export @symbol("g_mount_guess_content_type") fn mount_guess_content_type(mount: *Mount, force_rescan: glib::boolean, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void;
export @symbol("g_mount_guess_content_type_finish") fn mount_guess_content_type_finish(mount: *Mount, result: *AsyncResult, error: nullable **glib::Error) **c::char;
export @symbol("g_mount_guess_content_type_sync") fn mount_guess_content_type_sync(mount: *Mount, force_rescan: glib::boolean, cancellable: *Cancellable, error: nullable **glib::Error) **c::char;
export @symbol("g_mount_is_shadowed") fn mount_is_shadowed(mount: *Mount) glib::boolean;
export @symbol("g_mount_remount") fn mount_remount(mount: *Mount, flags: MountMountFlags, mount_operation: *MountOperation, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void;
export @symbol("g_mount_remount_finish") fn mount_remount_finish(mount: *Mount, result: *AsyncResult, error: nullable **glib::Error) glib::boolean;
export @symbol("g_mount_shadow") fn mount_shadow(mount: *Mount) void;
export @symbol("g_mount_unmount") fn mount_unmount(mount: *Mount, flags: MountUnmountFlags, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void;
export @symbol("g_mount_unmount_finish") fn mount_unmount_finish(mount: *Mount, result: *AsyncResult, error: nullable **glib::Error) glib::boolean;
export @symbol("g_mount_unmount_with_operation") fn mount_unmount_with_operation(mount: *Mount, flags: MountUnmountFlags, mount_operation: *MountOperation, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void;
export @symbol("g_mount_unmount_with_operation_finish") fn mount_unmount_with_operation_finish(mount: *Mount, result: *AsyncResult, error: nullable **glib::Error) glib::boolean;
export @symbol("g_mount_unshadow") fn mount_unshadow(mount: *Mount) void;
export fn mount_connect_changed(
	instance: *Mount,
	handler: *fn(instance: *Mount, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"changed\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn mount_connect_pre_unmount(
	instance: *Mount,
	handler: *fn(instance: *Mount, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"pre-unmount\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn mount_connect_unmounted(
	instance: *Mount,
	handler: *fn(instance: *Mount, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"unmounted\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export type NetworkMonitor = *opaque;
export @symbol("g_network_monitor_can_reach") fn network_monitor_can_reach(monitor: *NetworkMonitor, connectable: *SocketConnectable, cancellable: *Cancellable, error: nullable **glib::Error) glib::boolean;
export @symbol("g_network_monitor_can_reach_async") fn network_monitor_can_reach_async(monitor: *NetworkMonitor, connectable: *SocketConnectable, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void;
export @symbol("g_network_monitor_can_reach_finish") fn network_monitor_can_reach_finish(monitor: *NetworkMonitor, result: *AsyncResult, error: nullable **glib::Error) glib::boolean;
export @symbol("g_network_monitor_get_connectivity") fn network_monitor_get_connectivity(monitor: *NetworkMonitor) NetworkConnectivity;
export @symbol("g_network_monitor_get_network_available") fn network_monitor_get_network_available(monitor: *NetworkMonitor) glib::boolean;
export @symbol("g_network_monitor_get_network_metered") fn network_monitor_get_network_metered(monitor: *NetworkMonitor) glib::boolean;
export @symbol("g_network_monitor_get_default") fn network_monitor_get_default() *NetworkMonitor;
export fn network_monitor_connect_network_changed(
	instance: *NetworkMonitor,
	handler: *fn(instance: *NetworkMonitor, network_available: glib::boolean, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"network-changed\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export type PollableInputStream = *opaque;
export @symbol("g_pollable_input_stream_can_poll") fn pollable_input_stream_can_poll(stream: *PollableInputStream) glib::boolean;
export @symbol("g_pollable_input_stream_create_source") fn pollable_input_stream_create_source(stream: *PollableInputStream, cancellable: *Cancellable) *glib::Source;
export @symbol("g_pollable_input_stream_is_readable") fn pollable_input_stream_is_readable(stream: *PollableInputStream) glib::boolean;
export @symbol("g_pollable_input_stream_read_nonblocking") fn pollable_input_stream_read_nonblocking(stream: *PollableInputStream, buffer: *opaque, count: size, cancellable: *Cancellable, error: nullable **glib::Error) c::ssize;
export type PollableOutputStream = *opaque;
export @symbol("g_pollable_output_stream_can_poll") fn pollable_output_stream_can_poll(stream: *PollableOutputStream) glib::boolean;
export @symbol("g_pollable_output_stream_create_source") fn pollable_output_stream_create_source(stream: *PollableOutputStream, cancellable: *Cancellable) *glib::Source;
export @symbol("g_pollable_output_stream_is_writable") fn pollable_output_stream_is_writable(stream: *PollableOutputStream) glib::boolean;
export @symbol("g_pollable_output_stream_write_nonblocking") fn pollable_output_stream_write_nonblocking(stream: *PollableOutputStream, buffer: *opaque, count: size, cancellable: *Cancellable, error: nullable **glib::Error) c::ssize;
export @symbol("g_pollable_output_stream_writev_nonblocking") fn pollable_output_stream_writev_nonblocking(stream: *PollableOutputStream, vectors: *OutputVector, n_vectors: size, bytes_written: *size, cancellable: *Cancellable, error: nullable **glib::Error) PollableReturn;
export type PowerProfileMonitor = *opaque;
export @symbol("g_power_profile_monitor_get_power_saver_enabled") fn power_profile_monitor_get_power_saver_enabled(monitor: *PowerProfileMonitor) glib::boolean;
export @symbol("g_power_profile_monitor_dup_default") fn power_profile_monitor_dup_default() *PowerProfileMonitor;
export type Proxy = *opaque;
export @symbol("g_proxy_connect") fn proxy_connect(proxy: *Proxy, connection: *IOStream, proxy_address: *ProxyAddress, cancellable: *Cancellable, error: nullable **glib::Error) *IOStream;
export @symbol("g_proxy_connect_async") fn proxy_connect_async(proxy: *Proxy, connection: *IOStream, proxy_address: *ProxyAddress, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void;
export @symbol("g_proxy_connect_finish") fn proxy_connect_finish(proxy: *Proxy, result: *AsyncResult, error: nullable **glib::Error) *IOStream;
export @symbol("g_proxy_supports_hostname") fn proxy_supports_hostname(proxy: *Proxy) glib::boolean;
export @symbol("g_proxy_get_default_for_protocol") fn proxy_get_default_for_protocol(protocol: *c::char) *Proxy;
export type ProxyResolver = *opaque;
export @symbol("g_proxy_resolver_is_supported") fn proxy_resolver_is_supported(resolver: *ProxyResolver) glib::boolean;
export @symbol("g_proxy_resolver_lookup") fn proxy_resolver_lookup(resolver: *ProxyResolver, uri: *c::char, cancellable: *Cancellable, error: nullable **glib::Error) **c::char;
export @symbol("g_proxy_resolver_lookup_async") fn proxy_resolver_lookup_async(resolver: *ProxyResolver, uri: *c::char, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void;
export @symbol("g_proxy_resolver_lookup_finish") fn proxy_resolver_lookup_finish(resolver: *ProxyResolver, result: *AsyncResult, error: nullable **glib::Error) **c::char;
export @symbol("g_proxy_resolver_get_default") fn proxy_resolver_get_default() *ProxyResolver;
export type RemoteActionGroup = *opaque;
export @symbol("g_remote_action_group_activate_action_full") fn remote_action_group_activate_action_full(remote: *RemoteActionGroup, action_name: *c::char, parameter: *glib::Variant, platform_data: *glib::Variant) void;
export @symbol("g_remote_action_group_change_action_state_full") fn remote_action_group_change_action_state_full(remote: *RemoteActionGroup, action_name: *c::char, value: *glib::Variant, platform_data: *glib::Variant) void;
export type Seekable = *opaque;
export @symbol("g_seekable_can_seek") fn seekable_can_seek(seekable: *Seekable) glib::boolean;
export @symbol("g_seekable_can_truncate") fn seekable_can_truncate(seekable: *Seekable) glib::boolean;
export @symbol("g_seekable_seek") fn seekable_seek(seekable: *Seekable, offset_: i64, type_: glib::SeekType, cancellable: *Cancellable, error: nullable **glib::Error) glib::boolean;
export @symbol("g_seekable_tell") fn seekable_tell(seekable: *Seekable) i64;
export @symbol("g_seekable_truncate") fn seekable_truncate(seekable: *Seekable, offset_: i64, cancellable: *Cancellable, error: nullable **glib::Error) glib::boolean;
export type SocketConnectable = *opaque;
export @symbol("g_socket_connectable_enumerate") fn socket_connectable_enumerate(connectable: *SocketConnectable) *SocketAddressEnumerator;
export @symbol("g_socket_connectable_proxy_enumerate") fn socket_connectable_proxy_enumerate(connectable: *SocketConnectable) *SocketAddressEnumerator;
export @symbol("g_socket_connectable_to_string") fn socket_connectable_to_string(connectable: *SocketConnectable) *c::char;
export type TlsBackend = *opaque;
export @symbol("g_tls_backend_get_certificate_type") fn tls_backend_get_certificate_type(backend: *TlsBackend) glib::Type;
export @symbol("g_tls_backend_get_client_connection_type") fn tls_backend_get_client_connection_type(backend: *TlsBackend) glib::Type;
export @symbol("g_tls_backend_get_default_database") fn tls_backend_get_default_database(backend: *TlsBackend) *TlsDatabase;
export @symbol("g_tls_backend_get_dtls_client_connection_type") fn tls_backend_get_dtls_client_connection_type(backend: *TlsBackend) glib::Type;
export @symbol("g_tls_backend_get_dtls_server_connection_type") fn tls_backend_get_dtls_server_connection_type(backend: *TlsBackend) glib::Type;
export @symbol("g_tls_backend_get_file_database_type") fn tls_backend_get_file_database_type(backend: *TlsBackend) glib::Type;
export @symbol("g_tls_backend_get_server_connection_type") fn tls_backend_get_server_connection_type(backend: *TlsBackend) glib::Type;
export @symbol("g_tls_backend_set_default_database") fn tls_backend_set_default_database(backend: *TlsBackend, database: *TlsDatabase) void;
export @symbol("g_tls_backend_supports_dtls") fn tls_backend_supports_dtls(backend: *TlsBackend) glib::boolean;
export @symbol("g_tls_backend_supports_tls") fn tls_backend_supports_tls(backend: *TlsBackend) glib::boolean;
export @symbol("g_tls_backend_get_default") fn tls_backend_get_default() *TlsBackend;
export type TlsClientConnection = *opaque;
export @symbol("g_tls_client_connection_copy_session_state") fn tls_client_connection_copy_session_state(conn: *TlsClientConnection, source: *TlsClientConnection) void;
export @symbol("g_tls_client_connection_get_accepted_cas") fn tls_client_connection_get_accepted_cas(conn: *TlsClientConnection) *glib::List;
export @symbol("g_tls_client_connection_get_server_identity") fn tls_client_connection_get_server_identity(conn: *TlsClientConnection) *SocketConnectable;
export @symbol("g_tls_client_connection_get_use_ssl3") fn tls_client_connection_get_use_ssl3(conn: *TlsClientConnection) glib::boolean;
export @symbol("g_tls_client_connection_get_validation_flags") fn tls_client_connection_get_validation_flags(conn: *TlsClientConnection) TlsCertificateFlags;
export @symbol("g_tls_client_connection_set_server_identity") fn tls_client_connection_set_server_identity(conn: *TlsClientConnection, identity: *SocketConnectable) void;
export @symbol("g_tls_client_connection_set_use_ssl3") fn tls_client_connection_set_use_ssl3(conn: *TlsClientConnection, use_ssl3: glib::boolean) void;
export @symbol("g_tls_client_connection_set_validation_flags") fn tls_client_connection_set_validation_flags(conn: *TlsClientConnection, flags: TlsCertificateFlags) void;
export @symbol("g_tls_client_connection_new") fn tls_client_connection_new(base_io_stream: *IOStream, server_identity: *SocketConnectable, error: nullable **glib::Error) *IOStream;
export type TlsFileDatabase = *opaque;
export @symbol("g_tls_file_database_new") fn tls_file_database_new(anchors: *c::char, error: nullable **glib::Error) *TlsDatabase;
export type TlsServerConnection = *opaque;
export @symbol("g_tls_server_connection_new") fn tls_server_connection_new(base_io_stream: *IOStream, certificate: *TlsCertificate, error: nullable **glib::Error) *IOStream;
export type Volume = *opaque;
export @symbol("g_volume_can_eject") fn volume_can_eject(volume: *Volume) glib::boolean;
export @symbol("g_volume_can_mount") fn volume_can_mount(volume: *Volume) glib::boolean;
export @symbol("g_volume_eject") fn volume_eject(volume: *Volume, flags: MountUnmountFlags, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void;
export @symbol("g_volume_eject_finish") fn volume_eject_finish(volume: *Volume, result: *AsyncResult, error: nullable **glib::Error) glib::boolean;
export @symbol("g_volume_eject_with_operation") fn volume_eject_with_operation(volume: *Volume, flags: MountUnmountFlags, mount_operation: *MountOperation, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void;
export @symbol("g_volume_eject_with_operation_finish") fn volume_eject_with_operation_finish(volume: *Volume, result: *AsyncResult, error: nullable **glib::Error) glib::boolean;
export @symbol("g_volume_enumerate_identifiers") fn volume_enumerate_identifiers(volume: *Volume) **c::char;
export @symbol("g_volume_get_activation_root") fn volume_get_activation_root(volume: *Volume) *File;
export @symbol("g_volume_get_drive") fn volume_get_drive(volume: *Volume) *Drive;
export @symbol("g_volume_get_icon") fn volume_get_icon(volume: *Volume) *Icon;
export @symbol("g_volume_get_identifier") fn volume_get_identifier(volume: *Volume, kind: *c::char) *c::char;
export @symbol("g_volume_get_mount") fn volume_get_mount(volume: *Volume) *Mount;
export @symbol("g_volume_get_name") fn volume_get_name(volume: *Volume) *c::char;
export @symbol("g_volume_get_sort_key") fn volume_get_sort_key(volume: *Volume) *c::char;
export @symbol("g_volume_get_symbolic_icon") fn volume_get_symbolic_icon(volume: *Volume) *Icon;
export @symbol("g_volume_get_uuid") fn volume_get_uuid(volume: *Volume) *c::char;
export @symbol("g_volume_mount") fn volume_mount(volume: *Volume, flags: MountMountFlags, mount_operation: *MountOperation, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void;
export @symbol("g_volume_mount_finish") fn volume_mount_finish(volume: *Volume, result: *AsyncResult, error: nullable **glib::Error) glib::boolean;
export @symbol("g_volume_should_automount") fn volume_should_automount(volume: *Volume) glib::boolean;
export fn volume_connect_changed(
	instance: *Volume,
	handler: *fn(instance: *Volume, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"changed\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn volume_connect_removed(
	instance: *Volume,
	handler: *fn(instance: *Volume, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"removed\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export type ActionEntry = struct {
	name: *c::char,
	activate: *fn(action: *SimpleAction, parameter: *glib::Variant, user_data: *opaque) void,
	parameter_type: *c::char,
	state: *c::char,
	change_state: *fn(action: *SimpleAction, value: *glib::Variant, user_data: *opaque) void,
	padding: [3]size,
};
export type ActionGroupInterface = struct {
	g_iface: gobject::TypeInterface,
	has_action: *fn(action_group: *ActionGroup, action_name: *c::char) glib::boolean,
	list_actions: *fn(action_group: *ActionGroup) **c::char,
	get_action_enabled: *fn(action_group: *ActionGroup, action_name: *c::char) glib::boolean,
	get_action_parameter_type: *fn(action_group: *ActionGroup, action_name: *c::char) *glib::VariantType,
	get_action_state_type: *fn(action_group: *ActionGroup, action_name: *c::char) *glib::VariantType,
	get_action_state_hint: *fn(action_group: *ActionGroup, action_name: *c::char) *glib::Variant,
	get_action_state: *fn(action_group: *ActionGroup, action_name: *c::char) *glib::Variant,
	change_action_state: *fn(action_group: *ActionGroup, action_name: *c::char, value: *glib::Variant) void,
	activate_action: *fn(action_group: *ActionGroup, action_name: *c::char, parameter: *glib::Variant) void,
	action_added: *fn(action_group: *ActionGroup, action_name: *c::char) void,
	action_removed: *fn(action_group: *ActionGroup, action_name: *c::char) void,
	action_enabled_changed: *fn(action_group: *ActionGroup, action_name: *c::char, enabled: glib::boolean) void,
	action_state_changed: *fn(action_group: *ActionGroup, action_name: *c::char, state: *glib::Variant) void,
	query_action: *fn(action_group: *ActionGroup, action_name: *c::char, enabled: *glib::boolean, parameter_type: **glib::VariantType, state_type: **glib::VariantType, state_hint: **glib::Variant, state: **glib::Variant) glib::boolean,
};
export type ActionInterface = struct {
	g_iface: gobject::TypeInterface,
	get_name: *fn(action: *Action) *c::char,
	get_parameter_type: *fn(action: *Action) *glib::VariantType,
	get_state_type: *fn(action: *Action) *glib::VariantType,
	get_state_hint: *fn(action: *Action) *glib::Variant,
	get_enabled: *fn(action: *Action) glib::boolean,
	get_state: *fn(action: *Action) *glib::Variant,
	change_state: *fn(action: *Action, value: *glib::Variant) void,
	activate: *fn(action: *Action, parameter: *glib::Variant) void,
};
export type ActionMapInterface = struct {
	g_iface: gobject::TypeInterface,
	lookup_action: *fn(action_map: *ActionMap, action_name: *c::char) *Action,
	add_action: *fn(action_map: *ActionMap, action: *Action) void,
	remove_action: *fn(action_map: *ActionMap, action_name: *c::char) void,
};
export type AppInfoIface = struct {
	g_iface: gobject::TypeInterface,
	dup: *fn(appinfo: *AppInfo) *AppInfo,
	equal: *fn(appinfo1: *AppInfo, appinfo2: *AppInfo) glib::boolean,
	get_id: *fn(appinfo: *AppInfo) *c::char,
	get_name: *fn(appinfo: *AppInfo) *c::char,
	get_description: *fn(appinfo: *AppInfo) *c::char,
	get_executable: *fn(appinfo: *AppInfo) *c::char,
	get_icon: *fn(appinfo: *AppInfo) *Icon,
	launch: *fn(appinfo: *AppInfo, files: *glib::List, context: *AppLaunchContext, error: nullable **glib::Error) glib::boolean,
	supports_uris: *fn(appinfo: *AppInfo) glib::boolean,
	supports_files: *fn(appinfo: *AppInfo) glib::boolean,
	launch_uris: *fn(appinfo: *AppInfo, uris: *glib::List, context: *AppLaunchContext, error: nullable **glib::Error) glib::boolean,
	should_show: *fn(appinfo: *AppInfo) glib::boolean,
	set_as_default_for_type: *fn(appinfo: *AppInfo, content_type: *c::char, error: nullable **glib::Error) glib::boolean,
	set_as_default_for_extension: *fn(appinfo: *AppInfo, extension: *c::char, error: nullable **glib::Error) glib::boolean,
	add_supports_type: *fn(appinfo: *AppInfo, content_type: *c::char, error: nullable **glib::Error) glib::boolean,
	can_remove_supports_type: *fn(appinfo: *AppInfo) glib::boolean,
	remove_supports_type: *fn(appinfo: *AppInfo, content_type: *c::char, error: nullable **glib::Error) glib::boolean,
	can_delete: *fn(appinfo: *AppInfo) glib::boolean,
	do_delete: *fn(appinfo: *AppInfo) glib::boolean,
	get_commandline: *fn(appinfo: *AppInfo) *c::char,
	get_display_name: *fn(appinfo: *AppInfo) *c::char,
	set_as_last_used_for_type: *fn(appinfo: *AppInfo, content_type: *c::char, error: nullable **glib::Error) glib::boolean,
	get_supported_types: *fn(appinfo: *AppInfo) **c::char,
	launch_uris_async: *fn(appinfo: *AppInfo, uris: *glib::List, context: *AppLaunchContext, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void,
	launch_uris_finish: *fn(appinfo: *AppInfo, result: *AsyncResult, error: nullable **glib::Error) glib::boolean,
};
export type AppLaunchContextClass = struct {
	parent_class: gobject::ObjectClass,
	get_display: *fn(context: *AppLaunchContext, info: *AppInfo, files: *glib::List) *c::char,
	get_startup_notify_id: *fn(context: *AppLaunchContext, info: *AppInfo, files: *glib::List) *c::char,
	launch_failed: *fn(context: *AppLaunchContext, startup_notify_id: *c::char) void,
	launched: *fn(context: *AppLaunchContext, info: *AppInfo, platform_data: *glib::Variant) void,
	launch_started: *fn(context: *AppLaunchContext, info: *AppInfo, platform_data: *glib::Variant) void,
	_g_reserved1: *fn() void,
	_g_reserved2: *fn() void,
	_g_reserved3: *fn() void,
};
export type AppLaunchContextPrivate = *opaque;
export type ApplicationClass = struct {
	parent_class: gobject::ObjectClass,
	startup: *fn(application: *Application) void,
	activate: *fn(application: *Application) void,
	open: *fn(application: *Application, files: **File, n_files: int, hint: *c::char) void,
	command_line: *fn(application: *Application, command_line: *ApplicationCommandLine) int,
	local_command_line: *fn(application: *Application, arguments: ***c::char, exit_status: *int) glib::boolean,
	before_emit: *fn(application: *Application, platform_data: *glib::Variant) void,
	after_emit: *fn(application: *Application, platform_data: *glib::Variant) void,
	add_platform_data: *fn(application: *Application, builder: *glib::VariantBuilder) void,
	quit_mainloop: *fn(application: *Application) void,
	run_mainloop: *fn(application: *Application) void,
	shutdown: *fn(application: *Application) void,
	dbus_register: *fn(application: *Application, connection: *DBusConnection, object_path: *c::char, error: nullable **glib::Error) glib::boolean,
	dbus_unregister: *fn(application: *Application, connection: *DBusConnection, object_path: *c::char) void,
	handle_local_options: *fn(application: *Application, options: *glib::VariantDict) int,
	name_lost: *fn(application: *Application) glib::boolean,
	padding: [7]*opaque,
};
export type ApplicationCommandLineClass = struct {
	parent_class: gobject::ObjectClass,
	print_literal: *fn(cmdline: *ApplicationCommandLine, message: *c::char) void,
	printerr_literal: *fn(cmdline: *ApplicationCommandLine, message: *c::char) void,
	get_stdin: *fn(cmdline: *ApplicationCommandLine) *InputStream,
	padding: [11]*opaque,
};
export type ApplicationCommandLinePrivate = *opaque;
export type ApplicationPrivate = *opaque;
export type AsyncInitableIface = struct {
	g_iface: gobject::TypeInterface,
	init_async: *fn(initable: *AsyncInitable, io_priority: int, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void,
	init_finish: *fn(initable: *AsyncInitable, res: *AsyncResult, error: nullable **glib::Error) glib::boolean,
};
export type AsyncResultIface = struct {
	g_iface: gobject::TypeInterface,
	get_user_data: *fn(res: *AsyncResult) *opaque,
	get_source_object: *fn(res: *AsyncResult) *gobject::Object,
	is_tagged: *fn(res: *AsyncResult, source_tag: *opaque) glib::boolean,
};
export type BufferedInputStreamClass = struct {
	parent_class: FilterInputStreamClass,
	fill: *fn(stream: *BufferedInputStream, count: c::ssize, cancellable: *Cancellable, error: nullable **glib::Error) c::ssize,
	fill_async: *fn(stream: *BufferedInputStream, count: c::ssize, io_priority: int, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void,
	fill_finish: *fn(stream: *BufferedInputStream, result: *AsyncResult, error: nullable **glib::Error) c::ssize,
	_g_reserved1: *fn() void,
	_g_reserved2: *fn() void,
	_g_reserved3: *fn() void,
	_g_reserved4: *fn() void,
	_g_reserved5: *fn() void,
};
export type BufferedInputStreamPrivate = *opaque;
export type BufferedOutputStreamClass = struct {
	parent_class: FilterOutputStreamClass,
	_g_reserved1: *fn() void,
	_g_reserved2: *fn() void,
};
export type BufferedOutputStreamPrivate = *opaque;
export type CancellableClass = struct {
	parent_class: gobject::ObjectClass,
	cancelled: *fn(cancellable: *Cancellable) void,
	_g_reserved1: *fn() void,
	_g_reserved2: *fn() void,
	_g_reserved3: *fn() void,
	_g_reserved4: *fn() void,
	_g_reserved5: *fn() void,
};
export type CancellablePrivate = *opaque;
export type CharsetConverterClass = struct {
	parent_class: gobject::ObjectClass,
};
export type ConverterIface = struct {
	g_iface: gobject::TypeInterface,
	convert: *fn(converter: *Converter, inbuf: *opaque, inbuf_size: size, outbuf: *opaque, outbuf_size: size, flags: ConverterFlags, bytes_read: *size, bytes_written: *size, error: nullable **glib::Error) ConverterResult,
	reset: *fn(converter: *Converter) void,
};
export type ConverterInputStreamClass = struct {
	parent_class: FilterInputStreamClass,
	_g_reserved1: *fn() void,
	_g_reserved2: *fn() void,
	_g_reserved3: *fn() void,
	_g_reserved4: *fn() void,
	_g_reserved5: *fn() void,
};
export type ConverterInputStreamPrivate = *opaque;
export type ConverterOutputStreamClass = struct {
	parent_class: FilterOutputStreamClass,
	_g_reserved1: *fn() void,
	_g_reserved2: *fn() void,
	_g_reserved3: *fn() void,
	_g_reserved4: *fn() void,
	_g_reserved5: *fn() void,
};
export type ConverterOutputStreamPrivate = *opaque;
export type CredentialsClass = *opaque;
export type DBusAnnotationInfo = struct {
	ref_count: int,
	key: *c::char,
	value: *c::char,
	annotations: **DBusAnnotationInfo,
};
export @symbol("g_dbus_annotation_info_ref") fn dbus_annotation_info_ref(info: *DBusAnnotationInfo) *DBusAnnotationInfo;
export @symbol("g_dbus_annotation_info_unref") fn dbus_annotation_info_unref(info: *DBusAnnotationInfo) void;
export @symbol("g_dbus_annotation_info_lookup") fn dbus_annotation_info_lookup(annotations: **DBusAnnotationInfo, name: *c::char) *c::char;
export type DBusArgInfo = struct {
	ref_count: int,
	name: *c::char,
	signature: *c::char,
	annotations: **DBusAnnotationInfo,
};
export @symbol("g_dbus_arg_info_ref") fn dbus_arg_info_ref(info: *DBusArgInfo) *DBusArgInfo;
export @symbol("g_dbus_arg_info_unref") fn dbus_arg_info_unref(info: *DBusArgInfo) void;
export type DBusErrorEntry = struct {
	error_code: int,
	dbus_error_name: *c::char,
};
export type DBusInterfaceIface = struct {
	parent_iface: gobject::TypeInterface,
	get_info: *fn(interface_: *DBusInterface) *DBusInterfaceInfo,
	get_object: *fn(interface_: *DBusInterface) *DBusObject,
	set_object: *fn(interface_: *DBusInterface, object: *DBusObject) void,
	dup_object: *fn(interface_: *DBusInterface) *DBusObject,
};
export type DBusInterfaceInfo = struct {
	ref_count: int,
	name: *c::char,
	methods: **DBusMethodInfo,
	signals: **DBusSignalInfo,
	properties: **DBusPropertyInfo,
	annotations: **DBusAnnotationInfo,
};
export @symbol("g_dbus_interface_info_cache_build") fn dbus_interface_info_cache_build(info: *DBusInterfaceInfo) void;
export @symbol("g_dbus_interface_info_cache_release") fn dbus_interface_info_cache_release(info: *DBusInterfaceInfo) void;
export @symbol("g_dbus_interface_info_generate_xml") fn dbus_interface_info_generate_xml(info: *DBusInterfaceInfo, indent: uint, string_builder: *glib::String) void;
export @symbol("g_dbus_interface_info_lookup_method") fn dbus_interface_info_lookup_method(info: *DBusInterfaceInfo, name: *c::char) *DBusMethodInfo;
export @symbol("g_dbus_interface_info_lookup_property") fn dbus_interface_info_lookup_property(info: *DBusInterfaceInfo, name: *c::char) *DBusPropertyInfo;
export @symbol("g_dbus_interface_info_lookup_signal") fn dbus_interface_info_lookup_signal(info: *DBusInterfaceInfo, name: *c::char) *DBusSignalInfo;
export @symbol("g_dbus_interface_info_ref") fn dbus_interface_info_ref(info: *DBusInterfaceInfo) *DBusInterfaceInfo;
export @symbol("g_dbus_interface_info_unref") fn dbus_interface_info_unref(info: *DBusInterfaceInfo) void;
export type DBusInterfaceSkeletonClass = struct {
	parent_class: gobject::ObjectClass,
	get_info: *fn(interface_: *DBusInterfaceSkeleton) *DBusInterfaceInfo,
	get_vtable: *fn(interface_: *DBusInterfaceSkeleton) *DBusInterfaceVTable,
	get_properties: *fn(interface_: *DBusInterfaceSkeleton) *glib::Variant,
	flush: *fn(interface_: *DBusInterfaceSkeleton) void,
	vfunc_padding: [8]*opaque,
	g_authorize_method: *fn(interface_: *DBusInterfaceSkeleton, invocation: *DBusMethodInvocation) glib::boolean,
	signal_padding: [8]*opaque,
};
export type DBusInterfaceSkeletonPrivate = *opaque;
export type DBusInterfaceVTable = struct {
	method_call: DBusInterfaceMethodCallFunc,
	get_property: DBusInterfaceGetPropertyFunc,
	set_property: DBusInterfaceSetPropertyFunc,
	padding: [8]*opaque,
};
export type DBusMethodInfo = struct {
	ref_count: int,
	name: *c::char,
	in_args: **DBusArgInfo,
	out_args: **DBusArgInfo,
	annotations: **DBusAnnotationInfo,
};
export @symbol("g_dbus_method_info_ref") fn dbus_method_info_ref(info: *DBusMethodInfo) *DBusMethodInfo;
export @symbol("g_dbus_method_info_unref") fn dbus_method_info_unref(info: *DBusMethodInfo) void;
export type DBusNodeInfo = struct {
	ref_count: int,
	path: *c::char,
	interfaces: **DBusInterfaceInfo,
	nodes: **DBusNodeInfo,
	annotations: **DBusAnnotationInfo,
};
export @symbol("g_dbus_node_info_new_for_xml") fn dbus_node_info_new_for_xml(xml_data: *c::char, error: nullable **glib::Error) *DBusNodeInfo;
export @symbol("g_dbus_node_info_generate_xml") fn dbus_node_info_generate_xml(info: *DBusNodeInfo, indent: uint, string_builder: *glib::String) void;
export @symbol("g_dbus_node_info_lookup_interface") fn dbus_node_info_lookup_interface(info: *DBusNodeInfo, name: *c::char) *DBusInterfaceInfo;
export @symbol("g_dbus_node_info_ref") fn dbus_node_info_ref(info: *DBusNodeInfo) *DBusNodeInfo;
export @symbol("g_dbus_node_info_unref") fn dbus_node_info_unref(info: *DBusNodeInfo) void;
export type DBusObjectIface = struct {
	parent_iface: gobject::TypeInterface,
	get_object_path: *fn(object: *DBusObject) *c::char,
	get_interfaces: *fn(object: *DBusObject) *glib::List,
	get_interface: *fn(object: *DBusObject, interface_name: *c::char) *DBusInterface,
	interface_added: *fn(object: *DBusObject, interface_: *DBusInterface) void,
	interface_removed: *fn(object: *DBusObject, interface_: *DBusInterface) void,
};
export type DBusObjectManagerClientClass = struct {
	parent_class: gobject::ObjectClass,
	interface_proxy_signal: *fn(manager: *DBusObjectManagerClient, object_proxy: *DBusObjectProxy, interface_proxy: *DBusProxy, sender_name: *c::char, signal_name: *c::char, parameters: *glib::Variant) void,
	interface_proxy_properties_changed: *fn(manager: *DBusObjectManagerClient, object_proxy: *DBusObjectProxy, interface_proxy: *DBusProxy, changed_properties: *glib::Variant, invalidated_properties: **c::char) void,
	padding: [8]*opaque,
};
export type DBusObjectManagerClientPrivate = *opaque;
export type DBusObjectManagerIface = struct {
	parent_iface: gobject::TypeInterface,
	get_object_path: *fn(manager: *DBusObjectManager) *c::char,
	get_objects: *fn(manager: *DBusObjectManager) *glib::List,
	get_object: *fn(manager: *DBusObjectManager, object_path: *c::char) *DBusObject,
	get_interface: *fn(manager: *DBusObjectManager, object_path: *c::char, interface_name: *c::char) *DBusInterface,
	object_added: *fn(manager: *DBusObjectManager, object: *DBusObject) void,
	object_removed: *fn(manager: *DBusObjectManager, object: *DBusObject) void,
	interface_added: *fn(manager: *DBusObjectManager, object: *DBusObject, interface_: *DBusInterface) void,
	interface_removed: *fn(manager: *DBusObjectManager, object: *DBusObject, interface_: *DBusInterface) void,
};
export type DBusObjectManagerServerClass = struct {
	parent_class: gobject::ObjectClass,
	padding: [8]*opaque,
};
export type DBusObjectManagerServerPrivate = *opaque;
export type DBusObjectProxyClass = struct {
	parent_class: gobject::ObjectClass,
	padding: [8]*opaque,
};
export type DBusObjectProxyPrivate = *opaque;
export type DBusObjectSkeletonClass = struct {
	parent_class: gobject::ObjectClass,
	authorize_method: *fn(object: *DBusObjectSkeleton, interface_: *DBusInterfaceSkeleton, invocation: *DBusMethodInvocation) glib::boolean,
	padding: [8]*opaque,
};
export type DBusObjectSkeletonPrivate = *opaque;
export type DBusPropertyInfo = struct {
	ref_count: int,
	name: *c::char,
	signature: *c::char,
	flags: DBusPropertyInfoFlags,
	annotations: **DBusAnnotationInfo,
};
export @symbol("g_dbus_property_info_ref") fn dbus_property_info_ref(info: *DBusPropertyInfo) *DBusPropertyInfo;
export @symbol("g_dbus_property_info_unref") fn dbus_property_info_unref(info: *DBusPropertyInfo) void;
export type DBusProxyClass = struct {
	parent_class: gobject::ObjectClass,
	g_properties_changed: *fn(proxy: *DBusProxy, changed_properties: *glib::Variant, invalidated_properties: **c::char) void,
	g_signal: *fn(proxy: *DBusProxy, sender_name: *c::char, signal_name: *c::char, parameters: *glib::Variant) void,
	padding: [32]*opaque,
};
export type DBusProxyPrivate = *opaque;
export type DBusSignalInfo = struct {
	ref_count: int,
	name: *c::char,
	args: **DBusArgInfo,
	annotations: **DBusAnnotationInfo,
};
export @symbol("g_dbus_signal_info_ref") fn dbus_signal_info_ref(info: *DBusSignalInfo) *DBusSignalInfo;
export @symbol("g_dbus_signal_info_unref") fn dbus_signal_info_unref(info: *DBusSignalInfo) void;
export type DBusSubtreeVTable = struct {
	enumerate: DBusSubtreeEnumerateFunc,
	introspect: DBusSubtreeIntrospectFunc,
	dispatch: DBusSubtreeDispatchFunc,
	padding: [8]*opaque,
};
export type DataInputStreamClass = struct {
	parent_class: BufferedInputStreamClass,
	_g_reserved1: *fn() void,
	_g_reserved2: *fn() void,
	_g_reserved3: *fn() void,
	_g_reserved4: *fn() void,
	_g_reserved5: *fn() void,
};
export type DataInputStreamPrivate = *opaque;
export type DataOutputStreamClass = struct {
	parent_class: FilterOutputStreamClass,
	_g_reserved1: *fn() void,
	_g_reserved2: *fn() void,
	_g_reserved3: *fn() void,
	_g_reserved4: *fn() void,
	_g_reserved5: *fn() void,
};
export type DataOutputStreamPrivate = *opaque;
export type DatagramBasedInterface = struct {
	g_iface: gobject::TypeInterface,
	receive_messages: *fn(datagram_based: *DatagramBased, messages: *InputMessage, num_messages: uint, flags: int, timeout: i64, cancellable: *Cancellable, error: nullable **glib::Error) int,
	send_messages: *fn(datagram_based: *DatagramBased, messages: *OutputMessage, num_messages: uint, flags: int, timeout: i64, cancellable: *Cancellable, error: nullable **glib::Error) int,
	create_source: *fn(datagram_based: *DatagramBased, condition: glib::IOCondition, cancellable: *Cancellable) *glib::Source,
	condition_check: *fn(datagram_based: *DatagramBased, condition: glib::IOCondition) glib::IOCondition,
	condition_wait: *fn(datagram_based: *DatagramBased, condition: glib::IOCondition, timeout: i64, cancellable: *Cancellable, error: nullable **glib::Error) glib::boolean,
};
export type DebugControllerDBusClass = struct {
	parent_class: gobject::ObjectClass,
	authorize: *fn(controller: *DebugControllerDBus, invocation: *DBusMethodInvocation) glib::boolean,
	padding: [12]*opaque,
};
export type DebugControllerInterface = struct {
	g_iface: gobject::TypeInterface,
};
export type DesktopAppInfoClass = struct {
	parent_class: gobject::ObjectClass,
};
export type DesktopAppInfoLookupIface = struct {
	g_iface: gobject::TypeInterface,
	get_default_for_uri_scheme: *fn(lookup: *DesktopAppInfoLookup, uri_scheme: *c::char) *AppInfo,
};
export type DriveIface = struct {
	g_iface: gobject::TypeInterface,
	changed: *fn(drive: *Drive) void,
	disconnected: *fn(drive: *Drive) void,
	eject_button: *fn(drive: *Drive) void,
	get_name: *fn(drive: *Drive) *c::char,
	get_icon: *fn(drive: *Drive) *Icon,
	has_volumes: *fn(drive: *Drive) glib::boolean,
	get_volumes: *fn(drive: *Drive) *glib::List,
	is_media_removable: *fn(drive: *Drive) glib::boolean,
	has_media: *fn(drive: *Drive) glib::boolean,
	is_media_check_automatic: *fn(drive: *Drive) glib::boolean,
	can_eject: *fn(drive: *Drive) glib::boolean,
	can_poll_for_media: *fn(drive: *Drive) glib::boolean,
	eject: *fn(drive: *Drive, flags: MountUnmountFlags, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void,
	eject_finish: *fn(drive: *Drive, result: *AsyncResult, error: nullable **glib::Error) glib::boolean,
	poll_for_media: *fn(drive: *Drive, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void,
	poll_for_media_finish: *fn(drive: *Drive, result: *AsyncResult, error: nullable **glib::Error) glib::boolean,
	get_identifier: *fn(drive: *Drive, kind: *c::char) *c::char,
	enumerate_identifiers: *fn(drive: *Drive) **c::char,
	get_start_stop_type: *fn(drive: *Drive) DriveStartStopType,
	can_start: *fn(drive: *Drive) glib::boolean,
	can_start_degraded: *fn(drive: *Drive) glib::boolean,
	start: *fn(drive: *Drive, flags: DriveStartFlags, mount_operation: *MountOperation, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void,
	start_finish: *fn(drive: *Drive, result: *AsyncResult, error: nullable **glib::Error) glib::boolean,
	can_stop: *fn(drive: *Drive) glib::boolean,
	stop: *fn(drive: *Drive, flags: MountUnmountFlags, mount_operation: *MountOperation, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void,
	stop_finish: *fn(drive: *Drive, result: *AsyncResult, error: nullable **glib::Error) glib::boolean,
	stop_button: *fn(drive: *Drive) void,
	eject_with_operation: *fn(drive: *Drive, flags: MountUnmountFlags, mount_operation: *MountOperation, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void,
	eject_with_operation_finish: *fn(drive: *Drive, result: *AsyncResult, error: nullable **glib::Error) glib::boolean,
	get_sort_key: *fn(drive: *Drive) *c::char,
	get_symbolic_icon: *fn(drive: *Drive) *Icon,
	is_removable: *fn(drive: *Drive) glib::boolean,
};
export type DtlsClientConnectionInterface = struct {
	g_iface: gobject::TypeInterface,
};
export type DtlsConnectionInterface = struct {
	g_iface: gobject::TypeInterface,
	accept_certificate: *fn(connection: *DtlsConnection, peer_cert: *TlsCertificate, errors: TlsCertificateFlags) glib::boolean,
	handshake: *fn(conn: *DtlsConnection, cancellable: *Cancellable, error: nullable **glib::Error) glib::boolean,
	handshake_async: *fn(conn: *DtlsConnection, io_priority: int, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void,
	handshake_finish: *fn(conn: *DtlsConnection, result: *AsyncResult, error: nullable **glib::Error) glib::boolean,
	shutdown: *fn(conn: *DtlsConnection, shutdown_read: glib::boolean, shutdown_write: glib::boolean, cancellable: *Cancellable, error: nullable **glib::Error) glib::boolean,
	shutdown_async: *fn(conn: *DtlsConnection, shutdown_read: glib::boolean, shutdown_write: glib::boolean, io_priority: int, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void,
	shutdown_finish: *fn(conn: *DtlsConnection, result: *AsyncResult, error: nullable **glib::Error) glib::boolean,
	set_advertised_protocols: *fn(conn: *DtlsConnection, protocols: **c::char) void,
	get_negotiated_protocol: *fn(conn: *DtlsConnection) *c::char,
	get_binding_data: *fn(conn: *DtlsConnection, type_: TlsChannelBindingType, data: *glib::ByteArray, error: nullable **glib::Error) glib::boolean,
};
export type DtlsServerConnectionInterface = struct {
	g_iface: gobject::TypeInterface,
};
export type EmblemClass = *opaque;
export type EmblemedIconClass = struct {
	parent_class: gobject::ObjectClass,
};
export type EmblemedIconPrivate = *opaque;
export type FileAttributeInfo = struct {
	name: *c::char,
	type_: FileAttributeType,
	flags: FileAttributeInfoFlags,
};
export type FileAttributeInfoList = struct {
	infos: *FileAttributeInfo,
	n_infos: int,
};
export @symbol("g_file_attribute_info_list_new") fn file_attribute_info_list_new() *FileAttributeInfoList;
export @symbol("g_file_attribute_info_list_add") fn file_attribute_info_list_add(list: *FileAttributeInfoList, name: *c::char, type_: FileAttributeType, flags: FileAttributeInfoFlags) void;
export @symbol("g_file_attribute_info_list_dup") fn file_attribute_info_list_dup(list: *FileAttributeInfoList) *FileAttributeInfoList;
export @symbol("g_file_attribute_info_list_lookup") fn file_attribute_info_list_lookup(list: *FileAttributeInfoList, name: *c::char) *FileAttributeInfo;
export @symbol("g_file_attribute_info_list_ref") fn file_attribute_info_list_ref(list: *FileAttributeInfoList) *FileAttributeInfoList;
export @symbol("g_file_attribute_info_list_unref") fn file_attribute_info_list_unref(list: *FileAttributeInfoList) void;
export type FileAttributeMatcher = *opaque;
export @symbol("g_file_attribute_matcher_new") fn file_attribute_matcher_new(attributes: *c::char) *FileAttributeMatcher;
export @symbol("g_file_attribute_matcher_enumerate_namespace") fn file_attribute_matcher_enumerate_namespace(matcher: *FileAttributeMatcher, ns: *c::char) glib::boolean;
export @symbol("g_file_attribute_matcher_enumerate_next") fn file_attribute_matcher_enumerate_next(matcher: *FileAttributeMatcher) *c::char;
export @symbol("g_file_attribute_matcher_matches") fn file_attribute_matcher_matches(matcher: *FileAttributeMatcher, attribute: *c::char) glib::boolean;
export @symbol("g_file_attribute_matcher_matches_only") fn file_attribute_matcher_matches_only(matcher: *FileAttributeMatcher, attribute: *c::char) glib::boolean;
export @symbol("g_file_attribute_matcher_ref") fn file_attribute_matcher_ref(matcher: *FileAttributeMatcher) *FileAttributeMatcher;
export @symbol("g_file_attribute_matcher_subtract") fn file_attribute_matcher_subtract(matcher: *FileAttributeMatcher, subtract: *FileAttributeMatcher) *FileAttributeMatcher;
export @symbol("g_file_attribute_matcher_to_string") fn file_attribute_matcher_to_string(matcher: *FileAttributeMatcher) *c::char;
export @symbol("g_file_attribute_matcher_unref") fn file_attribute_matcher_unref(matcher: *FileAttributeMatcher) void;
export type FileDescriptorBasedIface = struct {
	g_iface: gobject::TypeInterface,
	get_fd: *fn(fd_based: *FileDescriptorBased) int,
};
export type FileEnumeratorClass = struct {
	parent_class: gobject::ObjectClass,
	next_file: *fn(enumerator: *FileEnumerator, cancellable: *Cancellable, error: nullable **glib::Error) *FileInfo,
	close_fn: *fn(enumerator: *FileEnumerator, cancellable: *Cancellable, error: nullable **glib::Error) glib::boolean,
	next_files_async: *fn(enumerator: *FileEnumerator, num_files: int, io_priority: int, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void,
	next_files_finish: *fn(enumerator: *FileEnumerator, result: *AsyncResult, error: nullable **glib::Error) *glib::List,
	close_async: *fn(enumerator: *FileEnumerator, io_priority: int, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void,
	close_finish: *fn(enumerator: *FileEnumerator, result: *AsyncResult, error: nullable **glib::Error) glib::boolean,
	_g_reserved1: *fn() void,
	_g_reserved2: *fn() void,
	_g_reserved3: *fn() void,
	_g_reserved4: *fn() void,
	_g_reserved5: *fn() void,
	_g_reserved6: *fn() void,
	_g_reserved7: *fn() void,
};
export type FileEnumeratorPrivate = *opaque;
export type FileIOStreamClass = struct {
	parent_class: IOStreamClass,
	tell: *fn(stream: *FileIOStream) i64,
	can_seek: *fn(stream: *FileIOStream) glib::boolean,
	seek: *fn(stream: *FileIOStream, offset_: i64, type_: glib::SeekType, cancellable: *Cancellable, error: nullable **glib::Error) glib::boolean,
	can_truncate: *fn(stream: *FileIOStream) glib::boolean,
	truncate_fn: *fn(stream: *FileIOStream, size_: i64, cancellable: *Cancellable, error: nullable **glib::Error) glib::boolean,
	query_info: *fn(stream: *FileIOStream, attributes: *c::char, cancellable: *Cancellable, error: nullable **glib::Error) *FileInfo,
	query_info_async: *fn(stream: *FileIOStream, attributes: *c::char, io_priority: int, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void,
	query_info_finish: *fn(stream: *FileIOStream, result: *AsyncResult, error: nullable **glib::Error) *FileInfo,
	get_etag: *fn(stream: *FileIOStream) *c::char,
	_g_reserved1: *fn() void,
	_g_reserved2: *fn() void,
	_g_reserved3: *fn() void,
	_g_reserved4: *fn() void,
	_g_reserved5: *fn() void,
};
export type FileIOStreamPrivate = *opaque;
export type FileIconClass = *opaque;
export type FileIface = struct {
	g_iface: gobject::TypeInterface,
	dup: *fn(file: *File) *File,
	hash: *fn(file: *File) uint,
	equal: *fn(file1: *File, file2: *File) glib::boolean,
	is_native: *fn(file: *File) glib::boolean,
	has_uri_scheme: *fn(file: *File, uri_scheme: *c::char) glib::boolean,
	get_uri_scheme: *fn(file: *File) *c::char,
	get_basename: *fn(file: *File) *c::char,
	get_path: *fn(file: *File) *c::char,
	get_uri: *fn(file: *File) *c::char,
	get_parse_name: *fn(file: *File) *c::char,
	get_parent: *fn(file: *File) *File,
	prefix_matches: *fn(prefix: *File, file: *File) glib::boolean,
	get_relative_path: *fn(parent: *File, descendant: *File) *c::char,
	resolve_relative_path: *fn(file: *File, relative_path: *c::char) *File,
	get_child_for_display_name: *fn(file: *File, display_name: *c::char, error: nullable **glib::Error) *File,
	enumerate_children: *fn(file: *File, attributes: *c::char, flags: FileQueryInfoFlags, cancellable: *Cancellable, error: nullable **glib::Error) *FileEnumerator,
	enumerate_children_async: *fn(file: *File, attributes: *c::char, flags: FileQueryInfoFlags, io_priority: int, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void,
	enumerate_children_finish: *fn(file: *File, res: *AsyncResult, error: nullable **glib::Error) *FileEnumerator,
	query_info: *fn(file: *File, attributes: *c::char, flags: FileQueryInfoFlags, cancellable: *Cancellable, error: nullable **glib::Error) *FileInfo,
	query_info_async: *fn(file: *File, attributes: *c::char, flags: FileQueryInfoFlags, io_priority: int, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void,
	query_info_finish: *fn(file: *File, res: *AsyncResult, error: nullable **glib::Error) *FileInfo,
	query_filesystem_info: *fn(file: *File, attributes: *c::char, cancellable: *Cancellable, error: nullable **glib::Error) *FileInfo,
	query_filesystem_info_async: *fn(file: *File, attributes: *c::char, io_priority: int, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void,
	query_filesystem_info_finish: *fn(file: *File, res: *AsyncResult, error: nullable **glib::Error) *FileInfo,
	find_enclosing_mount: *fn(file: *File, cancellable: *Cancellable, error: nullable **glib::Error) *Mount,
	find_enclosing_mount_async: *fn(file: *File, io_priority: int, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void,
	find_enclosing_mount_finish: *fn(file: *File, res: *AsyncResult, error: nullable **glib::Error) *Mount,
	set_display_name: *fn(file: *File, display_name: *c::char, cancellable: *Cancellable, error: nullable **glib::Error) *File,
	set_display_name_async: *fn(file: *File, display_name: *c::char, io_priority: int, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void,
	set_display_name_finish: *fn(file: *File, res: *AsyncResult, error: nullable **glib::Error) *File,
	query_settable_attributes: *fn(file: *File, cancellable: *Cancellable, error: nullable **glib::Error) *FileAttributeInfoList,
	_query_settable_attributes_async: *fn() void,
	_query_settable_attributes_finish: *fn() void,
	query_writable_namespaces: *fn(file: *File, cancellable: *Cancellable, error: nullable **glib::Error) *FileAttributeInfoList,
	_query_writable_namespaces_async: *fn() void,
	_query_writable_namespaces_finish: *fn() void,
	set_attribute: *fn(file: *File, attribute: *c::char, type_: FileAttributeType, value_p: *opaque, flags: FileQueryInfoFlags, cancellable: *Cancellable, error: nullable **glib::Error) glib::boolean,
	set_attributes_from_info: *fn(file: *File, info: *FileInfo, flags: FileQueryInfoFlags, cancellable: *Cancellable, error: nullable **glib::Error) glib::boolean,
	set_attributes_async: *fn(file: *File, info: *FileInfo, flags: FileQueryInfoFlags, io_priority: int, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void,
	set_attributes_finish: *fn(file: *File, result: *AsyncResult, info: **FileInfo, error: nullable **glib::Error) glib::boolean,
	read_fn: *fn(file: *File, cancellable: *Cancellable, error: nullable **glib::Error) *FileInputStream,
	read_async: *fn(file: *File, io_priority: int, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void,
	read_finish: *fn(file: *File, res: *AsyncResult, error: nullable **glib::Error) *FileInputStream,
	append_to: *fn(file: *File, flags: FileCreateFlags, cancellable: *Cancellable, error: nullable **glib::Error) *FileOutputStream,
	append_to_async: *fn(file: *File, flags: FileCreateFlags, io_priority: int, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void,
	append_to_finish: *fn(file: *File, res: *AsyncResult, error: nullable **glib::Error) *FileOutputStream,
	create: *fn(file: *File, flags: FileCreateFlags, cancellable: *Cancellable, error: nullable **glib::Error) *FileOutputStream,
	create_async: *fn(file: *File, flags: FileCreateFlags, io_priority: int, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void,
	create_finish: *fn(file: *File, res: *AsyncResult, error: nullable **glib::Error) *FileOutputStream,
	replace: *fn(file: *File, etag: *c::char, make_backup: glib::boolean, flags: FileCreateFlags, cancellable: *Cancellable, error: nullable **glib::Error) *FileOutputStream,
	replace_async: *fn(file: *File, etag: *c::char, make_backup: glib::boolean, flags: FileCreateFlags, io_priority: int, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void,
	replace_finish: *fn(file: *File, res: *AsyncResult, error: nullable **glib::Error) *FileOutputStream,
	delete_file: *fn(file: *File, cancellable: *Cancellable, error: nullable **glib::Error) glib::boolean,
	delete_file_async: *fn(file: *File, io_priority: int, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void,
	delete_file_finish: *fn(file: *File, result: *AsyncResult, error: nullable **glib::Error) glib::boolean,
	trash: *fn(file: *File, cancellable: *Cancellable, error: nullable **glib::Error) glib::boolean,
	trash_async: *fn(file: *File, io_priority: int, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void,
	trash_finish: *fn(file: *File, result: *AsyncResult, error: nullable **glib::Error) glib::boolean,
	make_directory: *fn(file: *File, cancellable: *Cancellable, error: nullable **glib::Error) glib::boolean,
	make_directory_async: *fn(file: *File, io_priority: int, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void,
	make_directory_finish: *fn(file: *File, result: *AsyncResult, error: nullable **glib::Error) glib::boolean,
	make_symbolic_link: *fn(file: *File, symlink_value: *c::char, cancellable: *Cancellable, error: nullable **glib::Error) glib::boolean,
	make_symbolic_link_async: *fn(file: *File, symlink_value: *c::char, io_priority: int, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void,
	make_symbolic_link_finish: *fn(file: *File, result: *AsyncResult, error: nullable **glib::Error) glib::boolean,
	copy: *fn(source: *File, destination: *File, flags: FileCopyFlags, cancellable: *Cancellable, progress_callback: FileProgressCallback, progress_callback_data: *opaque, error: nullable **glib::Error) glib::boolean,
	copy_async: *fn(source: *File, destination: *File, flags: FileCopyFlags, io_priority: int, cancellable: *Cancellable, progress_callback: FileProgressCallback, progress_callback_data: *opaque, callback: AsyncReadyCallback, user_data: *opaque) void,
	copy_finish: *fn(file: *File, res: *AsyncResult, error: nullable **glib::Error) glib::boolean,
	move: *fn(source: *File, destination: *File, flags: FileCopyFlags, cancellable: *Cancellable, progress_callback: FileProgressCallback, progress_callback_data: *opaque, error: nullable **glib::Error) glib::boolean,
	move_async: *fn(source: *File, destination: *File, flags: FileCopyFlags, io_priority: int, cancellable: *Cancellable, progress_callback: FileProgressCallback, progress_callback_data: *opaque, callback: AsyncReadyCallback, user_data: *opaque) void,
	move_finish: *fn(file: *File, result: *AsyncResult, error: nullable **glib::Error) glib::boolean,
	mount_mountable: *fn(file: *File, flags: MountMountFlags, mount_operation: *MountOperation, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void,
	mount_mountable_finish: *fn(file: *File, result: *AsyncResult, error: nullable **glib::Error) *File,
	unmount_mountable: *fn(file: *File, flags: MountUnmountFlags, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void,
	unmount_mountable_finish: *fn(file: *File, result: *AsyncResult, error: nullable **glib::Error) glib::boolean,
	eject_mountable: *fn(file: *File, flags: MountUnmountFlags, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void,
	eject_mountable_finish: *fn(file: *File, result: *AsyncResult, error: nullable **glib::Error) glib::boolean,
	mount_enclosing_volume: *fn(location: *File, flags: MountMountFlags, mount_operation: *MountOperation, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void,
	mount_enclosing_volume_finish: *fn(location: *File, result: *AsyncResult, error: nullable **glib::Error) glib::boolean,
	monitor_dir: *fn(file: *File, flags: FileMonitorFlags, cancellable: *Cancellable, error: nullable **glib::Error) *FileMonitor,
	monitor_file: *fn(file: *File, flags: FileMonitorFlags, cancellable: *Cancellable, error: nullable **glib::Error) *FileMonitor,
	open_readwrite: *fn(file: *File, cancellable: *Cancellable, error: nullable **glib::Error) *FileIOStream,
	open_readwrite_async: *fn(file: *File, io_priority: int, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void,
	open_readwrite_finish: *fn(file: *File, res: *AsyncResult, error: nullable **glib::Error) *FileIOStream,
	create_readwrite: *fn(file: *File, flags: FileCreateFlags, cancellable: *Cancellable, error: nullable **glib::Error) *FileIOStream,
	create_readwrite_async: *fn(file: *File, flags: FileCreateFlags, io_priority: int, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void,
	create_readwrite_finish: *fn(file: *File, res: *AsyncResult, error: nullable **glib::Error) *FileIOStream,
	replace_readwrite: *fn(file: *File, etag: *c::char, make_backup: glib::boolean, flags: FileCreateFlags, cancellable: *Cancellable, error: nullable **glib::Error) *FileIOStream,
	replace_readwrite_async: *fn(file: *File, etag: *c::char, make_backup: glib::boolean, flags: FileCreateFlags, io_priority: int, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void,
	replace_readwrite_finish: *fn(file: *File, res: *AsyncResult, error: nullable **glib::Error) *FileIOStream,
	start_mountable: *fn(file: *File, flags: DriveStartFlags, start_operation: *MountOperation, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void,
	start_mountable_finish: *fn(file: *File, result: *AsyncResult, error: nullable **glib::Error) glib::boolean,
	stop_mountable: *fn(file: *File, flags: MountUnmountFlags, mount_operation: *MountOperation, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void,
	stop_mountable_finish: *fn(file: *File, result: *AsyncResult, error: nullable **glib::Error) glib::boolean,
	supports_thread_contexts: glib::boolean,
	unmount_mountable_with_operation: *fn(file: *File, flags: MountUnmountFlags, mount_operation: *MountOperation, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void,
	unmount_mountable_with_operation_finish: *fn(file: *File, result: *AsyncResult, error: nullable **glib::Error) glib::boolean,
	eject_mountable_with_operation: *fn(file: *File, flags: MountUnmountFlags, mount_operation: *MountOperation, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void,
	eject_mountable_with_operation_finish: *fn(file: *File, result: *AsyncResult, error: nullable **glib::Error) glib::boolean,
	poll_mountable: *fn(file: *File, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void,
	poll_mountable_finish: *fn(file: *File, result: *AsyncResult, error: nullable **glib::Error) glib::boolean,
	measure_disk_usage: *fn(file: *File, flags: FileMeasureFlags, cancellable: *Cancellable, progress_callback: FileMeasureProgressCallback, progress_data: *opaque, disk_usage: *u64, num_dirs: *u64, num_files: *u64, error: nullable **glib::Error) glib::boolean,
	measure_disk_usage_async: *fn(file: *File, flags: FileMeasureFlags, io_priority: int, cancellable: *Cancellable, progress_callback: FileMeasureProgressCallback, progress_data: *opaque, callback: AsyncReadyCallback, user_data: *opaque) void,
	measure_disk_usage_finish: *fn(file: *File, result: *AsyncResult, disk_usage: *u64, num_dirs: *u64, num_files: *u64, error: nullable **glib::Error) glib::boolean,
};
export type FileInfoClass = *opaque;
export type FileInputStreamClass = struct {
	parent_class: InputStreamClass,
	tell: *fn(stream: *FileInputStream) i64,
	can_seek: *fn(stream: *FileInputStream) glib::boolean,
	seek: *fn(stream: *FileInputStream, offset_: i64, type_: glib::SeekType, cancellable: *Cancellable, error: nullable **glib::Error) glib::boolean,
	query_info: *fn(stream: *FileInputStream, attributes: *c::char, cancellable: *Cancellable, error: nullable **glib::Error) *FileInfo,
	query_info_async: *fn(stream: *FileInputStream, attributes: *c::char, io_priority: int, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void,
	query_info_finish: *fn(stream: *FileInputStream, result: *AsyncResult, error: nullable **glib::Error) *FileInfo,
	_g_reserved1: *fn() void,
	_g_reserved2: *fn() void,
	_g_reserved3: *fn() void,
	_g_reserved4: *fn() void,
	_g_reserved5: *fn() void,
};
export type FileInputStreamPrivate = *opaque;
export type FileMonitorClass = struct {
	parent_class: gobject::ObjectClass,
	changed: *fn(monitor: *FileMonitor, file: *File, other_file: *File, event_type: FileMonitorEvent) void,
	cancel: *fn(monitor: *FileMonitor) glib::boolean,
	_g_reserved1: *fn() void,
	_g_reserved2: *fn() void,
	_g_reserved3: *fn() void,
	_g_reserved4: *fn() void,
	_g_reserved5: *fn() void,
};
export type FileMonitorPrivate = *opaque;
export type FileOutputStreamClass = struct {
	parent_class: OutputStreamClass,
	tell: *fn(stream: *FileOutputStream) i64,
	can_seek: *fn(stream: *FileOutputStream) glib::boolean,
	seek: *fn(stream: *FileOutputStream, offset_: i64, type_: glib::SeekType, cancellable: *Cancellable, error: nullable **glib::Error) glib::boolean,
	can_truncate: *fn(stream: *FileOutputStream) glib::boolean,
	truncate_fn: *fn(stream: *FileOutputStream, size_: i64, cancellable: *Cancellable, error: nullable **glib::Error) glib::boolean,
	query_info: *fn(stream: *FileOutputStream, attributes: *c::char, cancellable: *Cancellable, error: nullable **glib::Error) *FileInfo,
	query_info_async: *fn(stream: *FileOutputStream, attributes: *c::char, io_priority: int, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void,
	query_info_finish: *fn(stream: *FileOutputStream, result: *AsyncResult, error: nullable **glib::Error) *FileInfo,
	get_etag: *fn(stream: *FileOutputStream) *c::char,
	_g_reserved1: *fn() void,
	_g_reserved2: *fn() void,
	_g_reserved3: *fn() void,
	_g_reserved4: *fn() void,
	_g_reserved5: *fn() void,
};
export type FileOutputStreamPrivate = *opaque;
export type FilenameCompleterClass = struct {
	parent_class: gobject::ObjectClass,
	got_completion_data: *fn(filename_completer: *FilenameCompleter) void,
	_g_reserved1: *fn() void,
	_g_reserved2: *fn() void,
	_g_reserved3: *fn() void,
};
export type FilterInputStreamClass = struct {
	parent_class: InputStreamClass,
	_g_reserved1: *fn() void,
	_g_reserved2: *fn() void,
	_g_reserved3: *fn() void,
};
export type FilterOutputStreamClass = struct {
	parent_class: OutputStreamClass,
	_g_reserved1: *fn() void,
	_g_reserved2: *fn() void,
	_g_reserved3: *fn() void,
};
export type IOExtension = *opaque;
export @symbol("g_io_extension_get_name") fn ioextension_get_name(extension: *IOExtension) *c::char;
export @symbol("g_io_extension_get_priority") fn ioextension_get_priority(extension: *IOExtension) int;
export @symbol("g_io_extension_get_type") fn ioextension_get_type(extension: *IOExtension) glib::Type;
export @symbol("g_io_extension_ref_class") fn ioextension_ref_class(extension: *IOExtension) *gobject::TypeClass;
export type IOExtensionPoint = *opaque;
export @symbol("g_io_extension_point_get_extension_by_name") fn ioextension_point_get_extension_by_name(extension_point: *IOExtensionPoint, name: *c::char) *IOExtension;
export @symbol("g_io_extension_point_get_extensions") fn ioextension_point_get_extensions(extension_point: *IOExtensionPoint) *glib::List;
export @symbol("g_io_extension_point_get_required_type") fn ioextension_point_get_required_type(extension_point: *IOExtensionPoint) glib::Type;
export @symbol("g_io_extension_point_set_required_type") fn ioextension_point_set_required_type(extension_point: *IOExtensionPoint, type_: glib::Type) void;
export @symbol("g_io_extension_point_implement") fn ioextension_point_implement(extension_point_name: *c::char, type_: glib::Type, extension_name: *c::char, priority: int) *IOExtension;
export @symbol("g_io_extension_point_lookup") fn ioextension_point_lookup(name: *c::char) *IOExtensionPoint;
export @symbol("g_io_extension_point_register") fn ioextension_point_register(name: *c::char) *IOExtensionPoint;
export type IOModuleClass = *opaque;
export type IOModuleScope = *opaque;
export @symbol("g_io_module_scope_block") fn iomodule_scope_block(scope: *IOModuleScope, basename: *c::char) void;
export @symbol("g_io_module_scope_free") fn iomodule_scope_free(scope: *IOModuleScope) void;
export @symbol("g_io_module_scope_new") fn iomodule_scope_new(flags: IOModuleScopeFlags) *IOModuleScope;
export type IOSchedulerJob = *opaque;
export @symbol("g_io_scheduler_job_send_to_mainloop") fn ioscheduler_job_send_to_mainloop(job: *IOSchedulerJob, func: glib::SourceFunc, user_data: *opaque, notify: glib::DestroyNotify) glib::boolean;
export @symbol("g_io_scheduler_job_send_to_mainloop_async") fn ioscheduler_job_send_to_mainloop_async(job: *IOSchedulerJob, func: glib::SourceFunc, user_data: *opaque, notify: glib::DestroyNotify) void;
export type IOStreamAdapter = *opaque;
export type IOStreamClass = struct {
	parent_class: gobject::ObjectClass,
	get_input_stream: *fn(stream: *IOStream) *InputStream,
	get_output_stream: *fn(stream: *IOStream) *OutputStream,
	close_fn: *fn(stream: *IOStream, cancellable: *Cancellable, error: nullable **glib::Error) glib::boolean,
	close_async: *fn(stream: *IOStream, io_priority: int, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void,
	close_finish: *fn(stream: *IOStream, result: *AsyncResult, error: nullable **glib::Error) glib::boolean,
	_g_reserved1: *fn() void,
	_g_reserved2: *fn() void,
	_g_reserved3: *fn() void,
	_g_reserved4: *fn() void,
	_g_reserved5: *fn() void,
	_g_reserved6: *fn() void,
	_g_reserved7: *fn() void,
	_g_reserved8: *fn() void,
	_g_reserved9: *fn() void,
	_g_reserved10: *fn() void,
};
export type IOStreamPrivate = *opaque;
export type IconIface = struct {
	g_iface: gobject::TypeInterface,
	hash: *fn(icon: *Icon) uint,
	equal: *fn(icon1: *Icon, icon2: *Icon) glib::boolean,
	to_tokens: *fn(icon: *Icon, tokens: *glib::PtrArray, out_version: *int) glib::boolean,
	from_tokens: *fn(tokens: **c::char, num_tokens: int, version: int, error: nullable **glib::Error) *Icon,
	serialize: *fn(icon: *Icon) *glib::Variant,
};
export type InetAddressClass = struct {
	parent_class: gobject::ObjectClass,
	to_string: *fn(address: *InetAddress) *c::char,
	to_bytes: *fn(address: *InetAddress) *u8,
};
export type InetAddressMaskClass = struct {
	parent_class: gobject::ObjectClass,
};
export type InetAddressMaskPrivate = *opaque;
export type InetAddressPrivate = *opaque;
export type InetSocketAddressClass = struct {
	parent_class: SocketAddressClass,
};
export type InetSocketAddressPrivate = *opaque;
export type InitableIface = struct {
	g_iface: gobject::TypeInterface,
	init: *fn(initable: *Initable, cancellable: *Cancellable, error: nullable **glib::Error) glib::boolean,
};
export type InputMessage = struct {
	address: **SocketAddress,
	vectors: *InputVector,
	num_vectors: uint,
	bytes_received: size,
	flags: int,
	control_messages: ***SocketControlMessage,
	num_control_messages: *uint,
};
export type InputStreamClass = struct {
	parent_class: gobject::ObjectClass,
	read_fn: *fn(stream: *InputStream, buffer: *opaque, count: size, cancellable: *Cancellable, error: nullable **glib::Error) c::ssize,
	skip: *fn(stream: *InputStream, count: size, cancellable: *Cancellable, error: nullable **glib::Error) c::ssize,
	close_fn: *fn(stream: *InputStream, cancellable: *Cancellable, error: nullable **glib::Error) glib::boolean,
	read_async: *fn(stream: *InputStream, buffer: *opaque, count: size, io_priority: int, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void,
	read_finish: *fn(stream: *InputStream, result: *AsyncResult, error: nullable **glib::Error) c::ssize,
	skip_async: *fn(stream: *InputStream, count: size, io_priority: int, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void,
	skip_finish: *fn(stream: *InputStream, result: *AsyncResult, error: nullable **glib::Error) c::ssize,
	close_async: *fn(stream: *InputStream, io_priority: int, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void,
	close_finish: *fn(stream: *InputStream, result: *AsyncResult, error: nullable **glib::Error) glib::boolean,
	_g_reserved1: *fn() void,
	_g_reserved2: *fn() void,
	_g_reserved3: *fn() void,
	_g_reserved4: *fn() void,
	_g_reserved5: *fn() void,
};
export type InputStreamPrivate = *opaque;
export type InputVector = struct {
	buffer: *opaque,
	size_: size,
};
export type ListModelInterface = struct {
	g_iface: gobject::TypeInterface,
	get_item_type: *fn(list: *ListModel) glib::Type,
	get_n_items: *fn(list: *ListModel) uint,
	get_item: *fn(list: *ListModel, position: uint) *opaque,
};
export type ListStoreClass = struct {
	parent_class: gobject::ObjectClass,
};
export type LoadableIconIface = struct {
	g_iface: gobject::TypeInterface,
	load: *fn(icon: *LoadableIcon, size_: int, type_: **c::char, cancellable: *Cancellable, error: nullable **glib::Error) *InputStream,
	load_async: *fn(icon: *LoadableIcon, size_: int, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void,
	load_finish: *fn(icon: *LoadableIcon, res: *AsyncResult, type_: **c::char, error: nullable **glib::Error) *InputStream,
};
export type MemoryInputStreamClass = struct {
	parent_class: InputStreamClass,
	_g_reserved1: *fn() void,
	_g_reserved2: *fn() void,
	_g_reserved3: *fn() void,
	_g_reserved4: *fn() void,
	_g_reserved5: *fn() void,
};
export type MemoryInputStreamPrivate = *opaque;
export type MemoryMonitorInterface = struct {
	g_iface: gobject::TypeInterface,
	low_memory_warning: *fn(monitor: *MemoryMonitor, level: MemoryMonitorWarningLevel) void,
};
export type MemoryOutputStreamClass = struct {
	parent_class: OutputStreamClass,
	_g_reserved1: *fn() void,
	_g_reserved2: *fn() void,
	_g_reserved3: *fn() void,
	_g_reserved4: *fn() void,
	_g_reserved5: *fn() void,
};
export type MemoryOutputStreamPrivate = *opaque;
export type MenuAttributeIterClass = struct {
	parent_class: gobject::ObjectClass,
	get_next: *fn(iter: *MenuAttributeIter, out_name: **c::char, value: **glib::Variant) glib::boolean,
};
export type MenuAttributeIterPrivate = *opaque;
export type MenuLinkIterClass = struct {
	parent_class: gobject::ObjectClass,
	get_next: *fn(iter: *MenuLinkIter, out_link: **c::char, value: **MenuModel) glib::boolean,
};
export type MenuLinkIterPrivate = *opaque;
export type MenuModelClass = struct {
	parent_class: gobject::ObjectClass,
	is_mutable: *fn(model: *MenuModel) glib::boolean,
	get_n_items: *fn(model: *MenuModel) int,
	get_item_attributes: *fn(model: *MenuModel, item_index: int, attributes: **glib::HashTable) void,
	iterate_item_attributes: *fn(model: *MenuModel, item_index: int) *MenuAttributeIter,
	get_item_attribute_value: *fn(model: *MenuModel, item_index: int, attribute: *c::char, expected_type: *glib::VariantType) *glib::Variant,
	get_item_links: *fn(model: *MenuModel, item_index: int, links: **glib::HashTable) void,
	iterate_item_links: *fn(model: *MenuModel, item_index: int) *MenuLinkIter,
	get_item_link: *fn(model: *MenuModel, item_index: int, link: *c::char) *MenuModel,
};
export type MenuModelPrivate = *opaque;
export type MountIface = struct {
	g_iface: gobject::TypeInterface,
	changed: *fn(mount: *Mount) void,
	unmounted: *fn(mount: *Mount) void,
	get_root: *fn(mount: *Mount) *File,
	get_name: *fn(mount: *Mount) *c::char,
	get_icon: *fn(mount: *Mount) *Icon,
	get_uuid: *fn(mount: *Mount) *c::char,
	get_volume: *fn(mount: *Mount) *Volume,
	get_drive: *fn(mount: *Mount) *Drive,
	can_unmount: *fn(mount: *Mount) glib::boolean,
	can_eject: *fn(mount: *Mount) glib::boolean,
	unmount: *fn(mount: *Mount, flags: MountUnmountFlags, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void,
	unmount_finish: *fn(mount: *Mount, result: *AsyncResult, error: nullable **glib::Error) glib::boolean,
	eject: *fn(mount: *Mount, flags: MountUnmountFlags, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void,
	eject_finish: *fn(mount: *Mount, result: *AsyncResult, error: nullable **glib::Error) glib::boolean,
	remount: *fn(mount: *Mount, flags: MountMountFlags, mount_operation: *MountOperation, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void,
	remount_finish: *fn(mount: *Mount, result: *AsyncResult, error: nullable **glib::Error) glib::boolean,
	guess_content_type: *fn(mount: *Mount, force_rescan: glib::boolean, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void,
	guess_content_type_finish: *fn(mount: *Mount, result: *AsyncResult, error: nullable **glib::Error) **c::char,
	guess_content_type_sync: *fn(mount: *Mount, force_rescan: glib::boolean, cancellable: *Cancellable, error: nullable **glib::Error) **c::char,
	pre_unmount: *fn(mount: *Mount) void,
	unmount_with_operation: *fn(mount: *Mount, flags: MountUnmountFlags, mount_operation: *MountOperation, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void,
	unmount_with_operation_finish: *fn(mount: *Mount, result: *AsyncResult, error: nullable **glib::Error) glib::boolean,
	eject_with_operation: *fn(mount: *Mount, flags: MountUnmountFlags, mount_operation: *MountOperation, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void,
	eject_with_operation_finish: *fn(mount: *Mount, result: *AsyncResult, error: nullable **glib::Error) glib::boolean,
	get_default_location: *fn(mount: *Mount) *File,
	get_sort_key: *fn(mount: *Mount) *c::char,
	get_symbolic_icon: *fn(mount: *Mount) *Icon,
};
export type MountOperationClass = struct {
	parent_class: gobject::ObjectClass,
	ask_password: *fn(op: *MountOperation, message: *c::char, default_user: *c::char, default_domain: *c::char, flags: AskPasswordFlags) void,
	ask_question: *fn(op: *MountOperation, message: *c::char, choices: **c::char) void,
	reply: *fn(op: *MountOperation, result: MountOperationResult) void,
	aborted: *fn(op: *MountOperation) void,
	show_processes: *fn(op: *MountOperation, message: *c::char, processes: *glib::Array, choices: **c::char) void,
	show_unmount_progress: *fn(op: *MountOperation, message: *c::char, time_left: i64, bytes_left: i64) void,
	_g_reserved1: *fn() void,
	_g_reserved2: *fn() void,
	_g_reserved3: *fn() void,
	_g_reserved4: *fn() void,
	_g_reserved5: *fn() void,
	_g_reserved6: *fn() void,
	_g_reserved7: *fn() void,
	_g_reserved8: *fn() void,
	_g_reserved9: *fn() void,
};
export type MountOperationPrivate = *opaque;
export type NativeSocketAddressClass = struct {
	parent_class: SocketAddressClass,
};
export type NativeSocketAddressPrivate = *opaque;
export type NativeVolumeMonitorClass = struct {
	parent_class: VolumeMonitorClass,
	get_mount_for_mount_path: *fn(mount_path: *c::char, cancellable: *Cancellable) *Mount,
};
export type NetworkAddressClass = struct {
	parent_class: gobject::ObjectClass,
};
export type NetworkAddressPrivate = *opaque;
export type NetworkMonitorInterface = struct {
	g_iface: gobject::TypeInterface,
	network_changed: *fn(monitor: *NetworkMonitor, network_available: glib::boolean) void,
	can_reach: *fn(monitor: *NetworkMonitor, connectable: *SocketConnectable, cancellable: *Cancellable, error: nullable **glib::Error) glib::boolean,
	can_reach_async: *fn(monitor: *NetworkMonitor, connectable: *SocketConnectable, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void,
	can_reach_finish: *fn(monitor: *NetworkMonitor, result: *AsyncResult, error: nullable **glib::Error) glib::boolean,
};
export type NetworkServiceClass = struct {
	parent_class: gobject::ObjectClass,
};
export type NetworkServicePrivate = *opaque;
export type OutputMessage = struct {
	address: *SocketAddress,
	vectors: *OutputVector,
	num_vectors: uint,
	bytes_sent: uint,
	control_messages: **SocketControlMessage,
	num_control_messages: uint,
};
export type OutputStreamClass = struct {
	parent_class: gobject::ObjectClass,
	write_fn: *fn(stream: *OutputStream, buffer: *opaque, count: size, cancellable: *Cancellable, error: nullable **glib::Error) c::ssize,
	splice: *fn(stream: *OutputStream, source: *InputStream, flags: OutputStreamSpliceFlags, cancellable: *Cancellable, error: nullable **glib::Error) c::ssize,
	flush: *fn(stream: *OutputStream, cancellable: *Cancellable, error: nullable **glib::Error) glib::boolean,
	close_fn: *fn(stream: *OutputStream, cancellable: *Cancellable, error: nullable **glib::Error) glib::boolean,
	write_async: *fn(stream: *OutputStream, buffer: *opaque, count: size, io_priority: int, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void,
	write_finish: *fn(stream: *OutputStream, result: *AsyncResult, error: nullable **glib::Error) c::ssize,
	splice_async: *fn(stream: *OutputStream, source: *InputStream, flags: OutputStreamSpliceFlags, io_priority: int, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void,
	splice_finish: *fn(stream: *OutputStream, result: *AsyncResult, error: nullable **glib::Error) c::ssize,
	flush_async: *fn(stream: *OutputStream, io_priority: int, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void,
	flush_finish: *fn(stream: *OutputStream, result: *AsyncResult, error: nullable **glib::Error) glib::boolean,
	close_async: *fn(stream: *OutputStream, io_priority: int, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void,
	close_finish: *fn(stream: *OutputStream, result: *AsyncResult, error: nullable **glib::Error) glib::boolean,
	writev_fn: *fn(stream: *OutputStream, vectors: *OutputVector, n_vectors: size, bytes_written: *size, cancellable: *Cancellable, error: nullable **glib::Error) glib::boolean,
	writev_async: *fn(stream: *OutputStream, vectors: *OutputVector, n_vectors: size, io_priority: int, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void,
	writev_finish: *fn(stream: *OutputStream, result: *AsyncResult, bytes_written: *size, error: nullable **glib::Error) glib::boolean,
	_g_reserved4: *fn() void,
	_g_reserved5: *fn() void,
	_g_reserved6: *fn() void,
	_g_reserved7: *fn() void,
	_g_reserved8: *fn() void,
};
export type OutputStreamPrivate = *opaque;
export type OutputVector = struct {
	buffer: *opaque,
	size_: size,
};
export type PermissionClass = struct {
	parent_class: gobject::ObjectClass,
	acquire: *fn(permission: *Permission, cancellable: *Cancellable, error: nullable **glib::Error) glib::boolean,
	acquire_async: *fn(permission: *Permission, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void,
	acquire_finish: *fn(permission: *Permission, result: *AsyncResult, error: nullable **glib::Error) glib::boolean,
	release: *fn(permission: *Permission, cancellable: *Cancellable, error: nullable **glib::Error) glib::boolean,
	release_async: *fn(permission: *Permission, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void,
	release_finish: *fn(permission: *Permission, result: *AsyncResult, error: nullable **glib::Error) glib::boolean,
	reserved: [16]*opaque,
};
export type PermissionPrivate = *opaque;
export type PollableInputStreamInterface = struct {
	g_iface: gobject::TypeInterface,
	can_poll: *fn(stream: *PollableInputStream) glib::boolean,
	is_readable: *fn(stream: *PollableInputStream) glib::boolean,
	create_source: *fn(stream: *PollableInputStream, cancellable: *Cancellable) *glib::Source,
	read_nonblocking: *fn(stream: *PollableInputStream, buffer: *opaque, count: size, error: nullable **glib::Error) c::ssize,
};
export type PollableOutputStreamInterface = struct {
	g_iface: gobject::TypeInterface,
	can_poll: *fn(stream: *PollableOutputStream) glib::boolean,
	is_writable: *fn(stream: *PollableOutputStream) glib::boolean,
	create_source: *fn(stream: *PollableOutputStream, cancellable: *Cancellable) *glib::Source,
	write_nonblocking: *fn(stream: *PollableOutputStream, buffer: *opaque, count: size, error: nullable **glib::Error) c::ssize,
	writev_nonblocking: *fn(stream: *PollableOutputStream, vectors: *OutputVector, n_vectors: size, bytes_written: *size, error: nullable **glib::Error) PollableReturn,
};
export type PowerProfileMonitorInterface = struct {
	g_iface: gobject::TypeInterface,
};
export type ProxyAddressClass = struct {
	parent_class: InetSocketAddressClass,
};
export type ProxyAddressEnumeratorClass = struct {
	parent_class: SocketAddressEnumeratorClass,
	_g_reserved1: *fn() void,
	_g_reserved2: *fn() void,
	_g_reserved3: *fn() void,
	_g_reserved4: *fn() void,
	_g_reserved5: *fn() void,
	_g_reserved6: *fn() void,
	_g_reserved7: *fn() void,
};
export type ProxyAddressEnumeratorPrivate = *opaque;
export type ProxyAddressPrivate = *opaque;
export type ProxyInterface = struct {
	g_iface: gobject::TypeInterface,
	connect: *fn(proxy: *Proxy, connection: *IOStream, proxy_address: *ProxyAddress, cancellable: *Cancellable, error: nullable **glib::Error) *IOStream,
	connect_async: *fn(proxy: *Proxy, connection: *IOStream, proxy_address: *ProxyAddress, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void,
	connect_finish: *fn(proxy: *Proxy, result: *AsyncResult, error: nullable **glib::Error) *IOStream,
	supports_hostname: *fn(proxy: *Proxy) glib::boolean,
};
export type ProxyResolverInterface = struct {
	g_iface: gobject::TypeInterface,
	is_supported: *fn(resolver: *ProxyResolver) glib::boolean,
	lookup: *fn(resolver: *ProxyResolver, uri: *c::char, cancellable: *Cancellable, error: nullable **glib::Error) **c::char,
	lookup_async: *fn(resolver: *ProxyResolver, uri: *c::char, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void,
	lookup_finish: *fn(resolver: *ProxyResolver, result: *AsyncResult, error: nullable **glib::Error) **c::char,
};
export type RemoteActionGroupInterface = struct {
	g_iface: gobject::TypeInterface,
	activate_action_full: *fn(remote: *RemoteActionGroup, action_name: *c::char, parameter: *glib::Variant, platform_data: *glib::Variant) void,
	change_action_state_full: *fn(remote: *RemoteActionGroup, action_name: *c::char, value: *glib::Variant, platform_data: *glib::Variant) void,
};
export type ResolverClass = struct {
	parent_class: gobject::ObjectClass,
	reload: *fn(resolver: *Resolver) void,
	lookup_by_name: *fn(resolver: *Resolver, hostname: *c::char, cancellable: *Cancellable, error: nullable **glib::Error) *glib::List,
	lookup_by_name_async: *fn(resolver: *Resolver, hostname: *c::char, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void,
	lookup_by_name_finish: *fn(resolver: *Resolver, result: *AsyncResult, error: nullable **glib::Error) *glib::List,
	lookup_by_address: *fn(resolver: *Resolver, address: *InetAddress, cancellable: *Cancellable, error: nullable **glib::Error) *c::char,
	lookup_by_address_async: *fn(resolver: *Resolver, address: *InetAddress, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void,
	lookup_by_address_finish: *fn(resolver: *Resolver, result: *AsyncResult, error: nullable **glib::Error) *c::char,
	lookup_service: *fn(resolver: *Resolver, rrname: *c::char, cancellable: *Cancellable, error: nullable **glib::Error) *glib::List,
	lookup_service_async: *fn(resolver: *Resolver, rrname: *c::char, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void,
	lookup_service_finish: *fn(resolver: *Resolver, result: *AsyncResult, error: nullable **glib::Error) *glib::List,
	lookup_records: *fn(resolver: *Resolver, rrname: *c::char, record_type: ResolverRecordType, cancellable: *Cancellable, error: nullable **glib::Error) *glib::List,
	lookup_records_async: *fn(resolver: *Resolver, rrname: *c::char, record_type: ResolverRecordType, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void,
	lookup_records_finish: *fn(resolver: *Resolver, result: *AsyncResult, error: nullable **glib::Error) *glib::List,
	lookup_by_name_with_flags_async: *fn(resolver: *Resolver, hostname: *c::char, flags: ResolverNameLookupFlags, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void,
	lookup_by_name_with_flags_finish: *fn(resolver: *Resolver, result: *AsyncResult, error: nullable **glib::Error) *glib::List,
	lookup_by_name_with_flags: *fn(resolver: *Resolver, hostname: *c::char, flags: ResolverNameLookupFlags, cancellable: *Cancellable, error: nullable **glib::Error) *glib::List,
};
export type ResolverPrivate = *opaque;
export type Resource = *opaque;
export @symbol("g_resource_new_from_data") fn resource_new_from_data(data: *glib::Bytes, error: nullable **glib::Error) *Resource;
export @symbol("g_resources_register") fn resource__register(resource: *Resource) void;
export @symbol("g_resources_unregister") fn resource__unregister(resource: *Resource) void;
export @symbol("g_resource_enumerate_children") fn resource_enumerate_children(resource: *Resource, path: *c::char, lookup_flags: ResourceLookupFlags, error: nullable **glib::Error) **c::char;
export @symbol("g_resource_get_info") fn resource_get_info(resource: *Resource, path: *c::char, lookup_flags: ResourceLookupFlags, size_: *size, flags: *u32, error: nullable **glib::Error) glib::boolean;
export @symbol("g_resource_lookup_data") fn resource_lookup_data(resource: *Resource, path: *c::char, lookup_flags: ResourceLookupFlags, error: nullable **glib::Error) *glib::Bytes;
export @symbol("g_resource_open_stream") fn resource_open_stream(resource: *Resource, path: *c::char, lookup_flags: ResourceLookupFlags, error: nullable **glib::Error) *InputStream;
export @symbol("g_resource_ref") fn resource_ref(resource: *Resource) *Resource;
export @symbol("g_resource_unref") fn resource_unref(resource: *Resource) void;
export @symbol("g_resource_load") fn resource_load(filename: *c::char, error: nullable **glib::Error) *Resource;
export type SeekableIface = struct {
	g_iface: gobject::TypeInterface,
	tell: *fn(seekable: *Seekable) i64,
	can_seek: *fn(seekable: *Seekable) glib::boolean,
	seek: *fn(seekable: *Seekable, offset_: i64, type_: glib::SeekType, cancellable: *Cancellable, error: nullable **glib::Error) glib::boolean,
	can_truncate: *fn(seekable: *Seekable) glib::boolean,
	truncate_fn: *fn(seekable: *Seekable, offset_: i64, cancellable: *Cancellable, error: nullable **glib::Error) glib::boolean,
};
export type SettingsBackendClass = struct {
	parent_class: gobject::ObjectClass,
	read: *fn(backend: *SettingsBackend, key: *c::char, expected_type: *glib::VariantType, default_value: glib::boolean) *glib::Variant,
	get_writable: *fn(backend: *SettingsBackend, key: *c::char) glib::boolean,
	write: *fn(backend: *SettingsBackend, key: *c::char, value: *glib::Variant, origin_tag: *opaque) glib::boolean,
	write_tree: *fn(backend: *SettingsBackend, tree: *glib::Tree, origin_tag: *opaque) glib::boolean,
	reset: *fn(backend: *SettingsBackend, key: *c::char, origin_tag: *opaque) void,
	subscribe: *fn(backend: *SettingsBackend, name: *c::char) void,
	unsubscribe: *fn(backend: *SettingsBackend, name: *c::char) void,
	sync: *fn(backend: *SettingsBackend) void,
	get_permission: *fn(backend: *SettingsBackend, path: *c::char) *Permission,
	read_user_value: *fn(backend: *SettingsBackend, key: *c::char, expected_type: *glib::VariantType) *glib::Variant,
	padding: [23]*opaque,
};
export type SettingsBackendPrivate = *opaque;
export type SettingsClass = struct {
	parent_class: gobject::ObjectClass,
	writable_changed: *fn(settings: *Settings, key: *c::char) void,
	changed: *fn(settings: *Settings, key: *c::char) void,
	writable_change_event: *fn(settings: *Settings, key: glib::Quark) glib::boolean,
	change_event: *fn(settings: *Settings, keys: *glib::Quark, n_keys: int) glib::boolean,
	padding: [20]*opaque,
};
export type SettingsPrivate = *opaque;
export type SettingsSchema = *opaque;
export @symbol("g_settings_schema_get_id") fn settings_schema_get_id(schema: *SettingsSchema) *c::char;
export @symbol("g_settings_schema_get_key") fn settings_schema_get_key(schema: *SettingsSchema, name: *c::char) *SettingsSchemaKey;
export @symbol("g_settings_schema_get_path") fn settings_schema_get_path(schema: *SettingsSchema) *c::char;
export @symbol("g_settings_schema_has_key") fn settings_schema_has_key(schema: *SettingsSchema, name: *c::char) glib::boolean;
export @symbol("g_settings_schema_list_children") fn settings_schema_list_children(schema: *SettingsSchema) **c::char;
export @symbol("g_settings_schema_list_keys") fn settings_schema_list_keys(schema: *SettingsSchema) **c::char;
export @symbol("g_settings_schema_ref") fn settings_schema_ref(schema: *SettingsSchema) *SettingsSchema;
export @symbol("g_settings_schema_unref") fn settings_schema_unref(schema: *SettingsSchema) void;
export type SettingsSchemaKey = *opaque;
export @symbol("g_settings_schema_key_get_default_value") fn settings_schema_key_get_default_value(key: *SettingsSchemaKey) *glib::Variant;
export @symbol("g_settings_schema_key_get_description") fn settings_schema_key_get_description(key: *SettingsSchemaKey) *c::char;
export @symbol("g_settings_schema_key_get_name") fn settings_schema_key_get_name(key: *SettingsSchemaKey) *c::char;
export @symbol("g_settings_schema_key_get_range") fn settings_schema_key_get_range(key: *SettingsSchemaKey) *glib::Variant;
export @symbol("g_settings_schema_key_get_summary") fn settings_schema_key_get_summary(key: *SettingsSchemaKey) *c::char;
export @symbol("g_settings_schema_key_get_value_type") fn settings_schema_key_get_value_type(key: *SettingsSchemaKey) *glib::VariantType;
export @symbol("g_settings_schema_key_range_check") fn settings_schema_key_range_check(key: *SettingsSchemaKey, value: *glib::Variant) glib::boolean;
export @symbol("g_settings_schema_key_ref") fn settings_schema_key_ref(key: *SettingsSchemaKey) *SettingsSchemaKey;
export @symbol("g_settings_schema_key_unref") fn settings_schema_key_unref(key: *SettingsSchemaKey) void;
export type SettingsSchemaSource = *opaque;
export @symbol("g_settings_schema_source_new_from_directory") fn settings_schema_source_new_from_directory(directory: *c::char, parent: *SettingsSchemaSource, trusted: glib::boolean, error: nullable **glib::Error) *SettingsSchemaSource;
export @symbol("g_settings_schema_source_list_schemas") fn settings_schema_source_list_schemas(source: *SettingsSchemaSource, recursive: glib::boolean, non_relocatable: ***c::char, relocatable: ***c::char) void;
export @symbol("g_settings_schema_source_lookup") fn settings_schema_source_lookup(source: *SettingsSchemaSource, schema_id: *c::char, recursive: glib::boolean) *SettingsSchema;
export @symbol("g_settings_schema_source_ref") fn settings_schema_source_ref(source: *SettingsSchemaSource) *SettingsSchemaSource;
export @symbol("g_settings_schema_source_unref") fn settings_schema_source_unref(source: *SettingsSchemaSource) void;
export @symbol("g_settings_schema_source_get_default") fn settings_schema_source_get_default() *SettingsSchemaSource;
export type SimpleActionGroupClass = struct {
	parent_class: gobject::ObjectClass,
	padding: [12]*opaque,
};
export type SimpleActionGroupPrivate = *opaque;
export type SimpleAsyncResultClass = *opaque;
export type SimpleProxyResolverClass = struct {
	parent_class: gobject::ObjectClass,
	_g_reserved1: *fn() void,
	_g_reserved2: *fn() void,
	_g_reserved3: *fn() void,
	_g_reserved4: *fn() void,
	_g_reserved5: *fn() void,
};
export type SimpleProxyResolverPrivate = *opaque;
export type SocketAddressClass = struct {
	parent_class: gobject::ObjectClass,
	get_family: *fn(address: *SocketAddress) SocketFamily,
	get_native_size: *fn(address: *SocketAddress) c::ssize,
	to_native: *fn(address: *SocketAddress, dest: *opaque, destlen: size, error: nullable **glib::Error) glib::boolean,
};
export type SocketAddressEnumeratorClass = struct {
	parent_class: gobject::ObjectClass,
	next: *fn(enumerator: *SocketAddressEnumerator, cancellable: *Cancellable, error: nullable **glib::Error) *SocketAddress,
	next_async: *fn(enumerator: *SocketAddressEnumerator, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void,
	next_finish: *fn(enumerator: *SocketAddressEnumerator, result: *AsyncResult, error: nullable **glib::Error) *SocketAddress,
};
export type SocketClass = struct {
	parent_class: gobject::ObjectClass,
	_g_reserved1: *fn() void,
	_g_reserved2: *fn() void,
	_g_reserved3: *fn() void,
	_g_reserved4: *fn() void,
	_g_reserved5: *fn() void,
	_g_reserved6: *fn() void,
	_g_reserved7: *fn() void,
	_g_reserved8: *fn() void,
	_g_reserved9: *fn() void,
	_g_reserved10: *fn() void,
};
export type SocketClientClass = struct {
	parent_class: gobject::ObjectClass,
	event: *fn(client: *SocketClient, event: SocketClientEvent, connectable: *SocketConnectable, connection: *IOStream) void,
	_g_reserved1: *fn() void,
	_g_reserved2: *fn() void,
	_g_reserved3: *fn() void,
	_g_reserved4: *fn() void,
};
export type SocketClientPrivate = *opaque;
export type SocketConnectableIface = struct {
	g_iface: gobject::TypeInterface,
	enumerate: *fn(connectable: *SocketConnectable) *SocketAddressEnumerator,
	proxy_enumerate: *fn(connectable: *SocketConnectable) *SocketAddressEnumerator,
	to_string: *fn(connectable: *SocketConnectable) *c::char,
};
export type SocketConnectionClass = struct {
	parent_class: IOStreamClass,
	_g_reserved1: *fn() void,
	_g_reserved2: *fn() void,
	_g_reserved3: *fn() void,
	_g_reserved4: *fn() void,
	_g_reserved5: *fn() void,
	_g_reserved6: *fn() void,
};
export type SocketConnectionPrivate = *opaque;
export type SocketControlMessageClass = struct {
	parent_class: gobject::ObjectClass,
	get_size: *fn(message: *SocketControlMessage) size,
	get_level: *fn(message: *SocketControlMessage) int,
	get_type: *fn(message: *SocketControlMessage) int,
	serialize: *fn(message: *SocketControlMessage, data: *opaque) void,
	deserialize: *fn(level: int, type_: int, size_: size, data: *opaque) *SocketControlMessage,
	_g_reserved1: *fn() void,
	_g_reserved2: *fn() void,
	_g_reserved3: *fn() void,
	_g_reserved4: *fn() void,
	_g_reserved5: *fn() void,
};
export type SocketControlMessagePrivate = *opaque;
export type SocketListenerClass = struct {
	parent_class: gobject::ObjectClass,
	changed: *fn(listener: *SocketListener) void,
	event: *fn(listener: *SocketListener, event: SocketListenerEvent, socket: *Socket) void,
	_g_reserved2: *fn() void,
	_g_reserved3: *fn() void,
	_g_reserved4: *fn() void,
	_g_reserved5: *fn() void,
	_g_reserved6: *fn() void,
};
export type SocketListenerPrivate = *opaque;
export type SocketPrivate = *opaque;
export type SocketServiceClass = struct {
	parent_class: SocketListenerClass,
	incoming: *fn(service: *SocketService, connection: *SocketConnection, source_object: *gobject::Object) glib::boolean,
	_g_reserved1: *fn() void,
	_g_reserved2: *fn() void,
	_g_reserved3: *fn() void,
	_g_reserved4: *fn() void,
	_g_reserved5: *fn() void,
	_g_reserved6: *fn() void,
};
export type SocketServicePrivate = *opaque;
export type SrvTarget = *opaque;
export @symbol("g_srv_target_new") fn srv_target_new(hostname: *c::char, port: u16, priority: u16, weight: u16) *SrvTarget;
export @symbol("g_srv_target_copy") fn srv_target_copy(target: *SrvTarget) *SrvTarget;
export @symbol("g_srv_target_free") fn srv_target_free(target: *SrvTarget) void;
export @symbol("g_srv_target_get_hostname") fn srv_target_get_hostname(target: *SrvTarget) *c::char;
export @symbol("g_srv_target_get_port") fn srv_target_get_port(target: *SrvTarget) u16;
export @symbol("g_srv_target_get_priority") fn srv_target_get_priority(target: *SrvTarget) u16;
export @symbol("g_srv_target_get_weight") fn srv_target_get_weight(target: *SrvTarget) u16;
export @symbol("g_srv_target_list_sort") fn srv_target_list_sort(targets: *glib::List) *glib::List;
export type StaticResource = struct {
	data: *u8,
	data_len: size,
	resource: *Resource,
	next: *StaticResource,
	padding: *opaque,
};
export @symbol("g_static_resource_fini") fn static_resource_fini(static_resource: *StaticResource) void;
export @symbol("g_static_resource_get_resource") fn static_resource_get_resource(static_resource: *StaticResource) *Resource;
export @symbol("g_static_resource_init") fn static_resource_init(static_resource: *StaticResource) void;
export type TaskClass = *opaque;
export type TcpConnectionClass = struct {
	parent_class: SocketConnectionClass,
};
export type TcpConnectionPrivate = *opaque;
export type TcpWrapperConnectionClass = struct {
	parent_class: TcpConnectionClass,
};
export type TcpWrapperConnectionPrivate = *opaque;
export type ThemedIconClass = *opaque;
export type ThreadedSocketServiceClass = struct {
	parent_class: SocketServiceClass,
	run: *fn(service: *ThreadedSocketService, connection: *SocketConnection, source_object: *gobject::Object) glib::boolean,
	_g_reserved1: *fn() void,
	_g_reserved2: *fn() void,
	_g_reserved3: *fn() void,
	_g_reserved4: *fn() void,
	_g_reserved5: *fn() void,
};
export type ThreadedSocketServicePrivate = *opaque;
export type TlsBackendInterface = struct {
	g_iface: gobject::TypeInterface,
	supports_tls: *fn(backend: *TlsBackend) glib::boolean,
	get_certificate_type: *fn() glib::Type,
	get_client_connection_type: *fn() glib::Type,
	get_server_connection_type: *fn() glib::Type,
	get_file_database_type: *fn() glib::Type,
	get_default_database: *fn(backend: *TlsBackend) *TlsDatabase,
	supports_dtls: *fn(backend: *TlsBackend) glib::boolean,
	get_dtls_client_connection_type: *fn() glib::Type,
	get_dtls_server_connection_type: *fn() glib::Type,
};
export type TlsCertificateClass = struct {
	parent_class: gobject::ObjectClass,
	verify: *fn(cert: *TlsCertificate, identity: *SocketConnectable, trusted_ca: *TlsCertificate) TlsCertificateFlags,
	padding: [8]*opaque,
};
export type TlsCertificatePrivate = *opaque;
export type TlsClientConnectionInterface = struct {
	g_iface: gobject::TypeInterface,
	copy_session_state: *fn(conn: *TlsClientConnection, source: *TlsClientConnection) void,
};
export type TlsConnectionClass = struct {
	parent_class: IOStreamClass,
	accept_certificate: *fn(connection: *TlsConnection, peer_cert: *TlsCertificate, errors: TlsCertificateFlags) glib::boolean,
	handshake: *fn(conn: *TlsConnection, cancellable: *Cancellable, error: nullable **glib::Error) glib::boolean,
	handshake_async: *fn(conn: *TlsConnection, io_priority: int, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void,
	handshake_finish: *fn(conn: *TlsConnection, result: *AsyncResult, error: nullable **glib::Error) glib::boolean,
	get_binding_data: *fn(conn: *TlsConnection, type_: TlsChannelBindingType, data: *glib::ByteArray, error: nullable **glib::Error) glib::boolean,
	get_negotiated_protocol: *fn(conn: *TlsConnection) *c::char,
	padding: [6]*opaque,
};
export type TlsConnectionPrivate = *opaque;
export type TlsDatabaseClass = struct {
	parent_class: gobject::ObjectClass,
	verify_chain: *fn(self: *TlsDatabase, chain: *TlsCertificate, purpose: *c::char, identity: *SocketConnectable, interaction: *TlsInteraction, flags: TlsDatabaseVerifyFlags, cancellable: *Cancellable, error: nullable **glib::Error) TlsCertificateFlags,
	verify_chain_async: *fn(self: *TlsDatabase, chain: *TlsCertificate, purpose: *c::char, identity: *SocketConnectable, interaction: *TlsInteraction, flags: TlsDatabaseVerifyFlags, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void,
	verify_chain_finish: *fn(self: *TlsDatabase, result: *AsyncResult, error: nullable **glib::Error) TlsCertificateFlags,
	create_certificate_handle: *fn(self: *TlsDatabase, certificate: *TlsCertificate) *c::char,
	lookup_certificate_for_handle: *fn(self: *TlsDatabase, handle: *c::char, interaction: *TlsInteraction, flags: TlsDatabaseLookupFlags, cancellable: *Cancellable, error: nullable **glib::Error) *TlsCertificate,
	lookup_certificate_for_handle_async: *fn(self: *TlsDatabase, handle: *c::char, interaction: *TlsInteraction, flags: TlsDatabaseLookupFlags, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void,
	lookup_certificate_for_handle_finish: *fn(self: *TlsDatabase, result: *AsyncResult, error: nullable **glib::Error) *TlsCertificate,
	lookup_certificate_issuer: *fn(self: *TlsDatabase, certificate: *TlsCertificate, interaction: *TlsInteraction, flags: TlsDatabaseLookupFlags, cancellable: *Cancellable, error: nullable **glib::Error) *TlsCertificate,
	lookup_certificate_issuer_async: *fn(self: *TlsDatabase, certificate: *TlsCertificate, interaction: *TlsInteraction, flags: TlsDatabaseLookupFlags, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void,
	lookup_certificate_issuer_finish: *fn(self: *TlsDatabase, result: *AsyncResult, error: nullable **glib::Error) *TlsCertificate,
	lookup_certificates_issued_by: *fn(self: *TlsDatabase, issuer_raw_dn: *glib::ByteArray, interaction: *TlsInteraction, flags: TlsDatabaseLookupFlags, cancellable: *Cancellable, error: nullable **glib::Error) *glib::List,
	lookup_certificates_issued_by_async: *fn(self: *TlsDatabase, issuer_raw_dn: *glib::ByteArray, interaction: *TlsInteraction, flags: TlsDatabaseLookupFlags, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void,
	lookup_certificates_issued_by_finish: *fn(self: *TlsDatabase, result: *AsyncResult, error: nullable **glib::Error) *glib::List,
	padding: [16]*opaque,
};
export type TlsDatabasePrivate = *opaque;
export type TlsFileDatabaseInterface = struct {
	g_iface: gobject::TypeInterface,
	padding: [8]*opaque,
};
export type TlsInteractionClass = struct {
	parent_class: gobject::ObjectClass,
	ask_password: *fn(interaction: *TlsInteraction, password: *TlsPassword, cancellable: *Cancellable, error: nullable **glib::Error) TlsInteractionResult,
	ask_password_async: *fn(interaction: *TlsInteraction, password: *TlsPassword, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void,
	ask_password_finish: *fn(interaction: *TlsInteraction, result: *AsyncResult, error: nullable **glib::Error) TlsInteractionResult,
	request_certificate: *fn(interaction: *TlsInteraction, connection: *TlsConnection, flags: TlsCertificateRequestFlags, cancellable: *Cancellable, error: nullable **glib::Error) TlsInteractionResult,
	request_certificate_async: *fn(interaction: *TlsInteraction, connection: *TlsConnection, flags: TlsCertificateRequestFlags, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void,
	request_certificate_finish: *fn(interaction: *TlsInteraction, result: *AsyncResult, error: nullable **glib::Error) TlsInteractionResult,
	padding: [21]*opaque,
};
export type TlsInteractionPrivate = *opaque;
export type TlsPasswordClass = struct {
	parent_class: gobject::ObjectClass,
	get_value: *fn(password: *TlsPassword, length: *size) *c::uchar,
	set_value: *fn(password: *TlsPassword, value: *c::uchar, length: c::ssize, destroy: glib::DestroyNotify) void,
	get_default_warning: *fn(password: *TlsPassword) *c::char,
	padding: [4]*opaque,
};
export type TlsPasswordPrivate = *opaque;
export type TlsServerConnectionInterface = struct {
	g_iface: gobject::TypeInterface,
};
export type UnixConnectionClass = struct {
	parent_class: SocketConnectionClass,
};
export type UnixConnectionPrivate = *opaque;
export type UnixCredentialsMessageClass = struct {
	parent_class: SocketControlMessageClass,
	_g_reserved1: *fn() void,
	_g_reserved2: *fn() void,
};
export type UnixCredentialsMessagePrivate = *opaque;
export type UnixFDListClass = struct {
	parent_class: gobject::ObjectClass,
	_g_reserved1: *fn() void,
	_g_reserved2: *fn() void,
	_g_reserved3: *fn() void,
	_g_reserved4: *fn() void,
	_g_reserved5: *fn() void,
};
export type UnixFDListPrivate = *opaque;
export type UnixFDMessageClass = struct {
	parent_class: SocketControlMessageClass,
	_g_reserved1: *fn() void,
	_g_reserved2: *fn() void,
};
export type UnixFDMessagePrivate = *opaque;
export type UnixInputStreamClass = struct {
	parent_class: InputStreamClass,
	_g_reserved1: *fn() void,
	_g_reserved2: *fn() void,
	_g_reserved3: *fn() void,
	_g_reserved4: *fn() void,
	_g_reserved5: *fn() void,
};
export type UnixInputStreamPrivate = *opaque;
export type UnixMountEntry = *opaque;
export type UnixMountMonitorClass = *opaque;
export type UnixMountPoint = *opaque;
export @symbol("g_unix_mount_point_compare") fn unix_mount_point_compare(mount1: *UnixMountPoint, mount2: *UnixMountPoint) int;
export @symbol("g_unix_mount_point_copy") fn unix_mount_point_copy(mount_point: *UnixMountPoint) *UnixMountPoint;
export @symbol("g_unix_mount_point_free") fn unix_mount_point_free(mount_point: *UnixMountPoint) void;
export @symbol("g_unix_mount_point_get_device_path") fn unix_mount_point_get_device_path(mount_point: *UnixMountPoint) *c::char;
export @symbol("g_unix_mount_point_get_fs_type") fn unix_mount_point_get_fs_type(mount_point: *UnixMountPoint) *c::char;
export @symbol("g_unix_mount_point_get_mount_path") fn unix_mount_point_get_mount_path(mount_point: *UnixMountPoint) *c::char;
export @symbol("g_unix_mount_point_get_options") fn unix_mount_point_get_options(mount_point: *UnixMountPoint) *c::char;
export @symbol("g_unix_mount_point_guess_can_eject") fn unix_mount_point_guess_can_eject(mount_point: *UnixMountPoint) glib::boolean;
export @symbol("g_unix_mount_point_guess_icon") fn unix_mount_point_guess_icon(mount_point: *UnixMountPoint) *Icon;
export @symbol("g_unix_mount_point_guess_name") fn unix_mount_point_guess_name(mount_point: *UnixMountPoint) *c::char;
export @symbol("g_unix_mount_point_guess_symbolic_icon") fn unix_mount_point_guess_symbolic_icon(mount_point: *UnixMountPoint) *Icon;
export @symbol("g_unix_mount_point_is_loopback") fn unix_mount_point_is_loopback(mount_point: *UnixMountPoint) glib::boolean;
export @symbol("g_unix_mount_point_is_readonly") fn unix_mount_point_is_readonly(mount_point: *UnixMountPoint) glib::boolean;
export @symbol("g_unix_mount_point_is_user_mountable") fn unix_mount_point_is_user_mountable(mount_point: *UnixMountPoint) glib::boolean;
export @symbol("g_unix_mount_point_at") fn unix_mount_point_at(mount_path: *c::char, time_read: *u64) *UnixMountPoint;
export type UnixOutputStreamClass = struct {
	parent_class: OutputStreamClass,
	_g_reserved1: *fn() void,
	_g_reserved2: *fn() void,
	_g_reserved3: *fn() void,
	_g_reserved4: *fn() void,
	_g_reserved5: *fn() void,
};
export type UnixOutputStreamPrivate = *opaque;
export type UnixSocketAddressClass = struct {
	parent_class: SocketAddressClass,
};
export type UnixSocketAddressPrivate = *opaque;
export type VfsClass = struct {
	parent_class: gobject::ObjectClass,
	is_active: *fn(vfs: *Vfs) glib::boolean,
	get_file_for_path: *fn(vfs: *Vfs, path: *c::char) *File,
	get_file_for_uri: *fn(vfs: *Vfs, uri: *c::char) *File,
	get_supported_uri_schemes: *fn(vfs: *Vfs) **c::char,
	parse_name: *fn(vfs: *Vfs, parse_name: *c::char) *File,
	local_file_add_info: *fn(vfs: *Vfs, filename: *c::char, device: u64, attribute_matcher: *FileAttributeMatcher, info: *FileInfo, cancellable: *Cancellable, extra_data: **opaque, free_extra_data: *glib::DestroyNotify) void,
	add_writable_namespaces: *fn(vfs: *Vfs, list: *FileAttributeInfoList) void,
	local_file_set_attributes: *fn(vfs: *Vfs, filename: *c::char, info: *FileInfo, flags: FileQueryInfoFlags, cancellable: *Cancellable, error: nullable **glib::Error) glib::boolean,
	local_file_removed: *fn(vfs: *Vfs, filename: *c::char) void,
	local_file_moved: *fn(vfs: *Vfs, source: *c::char, dest: *c::char) void,
	deserialize_icon: *fn(vfs: *Vfs, value: *glib::Variant) *Icon,
	_g_reserved1: *fn() void,
	_g_reserved2: *fn() void,
	_g_reserved3: *fn() void,
	_g_reserved4: *fn() void,
	_g_reserved5: *fn() void,
	_g_reserved6: *fn() void,
};
export type VolumeIface = struct {
	g_iface: gobject::TypeInterface,
	changed: *fn(volume: *Volume) void,
	removed: *fn(volume: *Volume) void,
	get_name: *fn(volume: *Volume) *c::char,
	get_icon: *fn(volume: *Volume) *Icon,
	get_uuid: *fn(volume: *Volume) *c::char,
	get_drive: *fn(volume: *Volume) *Drive,
	get_mount: *fn(volume: *Volume) *Mount,
	can_mount: *fn(volume: *Volume) glib::boolean,
	can_eject: *fn(volume: *Volume) glib::boolean,
	mount_fn: *fn(volume: *Volume, flags: MountMountFlags, mount_operation: *MountOperation, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void,
	mount_finish: *fn(volume: *Volume, result: *AsyncResult, error: nullable **glib::Error) glib::boolean,
	eject: *fn(volume: *Volume, flags: MountUnmountFlags, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void,
	eject_finish: *fn(volume: *Volume, result: *AsyncResult, error: nullable **glib::Error) glib::boolean,
	get_identifier: *fn(volume: *Volume, kind: *c::char) *c::char,
	enumerate_identifiers: *fn(volume: *Volume) **c::char,
	should_automount: *fn(volume: *Volume) glib::boolean,
	get_activation_root: *fn(volume: *Volume) *File,
	eject_with_operation: *fn(volume: *Volume, flags: MountUnmountFlags, mount_operation: *MountOperation, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void,
	eject_with_operation_finish: *fn(volume: *Volume, result: *AsyncResult, error: nullable **glib::Error) glib::boolean,
	get_sort_key: *fn(volume: *Volume) *c::char,
	get_symbolic_icon: *fn(volume: *Volume) *Icon,
};
export type VolumeMonitorClass = struct {
	parent_class: gobject::ObjectClass,
	volume_added: *fn(volume_monitor: *VolumeMonitor, volume: *Volume) void,
	volume_removed: *fn(volume_monitor: *VolumeMonitor, volume: *Volume) void,
	volume_changed: *fn(volume_monitor: *VolumeMonitor, volume: *Volume) void,
	mount_added: *fn(volume_monitor: *VolumeMonitor, mount: *Mount) void,
	mount_removed: *fn(volume_monitor: *VolumeMonitor, mount: *Mount) void,
	mount_pre_unmount: *fn(volume_monitor: *VolumeMonitor, mount: *Mount) void,
	mount_changed: *fn(volume_monitor: *VolumeMonitor, mount: *Mount) void,
	drive_connected: *fn(volume_monitor: *VolumeMonitor, drive: *Drive) void,
	drive_disconnected: *fn(volume_monitor: *VolumeMonitor, drive: *Drive) void,
	drive_changed: *fn(volume_monitor: *VolumeMonitor, drive: *Drive) void,
	is_supported: *fn() glib::boolean,
	get_connected_drives: *fn(volume_monitor: *VolumeMonitor) *glib::List,
	get_volumes: *fn(volume_monitor: *VolumeMonitor) *glib::List,
	get_mounts: *fn(volume_monitor: *VolumeMonitor) *glib::List,
	get_volume_for_uuid: *fn(volume_monitor: *VolumeMonitor, uuid: *c::char) *Volume,
	get_mount_for_uuid: *fn(volume_monitor: *VolumeMonitor, uuid: *c::char) *Mount,
	adopt_orphan_mount: *fn(mount: *Mount, volume_monitor: *VolumeMonitor) *Volume,
	drive_eject_button: *fn(volume_monitor: *VolumeMonitor, drive: *Drive) void,
	drive_stop_button: *fn(volume_monitor: *VolumeMonitor, drive: *Drive) void,
	_g_reserved1: *fn() void,
	_g_reserved2: *fn() void,
	_g_reserved3: *fn() void,
	_g_reserved4: *fn() void,
	_g_reserved5: *fn() void,
	_g_reserved6: *fn() void,
};
export type ZlibCompressorClass = struct {
	parent_class: gobject::ObjectClass,
};
export type ZlibDecompressorClass = struct {
	parent_class: gobject::ObjectClass,
};
export type BusType = enum uint {
	STARTER = -1,
	NONE = 0,
	SYSTEM = 1,
	SESSION = 2,
};
export type ConverterResult = enum uint {
	ERROR = 0,
	CONVERTED = 1,
	FINISHED = 2,
	FLUSHED = 3,
};
export type CredentialsType = enum uint {
	INVALID = 0,
	LINUX_UCRED = 1,
	FREEBSD_CMSGCRED = 2,
	OPENBSD_SOCKPEERCRED = 3,
	SOLARIS_UCRED = 4,
	NETBSD_UNPCBID = 5,
	APPLE_XUCRED = 6,
	WIN32_PID = 7,
};
export type DBusError = enum uint {
	FAILED = 0,
	NO_MEMORY = 1,
	SERVICE_UNKNOWN = 2,
	NAME_HAS_NO_OWNER = 3,
	NO_REPLY = 4,
	IO_ERROR = 5,
	BAD_ADDRESS = 6,
	NOT_SUPPORTED = 7,
	LIMITS_EXCEEDED = 8,
	ACCESS_DENIED = 9,
	AUTH_FAILED = 10,
	NO_SERVER = 11,
	TIMEOUT = 12,
	NO_NETWORK = 13,
	ADDRESS_IN_USE = 14,
	DISCONNECTED = 15,
	INVALID_ARGS = 16,
	FILE_NOT_FOUND = 17,
	FILE_EXISTS = 18,
	UNKNOWN_METHOD = 19,
	TIMED_OUT = 20,
	MATCH_RULE_NOT_FOUND = 21,
	MATCH_RULE_INVALID = 22,
	SPAWN_EXEC_FAILED = 23,
	SPAWN_FORK_FAILED = 24,
	SPAWN_CHILD_EXITED = 25,
	SPAWN_CHILD_SIGNALED = 26,
	SPAWN_FAILED = 27,
	SPAWN_SETUP_FAILED = 28,
	SPAWN_CONFIG_INVALID = 29,
	SPAWN_SERVICE_INVALID = 30,
	SPAWN_SERVICE_NOT_FOUND = 31,
	SPAWN_PERMISSIONS_INVALID = 32,
	SPAWN_FILE_INVALID = 33,
	SPAWN_NO_MEMORY = 34,
	UNIX_PROCESS_ID_UNKNOWN = 35,
	INVALID_SIGNATURE = 36,
	INVALID_FILE_CONTENT = 37,
	SELINUX_SECURITY_CONTEXT_UNKNOWN = 38,
	ADT_AUDIT_DATA_UNKNOWN = 39,
	OBJECT_PATH_IN_USE = 40,
	UNKNOWN_OBJECT = 41,
	UNKNOWN_INTERFACE = 42,
	UNKNOWN_PROPERTY = 43,
	PROPERTY_READ_ONLY = 44,
};
export @symbol("g_dbus_error_encode_gerror") fn dbus_error_encode_gerror(error: *glib::Error) *c::char;
export @symbol("g_dbus_error_get_remote_error") fn dbus_error_get_remote_error(error: *glib::Error) *c::char;
export @symbol("g_dbus_error_is_remote_error") fn dbus_error_is_remote_error(error: *glib::Error) glib::boolean;
export @symbol("g_dbus_error_new_for_dbus_error") fn dbus_error_new_for_dbus_error(dbus_error_name: *c::char, dbus_error_message: *c::char) *glib::Error;
export @symbol("g_dbus_error_quark") fn dbus_error_quark() glib::Quark;
export @symbol("g_dbus_error_register_error") fn dbus_error_register_error(error_domain: glib::Quark, error_code: int, dbus_error_name: *c::char) glib::boolean;
export @symbol("g_dbus_error_register_error_domain") fn dbus_error_register_error_domain(error_domain_quark_name: *c::char, quark_volatile: *size, entries: *DBusErrorEntry, num_entries: uint) void;
export @symbol("g_dbus_error_set_dbus_error") fn dbus_error_set_dbus_error(error: **glib::Error, dbus_error_name: *c::char, dbus_error_message: *c::char, format: *c::char, ...) void;
export @symbol("g_dbus_error_set_dbus_error_valist") fn dbus_error_set_dbus_error_valist(error: **glib::Error, dbus_error_name: *c::char, dbus_error_message: *c::char, format: *c::char, var_args: valist) void;
export @symbol("g_dbus_error_strip_remote_error") fn dbus_error_strip_remote_error(error: *glib::Error) glib::boolean;
export @symbol("g_dbus_error_unregister_error") fn dbus_error_unregister_error(error_domain: glib::Quark, error_code: int, dbus_error_name: *c::char) glib::boolean;
export type DBusMessageByteOrder = enum uint {
	BIG_ENDIAN = 66,
	LITTLE_ENDIAN = 108,
};
export type DBusMessageHeaderField = enum uint {
	INVALID = 0,
	PATH = 1,
	INTERFACE = 2,
	MEMBER = 3,
	ERROR_NAME = 4,
	REPLY_SERIAL = 5,
	DESTINATION = 6,
	SENDER = 7,
	SIGNATURE = 8,
	NUM_UNIX_FDS = 9,
};
export type DBusMessageType = enum uint {
	INVALID = 0,
	METHOD_CALL = 1,
	METHOD_RETURN = 2,
	ERROR = 3,
	SIGNAL = 4,
};
export type DataStreamByteOrder = enum uint {
	BIG_ENDIAN = 0,
	LITTLE_ENDIAN = 1,
	HOST_ENDIAN = 2,
};
export type DataStreamNewlineType = enum uint {
	LF = 0,
	CR = 1,
	CR_LF = 2,
	ANY = 3,
};
export type DriveStartStopType = enum uint {
	UNKNOWN = 0,
	SHUTDOWN = 1,
	NETWORK = 2,
	MULTIDISK = 3,
	PASSWORD = 4,
};
export type EmblemOrigin = enum uint {
	UNKNOWN = 0,
	DEVICE = 1,
	LIVEMETADATA = 2,
	TAG = 3,
};
export type FileAttributeStatus = enum uint {
	UNSET = 0,
	SET = 1,
	ERROR_SETTING = 2,
};
export type FileAttributeType = enum uint {
	INVALID = 0,
	STRING = 1,
	BYTE_STRING = 2,
	BOOLEAN = 3,
	UINT32 = 4,
	INT32 = 5,
	UINT64 = 6,
	INT64 = 7,
	OBJECT = 8,
	STRINGV = 9,
};
export type FileMonitorEvent = enum uint {
	CHANGED = 0,
	CHANGES_DONE_HINT = 1,
	DELETED = 2,
	CREATED = 3,
	ATTRIBUTE_CHANGED = 4,
	PRE_UNMOUNT = 5,
	UNMOUNTED = 6,
	MOVED = 7,
	RENAMED = 8,
	MOVED_IN = 9,
	MOVED_OUT = 10,
};
export type FileType = enum uint {
	UNKNOWN = 0,
	REGULAR = 1,
	DIRECTORY = 2,
	SYMBOLIC_LINK = 3,
	SPECIAL = 4,
	SHORTCUT = 5,
	MOUNTABLE = 6,
};
export type FilesystemPreviewType = enum uint {
	IF_ALWAYS = 0,
	IF_LOCAL = 1,
	NEVER = 2,
};
export type IOErrorEnum = enum uint {
	FAILED = 0,
	NOT_FOUND = 1,
	EXISTS = 2,
	IS_DIRECTORY = 3,
	NOT_DIRECTORY = 4,
	NOT_EMPTY = 5,
	NOT_REGULAR_FILE = 6,
	NOT_SYMBOLIC_LINK = 7,
	NOT_MOUNTABLE_FILE = 8,
	FILENAME_TOO_LONG = 9,
	INVALID_FILENAME = 10,
	TOO_MANY_LINKS = 11,
	NO_SPACE = 12,
	INVALID_ARGUMENT = 13,
	PERMISSION_DENIED = 14,
	NOT_SUPPORTED = 15,
	NOT_MOUNTED = 16,
	ALREADY_MOUNTED = 17,
	CLOSED = 18,
	CANCELLED = 19,
	PENDING = 20,
	READ_ONLY = 21,
	CANT_CREATE_BACKUP = 22,
	WRONG_ETAG = 23,
	TIMED_OUT = 24,
	WOULD_RECURSE = 25,
	BUSY = 26,
	WOULD_BLOCK = 27,
	HOST_NOT_FOUND = 28,
	WOULD_MERGE = 29,
	FAILED_HANDLED = 30,
	TOO_MANY_OPEN_FILES = 31,
	NOT_INITIALIZED = 32,
	ADDRESS_IN_USE = 33,
	PARTIAL_INPUT = 34,
	INVALID_DATA = 35,
	DBUS_ERROR = 36,
	HOST_UNREACHABLE = 37,
	NETWORK_UNREACHABLE = 38,
	CONNECTION_REFUSED = 39,
	PROXY_FAILED = 40,
	PROXY_AUTH_FAILED = 41,
	PROXY_NEED_AUTH = 42,
	PROXY_NOT_ALLOWED = 43,
	BROKEN_PIPE = 44,
	CONNECTION_CLOSED = 44,
	NOT_CONNECTED = 45,
	MESSAGE_TOO_LARGE = 46,
	NO_SUCH_DEVICE = 47,
};
export type IOModuleScopeFlags = enum uint {
	NONE = 0,
	BLOCK_DUPLICATES = 1,
};
export type MemoryMonitorWarningLevel = enum uint {
	LOW = 50,
	MEDIUM = 100,
	CRITICAL = 255,
};
export type MountOperationResult = enum uint {
	HANDLED = 0,
	ABORTED = 1,
	UNHANDLED = 2,
};
export type NetworkConnectivity = enum uint {
	LOCAL = 1,
	LIMITED = 2,
	PORTAL = 3,
	FULL = 4,
};
export type NotificationPriority = enum uint {
	NORMAL = 0,
	LOW = 1,
	HIGH = 2,
	URGENT = 3,
};
export type PasswordSave = enum uint {
	NEVER = 0,
	FOR_SESSION = 1,
	PERMANENTLY = 2,
};
export type PollableReturn = enum uint {
	FAILED = 0,
	OK = 1,
	WOULD_BLOCK = -27,
};
export type ResolverError = enum uint {
	NOT_FOUND = 0,
	TEMPORARY_FAILURE = 1,
	INTERNAL = 2,
};
export @symbol("g_resolver_error_quark") fn resolver_error_quark() glib::Quark;
export type ResolverRecordType = enum uint {
	SRV = 1,
	MX = 2,
	TXT = 3,
	SOA = 4,
	NS = 5,
};
export type ResourceError = enum uint {
	NOT_FOUND = 0,
	INTERNAL = 1,
};
export @symbol("g_resource_error_quark") fn resource_error_quark() glib::Quark;
export type SocketClientEvent = enum uint {
	RESOLVING = 0,
	RESOLVED = 1,
	CONNECTING = 2,
	CONNECTED = 3,
	PROXY_NEGOTIATING = 4,
	PROXY_NEGOTIATED = 5,
	TLS_HANDSHAKING = 6,
	TLS_HANDSHAKED = 7,
	COMPLETE = 8,
};
export type SocketFamily = enum uint {
	INVALID = 0,
	UNIX = 1,
	IPV4 = 2,
	IPV6 = 10,
};
export type SocketListenerEvent = enum uint {
	BINDING = 0,
	BOUND = 1,
	LISTENING = 2,
	LISTENED = 3,
};
export type SocketProtocol = enum uint {
	UNKNOWN = -1,
	DEFAULT = 0,
	TCP = 6,
	UDP = 17,
	SCTP = 132,
};
export type SocketType = enum uint {
	INVALID = 0,
	STREAM = 1,
	DATAGRAM = 2,
	SEQPACKET = 3,
};
export type TlsAuthenticationMode = enum uint {
	NONE = 0,
	REQUESTED = 1,
	REQUIRED = 2,
};
export type TlsCertificateRequestFlags = enum uint {
	NONE = 0,
};
export type TlsChannelBindingError = enum uint {
	NOT_IMPLEMENTED = 0,
	INVALID_STATE = 1,
	NOT_AVAILABLE = 2,
	NOT_SUPPORTED = 3,
	GENERAL_ERROR = 4,
};
export @symbol("g_tls_channel_binding_error_quark") fn tls_channel_binding_error_quark() glib::Quark;
export type TlsChannelBindingType = enum uint {
	UNIQUE = 0,
	SERVER_END_POINT = 1,
	EXPORTER = 2,
};
export type TlsDatabaseLookupFlags = enum uint {
	NONE = 0,
	KEYPAIR = 1,
};
export type TlsError = enum uint {
	UNAVAILABLE = 0,
	MISC = 1,
	BAD_CERTIFICATE = 2,
	NOT_TLS = 3,
	HANDSHAKE = 4,
	CERTIFICATE_REQUIRED = 5,
	EOF = 6,
	INAPPROPRIATE_FALLBACK = 7,
	BAD_CERTIFICATE_PASSWORD = 8,
};
export @symbol("g_tls_error_quark") fn tls_error_quark() glib::Quark;
export type TlsInteractionResult = enum uint {
	UNHANDLED = 0,
	HANDLED = 1,
	FAILED = 2,
};
export type TlsProtocolVersion = enum uint {
	UNKNOWN = 0,
	SSL_3_0 = 1,
	TLS_1_0 = 2,
	TLS_1_1 = 3,
	TLS_1_2 = 4,
	TLS_1_3 = 5,
	DTLS_1_0 = 201,
	DTLS_1_2 = 202,
};
export type TlsRehandshakeMode = enum uint {
	NEVER = 0,
	SAFELY = 1,
	UNSAFELY = 2,
};
export type UnixSocketAddressType = enum uint {
	INVALID = 0,
	ANONYMOUS = 1,
	PATH = 2,
	ABSTRACT = 3,
	ABSTRACT_PADDED = 4,
};
export type ZlibCompressorFormat = enum uint {
	ZLIB = 0,
	GZIP = 1,
	RAW = 2,
};
export @symbol("g_bus_get") fn bus_get(bus_type: BusType, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void;
export @symbol("g_bus_get_finish") fn bus_get_finish(res: *AsyncResult, error: nullable **glib::Error) *DBusConnection;
export @symbol("g_bus_get_sync") fn bus_get_sync(bus_type: BusType, cancellable: *Cancellable, error: nullable **glib::Error) *DBusConnection;
export @symbol("g_bus_own_name") fn bus_own_name(bus_type: BusType, name: *c::char, flags: BusNameOwnerFlags, bus_acquired_handler: BusAcquiredCallback, name_acquired_handler: BusNameAcquiredCallback, name_lost_handler: BusNameLostCallback, user_data: *opaque, user_data_free_func: glib::DestroyNotify) uint;
export @symbol("g_bus_own_name_on_connection") fn bus_own_name_on_connection(connection: *DBusConnection, name: *c::char, flags: BusNameOwnerFlags, name_acquired_handler: BusNameAcquiredCallback, name_lost_handler: BusNameLostCallback, user_data: *opaque, user_data_free_func: glib::DestroyNotify) uint;
export @symbol("g_bus_own_name_on_connection_with_closures") fn bus_own_name_on_connection_with_closures(connection: *DBusConnection, name: *c::char, flags: BusNameOwnerFlags, name_acquired_closure: *gobject::Closure, name_lost_closure: *gobject::Closure) uint;
export @symbol("g_bus_own_name_with_closures") fn bus_own_name_with_closures(bus_type: BusType, name: *c::char, flags: BusNameOwnerFlags, bus_acquired_closure: *gobject::Closure, name_acquired_closure: *gobject::Closure, name_lost_closure: *gobject::Closure) uint;
export @symbol("g_bus_unown_name") fn bus_unown_name(owner_id: uint) void;
export @symbol("g_bus_unwatch_name") fn bus_unwatch_name(watcher_id: uint) void;
export @symbol("g_bus_watch_name") fn bus_watch_name(bus_type: BusType, name: *c::char, flags: BusNameWatcherFlags, name_appeared_handler: BusNameAppearedCallback, name_vanished_handler: BusNameVanishedCallback, user_data: *opaque, user_data_free_func: glib::DestroyNotify) uint;
export @symbol("g_bus_watch_name_on_connection") fn bus_watch_name_on_connection(connection: *DBusConnection, name: *c::char, flags: BusNameWatcherFlags, name_appeared_handler: BusNameAppearedCallback, name_vanished_handler: BusNameVanishedCallback, user_data: *opaque, user_data_free_func: glib::DestroyNotify) uint;
export @symbol("g_bus_watch_name_on_connection_with_closures") fn bus_watch_name_on_connection_with_closures(connection: *DBusConnection, name: *c::char, flags: BusNameWatcherFlags, name_appeared_closure: *gobject::Closure, name_vanished_closure: *gobject::Closure) uint;
export @symbol("g_bus_watch_name_with_closures") fn bus_watch_name_with_closures(bus_type: BusType, name: *c::char, flags: BusNameWatcherFlags, name_appeared_closure: *gobject::Closure, name_vanished_closure: *gobject::Closure) uint;
export @symbol("g_content_type_can_be_executable") fn content_type_can_be_executable(type_: *c::char) glib::boolean;
export @symbol("g_content_type_equals") fn content_type_equals(type1: *c::char, type2: *c::char) glib::boolean;
export @symbol("g_content_type_from_mime_type") fn content_type_from_mime_type(mime_type: *c::char) *c::char;
export @symbol("g_content_type_get_description") fn content_type_get_description(type_: *c::char) *c::char;
export @symbol("g_content_type_get_generic_icon_name") fn content_type_get_generic_icon_name(type_: *c::char) *c::char;
export @symbol("g_content_type_get_icon") fn content_type_get_icon(type_: *c::char) *Icon;
export @symbol("g_content_type_get_mime_dirs") fn content_type_get_mime_dirs() **c::char;
export @symbol("g_content_type_get_mime_type") fn content_type_get_mime_type(type_: *c::char) *c::char;
export @symbol("g_content_type_get_symbolic_icon") fn content_type_get_symbolic_icon(type_: *c::char) *Icon;
export @symbol("g_content_type_guess") fn content_type_guess(filename: *c::char, data: *c::uchar, data_size: size, result_uncertain: *glib::boolean) *c::char;
export @symbol("g_content_type_guess_for_tree") fn content_type_guess_for_tree(root: *File) **c::char;
export @symbol("g_content_type_is_a") fn content_type_is_a(type_: *c::char, supertype: *c::char) glib::boolean;
export @symbol("g_content_type_is_mime_type") fn content_type_is_mime_type(type_: *c::char, mime_type: *c::char) glib::boolean;
export @symbol("g_content_type_is_unknown") fn content_type_is_unknown(type_: *c::char) glib::boolean;
export @symbol("g_content_type_set_mime_dirs") fn content_type_set_mime_dirs(dirs: **c::char) void;
export @symbol("g_content_types_get_registered") fn content_types_get_registered() *glib::List;
export @symbol("g_dbus_address_escape_value") fn dbus_address_escape_value(string: *c::char) *c::char;
export @symbol("g_dbus_address_get_for_bus_sync") fn dbus_address_get_for_bus_sync(bus_type: BusType, cancellable: *Cancellable, error: nullable **glib::Error) *c::char;
export @symbol("g_dbus_address_get_stream") fn dbus_address_get_stream(address: *c::char, cancellable: *Cancellable, callback: AsyncReadyCallback, user_data: *opaque) void;
export @symbol("g_dbus_address_get_stream_finish") fn dbus_address_get_stream_finish(res: *AsyncResult, out_guid: **c::char, error: nullable **glib::Error) *IOStream;
export @symbol("g_dbus_address_get_stream_sync") fn dbus_address_get_stream_sync(address: *c::char, out_guid: **c::char, cancellable: *Cancellable, error: nullable **glib::Error) *IOStream;
export @symbol("g_dbus_escape_object_path") fn dbus_escape_object_path(s: *c::char) *c::char;
export @symbol("g_dbus_escape_object_path_bytestring") fn dbus_escape_object_path_bytestring(bytes: *u8) *c::char;
export @symbol("g_dbus_generate_guid") fn dbus_generate_guid() *c::char;
export @symbol("g_dbus_gvalue_to_gvariant") fn dbus_gvalue_to_gvariant(gvalue: *gobject::Value, type_: *glib::VariantType) *glib::Variant;
export @symbol("g_dbus_gvariant_to_gvalue") fn dbus_gvariant_to_gvalue(value: *glib::Variant, out_gvalue: *gobject::Value) void;
export @symbol("g_dbus_is_address") fn dbus_is_address(string: *c::char) glib::boolean;
export @symbol("g_dbus_is_error_name") fn dbus_is_error_name(string: *c::char) glib::boolean;
export @symbol("g_dbus_is_guid") fn dbus_is_guid(string: *c::char) glib::boolean;
export @symbol("g_dbus_is_interface_name") fn dbus_is_interface_name(string: *c::char) glib::boolean;
export @symbol("g_dbus_is_member_name") fn dbus_is_member_name(string: *c::char) glib::boolean;
export @symbol("g_dbus_is_name") fn dbus_is_name(string: *c::char) glib::boolean;
export @symbol("g_dbus_is_supported_address") fn dbus_is_supported_address(string: *c::char, error: nullable **glib::Error) glib::boolean;
export @symbol("g_dbus_is_unique_name") fn dbus_is_unique_name(string: *c::char) glib::boolean;
export @symbol("g_dbus_unescape_object_path") fn dbus_unescape_object_path(s: *c::char) *u8;
export @symbol("g_io_error_from_errno") fn io_error_from_errno(err_no: int) IOErrorEnum;
export @symbol("g_io_error_from_file_error") fn io_error_from_file_error(file_error: glib::FileError) IOErrorEnum;
export @symbol("g_io_error_quark") fn io_error_quark() glib::Quark;
export @symbol("g_io_modules_load_all_in_directory") fn io_modules_load_all_in_directory(dirname: *c::char) *glib::List;
export @symbol("g_io_modules_load_all_in_directory_with_scope") fn io_modules_load_all_in_directory_with_scope(dirname: *c::char, scope: *IOModuleScope) *glib::List;
export @symbol("g_io_modules_scan_all_in_directory") fn io_modules_scan_all_in_directory(dirname: *c::char) void;
export @symbol("g_io_modules_scan_all_in_directory_with_scope") fn io_modules_scan_all_in_directory_with_scope(dirname: *c::char, scope: *IOModuleScope) void;
export @symbol("g_io_scheduler_cancel_all_jobs") fn io_scheduler_cancel_all_jobs() void;
export @symbol("g_io_scheduler_push_job") fn io_scheduler_push_job(job_func: IOSchedulerJobFunc, user_data: *opaque, notify: glib::DestroyNotify, io_priority: int, cancellable: *Cancellable) void;
export @symbol("g_keyfile_settings_backend_new") fn keyfile_settings_backend_new(filename: *c::char, root_path: *c::char, root_group: *c::char) *SettingsBackend;
export @symbol("g_memory_settings_backend_new") fn memory_settings_backend_new() *SettingsBackend;
export @symbol("g_networking_init") fn networking_init() void;
export @symbol("g_null_settings_backend_new") fn null_settings_backend_new() *SettingsBackend;
export @symbol("g_pollable_source_new") fn pollable_source_new(pollable_stream: *gobject::Object) *glib::Source;
export @symbol("g_pollable_source_new_full") fn pollable_source_new_full(pollable_stream: *opaque, child_source: *glib::Source, cancellable: *Cancellable) *glib::Source;
export @symbol("g_pollable_stream_read") fn pollable_stream_read(stream: *InputStream, buffer: *opaque, count: size, blocking: glib::boolean, cancellable: *Cancellable, error: nullable **glib::Error) c::ssize;
export @symbol("g_pollable_stream_write") fn pollable_stream_write(stream: *OutputStream, buffer: *opaque, count: size, blocking: glib::boolean, cancellable: *Cancellable, error: nullable **glib::Error) c::ssize;
export @symbol("g_pollable_stream_write_all") fn pollable_stream_write_all(stream: *OutputStream, buffer: *opaque, count: size, blocking: glib::boolean, bytes_written: *size, cancellable: *Cancellable, error: nullable **glib::Error) glib::boolean;
export @symbol("g_resources_enumerate_children") fn resources_enumerate_children(path: *c::char, lookup_flags: ResourceLookupFlags, error: nullable **glib::Error) **c::char;
export @symbol("g_resources_get_info") fn resources_get_info(path: *c::char, lookup_flags: ResourceLookupFlags, size_: *size, flags: *u32, error: nullable **glib::Error) glib::boolean;
export @symbol("g_resources_lookup_data") fn resources_lookup_data(path: *c::char, lookup_flags: ResourceLookupFlags, error: nullable **glib::Error) *glib::Bytes;
export @symbol("g_resources_open_stream") fn resources_open_stream(path: *c::char, lookup_flags: ResourceLookupFlags, error: nullable **glib::Error) *InputStream;
export @symbol("g_simple_async_report_error_in_idle") fn simple_async_report_error_in_idle(object: *gobject::Object, callback: AsyncReadyCallback, user_data: *opaque, domain: glib::Quark, code: int, format: *c::char, ...) void;
export @symbol("g_simple_async_report_gerror_in_idle") fn simple_async_report_gerror_in_idle(object: *gobject::Object, callback: AsyncReadyCallback, user_data: *opaque, error: *glib::Error) void;
export @symbol("g_simple_async_report_take_gerror_in_idle") fn simple_async_report_take_gerror_in_idle(object: *gobject::Object, callback: AsyncReadyCallback, user_data: *opaque, error: *glib::Error) void;
export @symbol("g_unix_is_mount_path_system_internal") fn unix_is_mount_path_system_internal(mount_path: *c::char) glib::boolean;
export @symbol("g_unix_is_system_device_path") fn unix_is_system_device_path(device_path: *c::char) glib::boolean;
export @symbol("g_unix_is_system_fs_type") fn unix_is_system_fs_type(fs_type: *c::char) glib::boolean;
export @symbol("g_unix_mount_at") fn unix_mount_at(mount_path: *c::char, time_read: *u64) *UnixMountEntry;
export @symbol("g_unix_mount_compare") fn unix_mount_compare(mount1: *UnixMountEntry, mount2: *UnixMountEntry) int;
export @symbol("g_unix_mount_copy") fn unix_mount_copy(mount_entry: *UnixMountEntry) *UnixMountEntry;
export @symbol("g_unix_mount_for") fn unix_mount_for(file_path: *c::char, time_read: *u64) *UnixMountEntry;
export @symbol("g_unix_mount_free") fn unix_mount_free(mount_entry: *UnixMountEntry) void;
export @symbol("g_unix_mount_get_device_path") fn unix_mount_get_device_path(mount_entry: *UnixMountEntry) *c::char;
export @symbol("g_unix_mount_get_fs_type") fn unix_mount_get_fs_type(mount_entry: *UnixMountEntry) *c::char;
export @symbol("g_unix_mount_get_mount_path") fn unix_mount_get_mount_path(mount_entry: *UnixMountEntry) *c::char;
export @symbol("g_unix_mount_get_options") fn unix_mount_get_options(mount_entry: *UnixMountEntry) *c::char;
export @symbol("g_unix_mount_get_root_path") fn unix_mount_get_root_path(mount_entry: *UnixMountEntry) *c::char;
export @symbol("g_unix_mount_guess_can_eject") fn unix_mount_guess_can_eject(mount_entry: *UnixMountEntry) glib::boolean;
export @symbol("g_unix_mount_guess_icon") fn unix_mount_guess_icon(mount_entry: *UnixMountEntry) *Icon;
export @symbol("g_unix_mount_guess_name") fn unix_mount_guess_name(mount_entry: *UnixMountEntry) *c::char;
export @symbol("g_unix_mount_guess_should_display") fn unix_mount_guess_should_display(mount_entry: *UnixMountEntry) glib::boolean;
export @symbol("g_unix_mount_guess_symbolic_icon") fn unix_mount_guess_symbolic_icon(mount_entry: *UnixMountEntry) *Icon;
export @symbol("g_unix_mount_is_readonly") fn unix_mount_is_readonly(mount_entry: *UnixMountEntry) glib::boolean;
export @symbol("g_unix_mount_is_system_internal") fn unix_mount_is_system_internal(mount_entry: *UnixMountEntry) glib::boolean;
export @symbol("g_unix_mount_points_changed_since") fn unix_mount_points_changed_since(time: u64) glib::boolean;
export @symbol("g_unix_mount_points_get") fn unix_mount_points_get(time_read: *u64) *glib::List;
export @symbol("g_unix_mounts_changed_since") fn unix_mounts_changed_since(time: u64) glib::boolean;
export @symbol("g_unix_mounts_get") fn unix_mounts_get(time_read: *u64) *glib::List;
export type AppInfoCreateFlags = enum uint {
	NONE = 0,
	NEEDS_TERMINAL = 1,
	SUPPORTS_URIS = 2,
	SUPPORTS_STARTUP_NOTIFICATION = 4,
};
export type ApplicationFlags = enum uint {
	FLAGS_NONE = 0,
	DEFAULT_FLAGS = 0,
	IS_SERVICE = 1,
	IS_LAUNCHER = 2,
	HANDLES_OPEN = 4,
	HANDLES_COMMAND_LINE = 8,
	SEND_ENVIRONMENT = 16,
	NON_UNIQUE = 32,
	CAN_OVERRIDE_APP_ID = 64,
	ALLOW_REPLACEMENT = 128,
	REPLACE = 256,
};
export type AskPasswordFlags = enum uint {
	NEED_PASSWORD = 1,
	NEED_USERNAME = 2,
	NEED_DOMAIN = 4,
	SAVING_SUPPORTED = 8,
	ANONYMOUS_SUPPORTED = 16,
	TCRYPT = 32,
};
export type BusNameOwnerFlags = enum uint {
	NONE = 0,
	ALLOW_REPLACEMENT = 1,
	REPLACE = 2,
	DO_NOT_QUEUE = 4,
};
export type BusNameWatcherFlags = enum uint {
	NONE = 0,
	AUTO_START = 1,
};
export type ConverterFlags = enum uint {
	NONE = 0,
	INPUT_AT_END = 1,
	FLUSH = 2,
};
export type DBusCallFlags = enum uint {
	NONE = 0,
	NO_AUTO_START = 1,
	ALLOW_INTERACTIVE_AUTHORIZATION = 2,
};
export type DBusCapabilityFlags = enum uint {
	NONE = 0,
	UNIX_FD_PASSING = 1,
};
export type DBusConnectionFlags = enum uint {
	NONE = 0,
	AUTHENTICATION_CLIENT = 1,
	AUTHENTICATION_SERVER = 2,
	AUTHENTICATION_ALLOW_ANONYMOUS = 4,
	MESSAGE_BUS_CONNECTION = 8,
	DELAY_MESSAGE_PROCESSING = 16,
	AUTHENTICATION_REQUIRE_SAME_USER = 32,
	CROSS_NAMESPACE = 64,
};
export type DBusInterfaceSkeletonFlags = enum uint {
	NONE = 0,
	HANDLE_METHOD_INVOCATIONS_IN_THREAD = 1,
};
export type DBusMessageFlags = enum uint {
	NONE = 0,
	NO_REPLY_EXPECTED = 1,
	NO_AUTO_START = 2,
	ALLOW_INTERACTIVE_AUTHORIZATION = 4,
};
export type DBusObjectManagerClientFlags = enum uint {
	NONE = 0,
	DO_NOT_AUTO_START = 1,
};
export type DBusPropertyInfoFlags = enum uint {
	NONE = 0,
	READABLE = 1,
	WRITABLE = 2,
};
export type DBusProxyFlags = enum uint {
	NONE = 0,
	DO_NOT_LOAD_PROPERTIES = 1,
	DO_NOT_CONNECT_SIGNALS = 2,
	DO_NOT_AUTO_START = 4,
	GET_INVALIDATED_PROPERTIES = 8,
	DO_NOT_AUTO_START_AT_CONSTRUCTION = 16,
	NO_MATCH_RULE = 32,
};
export type DBusSendMessageFlags = enum uint {
	NONE = 0,
	PRESERVE_SERIAL = 1,
};
export type DBusServerFlags = enum uint {
	NONE = 0,
	RUN_IN_THREAD = 1,
	AUTHENTICATION_ALLOW_ANONYMOUS = 2,
	AUTHENTICATION_REQUIRE_SAME_USER = 4,
};
export type DBusSignalFlags = enum uint {
	NONE = 0,
	NO_MATCH_RULE = 1,
	MATCH_ARG0_NAMESPACE = 2,
	MATCH_ARG0_PATH = 4,
};
export type DBusSubtreeFlags = enum uint {
	NONE = 0,
	DISPATCH_TO_UNENUMERATED_NODES = 1,
};
export type DriveStartFlags = enum uint {
	NONE = 0,
};
export type FileAttributeInfoFlags = enum uint {
	NONE = 0,
	COPY_WITH_FILE = 1,
	COPY_WHEN_MOVED = 2,
};
export type FileCopyFlags = enum uint {
	NONE = 0,
	OVERWRITE = 1,
	BACKUP = 2,
	NOFOLLOW_SYMLINKS = 4,
	ALL_METADATA = 8,
	NO_FALLBACK_FOR_MOVE = 16,
	TARGET_DEFAULT_PERMS = 32,
};
export type FileCreateFlags = enum uint {
	NONE = 0,
	PRIVATE = 1,
	REPLACE_DESTINATION = 2,
};
export type FileMeasureFlags = enum uint {
	NONE = 0,
	REPORT_ANY_ERROR = 2,
	APPARENT_SIZE = 4,
	NO_XDEV = 8,
};
export type FileMonitorFlags = enum uint {
	NONE = 0,
	WATCH_MOUNTS = 1,
	SEND_MOVED = 2,
	WATCH_HARD_LINKS = 4,
	WATCH_MOVES = 8,
};
export type FileQueryInfoFlags = enum uint {
	NONE = 0,
	NOFOLLOW_SYMLINKS = 1,
};
export type IOStreamSpliceFlags = enum uint {
	NONE = 0,
	CLOSE_STREAM1 = 1,
	CLOSE_STREAM2 = 2,
	WAIT_FOR_BOTH = 4,
};
export type MountMountFlags = enum uint {
	NONE = 0,
};
export type MountUnmountFlags = enum uint {
	NONE = 0,
	FORCE = 1,
};
export type OutputStreamSpliceFlags = enum uint {
	NONE = 0,
	CLOSE_SOURCE = 1,
	CLOSE_TARGET = 2,
};
export type ResolverNameLookupFlags = enum uint {
	DEFAULT = 0,
	IPV4_ONLY = 1,
	IPV6_ONLY = 2,
};
export type ResourceFlags = enum uint {
	NONE = 0,
	COMPRESSED = 1,
};
export type ResourceLookupFlags = enum uint {
	NONE = 0,
};
export type SettingsBindFlags = enum uint {
	DEFAULT = 0,
	GET = 1,
	SET = 2,
	NO_SENSITIVITY = 4,
	GET_NO_CHANGES = 8,
	INVERT_BOOLEAN = 16,
};
export type SocketMsgFlags = enum uint {
	NONE = 0,
	OOB = 1,
	PEEK = 2,
	DONTROUTE = 4,
};
export type SubprocessFlags = enum uint {
	NONE = 0,
	STDIN_PIPE = 1,
	STDIN_INHERIT = 2,
	STDOUT_PIPE = 4,
	STDOUT_SILENCE = 8,
	STDERR_PIPE = 16,
	STDERR_SILENCE = 32,
	STDERR_MERGE = 64,
	INHERIT_FDS = 128,
	SEARCH_PATH_FROM_ENVP = 256,
};
export type TestDBusFlags = enum uint {
	NONE = 0,
};
export type TlsCertificateFlags = enum uint {
	NO_FLAGS = 0,
	UNKNOWN_CA = 1,
	BAD_IDENTITY = 2,
	NOT_ACTIVATED = 4,
	EXPIRED = 8,
	REVOKED = 16,
	INSECURE = 32,
	GENERIC_ERROR = 64,
	VALIDATE_ALL = 127,
};
export type TlsDatabaseVerifyFlags = enum uint {
	NONE = 0,
};
export type TlsPasswordFlags = enum uint {
	NONE = 0,
	RETRY = 2,
	MANY_TRIES = 4,
	FINAL_TRY = 8,
	PKCS11_USER = 16,
	PKCS11_SECURITY_OFFICER = 32,
	PKCS11_CONTEXT_SPECIFIC = 64,
};
export type AsyncReadyCallback = *fn(source_object: *gobject::Object, res: *AsyncResult, data: *opaque) void;
export type BusAcquiredCallback = *fn(connection: *DBusConnection, name: *c::char, user_data: *opaque) void;
export type BusNameAcquiredCallback = *fn(connection: *DBusConnection, name: *c::char, user_data: *opaque) void;
export type BusNameAppearedCallback = *fn(connection: *DBusConnection, name: *c::char, name_owner: *c::char, user_data: *opaque) void;
export type BusNameLostCallback = *fn(connection: *DBusConnection, name: *c::char, user_data: *opaque) void;
export type BusNameVanishedCallback = *fn(connection: *DBusConnection, name: *c::char, user_data: *opaque) void;
export type CancellableSourceFunc = *fn(cancellable: *Cancellable, data: *opaque) glib::boolean;
export type DBusInterfaceGetPropertyFunc = *fn(connection: *DBusConnection, sender: *c::char, object_path: *c::char, interface_name: *c::char, property_name: *c::char, error: **glib::Error, user_data: *opaque) *glib::Variant;
export type DBusInterfaceMethodCallFunc = *fn(connection: *DBusConnection, sender: *c::char, object_path: *c::char, interface_name: *c::char, method_name: *c::char, parameters: *glib::Variant, invocation: *DBusMethodInvocation, user_data: *opaque) void;
export type DBusInterfaceSetPropertyFunc = *fn(connection: *DBusConnection, sender: *c::char, object_path: *c::char, interface_name: *c::char, property_name: *c::char, value: *glib::Variant, error: **glib::Error, user_data: *opaque) glib::boolean;
export type DBusMessageFilterFunction = *fn(connection: *DBusConnection, message: *DBusMessage, incoming: glib::boolean, user_data: *opaque) *DBusMessage;
export type DBusProxyTypeFunc = *fn(manager: *DBusObjectManagerClient, object_path: *c::char, interface_name: *c::char, data: *opaque) glib::Type;
export type DBusSignalCallback = *fn(connection: *DBusConnection, sender_name: *c::char, object_path: *c::char, interface_name: *c::char, signal_name: *c::char, parameters: *glib::Variant, user_data: *opaque) void;
export type DBusSubtreeDispatchFunc = *fn(connection: *DBusConnection, sender: *c::char, object_path: *c::char, interface_name: *c::char, node: *c::char, out_user_data: **opaque, user_data: *opaque) *DBusInterfaceVTable;
export type DBusSubtreeEnumerateFunc = *fn(connection: *DBusConnection, sender: *c::char, object_path: *c::char, user_data: *opaque) **c::char;
export type DBusSubtreeIntrospectFunc = *fn(connection: *DBusConnection, sender: *c::char, object_path: *c::char, node: *c::char, user_data: *opaque) **DBusInterfaceInfo;
export type DatagramBasedSourceFunc = *fn(datagram_based: *DatagramBased, condition: glib::IOCondition, data: *opaque) glib::boolean;
export type DesktopAppLaunchCallback = *fn(appinfo: *DesktopAppInfo, pid: glib::Pid, user_data: *opaque) void;
export type FileMeasureProgressCallback = *fn(reporting: glib::boolean, current_size: u64, num_dirs: u64, num_files: u64, data: *opaque) void;
export type FileProgressCallback = *fn(current_num_bytes: i64, total_num_bytes: i64, data: *opaque) void;
export type FileReadMoreCallback = *fn(file_contents: *c::char, file_size: i64, callback_data: *opaque) glib::boolean;
export type IOSchedulerJobFunc = *fn(job: *IOSchedulerJob, cancellable: *Cancellable, data: *opaque) glib::boolean;
export type PollableSourceFunc = *fn(pollable_stream: *gobject::Object, data: *opaque) glib::boolean;
export type ReallocFunc = *fn(data: *opaque, size_: size) *opaque;
export type SettingsBindGetMapping = *fn(value: *gobject::Value, variant: *glib::Variant, user_data: *opaque) glib::boolean;
export type SettingsBindSetMapping = *fn(value: *gobject::Value, expected_type: *glib::VariantType, user_data: *opaque) *glib::Variant;
export type SettingsGetMapping = *fn(value: *glib::Variant, result: **opaque, user_data: *opaque) glib::boolean;
export type SimpleAsyncThreadFunc = *fn(res: *SimpleAsyncResult, object: *gobject::Object, cancellable: *Cancellable) void;
export type SocketSourceFunc = *fn(socket: *Socket, condition: glib::IOCondition, data: *opaque) glib::boolean;
export type TaskThreadFunc = *fn(task: *Task, source_object: *opaque, task_data: *opaque, cancellable: *Cancellable) void;
export type VfsFileLookupFunc = *fn(vfs: *Vfs, identifier: *c::char, user_data: *opaque) *File;
