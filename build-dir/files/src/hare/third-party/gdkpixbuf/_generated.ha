use glib;
use types::c;
use gio;
use gobject;
use gmodule;
use types::libc;
export type Pixbuf = *opaque;
export @symbol("gdk_pixbuf_new") fn pixbuf_new(colorspace: Colorspace, has_alpha: glib::boolean, bits_per_sample: int, width: int, height: int) *Pixbuf;
export @symbol("gdk_pixbuf_new_from_bytes") fn pixbuf_new_from_bytes(data: *glib::Bytes, colorspace: Colorspace, has_alpha: glib::boolean, bits_per_sample: int, width: int, height: int, rowstride: int) *Pixbuf;
export @symbol("gdk_pixbuf_new_from_data") fn pixbuf_new_from_data(data: *c::uchar, colorspace: Colorspace, has_alpha: glib::boolean, bits_per_sample: int, width: int, height: int, rowstride: int, destroy_fn: PixbufDestroyNotify, destroy_fn_data: *opaque) *Pixbuf;
export @symbol("gdk_pixbuf_new_from_file") fn pixbuf_new_from_file(filename: *c::char, error: nullable **glib::Error) *Pixbuf;
export @symbol("gdk_pixbuf_new_from_file_at_scale") fn pixbuf_new_from_file_at_scale(filename: *c::char, width: int, height: int, preserve_aspect_ratio: glib::boolean, error: nullable **glib::Error) *Pixbuf;
export @symbol("gdk_pixbuf_new_from_file_at_size") fn pixbuf_new_from_file_at_size(filename: *c::char, width: int, height: int, error: nullable **glib::Error) *Pixbuf;
export @symbol("gdk_pixbuf_new_from_inline") fn pixbuf_new_from_inline(data_length: int, data: *u8, copy_pixels: glib::boolean, error: nullable **glib::Error) *Pixbuf;
export @symbol("gdk_pixbuf_new_from_resource") fn pixbuf_new_from_resource(resource_path: *c::char, error: nullable **glib::Error) *Pixbuf;
export @symbol("gdk_pixbuf_new_from_resource_at_scale") fn pixbuf_new_from_resource_at_scale(resource_path: *c::char, width: int, height: int, preserve_aspect_ratio: glib::boolean, error: nullable **glib::Error) *Pixbuf;
export @symbol("gdk_pixbuf_new_from_stream") fn pixbuf_new_from_stream(stream: *gio::InputStream, cancellable: *gio::Cancellable, error: nullable **glib::Error) *Pixbuf;
export @symbol("gdk_pixbuf_new_from_stream_at_scale") fn pixbuf_new_from_stream_at_scale(stream: *gio::InputStream, width: int, height: int, preserve_aspect_ratio: glib::boolean, cancellable: *gio::Cancellable, error: nullable **glib::Error) *Pixbuf;
export @symbol("gdk_pixbuf_new_from_stream_finish") fn pixbuf_new_from_stream_finish(async_result: *gio::AsyncResult, error: nullable **glib::Error) *Pixbuf;
export @symbol("gdk_pixbuf_new_from_xpm_data") fn pixbuf_new_from_xpm_data(data: **c::char) *Pixbuf;
export @symbol("gdk_pixbuf_add_alpha") fn pixbuf_add_alpha(pixbuf: *Pixbuf, substitute_color: glib::boolean, r: c::uchar, g: c::uchar, b: c::uchar) *Pixbuf;
export @symbol("gdk_pixbuf_apply_embedded_orientation") fn pixbuf_apply_embedded_orientation(src: *Pixbuf) *Pixbuf;
export @symbol("gdk_pixbuf_composite") fn pixbuf_composite(src: *Pixbuf, dest: *Pixbuf, dest_x: int, dest_y: int, dest_width: int, dest_height: int, offset_x: f64, offset_y: f64, scale_x: f64, scale_y: f64, interp_type: InterpType, overall_alpha: int) void;
export @symbol("gdk_pixbuf_composite_color") fn pixbuf_composite_color(src: *Pixbuf, dest: *Pixbuf, dest_x: int, dest_y: int, dest_width: int, dest_height: int, offset_x: f64, offset_y: f64, scale_x: f64, scale_y: f64, interp_type: InterpType, overall_alpha: int, check_x: int, check_y: int, check_size: int, color1: u32, color2: u32) void;
export @symbol("gdk_pixbuf_composite_color_simple") fn pixbuf_composite_color_simple(src: *Pixbuf, dest_width: int, dest_height: int, interp_type: InterpType, overall_alpha: int, check_size: int, color1: u32, color2: u32) *Pixbuf;
export @symbol("gdk_pixbuf_copy") fn pixbuf_copy(pixbuf: *Pixbuf) *Pixbuf;
export @symbol("gdk_pixbuf_copy_area") fn pixbuf_copy_area(src_pixbuf: *Pixbuf, src_x: int, src_y: int, width: int, height: int, dest_pixbuf: *Pixbuf, dest_x: int, dest_y: int) void;
export @symbol("gdk_pixbuf_copy_options") fn pixbuf_copy_options(src_pixbuf: *Pixbuf, dest_pixbuf: *Pixbuf) glib::boolean;
export @symbol("gdk_pixbuf_fill") fn pixbuf_fill(pixbuf: *Pixbuf, pixel: u32) void;
export @symbol("gdk_pixbuf_flip") fn pixbuf_flip(src: *Pixbuf, horizontal: glib::boolean) *Pixbuf;
export @symbol("gdk_pixbuf_get_bits_per_sample") fn pixbuf_get_bits_per_sample(pixbuf: *Pixbuf) int;
export @symbol("gdk_pixbuf_get_byte_length") fn pixbuf_get_byte_length(pixbuf: *Pixbuf) size;
export @symbol("gdk_pixbuf_get_colorspace") fn pixbuf_get_colorspace(pixbuf: *Pixbuf) Colorspace;
export @symbol("gdk_pixbuf_get_has_alpha") fn pixbuf_get_has_alpha(pixbuf: *Pixbuf) glib::boolean;
export @symbol("gdk_pixbuf_get_height") fn pixbuf_get_height(pixbuf: *Pixbuf) int;
export @symbol("gdk_pixbuf_get_n_channels") fn pixbuf_get_n_channels(pixbuf: *Pixbuf) int;
export @symbol("gdk_pixbuf_get_option") fn pixbuf_get_option(pixbuf: *Pixbuf, key: *c::char) *c::char;
export @symbol("gdk_pixbuf_get_options") fn pixbuf_get_options(pixbuf: *Pixbuf) *glib::HashTable;
export @symbol("gdk_pixbuf_get_pixels") fn pixbuf_get_pixels(pixbuf: *Pixbuf) *c::uchar;
export @symbol("gdk_pixbuf_get_pixels_with_length") fn pixbuf_get_pixels_with_length(pixbuf: *Pixbuf, length: *uint) *c::uchar;
export @symbol("gdk_pixbuf_get_rowstride") fn pixbuf_get_rowstride(pixbuf: *Pixbuf) int;
export @symbol("gdk_pixbuf_get_width") fn pixbuf_get_width(pixbuf: *Pixbuf) int;
export @symbol("gdk_pixbuf_new_subpixbuf") fn pixbuf_new_subpixbuf(src_pixbuf: *Pixbuf, src_x: int, src_y: int, width: int, height: int) *Pixbuf;
export @symbol("gdk_pixbuf_read_pixel_bytes") fn pixbuf_read_pixel_bytes(pixbuf: *Pixbuf) *glib::Bytes;
export @symbol("gdk_pixbuf_read_pixels") fn pixbuf_read_pixels(pixbuf: *Pixbuf) *u8;
export @symbol("gdk_pixbuf_ref") fn pixbuf_ref(pixbuf: *Pixbuf) *Pixbuf;
export @symbol("gdk_pixbuf_remove_option") fn pixbuf_remove_option(pixbuf: *Pixbuf, key: *c::char) glib::boolean;
export @symbol("gdk_pixbuf_rotate_simple") fn pixbuf_rotate_simple(src: *Pixbuf, angle: PixbufRotation) *Pixbuf;
export @symbol("gdk_pixbuf_saturate_and_pixelate") fn pixbuf_saturate_and_pixelate(src: *Pixbuf, dest: *Pixbuf, saturation: f32, pixelate: glib::boolean) void;
export @symbol("gdk_pixbuf_save") fn pixbuf_save(pixbuf: *Pixbuf, filename: *c::char, type_: *c::char, error: **glib::Error, ...) glib::boolean;
export @symbol("gdk_pixbuf_save_to_buffer") fn pixbuf_save_to_buffer(pixbuf: *Pixbuf, buffer: **c::char, buffer_size: *size, type_: *c::char, error: **glib::Error, ...) glib::boolean;
export @symbol("gdk_pixbuf_save_to_bufferv") fn pixbuf_save_to_bufferv(pixbuf: *Pixbuf, buffer: **c::char, buffer_size: *size, type_: *c::char, option_keys: **c::char, option_values: **c::char, error: nullable **glib::Error) glib::boolean;
export @symbol("gdk_pixbuf_save_to_callback") fn pixbuf_save_to_callback(pixbuf: *Pixbuf, save_func: PixbufSaveFunc, user_data: *opaque, type_: *c::char, error: **glib::Error, ...) glib::boolean;
export @symbol("gdk_pixbuf_save_to_callbackv") fn pixbuf_save_to_callbackv(pixbuf: *Pixbuf, save_func: PixbufSaveFunc, user_data: *opaque, type_: *c::char, option_keys: **c::char, option_values: **c::char, error: nullable **glib::Error) glib::boolean;
export @symbol("gdk_pixbuf_save_to_stream") fn pixbuf_save_to_stream(pixbuf: *Pixbuf, stream: *gio::OutputStream, type_: *c::char, cancellable: *gio::Cancellable, error: **glib::Error, ...) glib::boolean;
export @symbol("gdk_pixbuf_save_to_stream_async") fn pixbuf_save_to_stream_async(pixbuf: *Pixbuf, stream: *gio::OutputStream, type_: *c::char, cancellable: *gio::Cancellable, callback: gio::AsyncReadyCallback, user_data: *opaque, ...) void;
export @symbol("gdk_pixbuf_save_to_streamv") fn pixbuf_save_to_streamv(pixbuf: *Pixbuf, stream: *gio::OutputStream, type_: *c::char, option_keys: **c::char, option_values: **c::char, cancellable: *gio::Cancellable, error: nullable **glib::Error) glib::boolean;
export @symbol("gdk_pixbuf_save_to_streamv_async") fn pixbuf_save_to_streamv_async(pixbuf: *Pixbuf, stream: *gio::OutputStream, type_: *c::char, option_keys: **c::char, option_values: **c::char, cancellable: *gio::Cancellable, callback: gio::AsyncReadyCallback, user_data: *opaque) void;
export @symbol("gdk_pixbuf_savev") fn pixbuf_savev(pixbuf: *Pixbuf, filename: *c::char, type_: *c::char, option_keys: **c::char, option_values: **c::char, error: nullable **glib::Error) glib::boolean;
export @symbol("gdk_pixbuf_scale") fn pixbuf_scale(src: *Pixbuf, dest: *Pixbuf, dest_x: int, dest_y: int, dest_width: int, dest_height: int, offset_x: f64, offset_y: f64, scale_x: f64, scale_y: f64, interp_type: InterpType) void;
export @symbol("gdk_pixbuf_scale_simple") fn pixbuf_scale_simple(src: *Pixbuf, dest_width: int, dest_height: int, interp_type: InterpType) *Pixbuf;
export @symbol("gdk_pixbuf_set_option") fn pixbuf_set_option(pixbuf: *Pixbuf, key: *c::char, value: *c::char) glib::boolean;
export @symbol("gdk_pixbuf_unref") fn pixbuf_unref(pixbuf: *Pixbuf) void;
export @symbol("gdk_pixbuf_calculate_rowstride") fn pixbuf_calculate_rowstride(colorspace: Colorspace, has_alpha: glib::boolean, bits_per_sample: int, width: int, height: int) int;
export @symbol("gdk_pixbuf_get_file_info") fn pixbuf_get_file_info(filename: *c::char, width: *int, height: *int) *PixbufFormat;
export @symbol("gdk_pixbuf_get_file_info_async") fn pixbuf_get_file_info_async(filename: *c::char, cancellable: *gio::Cancellable, callback: gio::AsyncReadyCallback, user_data: *opaque) void;
export @symbol("gdk_pixbuf_get_file_info_finish") fn pixbuf_get_file_info_finish(async_result: *gio::AsyncResult, width: *int, height: *int, error: nullable **glib::Error) *PixbufFormat;
export @symbol("gdk_pixbuf_get_formats") fn pixbuf_get_formats() *glib::SList;
export @symbol("gdk_pixbuf_init_modules") fn pixbuf_init_modules(path: *c::char, error: nullable **glib::Error) glib::boolean;
export @symbol("gdk_pixbuf_new_from_stream_async") fn pixbuf_new_from_stream_async(stream: *gio::InputStream, cancellable: *gio::Cancellable, callback: gio::AsyncReadyCallback, user_data: *opaque) void;
export @symbol("gdk_pixbuf_new_from_stream_at_scale_async") fn pixbuf_new_from_stream_at_scale_async(stream: *gio::InputStream, width: int, height: int, preserve_aspect_ratio: glib::boolean, cancellable: *gio::Cancellable, callback: gio::AsyncReadyCallback, user_data: *opaque) void;
export @symbol("gdk_pixbuf_save_to_stream_finish") fn pixbuf_save_to_stream_finish(async_result: *gio::AsyncResult, error: nullable **glib::Error) glib::boolean;
export type PixbufAnimation = struct {
	parent_instance: gobject::Object,
};
export @symbol("gdk_pixbuf_animation_new_from_file") fn pixbuf_animation_new_from_file(filename: *c::char, error: nullable **glib::Error) *PixbufAnimation;
export @symbol("gdk_pixbuf_animation_new_from_resource") fn pixbuf_animation_new_from_resource(resource_path: *c::char, error: nullable **glib::Error) *PixbufAnimation;
export @symbol("gdk_pixbuf_animation_new_from_stream") fn pixbuf_animation_new_from_stream(stream: *gio::InputStream, cancellable: *gio::Cancellable, error: nullable **glib::Error) *PixbufAnimation;
export @symbol("gdk_pixbuf_animation_new_from_stream_finish") fn pixbuf_animation_new_from_stream_finish(async_result: *gio::AsyncResult, error: nullable **glib::Error) *PixbufAnimation;
export @symbol("gdk_pixbuf_animation_get_height") fn pixbuf_animation_get_height(animation: *PixbufAnimation) int;
export @symbol("gdk_pixbuf_animation_get_iter") fn pixbuf_animation_get_iter(animation: *PixbufAnimation, start_time: *glib::TimeVal) *PixbufAnimationIter;
export @symbol("gdk_pixbuf_animation_get_static_image") fn pixbuf_animation_get_static_image(animation: *PixbufAnimation) *Pixbuf;
export @symbol("gdk_pixbuf_animation_get_width") fn pixbuf_animation_get_width(animation: *PixbufAnimation) int;
export @symbol("gdk_pixbuf_animation_is_static_image") fn pixbuf_animation_is_static_image(animation: *PixbufAnimation) glib::boolean;
export @symbol("gdk_pixbuf_animation_ref") fn pixbuf_animation_ref(animation: *PixbufAnimation) *PixbufAnimation;
export @symbol("gdk_pixbuf_animation_unref") fn pixbuf_animation_unref(animation: *PixbufAnimation) void;
export @symbol("gdk_pixbuf_animation_new_from_stream_async") fn pixbuf_animation_new_from_stream_async(stream: *gio::InputStream, cancellable: *gio::Cancellable, callback: gio::AsyncReadyCallback, user_data: *opaque) void;
export type PixbufAnimationIter = struct {
	parent_instance: gobject::Object,
};
export @symbol("gdk_pixbuf_animation_iter_advance") fn pixbuf_animation_iter_advance(iter: *PixbufAnimationIter, current_time: *glib::TimeVal) glib::boolean;
export @symbol("gdk_pixbuf_animation_iter_get_delay_time") fn pixbuf_animation_iter_get_delay_time(iter: *PixbufAnimationIter) int;
export @symbol("gdk_pixbuf_animation_iter_get_pixbuf") fn pixbuf_animation_iter_get_pixbuf(iter: *PixbufAnimationIter) *Pixbuf;
export @symbol("gdk_pixbuf_animation_iter_on_currently_loading_frame") fn pixbuf_animation_iter_on_currently_loading_frame(iter: *PixbufAnimationIter) glib::boolean;
export type PixbufLoader = struct {
	parent_instance: gobject::Object,
	priv: *opaque,
};
export @symbol("gdk_pixbuf_loader_new") fn pixbuf_loader_new() *PixbufLoader;
export @symbol("gdk_pixbuf_loader_new_with_mime_type") fn pixbuf_loader_new_with_mime_type(mime_type: *c::char, error: nullable **glib::Error) *PixbufLoader;
export @symbol("gdk_pixbuf_loader_new_with_type") fn pixbuf_loader_new_with_type(image_type: *c::char, error: nullable **glib::Error) *PixbufLoader;
export @symbol("gdk_pixbuf_loader_close") fn pixbuf_loader_close(loader: *PixbufLoader, error: nullable **glib::Error) glib::boolean;
export @symbol("gdk_pixbuf_loader_get_animation") fn pixbuf_loader_get_animation(loader: *PixbufLoader) *PixbufAnimation;
export @symbol("gdk_pixbuf_loader_get_format") fn pixbuf_loader_get_format(loader: *PixbufLoader) *PixbufFormat;
export @symbol("gdk_pixbuf_loader_get_pixbuf") fn pixbuf_loader_get_pixbuf(loader: *PixbufLoader) *Pixbuf;
export @symbol("gdk_pixbuf_loader_set_size") fn pixbuf_loader_set_size(loader: *PixbufLoader, width: int, height: int) void;
export @symbol("gdk_pixbuf_loader_write") fn pixbuf_loader_write(loader: *PixbufLoader, buf: *c::uchar, count: size, error: nullable **glib::Error) glib::boolean;
export @symbol("gdk_pixbuf_loader_write_bytes") fn pixbuf_loader_write_bytes(loader: *PixbufLoader, buffer: *glib::Bytes, error: nullable **glib::Error) glib::boolean;
export fn pixbuf_loader_connect_area_prepared(
	instance: *PixbufLoader,
	handler: *fn(instance: *PixbufLoader, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"area-prepared\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn pixbuf_loader_connect_area_updated(
	instance: *PixbufLoader,
	handler: *fn(instance: *PixbufLoader, x: int, y: int, width: int, height: int, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"area-updated\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn pixbuf_loader_connect_closed(
	instance: *PixbufLoader,
	handler: *fn(instance: *PixbufLoader, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"closed\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn pixbuf_loader_connect_size_prepared(
	instance: *PixbufLoader,
	handler: *fn(instance: *PixbufLoader, width: int, height: int, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"size-prepared\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export type PixbufNonAnim = *opaque;
export @symbol("gdk_pixbuf_non_anim_new") fn pixbuf_non_anim_new(pixbuf: *Pixbuf) *PixbufAnimation;
export type PixbufSimpleAnim = *opaque;
export @symbol("gdk_pixbuf_simple_anim_new") fn pixbuf_simple_anim_new(width: int, height: int, rate: f32) *PixbufSimpleAnim;
export @symbol("gdk_pixbuf_simple_anim_add_frame") fn pixbuf_simple_anim_add_frame(animation: *PixbufSimpleAnim, pixbuf: *Pixbuf) void;
export @symbol("gdk_pixbuf_simple_anim_get_loop") fn pixbuf_simple_anim_get_loop(animation: *PixbufSimpleAnim) glib::boolean;
export @symbol("gdk_pixbuf_simple_anim_set_loop") fn pixbuf_simple_anim_set_loop(animation: *PixbufSimpleAnim, loop: glib::boolean) void;
export type PixbufAnimationClass = struct {
	parent_class: gobject::ObjectClass,
	is_static_image: *fn(animation: *PixbufAnimation) glib::boolean,
	get_static_image: *fn(animation: *PixbufAnimation) *Pixbuf,
	get_size: *fn(animation: *PixbufAnimation, width: *int, height: *int) void,
	get_iter: *fn(animation: *PixbufAnimation, start_time: *glib::TimeVal) *PixbufAnimationIter,
};
export type PixbufAnimationIterClass = struct {
	parent_class: gobject::ObjectClass,
	get_delay_time: *fn(iter: *PixbufAnimationIter) int,
	get_pixbuf: *fn(iter: *PixbufAnimationIter) *Pixbuf,
	on_currently_loading_frame: *fn(iter: *PixbufAnimationIter) glib::boolean,
	advance: *fn(iter: *PixbufAnimationIter, current_time: *glib::TimeVal) glib::boolean,
};
export type PixbufFormat = struct {
	name: *c::char,
	signature: *PixbufModulePattern,
	domain: *c::char,
	description: *c::char,
	mime_types: **c::char,
	extensions: **c::char,
	flags: u32,
	disabled: glib::boolean,
	license: *c::char,
};
export @symbol("gdk_pixbuf_format_copy") fn pixbuf_format_copy(format: *PixbufFormat) *PixbufFormat;
export @symbol("gdk_pixbuf_format_free") fn pixbuf_format_free(format: *PixbufFormat) void;
export @symbol("gdk_pixbuf_format_get_description") fn pixbuf_format_get_description(format: *PixbufFormat) *c::char;
export @symbol("gdk_pixbuf_format_get_extensions") fn pixbuf_format_get_extensions(format: *PixbufFormat) **c::char;
export @symbol("gdk_pixbuf_format_get_license") fn pixbuf_format_get_license(format: *PixbufFormat) *c::char;
export @symbol("gdk_pixbuf_format_get_mime_types") fn pixbuf_format_get_mime_types(format: *PixbufFormat) **c::char;
export @symbol("gdk_pixbuf_format_get_name") fn pixbuf_format_get_name(format: *PixbufFormat) *c::char;
export @symbol("gdk_pixbuf_format_is_disabled") fn pixbuf_format_is_disabled(format: *PixbufFormat) glib::boolean;
export @symbol("gdk_pixbuf_format_is_save_option_supported") fn pixbuf_format_is_save_option_supported(format: *PixbufFormat, option_key: *c::char) glib::boolean;
export @symbol("gdk_pixbuf_format_is_scalable") fn pixbuf_format_is_scalable(format: *PixbufFormat) glib::boolean;
export @symbol("gdk_pixbuf_format_is_writable") fn pixbuf_format_is_writable(format: *PixbufFormat) glib::boolean;
export @symbol("gdk_pixbuf_format_set_disabled") fn pixbuf_format_set_disabled(format: *PixbufFormat, disabled: glib::boolean) void;
export type PixbufLoaderClass = struct {
	parent_class: gobject::ObjectClass,
	size_prepared: *fn(loader: *PixbufLoader, width: int, height: int) void,
	area_prepared: *fn(loader: *PixbufLoader) void,
	area_updated: *fn(loader: *PixbufLoader, x: int, y: int, width: int, height: int) void,
	closed: *fn(loader: *PixbufLoader) void,
};
export type PixbufModule = struct {
	module_name: *c::char,
	module_path: *c::char,
	module: *gmodule::Module,
	info: *PixbufFormat,
	load: PixbufModuleLoadFunc,
	load_xpm_data: PixbufModuleLoadXpmDataFunc,
	begin_load: PixbufModuleBeginLoadFunc,
	stop_load: PixbufModuleStopLoadFunc,
	load_increment: PixbufModuleIncrementLoadFunc,
	load_animation: PixbufModuleLoadAnimationFunc,
	save: PixbufModuleSaveFunc,
	save_to_callback: PixbufModuleSaveCallbackFunc,
	is_save_option_supported: PixbufModuleSaveOptionSupportedFunc,
	_reserved1: *fn() void,
	_reserved2: *fn() void,
	_reserved3: *fn() void,
	_reserved4: *fn() void,
};
export type PixbufModulePattern = struct {
	prefix: *c::char,
	mask: *c::char,
	relevance: int,
};
export type PixbufSimpleAnimClass = *opaque;
export type Colorspace = enum uint {
	RGB = 0,
};
export type InterpType = enum uint {
	NEAREST = 0,
	TILES = 1,
	BILINEAR = 2,
	HYPER = 3,
};
export type PixbufAlphaMode = enum uint {
	BILEVEL = 0,
	FULL = 1,
};
export type PixbufError = enum uint {
	CORRUPT_IMAGE = 0,
	INSUFFICIENT_MEMORY = 1,
	BAD_OPTION = 2,
	UNKNOWN_TYPE = 3,
	UNSUPPORTED_OPERATION = 4,
	FAILED = 5,
	INCOMPLETE_ANIMATION = 6,
};
export @symbol("gdk_pixbuf_error_quark") fn pixbuf_error_quark() glib::Quark;
export type PixbufRotation = enum uint {
	NONE = 0,
	COUNTERCLOCKWISE = 90,
	UPSIDEDOWN = 180,
	CLOCKWISE = 270,
};
export type PixbufFormatFlags = enum uint {
	WRITABLE = 1,
	SCALABLE = 2,
	THREADSAFE = 4,
};
export type PixbufDestroyNotify = *fn(pixels: *c::uchar, data: *opaque) void;
export type PixbufModuleBeginLoadFunc = *fn(size_func: PixbufModuleSizeFunc, prepared_func: PixbufModulePreparedFunc, updated_func: PixbufModuleUpdatedFunc, user_data: *opaque, error: nullable **glib::Error) *opaque;
export type PixbufModuleFillInfoFunc = *fn(info: *PixbufFormat) void;
export type PixbufModuleFillVtableFunc = *fn(module: *PixbufModule) void;
export type PixbufModuleIncrementLoadFunc = *fn(context: *opaque, buf: *c::uchar, size_: uint, error: nullable **glib::Error) glib::boolean;
export type PixbufModuleLoadAnimationFunc = *fn(f: *libc::FILE, error: nullable **glib::Error) *PixbufAnimation;
export type PixbufModuleLoadFunc = *fn(f: *libc::FILE, error: nullable **glib::Error) *Pixbuf;
export type PixbufModuleLoadXpmDataFunc = *fn(data: **c::char) *Pixbuf;
export type PixbufModulePreparedFunc = *fn(pixbuf: *Pixbuf, anim: *PixbufAnimation, user_data: *opaque) void;
export type PixbufModuleSaveCallbackFunc = *fn(save_func: PixbufSaveFunc, user_data: *opaque, pixbuf: *Pixbuf, option_keys: **c::char, option_values: **c::char, error: nullable **glib::Error) glib::boolean;
export type PixbufModuleSaveFunc = *fn(f: *libc::FILE, pixbuf: *Pixbuf, param_keys: **c::char, param_values: **c::char, error: nullable **glib::Error) glib::boolean;
export type PixbufModuleSaveOptionSupportedFunc = *fn(option_key: *c::char) glib::boolean;
export type PixbufModuleSizeFunc = *fn(width: *int, height: *int, user_data: *opaque) void;
export type PixbufModuleStopLoadFunc = *fn(context: *opaque, error: nullable **glib::Error) glib::boolean;
export type PixbufModuleUpdatedFunc = *fn(pixbuf: *Pixbuf, x: int, y: int, width: int, height: int, user_data: *opaque) void;
export type PixbufSaveFunc = *fn(buf: *c::char, count: size, error: **glib::Error, data: *opaque) glib::boolean;
