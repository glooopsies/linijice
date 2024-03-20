use glib;
use types::c;
use gobject;
use harfbuzz;
use types::libc;
export type Glyph = u32;
export type GlyphUnit = i32;
export type LayoutRun = GlyphItem;
export type Context = *opaque;
export @symbol("pango_context_new") fn context_new() *Context;
export @symbol("pango_context_changed") fn context_changed(context: *Context) void;
export @symbol("pango_context_get_base_dir") fn context_get_base_dir(context: *Context) Direction;
export @symbol("pango_context_get_base_gravity") fn context_get_base_gravity(context: *Context) Gravity;
export @symbol("pango_context_get_font_description") fn context_get_font_description(context: *Context) *FontDescription;
export @symbol("pango_context_get_font_map") fn context_get_font_map(context: *Context) *FontMap;
export @symbol("pango_context_get_gravity") fn context_get_gravity(context: *Context) Gravity;
export @symbol("pango_context_get_gravity_hint") fn context_get_gravity_hint(context: *Context) GravityHint;
export @symbol("pango_context_get_language") fn context_get_language(context: *Context) *Language;
export @symbol("pango_context_get_matrix") fn context_get_matrix(context: *Context) *Matrix;
export @symbol("pango_context_get_metrics") fn context_get_metrics(context: *Context, desc: *FontDescription, language: *Language) *FontMetrics;
export @symbol("pango_context_get_round_glyph_positions") fn context_get_round_glyph_positions(context: *Context) glib::boolean;
export @symbol("pango_context_get_serial") fn context_get_serial(context: *Context) uint;
export @symbol("pango_context_list_families") fn context_list_families(context: *Context, families: ***FontFamily, n_families: *int) void;
export @symbol("pango_context_load_font") fn context_load_font(context: *Context, desc: *FontDescription) *Font;
export @symbol("pango_context_load_fontset") fn context_load_fontset(context: *Context, desc: *FontDescription, language: *Language) *Fontset;
export @symbol("pango_context_set_base_dir") fn context_set_base_dir(context: *Context, direction: Direction) void;
export @symbol("pango_context_set_base_gravity") fn context_set_base_gravity(context: *Context, gravity: Gravity) void;
export @symbol("pango_context_set_font_description") fn context_set_font_description(context: *Context, desc: *FontDescription) void;
export @symbol("pango_context_set_font_map") fn context_set_font_map(context: *Context, font_map: *FontMap) void;
export @symbol("pango_context_set_gravity_hint") fn context_set_gravity_hint(context: *Context, hint: GravityHint) void;
export @symbol("pango_context_set_language") fn context_set_language(context: *Context, language: *Language) void;
export @symbol("pango_context_set_matrix") fn context_set_matrix(context: *Context, matrix: *Matrix) void;
export @symbol("pango_context_set_round_glyph_positions") fn context_set_round_glyph_positions(context: *Context, round_positions: glib::boolean) void;
export type Coverage = *opaque;
export @symbol("pango_coverage_new") fn coverage_new() *Coverage;
export @symbol("pango_coverage_copy") fn coverage_copy(coverage: *Coverage) *Coverage;
export @symbol("pango_coverage_get") fn coverage_get(coverage: *Coverage, index_: int) CoverageLevel;
export @symbol("pango_coverage_max") fn coverage_max(coverage: *Coverage, other: *Coverage) void;
export @symbol("pango_coverage_ref") fn coverage_ref(coverage: *Coverage) *Coverage;
export @symbol("pango_coverage_set") fn coverage_set(coverage: *Coverage, index_: int, level: CoverageLevel) void;
export @symbol("pango_coverage_to_bytes") fn coverage_to_bytes(coverage: *Coverage, bytes: **c::uchar, n_bytes: *int) void;
export @symbol("pango_coverage_unref") fn coverage_unref(coverage: *Coverage) void;
export @symbol("pango_coverage_from_bytes") fn coverage_from_bytes(bytes: *c::uchar, n_bytes: int) *Coverage;
export type Font = struct {
	parent_instance: gobject::Object,
};
export @symbol("pango_font_describe") fn font_describe(font: *Font) *FontDescription;
export @symbol("pango_font_describe_with_absolute_size") fn font_describe_with_absolute_size(font: *Font) *FontDescription;
export @symbol("pango_font_get_coverage") fn font_get_coverage(font: *Font, language: *Language) *Coverage;
export @symbol("pango_font_get_face") fn font_get_face(font: *Font) *FontFace;
export @symbol("pango_font_get_features") fn font_get_features(font: *Font, features: *harfbuzz::feature_t, len_: uint, num_features: *uint) void;
export @symbol("pango_font_get_font_map") fn font_get_font_map(font: *Font) *FontMap;
export @symbol("pango_font_get_glyph_extents") fn font_get_glyph_extents(font: *Font, glyph: Glyph, ink_rect: *Rectangle, logical_rect: *Rectangle) void;
export @symbol("pango_font_get_hb_font") fn font_get_hb_font(font: *Font) *harfbuzz::font_t;
export @symbol("pango_font_get_languages") fn font_get_languages(font: *Font) **Language;
export @symbol("pango_font_get_metrics") fn font_get_metrics(font: *Font, language: *Language) *FontMetrics;
export @symbol("pango_font_has_char") fn font_has_char(font: *Font, wc: rune) glib::boolean;
export @symbol("pango_font_serialize") fn font_serialize(font: *Font) *glib::Bytes;
export @symbol("pango_font_descriptions_free") fn font_descriptions_free(descs: **FontDescription, n_descs: int) void;
export @symbol("pango_font_deserialize") fn font_deserialize(context: *Context, bytes: *glib::Bytes, error: nullable **glib::Error) *Font;
export type FontFace = struct {
	parent_instance: gobject::Object,
};
export @symbol("pango_font_face_describe") fn font_face_describe(face: *FontFace) *FontDescription;
export @symbol("pango_font_face_get_face_name") fn font_face_get_face_name(face: *FontFace) *c::char;
export @symbol("pango_font_face_get_family") fn font_face_get_family(face: *FontFace) *FontFamily;
export @symbol("pango_font_face_is_synthesized") fn font_face_is_synthesized(face: *FontFace) glib::boolean;
export @symbol("pango_font_face_list_sizes") fn font_face_list_sizes(face: *FontFace, sizes: **int, n_sizes: *int) void;
export type FontFamily = struct {
	parent_instance: gobject::Object,
};
export @symbol("pango_font_family_get_face") fn font_family_get_face(family: *FontFamily, name: *c::char) *FontFace;
export @symbol("pango_font_family_get_name") fn font_family_get_name(family: *FontFamily) *c::char;
export @symbol("pango_font_family_is_monospace") fn font_family_is_monospace(family: *FontFamily) glib::boolean;
export @symbol("pango_font_family_is_variable") fn font_family_is_variable(family: *FontFamily) glib::boolean;
export @symbol("pango_font_family_list_faces") fn font_family_list_faces(family: *FontFamily, faces: ***FontFace, n_faces: *int) void;
export type FontMap = struct {
	parent_instance: gobject::Object,
};
export @symbol("pango_font_map_changed") fn font_map_changed(fontmap: *FontMap) void;
export @symbol("pango_font_map_create_context") fn font_map_create_context(fontmap: *FontMap) *Context;
export @symbol("pango_font_map_get_family") fn font_map_get_family(fontmap: *FontMap, name: *c::char) *FontFamily;
export @symbol("pango_font_map_get_serial") fn font_map_get_serial(fontmap: *FontMap) uint;
export @symbol("pango_font_map_list_families") fn font_map_list_families(fontmap: *FontMap, families: ***FontFamily, n_families: *int) void;
export @symbol("pango_font_map_load_font") fn font_map_load_font(fontmap: *FontMap, context: *Context, desc: *FontDescription) *Font;
export @symbol("pango_font_map_load_fontset") fn font_map_load_fontset(fontmap: *FontMap, context: *Context, desc: *FontDescription, language: *Language) *Fontset;
export type Fontset = struct {
	parent_instance: gobject::Object,
};
export @symbol("pango_fontset_foreach") fn fontset_foreach(fontset: *Fontset, func: FontsetForeachFunc, data: *opaque) void;
export @symbol("pango_fontset_get_font") fn fontset_get_font(fontset: *Fontset, wc: uint) *Font;
export @symbol("pango_fontset_get_metrics") fn fontset_get_metrics(fontset: *Fontset) *FontMetrics;
export type FontsetSimple = *opaque;
export @symbol("pango_fontset_simple_new") fn fontset_simple_new(language: *Language) *FontsetSimple;
export @symbol("pango_fontset_simple_append") fn fontset_simple_append(fontset: *FontsetSimple, font: *Font) void;
export @symbol("pango_fontset_simple_size") fn fontset_simple_size(fontset: *FontsetSimple) int;
export type Layout = *opaque;
export @symbol("pango_layout_new") fn layout_new(context: *Context) *Layout;
export @symbol("pango_layout_context_changed") fn layout_context_changed(layout: *Layout) void;
export @symbol("pango_layout_copy") fn layout_copy(src: *Layout) *Layout;
export @symbol("pango_layout_get_alignment") fn layout_get_alignment(layout: *Layout) Alignment;
export @symbol("pango_layout_get_attributes") fn layout_get_attributes(layout: *Layout) *AttrList;
export @symbol("pango_layout_get_auto_dir") fn layout_get_auto_dir(layout: *Layout) glib::boolean;
export @symbol("pango_layout_get_baseline") fn layout_get_baseline(layout: *Layout) int;
export @symbol("pango_layout_get_caret_pos") fn layout_get_caret_pos(layout: *Layout, index_: int, strong_pos: *Rectangle, weak_pos: *Rectangle) void;
export @symbol("pango_layout_get_character_count") fn layout_get_character_count(layout: *Layout) int;
export @symbol("pango_layout_get_context") fn layout_get_context(layout: *Layout) *Context;
export @symbol("pango_layout_get_cursor_pos") fn layout_get_cursor_pos(layout: *Layout, index_: int, strong_pos: *Rectangle, weak_pos: *Rectangle) void;
export @symbol("pango_layout_get_direction") fn layout_get_direction(layout: *Layout, index: int) Direction;
export @symbol("pango_layout_get_ellipsize") fn layout_get_ellipsize(layout: *Layout) EllipsizeMode;
export @symbol("pango_layout_get_extents") fn layout_get_extents(layout: *Layout, ink_rect: *Rectangle, logical_rect: *Rectangle) void;
export @symbol("pango_layout_get_font_description") fn layout_get_font_description(layout: *Layout) *FontDescription;
export @symbol("pango_layout_get_height") fn layout_get_height(layout: *Layout) int;
export @symbol("pango_layout_get_indent") fn layout_get_indent(layout: *Layout) int;
export @symbol("pango_layout_get_iter") fn layout_get_iter(layout: *Layout) *LayoutIter;
export @symbol("pango_layout_get_justify") fn layout_get_justify(layout: *Layout) glib::boolean;
export @symbol("pango_layout_get_justify_last_line") fn layout_get_justify_last_line(layout: *Layout) glib::boolean;
export @symbol("pango_layout_get_line") fn layout_get_line(layout: *Layout, line: int) *LayoutLine;
export @symbol("pango_layout_get_line_count") fn layout_get_line_count(layout: *Layout) int;
export @symbol("pango_layout_get_line_readonly") fn layout_get_line_readonly(layout: *Layout, line: int) *LayoutLine;
export @symbol("pango_layout_get_line_spacing") fn layout_get_line_spacing(layout: *Layout) f32;
export @symbol("pango_layout_get_lines") fn layout_get_lines(layout: *Layout) *glib::SList;
export @symbol("pango_layout_get_lines_readonly") fn layout_get_lines_readonly(layout: *Layout) *glib::SList;
export @symbol("pango_layout_get_log_attrs") fn layout_get_log_attrs(layout: *Layout, attrs: **LogAttr, n_attrs: *int) void;
export @symbol("pango_layout_get_log_attrs_readonly") fn layout_get_log_attrs_readonly(layout: *Layout, n_attrs: *int) *LogAttr;
export @symbol("pango_layout_get_pixel_extents") fn layout_get_pixel_extents(layout: *Layout, ink_rect: *Rectangle, logical_rect: *Rectangle) void;
export @symbol("pango_layout_get_pixel_size") fn layout_get_pixel_size(layout: *Layout, width: *int, height: *int) void;
export @symbol("pango_layout_get_serial") fn layout_get_serial(layout: *Layout) uint;
export @symbol("pango_layout_get_single_paragraph_mode") fn layout_get_single_paragraph_mode(layout: *Layout) glib::boolean;
export @symbol("pango_layout_get_size") fn layout_get_size(layout: *Layout, width: *int, height: *int) void;
export @symbol("pango_layout_get_spacing") fn layout_get_spacing(layout: *Layout) int;
export @symbol("pango_layout_get_tabs") fn layout_get_tabs(layout: *Layout) *TabArray;
export @symbol("pango_layout_get_text") fn layout_get_text(layout: *Layout) *c::char;
export @symbol("pango_layout_get_unknown_glyphs_count") fn layout_get_unknown_glyphs_count(layout: *Layout) int;
export @symbol("pango_layout_get_width") fn layout_get_width(layout: *Layout) int;
export @symbol("pango_layout_get_wrap") fn layout_get_wrap(layout: *Layout) WrapMode;
export @symbol("pango_layout_index_to_line_x") fn layout_index_to_line_x(layout: *Layout, index_: int, trailing: glib::boolean, line: *int, x_pos: *int) void;
export @symbol("pango_layout_index_to_pos") fn layout_index_to_pos(layout: *Layout, index_: int, pos: *Rectangle) void;
export @symbol("pango_layout_is_ellipsized") fn layout_is_ellipsized(layout: *Layout) glib::boolean;
export @symbol("pango_layout_is_wrapped") fn layout_is_wrapped(layout: *Layout) glib::boolean;
export @symbol("pango_layout_move_cursor_visually") fn layout_move_cursor_visually(layout: *Layout, strong: glib::boolean, old_index: int, old_trailing: int, direction: int, new_index: *int, new_trailing: *int) void;
export @symbol("pango_layout_serialize") fn layout_serialize(layout: *Layout, flags: LayoutSerializeFlags) *glib::Bytes;
export @symbol("pango_layout_set_alignment") fn layout_set_alignment(layout: *Layout, alignment: Alignment) void;
export @symbol("pango_layout_set_attributes") fn layout_set_attributes(layout: *Layout, attrs: *AttrList) void;
export @symbol("pango_layout_set_auto_dir") fn layout_set_auto_dir(layout: *Layout, auto_dir: glib::boolean) void;
export @symbol("pango_layout_set_ellipsize") fn layout_set_ellipsize(layout: *Layout, ellipsize: EllipsizeMode) void;
export @symbol("pango_layout_set_font_description") fn layout_set_font_description(layout: *Layout, desc: *FontDescription) void;
export @symbol("pango_layout_set_height") fn layout_set_height(layout: *Layout, height: int) void;
export @symbol("pango_layout_set_indent") fn layout_set_indent(layout: *Layout, indent: int) void;
export @symbol("pango_layout_set_justify") fn layout_set_justify(layout: *Layout, justify: glib::boolean) void;
export @symbol("pango_layout_set_justify_last_line") fn layout_set_justify_last_line(layout: *Layout, justify: glib::boolean) void;
export @symbol("pango_layout_set_line_spacing") fn layout_set_line_spacing(layout: *Layout, factor: f32) void;
export @symbol("pango_layout_set_markup") fn layout_set_markup(layout: *Layout, markup: *c::char, length: int) void;
export @symbol("pango_layout_set_markup_with_accel") fn layout_set_markup_with_accel(layout: *Layout, markup: *c::char, length: int, accel_marker: rune, accel_char: *rune) void;
export @symbol("pango_layout_set_single_paragraph_mode") fn layout_set_single_paragraph_mode(layout: *Layout, setting: glib::boolean) void;
export @symbol("pango_layout_set_spacing") fn layout_set_spacing(layout: *Layout, spacing: int) void;
export @symbol("pango_layout_set_tabs") fn layout_set_tabs(layout: *Layout, tabs: *TabArray) void;
export @symbol("pango_layout_set_text") fn layout_set_text(layout: *Layout, text: *c::char, length: int) void;
export @symbol("pango_layout_set_width") fn layout_set_width(layout: *Layout, width: int) void;
export @symbol("pango_layout_set_wrap") fn layout_set_wrap(layout: *Layout, wrap: WrapMode) void;
export @symbol("pango_layout_write_to_file") fn layout_write_to_file(layout: *Layout, flags: LayoutSerializeFlags, filename: *c::char, error: nullable **glib::Error) glib::boolean;
export @symbol("pango_layout_xy_to_index") fn layout_xy_to_index(layout: *Layout, x: int, y: int, index_: *int, trailing: *int) glib::boolean;
export @symbol("pango_layout_deserialize") fn layout_deserialize(context: *Context, bytes: *glib::Bytes, flags: LayoutDeserializeFlags, error: nullable **glib::Error) *Layout;
export type Renderer = struct {
	parent_instance: gobject::Object,
	underline: Underline,
	strikethrough: glib::boolean,
	active_count: int,
	matrix: *Matrix,
	priv: *RendererPrivate,
};
export @symbol("pango_renderer_activate") fn renderer_activate(renderer: *Renderer) void;
export @symbol("pango_renderer_deactivate") fn renderer_deactivate(renderer: *Renderer) void;
export @symbol("pango_renderer_draw_error_underline") fn renderer_draw_error_underline(renderer: *Renderer, x: int, y: int, width: int, height: int) void;
export @symbol("pango_renderer_draw_glyph") fn renderer_draw_glyph(renderer: *Renderer, font: *Font, glyph: Glyph, x: f64, y: f64) void;
export @symbol("pango_renderer_draw_glyph_item") fn renderer_draw_glyph_item(renderer: *Renderer, text: *c::char, glyph_item: *GlyphItem, x: int, y: int) void;
export @symbol("pango_renderer_draw_glyphs") fn renderer_draw_glyphs(renderer: *Renderer, font: *Font, glyphs: *GlyphString, x: int, y: int) void;
export @symbol("pango_renderer_draw_layout") fn renderer_draw_layout(renderer: *Renderer, layout: *Layout, x: int, y: int) void;
export @symbol("pango_renderer_draw_layout_line") fn renderer_draw_layout_line(renderer: *Renderer, line: *LayoutLine, x: int, y: int) void;
export @symbol("pango_renderer_draw_rectangle") fn renderer_draw_rectangle(renderer: *Renderer, part: RenderPart, x: int, y: int, width: int, height: int) void;
export @symbol("pango_renderer_draw_trapezoid") fn renderer_draw_trapezoid(renderer: *Renderer, part: RenderPart, y1_: f64, x11: f64, x21: f64, y2: f64, x12: f64, x22: f64) void;
export @symbol("pango_renderer_get_alpha") fn renderer_get_alpha(renderer: *Renderer, part: RenderPart) u16;
export @symbol("pango_renderer_get_color") fn renderer_get_color(renderer: *Renderer, part: RenderPart) *Color;
export @symbol("pango_renderer_get_layout") fn renderer_get_layout(renderer: *Renderer) *Layout;
export @symbol("pango_renderer_get_layout_line") fn renderer_get_layout_line(renderer: *Renderer) *LayoutLine;
export @symbol("pango_renderer_get_matrix") fn renderer_get_matrix(renderer: *Renderer) *Matrix;
export @symbol("pango_renderer_part_changed") fn renderer_part_changed(renderer: *Renderer, part: RenderPart) void;
export @symbol("pango_renderer_set_alpha") fn renderer_set_alpha(renderer: *Renderer, part: RenderPart, alpha: u16) void;
export @symbol("pango_renderer_set_color") fn renderer_set_color(renderer: *Renderer, part: RenderPart, color: *Color) void;
export @symbol("pango_renderer_set_matrix") fn renderer_set_matrix(renderer: *Renderer, matrix: *Matrix) void;
export type Analysis = struct {
	shape_engine: *opaque,
	lang_engine: *opaque,
	font: *Font,
	level: u8,
	gravity: u8,
	flags: u8,
	script: u8,
	language: *Language,
	extra_attrs: *glib::SList,
};
export type AttrClass = struct {
	type_: AttrType,
	copy: *fn(attr: *Attribute) *Attribute,
	destroy: *fn(attr: *Attribute) void,
	equal: *fn(attr1: *Attribute, attr2: *Attribute) glib::boolean,
};
export type AttrColor = struct {
	attr: Attribute,
	color: Color,
};
export type AttrFloat = struct {
	attr: Attribute,
	value: f64,
};
export type AttrFontDesc = struct {
	attr: Attribute,
	desc: *FontDescription,
};
export @symbol("pango_attr_font_desc_new") fn attr_font_desc_new(desc: *FontDescription) *Attribute;
export type AttrFontFeatures = struct {
	attr: Attribute,
	features: *c::char,
};
export @symbol("pango_attr_font_features_new") fn attr_font_features_new(features: *c::char) *Attribute;
export type AttrInt = struct {
	attr: Attribute,
	value: int,
};
export type AttrIterator = *opaque;
export @symbol("pango_attr_iterator_copy") fn attr_iterator_copy(iterator: *AttrIterator) *AttrIterator;
export @symbol("pango_attr_iterator_destroy") fn attr_iterator_destroy(iterator: *AttrIterator) void;
export @symbol("pango_attr_iterator_get") fn attr_iterator_get(iterator: *AttrIterator, type_: AttrType) *Attribute;
export @symbol("pango_attr_iterator_get_attrs") fn attr_iterator_get_attrs(iterator: *AttrIterator) *glib::SList;
export @symbol("pango_attr_iterator_get_font") fn attr_iterator_get_font(iterator: *AttrIterator, desc: *FontDescription, language: **Language, extra_attrs: **glib::SList) void;
export @symbol("pango_attr_iterator_next") fn attr_iterator_next(iterator: *AttrIterator) glib::boolean;
export @symbol("pango_attr_iterator_range") fn attr_iterator_range(iterator: *AttrIterator, start: *int, end: *int) void;
export type AttrLanguage = struct {
	attr: Attribute,
	value: *Language,
};
export @symbol("pango_attr_language_new") fn attr_language_new(language: *Language) *Attribute;
export type AttrList = *opaque;
export @symbol("pango_attr_list_new") fn attr_list_new() *AttrList;
export @symbol("pango_attr_list_change") fn attr_list_change(list: *AttrList, attr: *Attribute) void;
export @symbol("pango_attr_list_copy") fn attr_list_copy(list: *AttrList) *AttrList;
export @symbol("pango_attr_list_equal") fn attr_list_equal(list: *AttrList, other_list: *AttrList) glib::boolean;
export @symbol("pango_attr_list_filter") fn attr_list_filter(list: *AttrList, func: AttrFilterFunc, data: *opaque) *AttrList;
export @symbol("pango_attr_list_get_attributes") fn attr_list_get_attributes(list: *AttrList) *glib::SList;
export @symbol("pango_attr_list_get_iterator") fn attr_list_get_iterator(list: *AttrList) *AttrIterator;
export @symbol("pango_attr_list_insert") fn attr_list_insert(list: *AttrList, attr: *Attribute) void;
export @symbol("pango_attr_list_insert_before") fn attr_list_insert_before(list: *AttrList, attr: *Attribute) void;
export @symbol("pango_attr_list_ref") fn attr_list_ref(list: *AttrList) *AttrList;
export @symbol("pango_attr_list_splice") fn attr_list_splice(list: *AttrList, other: *AttrList, pos: int, len_: int) void;
export @symbol("pango_attr_list_to_string") fn attr_list_to_string(list: *AttrList) *c::char;
export @symbol("pango_attr_list_unref") fn attr_list_unref(list: *AttrList) void;
export @symbol("pango_attr_list_update") fn attr_list_update(list: *AttrList, pos: int, remove: int, add: int) void;
export @symbol("pango_attr_list_from_string") fn attr_list_from_string(text: *c::char) *AttrList;
export type AttrShape = struct {
	attr: Attribute,
	ink_rect: Rectangle,
	logical_rect: Rectangle,
	data: *opaque,
	copy_func: AttrDataCopyFunc,
	destroy_func: glib::DestroyNotify,
};
export @symbol("pango_attr_shape_new") fn attr_shape_new(ink_rect: *Rectangle, logical_rect: *Rectangle) *Attribute;
export @symbol("pango_attr_shape_new_with_data") fn attr_shape_new_with_data(ink_rect: *Rectangle, logical_rect: *Rectangle, data: *opaque, copy_func: AttrDataCopyFunc, destroy_func: glib::DestroyNotify) *Attribute;
export type AttrSize = struct {
	attr: Attribute,
	size_: int,
	absolute: uint,
};
export @symbol("pango_attr_size_new") fn attr_size_new(size_: int) *Attribute;
export @symbol("pango_attr_size_new_absolute") fn attr_size_new_absolute(size_: int) *Attribute;
export type AttrString = struct {
	attr: Attribute,
	value: *c::char,
};
export type Attribute = struct {
	klass: *AttrClass,
	start_index: uint,
	end_index: uint,
};
export @symbol("pango_attribute_as_color") fn attribute_as_color(attr: *Attribute) *AttrColor;
export @symbol("pango_attribute_as_float") fn attribute_as_float(attr: *Attribute) *AttrFloat;
export @symbol("pango_attribute_as_font_desc") fn attribute_as_font_desc(attr: *Attribute) *AttrFontDesc;
export @symbol("pango_attribute_as_font_features") fn attribute_as_font_features(attr: *Attribute) *AttrFontFeatures;
export @symbol("pango_attribute_as_int") fn attribute_as_int(attr: *Attribute) *AttrInt;
export @symbol("pango_attribute_as_language") fn attribute_as_language(attr: *Attribute) *AttrLanguage;
export @symbol("pango_attribute_as_shape") fn attribute_as_shape(attr: *Attribute) *AttrShape;
export @symbol("pango_attribute_as_size") fn attribute_as_size(attr: *Attribute) *AttrSize;
export @symbol("pango_attribute_as_string") fn attribute_as_string(attr: *Attribute) *AttrString;
export @symbol("pango_attribute_copy") fn attribute_copy(attr: *Attribute) *Attribute;
export @symbol("pango_attribute_destroy") fn attribute_destroy(attr: *Attribute) void;
export @symbol("pango_attribute_equal") fn attribute_equal(attr1: *Attribute, attr2: *Attribute) glib::boolean;
export @symbol("pango_attribute_init") fn attribute_init(attr: *Attribute, klass: *AttrClass) void;
export type Color = struct {
	red: u16,
	green: u16,
	blue: u16,
};
export @symbol("pango_color_copy") fn color_copy(src: *Color) *Color;
export @symbol("pango_color_free") fn color_free(color: *Color) void;
export @symbol("pango_color_parse") fn color_parse(color: *Color, spec: *c::char) glib::boolean;
export @symbol("pango_color_parse_with_alpha") fn color_parse_with_alpha(color: *Color, alpha: *u16, spec: *c::char) glib::boolean;
export @symbol("pango_color_to_string") fn color_to_string(color: *Color) *c::char;
export type ContextClass = *opaque;
export type FontClass = struct {
	parent_class: gobject::ObjectClass,
	describe: *fn(font: *Font) *FontDescription,
	get_coverage: *fn(font: *Font, language: *Language) *Coverage,
	get_glyph_extents: *fn(font: *Font, glyph: Glyph, ink_rect: *Rectangle, logical_rect: *Rectangle) void,
	get_metrics: *fn(font: *Font, language: *Language) *FontMetrics,
	get_font_map: *fn(font: *Font) *FontMap,
	describe_absolute: *fn(font: *Font) *FontDescription,
	get_features: *fn(font: *Font, features: *harfbuzz::feature_t, len_: uint, num_features: *uint) void,
	create_hb_font: *fn(font: *Font) *harfbuzz::font_t,
};
export type FontDescription = *opaque;
export @symbol("pango_font_description_new") fn font_description_new() *FontDescription;
export @symbol("pango_font_description_better_match") fn font_description_better_match(desc: *FontDescription, old_match: *FontDescription, new_match: *FontDescription) glib::boolean;
export @symbol("pango_font_description_copy") fn font_description_copy(desc: *FontDescription) *FontDescription;
export @symbol("pango_font_description_copy_static") fn font_description_copy_static(desc: *FontDescription) *FontDescription;
export @symbol("pango_font_description_equal") fn font_description_equal(desc1: *FontDescription, desc2: *FontDescription) glib::boolean;
export @symbol("pango_font_description_free") fn font_description_free(desc: *FontDescription) void;
export @symbol("pango_font_description_get_family") fn font_description_get_family(desc: *FontDescription) *c::char;
export @symbol("pango_font_description_get_gravity") fn font_description_get_gravity(desc: *FontDescription) Gravity;
export @symbol("pango_font_description_get_set_fields") fn font_description_get_set_fields(desc: *FontDescription) FontMask;
export @symbol("pango_font_description_get_size") fn font_description_get_size(desc: *FontDescription) int;
export @symbol("pango_font_description_get_size_is_absolute") fn font_description_get_size_is_absolute(desc: *FontDescription) glib::boolean;
export @symbol("pango_font_description_get_stretch") fn font_description_get_stretch(desc: *FontDescription) Stretch;
export @symbol("pango_font_description_get_style") fn font_description_get_style(desc: *FontDescription) Style;
export @symbol("pango_font_description_get_variant") fn font_description_get_variant(desc: *FontDescription) Variant;
export @symbol("pango_font_description_get_variations") fn font_description_get_variations(desc: *FontDescription) *c::char;
export @symbol("pango_font_description_get_weight") fn font_description_get_weight(desc: *FontDescription) Weight;
export @symbol("pango_font_description_hash") fn font_description_hash(desc: *FontDescription) uint;
export @symbol("pango_font_description_merge") fn font_description_merge(desc: *FontDescription, desc_to_merge: *FontDescription, replace_existing: glib::boolean) void;
export @symbol("pango_font_description_merge_static") fn font_description_merge_static(desc: *FontDescription, desc_to_merge: *FontDescription, replace_existing: glib::boolean) void;
export @symbol("pango_font_description_set_absolute_size") fn font_description_set_absolute_size(desc: *FontDescription, size_: f64) void;
export @symbol("pango_font_description_set_family") fn font_description_set_family(desc: *FontDescription, family: *c::char) void;
export @symbol("pango_font_description_set_family_static") fn font_description_set_family_static(desc: *FontDescription, family: *c::char) void;
export @symbol("pango_font_description_set_gravity") fn font_description_set_gravity(desc: *FontDescription, gravity: Gravity) void;
export @symbol("pango_font_description_set_size") fn font_description_set_size(desc: *FontDescription, size_: int) void;
export @symbol("pango_font_description_set_stretch") fn font_description_set_stretch(desc: *FontDescription, stretch: Stretch) void;
export @symbol("pango_font_description_set_style") fn font_description_set_style(desc: *FontDescription, style: Style) void;
export @symbol("pango_font_description_set_variant") fn font_description_set_variant(desc: *FontDescription, variant: Variant) void;
export @symbol("pango_font_description_set_variations") fn font_description_set_variations(desc: *FontDescription, variations: *c::char) void;
export @symbol("pango_font_description_set_variations_static") fn font_description_set_variations_static(desc: *FontDescription, variations: *c::char) void;
export @symbol("pango_font_description_set_weight") fn font_description_set_weight(desc: *FontDescription, weight: Weight) void;
export @symbol("pango_font_description_to_filename") fn font_description_to_filename(desc: *FontDescription) *c::char;
export @symbol("pango_font_description_to_string") fn font_description_to_string(desc: *FontDescription) *c::char;
export @symbol("pango_font_description_unset_fields") fn font_description_unset_fields(desc: *FontDescription, to_unset: FontMask) void;
export @symbol("pango_font_description_from_string") fn font_description_from_string(str_: *c::char) *FontDescription;
export type FontFaceClass = struct {
	parent_class: gobject::ObjectClass,
	get_face_name: *fn(face: *FontFace) *c::char,
	describe: *fn(face: *FontFace) *FontDescription,
	list_sizes: *fn(face: *FontFace, sizes: **int, n_sizes: *int) void,
	is_synthesized: *fn(face: *FontFace) glib::boolean,
	get_family: *fn(face: *FontFace) *FontFamily,
	_pango_reserved3: *fn() void,
	_pango_reserved4: *fn() void,
};
export type FontFamilyClass = struct {
	parent_class: gobject::ObjectClass,
	list_faces: *fn(family: *FontFamily, faces: ***FontFace, n_faces: *int) void,
	get_name: *fn(family: *FontFamily) *c::char,
	is_monospace: *fn(family: *FontFamily) glib::boolean,
	is_variable: *fn(family: *FontFamily) glib::boolean,
	get_face: *fn(family: *FontFamily, name: *c::char) *FontFace,
	_pango_reserved2: *fn() void,
};
export type FontMapClass = struct {
	parent_class: gobject::ObjectClass,
	load_font: *fn(fontmap: *FontMap, context: *Context, desc: *FontDescription) *Font,
	list_families: *fn(fontmap: *FontMap, families: ***FontFamily, n_families: *int) void,
	load_fontset: *fn(fontmap: *FontMap, context: *Context, desc: *FontDescription, language: *Language) *Fontset,
	shape_engine_type: *c::char,
	get_serial: *fn(fontmap: *FontMap) uint,
	changed: *fn(fontmap: *FontMap) void,
	get_family: *fn(fontmap: *FontMap, name: *c::char) *FontFamily,
	get_face: *fn(fontmap: *FontMap, font: *Font) *FontFace,
};
export type FontMetrics = struct {
	ref_count: uint,
	ascent: int,
	descent: int,
	height: int,
	approximate_char_width: int,
	approximate_digit_width: int,
	underline_position: int,
	underline_thickness: int,
	strikethrough_position: int,
	strikethrough_thickness: int,
};
export @symbol("pango_font_metrics_get_approximate_char_width") fn font_metrics_get_approximate_char_width(metrics: *FontMetrics) int;
export @symbol("pango_font_metrics_get_approximate_digit_width") fn font_metrics_get_approximate_digit_width(metrics: *FontMetrics) int;
export @symbol("pango_font_metrics_get_ascent") fn font_metrics_get_ascent(metrics: *FontMetrics) int;
export @symbol("pango_font_metrics_get_descent") fn font_metrics_get_descent(metrics: *FontMetrics) int;
export @symbol("pango_font_metrics_get_height") fn font_metrics_get_height(metrics: *FontMetrics) int;
export @symbol("pango_font_metrics_get_strikethrough_position") fn font_metrics_get_strikethrough_position(metrics: *FontMetrics) int;
export @symbol("pango_font_metrics_get_strikethrough_thickness") fn font_metrics_get_strikethrough_thickness(metrics: *FontMetrics) int;
export @symbol("pango_font_metrics_get_underline_position") fn font_metrics_get_underline_position(metrics: *FontMetrics) int;
export @symbol("pango_font_metrics_get_underline_thickness") fn font_metrics_get_underline_thickness(metrics: *FontMetrics) int;
export @symbol("pango_font_metrics_ref") fn font_metrics_ref(metrics: *FontMetrics) *FontMetrics;
export @symbol("pango_font_metrics_unref") fn font_metrics_unref(metrics: *FontMetrics) void;
export type FontsetClass = struct {
	parent_class: gobject::ObjectClass,
	get_font: *fn(fontset: *Fontset, wc: uint) *Font,
	get_metrics: *fn(fontset: *Fontset) *FontMetrics,
	get_language: *fn(fontset: *Fontset) *Language,
	foreach: *fn(fontset: *Fontset, func: FontsetForeachFunc, data: *opaque) void,
	_pango_reserved1: *fn() void,
	_pango_reserved2: *fn() void,
	_pango_reserved3: *fn() void,
	_pango_reserved4: *fn() void,
};
export type FontsetSimpleClass = *opaque;
export type GlyphGeometry = struct {
	width: GlyphUnit,
	x_offset: GlyphUnit,
	y_offset: GlyphUnit,
};
export type GlyphInfo = struct {
	glyph: Glyph,
	geometry: GlyphGeometry,
	attr: GlyphVisAttr,
};
export type GlyphItem = struct {
	item: *Item,
	glyphs: *GlyphString,
	y_offset: int,
	start_x_offset: int,
	end_x_offset: int,
};
export @symbol("pango_glyph_item_apply_attrs") fn glyph_item_apply_attrs(glyph_item: *GlyphItem, text: *c::char, list: *AttrList) *glib::SList;
export @symbol("pango_glyph_item_copy") fn glyph_item_copy(orig: *GlyphItem) *GlyphItem;
export @symbol("pango_glyph_item_free") fn glyph_item_free(glyph_item: *GlyphItem) void;
export @symbol("pango_glyph_item_get_logical_widths") fn glyph_item_get_logical_widths(glyph_item: *GlyphItem, text: *c::char, logical_widths: *int) void;
export @symbol("pango_glyph_item_letter_space") fn glyph_item_letter_space(glyph_item: *GlyphItem, text: *c::char, log_attrs: *LogAttr, letter_spacing: int) void;
export @symbol("pango_glyph_item_split") fn glyph_item_split(orig: *GlyphItem, text: *c::char, split_index: int) *GlyphItem;
export type GlyphItemIter = struct {
	glyph_item: *GlyphItem,
	text: *c::char,
	start_glyph: int,
	start_index: int,
	start_char: int,
	end_glyph: int,
	end_index: int,
	end_char: int,
};
export @symbol("pango_glyph_item_iter_copy") fn glyph_item_iter_copy(orig: *GlyphItemIter) *GlyphItemIter;
export @symbol("pango_glyph_item_iter_free") fn glyph_item_iter_free(iter: *GlyphItemIter) void;
export @symbol("pango_glyph_item_iter_init_end") fn glyph_item_iter_init_end(iter: *GlyphItemIter, glyph_item: *GlyphItem, text: *c::char) glib::boolean;
export @symbol("pango_glyph_item_iter_init_start") fn glyph_item_iter_init_start(iter: *GlyphItemIter, glyph_item: *GlyphItem, text: *c::char) glib::boolean;
export @symbol("pango_glyph_item_iter_next_cluster") fn glyph_item_iter_next_cluster(iter: *GlyphItemIter) glib::boolean;
export @symbol("pango_glyph_item_iter_prev_cluster") fn glyph_item_iter_prev_cluster(iter: *GlyphItemIter) glib::boolean;
export type GlyphString = struct {
	num_glyphs: int,
	glyphs: *GlyphInfo,
	log_clusters: *int,
	space: int,
};
export @symbol("pango_glyph_string_new") fn glyph_string_new() *GlyphString;
export @symbol("pango_glyph_string_copy") fn glyph_string_copy(string: *GlyphString) *GlyphString;
export @symbol("pango_glyph_string_extents") fn glyph_string_extents(glyphs: *GlyphString, font: *Font, ink_rect: *Rectangle, logical_rect: *Rectangle) void;
export @symbol("pango_glyph_string_extents_range") fn glyph_string_extents_range(glyphs: *GlyphString, start: int, end: int, font: *Font, ink_rect: *Rectangle, logical_rect: *Rectangle) void;
export @symbol("pango_glyph_string_free") fn glyph_string_free(string: *GlyphString) void;
export @symbol("pango_glyph_string_get_logical_widths") fn glyph_string_get_logical_widths(glyphs: *GlyphString, text: *c::char, length: int, embedding_level: int, logical_widths: *int) void;
export @symbol("pango_glyph_string_get_width") fn glyph_string_get_width(glyphs: *GlyphString) int;
export @symbol("pango_glyph_string_index_to_x") fn glyph_string_index_to_x(glyphs: *GlyphString, text: *c::char, length: int, analysis: *Analysis, index_: int, trailing: glib::boolean, x_pos: *int) void;
export @symbol("pango_glyph_string_index_to_x_full") fn glyph_string_index_to_x_full(glyphs: *GlyphString, text: *c::char, length: int, analysis: *Analysis, attrs: *LogAttr, index_: int, trailing: glib::boolean, x_pos: *int) void;
export @symbol("pango_glyph_string_set_size") fn glyph_string_set_size(string: *GlyphString, new_len: int) void;
export @symbol("pango_glyph_string_x_to_index") fn glyph_string_x_to_index(glyphs: *GlyphString, text: *c::char, length: int, analysis: *Analysis, x_pos: int, index_: *int, trailing: *int) void;
export type GlyphVisAttr = struct {
	is_cluster_start: uint,
	is_color: uint,
};
export type Item = struct {
	offset_: int,
	length: int,
	num_chars: int,
	analysis: Analysis,
};
export @symbol("pango_item_new") fn item_new() *Item;
export @symbol("pango_item_apply_attrs") fn item_apply_attrs(item: *Item, iter: *AttrIterator) void;
export @symbol("pango_item_copy") fn item_copy(item: *Item) *Item;
export @symbol("pango_item_free") fn item_free(item: *Item) void;
export @symbol("pango_item_split") fn item_split(orig: *Item, split_index: int, split_offset: int) *Item;
export type Language = *opaque;
export @symbol("pango_language_get_sample_string") fn language_get_sample_string(language: *Language) *c::char;
export @symbol("pango_language_get_scripts") fn language_get_scripts(language: *Language, num_scripts: *int) *Script;
export @symbol("pango_language_includes_script") fn language_includes_script(language: *Language, script: Script) glib::boolean;
export @symbol("pango_language_matches") fn language_matches(language: *Language, range_list: *c::char) glib::boolean;
export @symbol("pango_language_to_string") fn language_to_string(language: *Language) *c::char;
export @symbol("pango_language_from_string") fn language_from_string(language: *c::char) *Language;
export @symbol("pango_language_get_default") fn language_get_default() *Language;
export @symbol("pango_language_get_preferred") fn language_get_preferred() **Language;
export type LayoutClass = *opaque;
export type LayoutIter = *opaque;
export @symbol("pango_layout_iter_at_last_line") fn layout_iter_at_last_line(iter: *LayoutIter) glib::boolean;
export @symbol("pango_layout_iter_copy") fn layout_iter_copy(iter: *LayoutIter) *LayoutIter;
export @symbol("pango_layout_iter_free") fn layout_iter_free(iter: *LayoutIter) void;
export @symbol("pango_layout_iter_get_baseline") fn layout_iter_get_baseline(iter: *LayoutIter) int;
export @symbol("pango_layout_iter_get_char_extents") fn layout_iter_get_char_extents(iter: *LayoutIter, logical_rect: *Rectangle) void;
export @symbol("pango_layout_iter_get_cluster_extents") fn layout_iter_get_cluster_extents(iter: *LayoutIter, ink_rect: *Rectangle, logical_rect: *Rectangle) void;
export @symbol("pango_layout_iter_get_index") fn layout_iter_get_index(iter: *LayoutIter) int;
export @symbol("pango_layout_iter_get_layout") fn layout_iter_get_layout(iter: *LayoutIter) *Layout;
export @symbol("pango_layout_iter_get_layout_extents") fn layout_iter_get_layout_extents(iter: *LayoutIter, ink_rect: *Rectangle, logical_rect: *Rectangle) void;
export @symbol("pango_layout_iter_get_line") fn layout_iter_get_line(iter: *LayoutIter) *LayoutLine;
export @symbol("pango_layout_iter_get_line_extents") fn layout_iter_get_line_extents(iter: *LayoutIter, ink_rect: *Rectangle, logical_rect: *Rectangle) void;
export @symbol("pango_layout_iter_get_line_readonly") fn layout_iter_get_line_readonly(iter: *LayoutIter) *LayoutLine;
export @symbol("pango_layout_iter_get_line_yrange") fn layout_iter_get_line_yrange(iter: *LayoutIter, y0_: *int, y1_: *int) void;
export @symbol("pango_layout_iter_get_run") fn layout_iter_get_run(iter: *LayoutIter) *LayoutRun;
export @symbol("pango_layout_iter_get_run_baseline") fn layout_iter_get_run_baseline(iter: *LayoutIter) int;
export @symbol("pango_layout_iter_get_run_extents") fn layout_iter_get_run_extents(iter: *LayoutIter, ink_rect: *Rectangle, logical_rect: *Rectangle) void;
export @symbol("pango_layout_iter_get_run_readonly") fn layout_iter_get_run_readonly(iter: *LayoutIter) *LayoutRun;
export @symbol("pango_layout_iter_next_char") fn layout_iter_next_char(iter: *LayoutIter) glib::boolean;
export @symbol("pango_layout_iter_next_cluster") fn layout_iter_next_cluster(iter: *LayoutIter) glib::boolean;
export @symbol("pango_layout_iter_next_line") fn layout_iter_next_line(iter: *LayoutIter) glib::boolean;
export @symbol("pango_layout_iter_next_run") fn layout_iter_next_run(iter: *LayoutIter) glib::boolean;
export type LayoutLine = struct {
	layout: *Layout,
	start_index: int,
	length: int,
	runs: *glib::SList,
	is_paragraph_start: uint,
	resolved_dir: uint,
};
export @symbol("pango_layout_line_get_extents") fn layout_line_get_extents(line: *LayoutLine, ink_rect: *Rectangle, logical_rect: *Rectangle) void;
export @symbol("pango_layout_line_get_height") fn layout_line_get_height(line: *LayoutLine, height: *int) void;
export @symbol("pango_layout_line_get_length") fn layout_line_get_length(line: *LayoutLine) int;
export @symbol("pango_layout_line_get_pixel_extents") fn layout_line_get_pixel_extents(layout_line: *LayoutLine, ink_rect: *Rectangle, logical_rect: *Rectangle) void;
export @symbol("pango_layout_line_get_resolved_direction") fn layout_line_get_resolved_direction(line: *LayoutLine) Direction;
export @symbol("pango_layout_line_get_start_index") fn layout_line_get_start_index(line: *LayoutLine) int;
export @symbol("pango_layout_line_get_x_ranges") fn layout_line_get_x_ranges(line: *LayoutLine, start_index: int, end_index: int, ranges: **int, n_ranges: *int) void;
export @symbol("pango_layout_line_index_to_x") fn layout_line_index_to_x(line: *LayoutLine, index_: int, trailing: glib::boolean, x_pos: *int) void;
export @symbol("pango_layout_line_is_paragraph_start") fn layout_line_is_paragraph_start(line: *LayoutLine) glib::boolean;
export @symbol("pango_layout_line_ref") fn layout_line_ref(line: *LayoutLine) *LayoutLine;
export @symbol("pango_layout_line_unref") fn layout_line_unref(line: *LayoutLine) void;
export @symbol("pango_layout_line_x_to_index") fn layout_line_x_to_index(line: *LayoutLine, x_pos: int, index_: *int, trailing: *int) glib::boolean;
export type LogAttr = struct {
	is_line_break: uint,
	is_mandatory_break: uint,
	is_char_break: uint,
	is_white: uint,
	is_cursor_position: uint,
	is_word_start: uint,
	is_word_end: uint,
	is_sentence_boundary: uint,
	is_sentence_start: uint,
	is_sentence_end: uint,
	backspace_deletes_character: uint,
	is_expandable_space: uint,
	is_word_boundary: uint,
	break_inserts_hyphen: uint,
	break_removes_preceding: uint,
	reserved: uint,
};
export type Matrix = struct {
	xx: f64,
	xy: f64,
	yx: f64,
	yy: f64,
	x0: f64,
	y0: f64,
};
export @symbol("pango_matrix_concat") fn matrix_concat(matrix: *Matrix, new_matrix: *Matrix) void;
export @symbol("pango_matrix_copy") fn matrix_copy(matrix: *Matrix) *Matrix;
export @symbol("pango_matrix_free") fn matrix_free(matrix: *Matrix) void;
export @symbol("pango_matrix_get_font_scale_factor") fn matrix_get_font_scale_factor(matrix: *Matrix) f64;
export @symbol("pango_matrix_get_font_scale_factors") fn matrix_get_font_scale_factors(matrix: *Matrix, xscale: *f64, yscale: *f64) void;
export @symbol("pango_matrix_get_slant_ratio") fn matrix_get_slant_ratio(matrix: *Matrix) f64;
export @symbol("pango_matrix_rotate") fn matrix_rotate(matrix: *Matrix, degrees: f64) void;
export @symbol("pango_matrix_scale") fn matrix_scale(matrix: *Matrix, scale_x: f64, scale_y: f64) void;
export @symbol("pango_matrix_transform_distance") fn matrix_transform_distance(matrix: *Matrix, dx: *f64, dy: *f64) void;
export @symbol("pango_matrix_transform_pixel_rectangle") fn matrix_transform_pixel_rectangle(matrix: *Matrix, rect: *Rectangle) void;
export @symbol("pango_matrix_transform_point") fn matrix_transform_point(matrix: *Matrix, x: *f64, y: *f64) void;
export @symbol("pango_matrix_transform_rectangle") fn matrix_transform_rectangle(matrix: *Matrix, rect: *Rectangle) void;
export @symbol("pango_matrix_translate") fn matrix_translate(matrix: *Matrix, tx: f64, ty: f64) void;
export type Rectangle = struct {
	x: int,
	y: int,
	width: int,
	height: int,
};
export type RendererClass = struct {
	parent_class: gobject::ObjectClass,
	draw_glyphs: *fn(renderer: *Renderer, font: *Font, glyphs: *GlyphString, x: int, y: int) void,
	draw_rectangle: *fn(renderer: *Renderer, part: RenderPart, x: int, y: int, width: int, height: int) void,
	draw_error_underline: *fn(renderer: *Renderer, x: int, y: int, width: int, height: int) void,
	draw_shape: *fn(renderer: *Renderer, attr: *AttrShape, x: int, y: int) void,
	draw_trapezoid: *fn(renderer: *Renderer, part: RenderPart, y1_: f64, x11: f64, x21: f64, y2: f64, x12: f64, x22: f64) void,
	draw_glyph: *fn(renderer: *Renderer, font: *Font, glyph: Glyph, x: f64, y: f64) void,
	part_changed: *fn(renderer: *Renderer, part: RenderPart) void,
	begin: *fn(renderer: *Renderer) void,
	end: *fn(renderer: *Renderer) void,
	prepare_run: *fn(renderer: *Renderer, run: *LayoutRun) void,
	draw_glyph_item: *fn(renderer: *Renderer, text: *c::char, glyph_item: *GlyphItem, x: int, y: int) void,
	_pango_reserved2: *fn() void,
	_pango_reserved3: *fn() void,
	_pango_reserved4: *fn() void,
};
export type RendererPrivate = *opaque;
export type ScriptIter = *opaque;
export @symbol("pango_script_iter_new") fn script_iter_new(text: *c::char, length: int) *ScriptIter;
export @symbol("pango_script_iter_free") fn script_iter_free(iter: *ScriptIter) void;
export @symbol("pango_script_iter_get_range") fn script_iter_get_range(iter: *ScriptIter, start: **c::char, end: **c::char, script: *Script) void;
export @symbol("pango_script_iter_next") fn script_iter_next(iter: *ScriptIter) glib::boolean;
export type TabArray = *opaque;
export @symbol("pango_tab_array_new") fn tab_array_new(initial_size: int, positions_in_pixels: glib::boolean) *TabArray;
export @symbol("pango_tab_array_new_with_positions") fn tab_array_new_with_positions(size_: int, positions_in_pixels: glib::boolean, first_alignment: TabAlign, first_position: int, ...) *TabArray;
export @symbol("pango_tab_array_copy") fn tab_array_copy(src: *TabArray) *TabArray;
export @symbol("pango_tab_array_free") fn tab_array_free(tab_array: *TabArray) void;
export @symbol("pango_tab_array_get_decimal_point") fn tab_array_get_decimal_point(tab_array: *TabArray, tab_index: int) rune;
export @symbol("pango_tab_array_get_positions_in_pixels") fn tab_array_get_positions_in_pixels(tab_array: *TabArray) glib::boolean;
export @symbol("pango_tab_array_get_size") fn tab_array_get_size(tab_array: *TabArray) int;
export @symbol("pango_tab_array_get_tab") fn tab_array_get_tab(tab_array: *TabArray, tab_index: int, alignment: *TabAlign, location: *int) void;
export @symbol("pango_tab_array_get_tabs") fn tab_array_get_tabs(tab_array: *TabArray, alignments: **TabAlign, locations: **int) void;
export @symbol("pango_tab_array_resize") fn tab_array_resize(tab_array: *TabArray, new_size: int) void;
export @symbol("pango_tab_array_set_decimal_point") fn tab_array_set_decimal_point(tab_array: *TabArray, tab_index: int, decimal_point: rune) void;
export @symbol("pango_tab_array_set_positions_in_pixels") fn tab_array_set_positions_in_pixels(tab_array: *TabArray, positions_in_pixels: glib::boolean) void;
export @symbol("pango_tab_array_set_tab") fn tab_array_set_tab(tab_array: *TabArray, tab_index: int, alignment: TabAlign, location: int) void;
export @symbol("pango_tab_array_sort") fn tab_array_sort(tab_array: *TabArray) void;
export @symbol("pango_tab_array_to_string") fn tab_array_to_string(tab_array: *TabArray) *c::char;
export @symbol("pango_tab_array_from_string") fn tab_array_from_string(text: *c::char) *TabArray;
export type Alignment = enum uint {
	LEFT = 0,
	CENTER = 1,
	RIGHT = 2,
};
export type AttrType = enum uint {
	INVALID = 0,
	LANGUAGE = 1,
	FAMILY = 2,
	STYLE = 3,
	WEIGHT = 4,
	VARIANT = 5,
	STRETCH = 6,
	SIZE_ = 7,
	FONT_DESC = 8,
	FOREGROUND = 9,
	BACKGROUND = 10,
	UNDERLINE = 11,
	STRIKETHROUGH = 12,
	RISE = 13,
	SHAPE = 14,
	SCALE = 15,
	FALLBACK = 16,
	LETTER_SPACING = 17,
	UNDERLINE_COLOR = 18,
	STRIKETHROUGH_COLOR = 19,
	ABSOLUTE_SIZE = 20,
	GRAVITY = 21,
	GRAVITY_HINT = 22,
	FONT_FEATURES = 23,
	FOREGROUND_ALPHA = 24,
	BACKGROUND_ALPHA = 25,
	ALLOW_BREAKS = 26,
	SHOW = 27,
	INSERT_HYPHENS = 28,
	OVERLINE = 29,
	OVERLINE_COLOR = 30,
	LINE_HEIGHT = 31,
	ABSOLUTE_LINE_HEIGHT = 32,
	TEXT_TRANSFORM = 33,
	WORD = 34,
	SENTENCE = 35,
	BASELINE_SHIFT = 36,
	FONT_SCALE = 37,
};
export @symbol("pango_attr_type_get_name") fn attr_type_get_name(type_: AttrType) *c::char;
export @symbol("pango_attr_type_register") fn attr_type_register(name: *c::char) AttrType;
export type BaselineShift = enum uint {
	NONE = 0,
	SUPERSCRIPT = 1,
	SUBSCRIPT = 2,
};
export type BidiType = enum uint {
	L = 0,
	LRE = 1,
	LRO = 2,
	R = 3,
	AL = 4,
	RLE = 5,
	RLO = 6,
	PDF = 7,
	EN = 8,
	ES = 9,
	ET = 10,
	AN = 11,
	CS = 12,
	NSM = 13,
	BN = 14,
	B = 15,
	S = 16,
	WS = 17,
	ON = 18,
	LRI = 19,
	RLI = 20,
	FSI = 21,
	PDI = 22,
};
export @symbol("pango_bidi_type_for_unichar") fn bidi_type_for_unichar(ch: rune) BidiType;
export type CoverageLevel = enum uint {
	NONE = 0,
	FALLBACK = 1,
	APPROXIMATE = 2,
	EXACT = 3,
};
export type Direction = enum uint {
	LTR = 0,
	RTL = 1,
	TTB_LTR = 2,
	TTB_RTL = 3,
	WEAK_LTR = 4,
	WEAK_RTL = 5,
	NEUTRAL = 6,
};
export type EllipsizeMode = enum uint {
	NONE = 0,
	START = 1,
	MIDDLE = 2,
	END = 3,
};
export type FontScale = enum uint {
	NONE = 0,
	SUPERSCRIPT = 1,
	SUBSCRIPT = 2,
	SMALL_CAPS = 3,
};
export type Gravity = enum uint {
	SOUTH = 0,
	EAST = 1,
	NORTH = 2,
	WEST = 3,
	AUTO = 4,
};
export @symbol("pango_gravity_get_for_matrix") fn gravity_get_for_matrix(matrix: *Matrix) Gravity;
export @symbol("pango_gravity_get_for_script") fn gravity_get_for_script(script: Script, base_gravity: Gravity, hint: GravityHint) Gravity;
export @symbol("pango_gravity_get_for_script_and_width") fn gravity_get_for_script_and_width(script: Script, wide: glib::boolean, base_gravity: Gravity, hint: GravityHint) Gravity;
export @symbol("pango_gravity_to_rotation") fn gravity_to_rotation(gravity: Gravity) f64;
export type GravityHint = enum uint {
	NATURAL = 0,
	STRONG = 1,
	LINE = 2,
};
export type LayoutDeserializeError = enum uint {
	INVALID = 0,
	INVALID_VALUE = 1,
	MISSING_VALUE = 2,
};
export @symbol("pango_layout_deserialize_error_quark") fn layout_deserialize_error_quark() glib::Quark;
export type Overline = enum uint {
	NONE = 0,
	SINGLE = 1,
};
export type RenderPart = enum uint {
	FOREGROUND = 0,
	BACKGROUND = 1,
	UNDERLINE = 2,
	STRIKETHROUGH = 3,
	OVERLINE = 4,
};
export type Script = enum uint {
	INVALID_CODE = -1,
	COMMON = 0,
	INHERITED = 1,
	ARABIC = 2,
	ARMENIAN = 3,
	BENGALI = 4,
	BOPOMOFO = 5,
	CHEROKEE = 6,
	COPTIC = 7,
	CYRILLIC = 8,
	DESERET = 9,
	DEVANAGARI = 10,
	ETHIOPIC = 11,
	GEORGIAN = 12,
	GOTHIC = 13,
	GREEK = 14,
	GUJARATI = 15,
	GURMUKHI = 16,
	HAN = 17,
	HANGUL = 18,
	HEBREW = 19,
	HIRAGANA = 20,
	KANNADA = 21,
	KATAKANA = 22,
	KHMER = 23,
	LAO = 24,
	LATIN = 25,
	MALAYALAM = 26,
	MONGOLIAN = 27,
	MYANMAR = 28,
	OGHAM = 29,
	OLD_ITALIC = 30,
	ORIYA = 31,
	RUNIC = 32,
	SINHALA = 33,
	SYRIAC = 34,
	TAMIL = 35,
	TELUGU = 36,
	THAANA = 37,
	THAI = 38,
	TIBETAN = 39,
	CANADIAN_ABORIGINAL = 40,
	YI = 41,
	TAGALOG = 42,
	HANUNOO = 43,
	BUHID = 44,
	TAGBANWA = 45,
	BRAILLE = 46,
	CYPRIOT = 47,
	LIMBU = 48,
	OSMANYA = 49,
	SHAVIAN = 50,
	LINEAR_B = 51,
	TAI_LE = 52,
	UGARITIC = 53,
	NEW_TAI_LUE = 54,
	BUGINESE = 55,
	GLAGOLITIC = 56,
	TIFINAGH = 57,
	SYLOTI_NAGRI = 58,
	OLD_PERSIAN = 59,
	KHAROSHTHI = 60,
	UNKNOWN = 61,
	BALINESE = 62,
	CUNEIFORM = 63,
	PHOENICIAN = 64,
	PHAGS_PA = 65,
	NKO = 66,
	KAYAH_LI = 67,
	LEPCHA = 68,
	REJANG = 69,
	SUNDANESE = 70,
	SAURASHTRA = 71,
	CHAM = 72,
	OL_CHIKI = 73,
	VAI = 74,
	CARIAN = 75,
	LYCIAN = 76,
	LYDIAN = 77,
	BATAK = 78,
	BRAHMI = 79,
	MANDAIC = 80,
	CHAKMA = 81,
	MEROITIC_CURSIVE = 82,
	MEROITIC_HIEROGLYPHS = 83,
	MIAO = 84,
	SHARADA = 85,
	SORA_SOMPENG = 86,
	TAKRI = 87,
	BASSA_VAH = 88,
	CAUCASIAN_ALBANIAN = 89,
	DUPLOYAN = 90,
	ELBASAN = 91,
	GRANTHA = 92,
	KHOJKI = 93,
	KHUDAWADI = 94,
	LINEAR_A = 95,
	MAHAJANI = 96,
	MANICHAEAN = 97,
	MENDE_KIKAKUI = 98,
	MODI = 99,
	MRO = 100,
	NABATAEAN = 101,
	OLD_NORTH_ARABIAN = 102,
	OLD_PERMIC = 103,
	PAHAWH_HMONG = 104,
	PALMYRENE = 105,
	PAU_CIN_HAU = 106,
	PSALTER_PAHLAVI = 107,
	SIDDHAM = 108,
	TIRHUTA = 109,
	WARANG_CITI = 110,
	AHOM = 111,
	ANATOLIAN_HIEROGLYPHS = 112,
	HATRAN = 113,
	MULTANI = 114,
	OLD_HUNGARIAN = 115,
	SIGNWRITING = 116,
};
export @symbol("pango_script_for_unichar") fn script_for_unichar(ch: rune) Script;
export @symbol("pango_script_get_sample_language") fn script_get_sample_language(script: Script) *Language;
export type Stretch = enum uint {
	ULTRA_CONDENSED = 0,
	EXTRA_CONDENSED = 1,
	CONDENSED = 2,
	SEMI_CONDENSED = 3,
	NORMAL = 4,
	SEMI_EXPANDED = 5,
	EXPANDED = 6,
	EXTRA_EXPANDED = 7,
	ULTRA_EXPANDED = 8,
};
export type Style = enum uint {
	NORMAL = 0,
	OBLIQUE = 1,
	ITALIC = 2,
};
export type TabAlign = enum uint {
	LEFT = 0,
	RIGHT = 1,
	CENTER = 2,
	DECIMAL = 3,
};
export type TextTransform = enum uint {
	NONE = 0,
	LOWERCASE = 1,
	UPPERCASE = 2,
	CAPITALIZE = 3,
};
export type Underline = enum uint {
	NONE = 0,
	SINGLE = 1,
	DOUBLE = 2,
	LOW = 3,
	ERROR = 4,
	SINGLE_LINE = 5,
	DOUBLE_LINE = 6,
	ERROR_LINE = 7,
};
export type Variant = enum uint {
	NORMAL = 0,
	SMALL_CAPS = 1,
	ALL_SMALL_CAPS = 2,
	PETITE_CAPS = 3,
	ALL_PETITE_CAPS = 4,
	UNICASE = 5,
	TITLE_CAPS = 6,
};
export type Weight = enum uint {
	THIN = 100,
	ULTRALIGHT = 200,
	LIGHT = 300,
	SEMILIGHT = 350,
	BOOK = 380,
	NORMAL = 400,
	MEDIUM = 500,
	SEMIBOLD = 600,
	BOLD = 700,
	ULTRABOLD = 800,
	HEAVY = 900,
	ULTRAHEAVY = 1000,
};
export type WrapMode = enum uint {
	WORD = 0,
	CHAR = 1,
	WORD_CHAR = 2,
};
export @symbol("pango_attr_allow_breaks_new") fn attr_allow_breaks_new(allow_breaks: glib::boolean) *Attribute;
export @symbol("pango_attr_background_alpha_new") fn attr_background_alpha_new(alpha: u16) *Attribute;
export @symbol("pango_attr_background_new") fn attr_background_new(red: u16, green: u16, blue: u16) *Attribute;
export @symbol("pango_attr_baseline_shift_new") fn attr_baseline_shift_new(shift: int) *Attribute;
export @symbol("pango_attr_break") fn attr_break(text: *c::char, length: int, attr_list: *AttrList, offset_: int, attrs: *LogAttr, attrs_len: int) void;
export @symbol("pango_attr_fallback_new") fn attr_fallback_new(enable_fallback: glib::boolean) *Attribute;
export @symbol("pango_attr_family_new") fn attr_family_new(family: *c::char) *Attribute;
export @symbol("pango_attr_font_scale_new") fn attr_font_scale_new(scale: FontScale) *Attribute;
export @symbol("pango_attr_foreground_alpha_new") fn attr_foreground_alpha_new(alpha: u16) *Attribute;
export @symbol("pango_attr_foreground_new") fn attr_foreground_new(red: u16, green: u16, blue: u16) *Attribute;
export @symbol("pango_attr_gravity_hint_new") fn attr_gravity_hint_new(hint: GravityHint) *Attribute;
export @symbol("pango_attr_gravity_new") fn attr_gravity_new(gravity: Gravity) *Attribute;
export @symbol("pango_attr_insert_hyphens_new") fn attr_insert_hyphens_new(insert_hyphens: glib::boolean) *Attribute;
export @symbol("pango_attr_letter_spacing_new") fn attr_letter_spacing_new(letter_spacing: int) *Attribute;
export @symbol("pango_attr_line_height_new") fn attr_line_height_new(factor: f64) *Attribute;
export @symbol("pango_attr_line_height_new_absolute") fn attr_line_height_new_absolute(height: int) *Attribute;
export @symbol("pango_attr_overline_color_new") fn attr_overline_color_new(red: u16, green: u16, blue: u16) *Attribute;
export @symbol("pango_attr_overline_new") fn attr_overline_new(overline: Overline) *Attribute;
export @symbol("pango_attr_rise_new") fn attr_rise_new(rise: int) *Attribute;
export @symbol("pango_attr_scale_new") fn attr_scale_new(scale_factor: f64) *Attribute;
export @symbol("pango_attr_sentence_new") fn attr_sentence_new() *Attribute;
export @symbol("pango_attr_show_new") fn attr_show_new(flags: ShowFlags) *Attribute;
export @symbol("pango_attr_stretch_new") fn attr_stretch_new(stretch: Stretch) *Attribute;
export @symbol("pango_attr_strikethrough_color_new") fn attr_strikethrough_color_new(red: u16, green: u16, blue: u16) *Attribute;
export @symbol("pango_attr_strikethrough_new") fn attr_strikethrough_new(strikethrough: glib::boolean) *Attribute;
export @symbol("pango_attr_style_new") fn attr_style_new(style: Style) *Attribute;
export @symbol("pango_attr_text_transform_new") fn attr_text_transform_new(transform: TextTransform) *Attribute;
export @symbol("pango_attr_underline_color_new") fn attr_underline_color_new(red: u16, green: u16, blue: u16) *Attribute;
export @symbol("pango_attr_underline_new") fn attr_underline_new(underline: Underline) *Attribute;
export @symbol("pango_attr_variant_new") fn attr_variant_new(variant: Variant) *Attribute;
export @symbol("pango_attr_weight_new") fn attr_weight_new(weight: Weight) *Attribute;
export @symbol("pango_attr_word_new") fn attr_word_new() *Attribute;
export @symbol("pango_break") fn break_(text: *c::char, length: int, analysis: *Analysis, attrs: *LogAttr, attrs_len: int) void;
export @symbol("pango_default_break") fn default_break(text: *c::char, length: int, analysis: *Analysis, attrs: *LogAttr, attrs_len: int) void;
export @symbol("pango_extents_to_pixels") fn extents_to_pixels(inclusive: *Rectangle, nearest: *Rectangle) void;
export @symbol("pango_find_base_dir") fn find_base_dir(text: *c::char, length: int) Direction;
export @symbol("pango_find_paragraph_boundary") fn find_paragraph_boundary(text: *c::char, length: int, paragraph_delimiter_index: *int, next_paragraph_start: *int) void;
export @symbol("pango_get_log_attrs") fn get_log_attrs(text: *c::char, length: int, level: int, language: *Language, attrs: *LogAttr, attrs_len: int) void;
export @symbol("pango_get_mirror_char") fn get_mirror_char(ch: rune, mirrored_ch: *rune) glib::boolean;
export @symbol("pango_is_zero_width") fn is_zero_width(ch: rune) glib::boolean;
export @symbol("pango_itemize") fn itemize(context: *Context, text: *c::char, start_index: int, length: int, attrs: *AttrList, cached_iter: *AttrIterator) *glib::List;
export @symbol("pango_itemize_with_base_dir") fn itemize_with_base_dir(context: *Context, base_dir: Direction, text: *c::char, start_index: int, length: int, attrs: *AttrList, cached_iter: *AttrIterator) *glib::List;
export @symbol("pango_log2vis_get_embedding_levels") fn log2vis_get_embedding_levels(text: *c::char, length: int, pbase_dir: *Direction) *u8;
export @symbol("pango_markup_parser_finish") fn markup_parser_finish(context: *glib::MarkupParseContext, attr_list: **AttrList, text: **c::char, accel_char: *rune, error: nullable **glib::Error) glib::boolean;
export @symbol("pango_markup_parser_new") fn markup_parser_new(accel_marker: rune) *glib::MarkupParseContext;
export @symbol("pango_parse_enum") fn parse_enum(type_: glib::Type, str_: *c::char, value: *int, warn: glib::boolean, possible_values: **c::char) glib::boolean;
export @symbol("pango_parse_markup") fn parse_markup(markup_text: *c::char, length: int, accel_marker: rune, attr_list: **AttrList, text: **c::char, accel_char: *rune, error: nullable **glib::Error) glib::boolean;
export @symbol("pango_parse_stretch") fn parse_stretch(str_: *c::char, stretch: *Stretch, warn: glib::boolean) glib::boolean;
export @symbol("pango_parse_style") fn parse_style(str_: *c::char, style: *Style, warn: glib::boolean) glib::boolean;
export @symbol("pango_parse_variant") fn parse_variant(str_: *c::char, variant: *Variant, warn: glib::boolean) glib::boolean;
export @symbol("pango_parse_weight") fn parse_weight(str_: *c::char, weight: *Weight, warn: glib::boolean) glib::boolean;
export @symbol("pango_quantize_line_geometry") fn quantize_line_geometry(thickness: *int, position: *int) void;
export @symbol("pango_read_line") fn read_line(stream: *libc::FILE, str_: *glib::String) int;
export @symbol("pango_reorder_items") fn reorder_items(items: *glib::List) *glib::List;
export @symbol("pango_scan_int") fn scan_int(pos: **c::char, out: *int) glib::boolean;
export @symbol("pango_scan_string") fn scan_string(pos: **c::char, out: *glib::String) glib::boolean;
export @symbol("pango_scan_word") fn scan_word(pos: **c::char, out: *glib::String) glib::boolean;
export @symbol("pango_shape") fn shape(text: *c::char, length: int, analysis: *Analysis, glyphs: *GlyphString) void;
export @symbol("pango_shape_full") fn shape_full(item_text: *c::char, item_length: int, paragraph_text: *c::char, paragraph_length: int, analysis: *Analysis, glyphs: *GlyphString) void;
export @symbol("pango_shape_item") fn shape_item(item: *Item, paragraph_text: *c::char, paragraph_length: int, log_attrs: *LogAttr, glyphs: *GlyphString, flags: ShapeFlags) void;
export @symbol("pango_shape_with_flags") fn shape_with_flags(item_text: *c::char, item_length: int, paragraph_text: *c::char, paragraph_length: int, analysis: *Analysis, glyphs: *GlyphString, flags: ShapeFlags) void;
export @symbol("pango_skip_space") fn skip_space(pos: **c::char) glib::boolean;
export @symbol("pango_split_file_list") fn split_file_list(str_: *c::char) **c::char;
export @symbol("pango_tailor_break") fn tailor_break(text: *c::char, length: int, analysis: *Analysis, offset_: int, attrs: *LogAttr, attrs_len: int) void;
export @symbol("pango_trim_string") fn trim_string(str_: *c::char) *c::char;
export @symbol("pango_unichar_direction") fn unichar_direction(ch: rune) Direction;
export @symbol("pango_units_from_double") fn units_from_double(d: f64) int;
export @symbol("pango_units_to_double") fn units_to_double(i: int) f64;
export @symbol("pango_version") fn version() int;
export @symbol("pango_version_check") fn version_check(required_major: int, required_minor: int, required_micro: int) *c::char;
export @symbol("pango_version_string") fn version_string() *c::char;
export type FontMask = enum uint {
	FAMILY = 1,
	STYLE = 2,
	VARIANT = 4,
	WEIGHT = 8,
	STRETCH = 16,
	SIZE_ = 32,
	GRAVITY = 64,
	VARIATIONS = 128,
};
export type LayoutDeserializeFlags = enum uint {
	DEFAULT = 0,
	CONTEXT = 1,
};
export type LayoutSerializeFlags = enum uint {
	DEFAULT = 0,
	CONTEXT = 1,
	OUTPUT = 2,
};
export type ShapeFlags = enum uint {
	NONE = 0,
	ROUND_POSITIONS = 1,
};
export type ShowFlags = enum uint {
	NONE = 0,
	SPACES = 1,
	LINE_BREAKS = 2,
	IGNORABLES = 4,
};
export type AttrDataCopyFunc = *fn(user_data: *opaque) *opaque;
export type AttrFilterFunc = *fn(attribute: *Attribute, user_data: *opaque) glib::boolean;
export type FontsetForeachFunc = *fn(fontset: *Fontset, font: *Font, user_data: *opaque) glib::boolean;
