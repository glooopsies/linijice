use gdk4;
use graphene;
use cairo;
use types::c;
use glib;
use pango;
use gobject;
export type BlendNode = *opaque;
export @symbol("gsk_blend_node_new") fn blend_node_new(bottom: *RenderNode, top: *RenderNode, blend_mode: BlendMode) *RenderNode;
export @symbol("gsk_blend_node_get_blend_mode") fn blend_node_get_blend_mode(node: *RenderNode) BlendMode;
export @symbol("gsk_blend_node_get_bottom_child") fn blend_node_get_bottom_child(node: *RenderNode) *RenderNode;
export @symbol("gsk_blend_node_get_top_child") fn blend_node_get_top_child(node: *RenderNode) *RenderNode;
export type BlurNode = *opaque;
export @symbol("gsk_blur_node_new") fn blur_node_new(child: *RenderNode, radius: f32) *RenderNode;
export @symbol("gsk_blur_node_get_child") fn blur_node_get_child(node: *RenderNode) *RenderNode;
export @symbol("gsk_blur_node_get_radius") fn blur_node_get_radius(node: *RenderNode) f32;
export type BorderNode = *opaque;
export @symbol("gsk_border_node_new") fn border_node_new(outline: *RoundedRect, border_width: [4]f32, border_color: [4]gdk4::RGBA) *RenderNode;
export @symbol("gsk_border_node_get_colors") fn border_node_get_colors(node: *RenderNode) *gdk4::RGBA;
export @symbol("gsk_border_node_get_outline") fn border_node_get_outline(node: *RenderNode) *RoundedRect;
export @symbol("gsk_border_node_get_widths") fn border_node_get_widths(node: *RenderNode) [4]f32;
export type BroadwayRenderer = *opaque;
export @symbol("gsk_broadway_renderer_new") fn broadway_renderer_new() *Renderer;
export type CairoNode = *opaque;
export @symbol("gsk_cairo_node_new") fn cairo_node_new(bounds: *graphene::Rect) *RenderNode;
export @symbol("gsk_cairo_node_get_draw_context") fn cairo_node_get_draw_context(node: *RenderNode) *cairo::Context;
export @symbol("gsk_cairo_node_get_surface") fn cairo_node_get_surface(node: *RenderNode) *cairo::Surface;
export type CairoRenderer = *opaque;
export @symbol("gsk_cairo_renderer_new") fn cairo_renderer_new() *Renderer;
export type ClipNode = *opaque;
export @symbol("gsk_clip_node_new") fn clip_node_new(child: *RenderNode, clip: *graphene::Rect) *RenderNode;
export @symbol("gsk_clip_node_get_child") fn clip_node_get_child(node: *RenderNode) *RenderNode;
export @symbol("gsk_clip_node_get_clip") fn clip_node_get_clip(node: *RenderNode) *graphene::Rect;
export type ColorMatrixNode = *opaque;
export @symbol("gsk_color_matrix_node_new") fn color_matrix_node_new(child: *RenderNode, color_matrix: *graphene::Matrix, color_offset: *graphene::Vec4) *RenderNode;
export @symbol("gsk_color_matrix_node_get_child") fn color_matrix_node_get_child(node: *RenderNode) *RenderNode;
export @symbol("gsk_color_matrix_node_get_color_matrix") fn color_matrix_node_get_color_matrix(node: *RenderNode) *graphene::Matrix;
export @symbol("gsk_color_matrix_node_get_color_offset") fn color_matrix_node_get_color_offset(node: *RenderNode) *graphene::Vec4;
export type ColorNode = *opaque;
export @symbol("gsk_color_node_new") fn color_node_new(rgba: *gdk4::RGBA, bounds: *graphene::Rect) *RenderNode;
export @symbol("gsk_color_node_get_color") fn color_node_get_color(node: *RenderNode) *gdk4::RGBA;
export type ConicGradientNode = *opaque;
export @symbol("gsk_conic_gradient_node_new") fn conic_gradient_node_new(bounds: *graphene::Rect, center: *graphene::Point, rotation: f32, color_stops: *ColorStop, n_color_stops: size) *RenderNode;
export @symbol("gsk_conic_gradient_node_get_angle") fn conic_gradient_node_get_angle(node: *RenderNode) f32;
export @symbol("gsk_conic_gradient_node_get_center") fn conic_gradient_node_get_center(node: *RenderNode) *graphene::Point;
export @symbol("gsk_conic_gradient_node_get_color_stops") fn conic_gradient_node_get_color_stops(node: *RenderNode, n_stops: *size) *ColorStop;
export @symbol("gsk_conic_gradient_node_get_n_color_stops") fn conic_gradient_node_get_n_color_stops(node: *RenderNode) size;
export @symbol("gsk_conic_gradient_node_get_rotation") fn conic_gradient_node_get_rotation(node: *RenderNode) f32;
export type ContainerNode = *opaque;
export @symbol("gsk_container_node_new") fn container_node_new(children: **RenderNode, n_children: uint) *RenderNode;
export @symbol("gsk_container_node_get_child") fn container_node_get_child(node: *RenderNode, idx: uint) *RenderNode;
export @symbol("gsk_container_node_get_n_children") fn container_node_get_n_children(node: *RenderNode) uint;
export type CrossFadeNode = *opaque;
export @symbol("gsk_cross_fade_node_new") fn cross_fade_node_new(start: *RenderNode, end: *RenderNode, progress: f32) *RenderNode;
export @symbol("gsk_cross_fade_node_get_end_child") fn cross_fade_node_get_end_child(node: *RenderNode) *RenderNode;
export @symbol("gsk_cross_fade_node_get_progress") fn cross_fade_node_get_progress(node: *RenderNode) f32;
export @symbol("gsk_cross_fade_node_get_start_child") fn cross_fade_node_get_start_child(node: *RenderNode) *RenderNode;
export type DebugNode = *opaque;
export @symbol("gsk_debug_node_new") fn debug_node_new(child: *RenderNode, message: *c::char) *RenderNode;
export @symbol("gsk_debug_node_get_child") fn debug_node_get_child(node: *RenderNode) *RenderNode;
export @symbol("gsk_debug_node_get_message") fn debug_node_get_message(node: *RenderNode) *c::char;
export type GLRenderer = *opaque;
export @symbol("gsk_gl_renderer_new") fn glrenderer_new() *Renderer;
export type GLShader = *opaque;
export @symbol("gsk_gl_shader_new_from_bytes") fn glshader_new_from_bytes(sourcecode: *glib::Bytes) *GLShader;
export @symbol("gsk_gl_shader_new_from_resource") fn glshader_new_from_resource(resource_path: *c::char) *GLShader;
export @symbol("gsk_gl_shader_compile") fn glshader_compile(shader: *GLShader, renderer: *Renderer, error: nullable **glib::Error) glib::boolean;
export @symbol("gsk_gl_shader_find_uniform_by_name") fn glshader_find_uniform_by_name(shader: *GLShader, name: *c::char) int;
export @symbol("gsk_gl_shader_format_args") fn glshader_format_args(shader: *GLShader, ...) *glib::Bytes;
export @symbol("gsk_gl_shader_format_args_va") fn glshader_format_args_va(shader: *GLShader, uniforms: valist) *glib::Bytes;
export @symbol("gsk_gl_shader_get_arg_bool") fn glshader_get_arg_bool(shader: *GLShader, args: *glib::Bytes, idx: int) glib::boolean;
export @symbol("gsk_gl_shader_get_arg_float") fn glshader_get_arg_float(shader: *GLShader, args: *glib::Bytes, idx: int) f32;
export @symbol("gsk_gl_shader_get_arg_int") fn glshader_get_arg_int(shader: *GLShader, args: *glib::Bytes, idx: int) i32;
export @symbol("gsk_gl_shader_get_arg_uint") fn glshader_get_arg_uint(shader: *GLShader, args: *glib::Bytes, idx: int) u32;
export @symbol("gsk_gl_shader_get_arg_vec2") fn glshader_get_arg_vec2(shader: *GLShader, args: *glib::Bytes, idx: int, out_value: *graphene::Vec2) void;
export @symbol("gsk_gl_shader_get_arg_vec3") fn glshader_get_arg_vec3(shader: *GLShader, args: *glib::Bytes, idx: int, out_value: *graphene::Vec3) void;
export @symbol("gsk_gl_shader_get_arg_vec4") fn glshader_get_arg_vec4(shader: *GLShader, args: *glib::Bytes, idx: int, out_value: *graphene::Vec4) void;
export @symbol("gsk_gl_shader_get_args_size") fn glshader_get_args_size(shader: *GLShader) size;
export @symbol("gsk_gl_shader_get_n_textures") fn glshader_get_n_textures(shader: *GLShader) int;
export @symbol("gsk_gl_shader_get_n_uniforms") fn glshader_get_n_uniforms(shader: *GLShader) int;
export @symbol("gsk_gl_shader_get_resource") fn glshader_get_resource(shader: *GLShader) *c::char;
export @symbol("gsk_gl_shader_get_source") fn glshader_get_source(shader: *GLShader) *glib::Bytes;
export @symbol("gsk_gl_shader_get_uniform_name") fn glshader_get_uniform_name(shader: *GLShader, idx: int) *c::char;
export @symbol("gsk_gl_shader_get_uniform_offset") fn glshader_get_uniform_offset(shader: *GLShader, idx: int) int;
export @symbol("gsk_gl_shader_get_uniform_type") fn glshader_get_uniform_type(shader: *GLShader, idx: int) GLUniformType;
export type GLShaderNode = *opaque;
export @symbol("gsk_gl_shader_node_new") fn glshader_node_new(shader: *GLShader, bounds: *graphene::Rect, args: *glib::Bytes, children: **RenderNode, n_children: uint) *RenderNode;
export @symbol("gsk_gl_shader_node_get_args") fn glshader_node_get_args(node: *RenderNode) *glib::Bytes;
export @symbol("gsk_gl_shader_node_get_child") fn glshader_node_get_child(node: *RenderNode, idx: uint) *RenderNode;
export @symbol("gsk_gl_shader_node_get_n_children") fn glshader_node_get_n_children(node: *RenderNode) uint;
export @symbol("gsk_gl_shader_node_get_shader") fn glshader_node_get_shader(node: *RenderNode) *GLShader;
export type InsetShadowNode = *opaque;
export @symbol("gsk_inset_shadow_node_new") fn inset_shadow_node_new(outline: *RoundedRect, color: *gdk4::RGBA, dx: f32, dy: f32, spread: f32, blur_radius: f32) *RenderNode;
export @symbol("gsk_inset_shadow_node_get_blur_radius") fn inset_shadow_node_get_blur_radius(node: *RenderNode) f32;
export @symbol("gsk_inset_shadow_node_get_color") fn inset_shadow_node_get_color(node: *RenderNode) *gdk4::RGBA;
export @symbol("gsk_inset_shadow_node_get_dx") fn inset_shadow_node_get_dx(node: *RenderNode) f32;
export @symbol("gsk_inset_shadow_node_get_dy") fn inset_shadow_node_get_dy(node: *RenderNode) f32;
export @symbol("gsk_inset_shadow_node_get_outline") fn inset_shadow_node_get_outline(node: *RenderNode) *RoundedRect;
export @symbol("gsk_inset_shadow_node_get_spread") fn inset_shadow_node_get_spread(node: *RenderNode) f32;
export type LinearGradientNode = *opaque;
export @symbol("gsk_linear_gradient_node_new") fn linear_gradient_node_new(bounds: *graphene::Rect, start: *graphene::Point, end: *graphene::Point, color_stops: *ColorStop, n_color_stops: size) *RenderNode;
export @symbol("gsk_linear_gradient_node_get_color_stops") fn linear_gradient_node_get_color_stops(node: *RenderNode, n_stops: *size) *ColorStop;
export @symbol("gsk_linear_gradient_node_get_end") fn linear_gradient_node_get_end(node: *RenderNode) *graphene::Point;
export @symbol("gsk_linear_gradient_node_get_n_color_stops") fn linear_gradient_node_get_n_color_stops(node: *RenderNode) size;
export @symbol("gsk_linear_gradient_node_get_start") fn linear_gradient_node_get_start(node: *RenderNode) *graphene::Point;
export type MaskNode = *opaque;
export @symbol("gsk_mask_node_new") fn mask_node_new(source: *RenderNode, mask: *RenderNode, mask_mode: MaskMode) *RenderNode;
export @symbol("gsk_mask_node_get_mask") fn mask_node_get_mask(node: *RenderNode) *RenderNode;
export @symbol("gsk_mask_node_get_mask_mode") fn mask_node_get_mask_mode(node: *RenderNode) MaskMode;
export @symbol("gsk_mask_node_get_source") fn mask_node_get_source(node: *RenderNode) *RenderNode;
export type NglRenderer = *opaque;
export @symbol("gsk_ngl_renderer_new") fn ngl_renderer_new() *Renderer;
export type OpacityNode = *opaque;
export @symbol("gsk_opacity_node_new") fn opacity_node_new(child: *RenderNode, opacity: f32) *RenderNode;
export @symbol("gsk_opacity_node_get_child") fn opacity_node_get_child(node: *RenderNode) *RenderNode;
export @symbol("gsk_opacity_node_get_opacity") fn opacity_node_get_opacity(node: *RenderNode) f32;
export type OutsetShadowNode = *opaque;
export @symbol("gsk_outset_shadow_node_new") fn outset_shadow_node_new(outline: *RoundedRect, color: *gdk4::RGBA, dx: f32, dy: f32, spread: f32, blur_radius: f32) *RenderNode;
export @symbol("gsk_outset_shadow_node_get_blur_radius") fn outset_shadow_node_get_blur_radius(node: *RenderNode) f32;
export @symbol("gsk_outset_shadow_node_get_color") fn outset_shadow_node_get_color(node: *RenderNode) *gdk4::RGBA;
export @symbol("gsk_outset_shadow_node_get_dx") fn outset_shadow_node_get_dx(node: *RenderNode) f32;
export @symbol("gsk_outset_shadow_node_get_dy") fn outset_shadow_node_get_dy(node: *RenderNode) f32;
export @symbol("gsk_outset_shadow_node_get_outline") fn outset_shadow_node_get_outline(node: *RenderNode) *RoundedRect;
export @symbol("gsk_outset_shadow_node_get_spread") fn outset_shadow_node_get_spread(node: *RenderNode) f32;
export type RadialGradientNode = *opaque;
export @symbol("gsk_radial_gradient_node_new") fn radial_gradient_node_new(bounds: *graphene::Rect, center: *graphene::Point, hradius: f32, vradius: f32, start: f32, end: f32, color_stops: *ColorStop, n_color_stops: size) *RenderNode;
export @symbol("gsk_radial_gradient_node_get_center") fn radial_gradient_node_get_center(node: *RenderNode) *graphene::Point;
export @symbol("gsk_radial_gradient_node_get_color_stops") fn radial_gradient_node_get_color_stops(node: *RenderNode, n_stops: *size) *ColorStop;
export @symbol("gsk_radial_gradient_node_get_end") fn radial_gradient_node_get_end(node: *RenderNode) f32;
export @symbol("gsk_radial_gradient_node_get_hradius") fn radial_gradient_node_get_hradius(node: *RenderNode) f32;
export @symbol("gsk_radial_gradient_node_get_n_color_stops") fn radial_gradient_node_get_n_color_stops(node: *RenderNode) size;
export @symbol("gsk_radial_gradient_node_get_start") fn radial_gradient_node_get_start(node: *RenderNode) f32;
export @symbol("gsk_radial_gradient_node_get_vradius") fn radial_gradient_node_get_vradius(node: *RenderNode) f32;
export type RenderNode = *opaque;
export @symbol("gsk_render_node_draw") fn render_node_draw(node: *RenderNode, cr: *cairo::Context) void;
export @symbol("gsk_render_node_get_bounds") fn render_node_get_bounds(node: *RenderNode, bounds: *graphene::Rect) void;
export @symbol("gsk_render_node_get_node_type") fn render_node_get_node_type(node: *RenderNode) RenderNodeType;
export @symbol("gsk_render_node_ref") fn render_node_ref(node: *RenderNode) *RenderNode;
export @symbol("gsk_render_node_serialize") fn render_node_serialize(node: *RenderNode) *glib::Bytes;
export @symbol("gsk_render_node_unref") fn render_node_unref(node: *RenderNode) void;
export @symbol("gsk_render_node_write_to_file") fn render_node_write_to_file(node: *RenderNode, filename: *c::char, error: nullable **glib::Error) glib::boolean;
export @symbol("gsk_render_node_deserialize") fn render_node_deserialize(bytes: *glib::Bytes, error_func: ParseErrorFunc, user_data: *opaque) *RenderNode;
export type Renderer = *opaque;
export @symbol("gsk_renderer_new_for_surface") fn renderer_new_for_surface(surface: *gdk4::Surface) *Renderer;
export @symbol("gsk_renderer_get_surface") fn renderer_get_surface(renderer: *Renderer) *gdk4::Surface;
export @symbol("gsk_renderer_is_realized") fn renderer_is_realized(renderer: *Renderer) glib::boolean;
export @symbol("gsk_renderer_realize") fn renderer_realize(renderer: *Renderer, surface: *gdk4::Surface, error: nullable **glib::Error) glib::boolean;
export @symbol("gsk_renderer_render") fn renderer_render(renderer: *Renderer, root: *RenderNode, region: *cairo::Region) void;
export @symbol("gsk_renderer_render_texture") fn renderer_render_texture(renderer: *Renderer, root: *RenderNode, viewport: *graphene::Rect) *gdk4::Texture;
export @symbol("gsk_renderer_unrealize") fn renderer_unrealize(renderer: *Renderer) void;
export type RepeatNode = *opaque;
export @symbol("gsk_repeat_node_new") fn repeat_node_new(bounds: *graphene::Rect, child: *RenderNode, child_bounds: *graphene::Rect) *RenderNode;
export @symbol("gsk_repeat_node_get_child") fn repeat_node_get_child(node: *RenderNode) *RenderNode;
export @symbol("gsk_repeat_node_get_child_bounds") fn repeat_node_get_child_bounds(node: *RenderNode) *graphene::Rect;
export type RepeatingLinearGradientNode = *opaque;
export @symbol("gsk_repeating_linear_gradient_node_new") fn repeating_linear_gradient_node_new(bounds: *graphene::Rect, start: *graphene::Point, end: *graphene::Point, color_stops: *ColorStop, n_color_stops: size) *RenderNode;
export type RepeatingRadialGradientNode = *opaque;
export @symbol("gsk_repeating_radial_gradient_node_new") fn repeating_radial_gradient_node_new(bounds: *graphene::Rect, center: *graphene::Point, hradius: f32, vradius: f32, start: f32, end: f32, color_stops: *ColorStop, n_color_stops: size) *RenderNode;
export type RoundedClipNode = *opaque;
export @symbol("gsk_rounded_clip_node_new") fn rounded_clip_node_new(child: *RenderNode, clip: *RoundedRect) *RenderNode;
export @symbol("gsk_rounded_clip_node_get_child") fn rounded_clip_node_get_child(node: *RenderNode) *RenderNode;
export @symbol("gsk_rounded_clip_node_get_clip") fn rounded_clip_node_get_clip(node: *RenderNode) *RoundedRect;
export type ShadowNode = *opaque;
export @symbol("gsk_shadow_node_new") fn shadow_node_new(child: *RenderNode, shadows: *Shadow, n_shadows: size) *RenderNode;
export @symbol("gsk_shadow_node_get_child") fn shadow_node_get_child(node: *RenderNode) *RenderNode;
export @symbol("gsk_shadow_node_get_n_shadows") fn shadow_node_get_n_shadows(node: *RenderNode) size;
export @symbol("gsk_shadow_node_get_shadow") fn shadow_node_get_shadow(node: *RenderNode, i: size) *Shadow;
export type TextNode = *opaque;
export @symbol("gsk_text_node_new") fn text_node_new(font: *pango::Font, glyphs: *pango::GlyphString, color: *gdk4::RGBA, offset_: *graphene::Point) *RenderNode;
export @symbol("gsk_text_node_get_color") fn text_node_get_color(node: *RenderNode) *gdk4::RGBA;
export @symbol("gsk_text_node_get_font") fn text_node_get_font(node: *RenderNode) *pango::Font;
export @symbol("gsk_text_node_get_glyphs") fn text_node_get_glyphs(node: *RenderNode, n_glyphs: *uint) *pango::GlyphInfo;
export @symbol("gsk_text_node_get_num_glyphs") fn text_node_get_num_glyphs(node: *RenderNode) uint;
export @symbol("gsk_text_node_get_offset") fn text_node_get_offset(node: *RenderNode) *graphene::Point;
export @symbol("gsk_text_node_has_color_glyphs") fn text_node_has_color_glyphs(node: *RenderNode) glib::boolean;
export type TextureNode = *opaque;
export @symbol("gsk_texture_node_new") fn texture_node_new(texture: *gdk4::Texture, bounds: *graphene::Rect) *RenderNode;
export @symbol("gsk_texture_node_get_texture") fn texture_node_get_texture(node: *RenderNode) *gdk4::Texture;
export type TextureScaleNode = *opaque;
export @symbol("gsk_texture_scale_node_new") fn texture_scale_node_new(texture: *gdk4::Texture, bounds: *graphene::Rect, filter: ScalingFilter) *RenderNode;
export @symbol("gsk_texture_scale_node_get_filter") fn texture_scale_node_get_filter(node: *RenderNode) ScalingFilter;
export @symbol("gsk_texture_scale_node_get_texture") fn texture_scale_node_get_texture(node: *RenderNode) *gdk4::Texture;
export type TransformNode = *opaque;
export @symbol("gsk_transform_node_new") fn transform_node_new(child: *RenderNode, transform: *Transform) *RenderNode;
export @symbol("gsk_transform_node_get_child") fn transform_node_get_child(node: *RenderNode) *RenderNode;
export @symbol("gsk_transform_node_get_transform") fn transform_node_get_transform(node: *RenderNode) *Transform;
export type BroadwayRendererClass = *opaque;
export type CairoRendererClass = *opaque;
export type ColorStop = struct {
	offset_: f32,
	color: gdk4::RGBA,
};
export type GLRendererClass = *opaque;
export type GLShaderClass = struct {
	parent_class: gobject::ObjectClass,
};
export type ParseLocation = struct {
	bytes: size,
	chars: size,
	lines: size,
	line_bytes: size,
	line_chars: size,
};
export type RendererClass = *opaque;
export type RoundedRect = struct {
	bounds: graphene::Rect,
	corner: [4]graphene::Size,
};
export @symbol("gsk_rounded_rect_contains_point") fn rounded_rect_contains_point(self: *RoundedRect, point: *graphene::Point) glib::boolean;
export @symbol("gsk_rounded_rect_contains_rect") fn rounded_rect_contains_rect(self: *RoundedRect, rect: *graphene::Rect) glib::boolean;
export @symbol("gsk_rounded_rect_init") fn rounded_rect_init(self: *RoundedRect, bounds: *graphene::Rect, top_left: *graphene::Size, top_right: *graphene::Size, bottom_right: *graphene::Size, bottom_left: *graphene::Size) *RoundedRect;
export @symbol("gsk_rounded_rect_init_copy") fn rounded_rect_init_copy(self: *RoundedRect, src: *RoundedRect) *RoundedRect;
export @symbol("gsk_rounded_rect_init_from_rect") fn rounded_rect_init_from_rect(self: *RoundedRect, bounds: *graphene::Rect, radius: f32) *RoundedRect;
export @symbol("gsk_rounded_rect_intersects_rect") fn rounded_rect_intersects_rect(self: *RoundedRect, rect: *graphene::Rect) glib::boolean;
export @symbol("gsk_rounded_rect_is_rectilinear") fn rounded_rect_is_rectilinear(self: *RoundedRect) glib::boolean;
export @symbol("gsk_rounded_rect_normalize") fn rounded_rect_normalize(self: *RoundedRect) *RoundedRect;
export @symbol("gsk_rounded_rect_offset") fn rounded_rect_offset(self: *RoundedRect, dx: f32, dy: f32) *RoundedRect;
export @symbol("gsk_rounded_rect_shrink") fn rounded_rect_shrink(self: *RoundedRect, top: f32, right: f32, bottom: f32, left: f32) *RoundedRect;
export type ShaderArgsBuilder = *opaque;
export @symbol("gsk_shader_args_builder_new") fn shader_args_builder_new(shader: *GLShader, initial_values: *glib::Bytes) *ShaderArgsBuilder;
export @symbol("gsk_shader_args_builder_free_to_args") fn shader_args_builder_free_to_args(builder: *ShaderArgsBuilder) *glib::Bytes;
export @symbol("gsk_shader_args_builder_ref") fn shader_args_builder_ref(builder: *ShaderArgsBuilder) *ShaderArgsBuilder;
export @symbol("gsk_shader_args_builder_set_bool") fn shader_args_builder_set_bool(builder: *ShaderArgsBuilder, idx: int, value: glib::boolean) void;
export @symbol("gsk_shader_args_builder_set_float") fn shader_args_builder_set_float(builder: *ShaderArgsBuilder, idx: int, value: f32) void;
export @symbol("gsk_shader_args_builder_set_int") fn shader_args_builder_set_int(builder: *ShaderArgsBuilder, idx: int, value: i32) void;
export @symbol("gsk_shader_args_builder_set_uint") fn shader_args_builder_set_uint(builder: *ShaderArgsBuilder, idx: int, value: u32) void;
export @symbol("gsk_shader_args_builder_set_vec2") fn shader_args_builder_set_vec2(builder: *ShaderArgsBuilder, idx: int, value: *graphene::Vec2) void;
export @symbol("gsk_shader_args_builder_set_vec3") fn shader_args_builder_set_vec3(builder: *ShaderArgsBuilder, idx: int, value: *graphene::Vec3) void;
export @symbol("gsk_shader_args_builder_set_vec4") fn shader_args_builder_set_vec4(builder: *ShaderArgsBuilder, idx: int, value: *graphene::Vec4) void;
export @symbol("gsk_shader_args_builder_to_args") fn shader_args_builder_to_args(builder: *ShaderArgsBuilder) *glib::Bytes;
export @symbol("gsk_shader_args_builder_unref") fn shader_args_builder_unref(builder: *ShaderArgsBuilder) void;
export type Shadow = struct {
	color: gdk4::RGBA,
	dx: f32,
	dy: f32,
	radius: f32,
};
export type Transform = *opaque;
export @symbol("gsk_transform_new") fn transform_new() *Transform;
export @symbol("gsk_transform_equal") fn transform_equal(first: *Transform, second: *Transform) glib::boolean;
export @symbol("gsk_transform_get_category") fn transform_get_category(self: *Transform) TransformCategory;
export @symbol("gsk_transform_invert") fn transform_invert(self: *Transform) *Transform;
export @symbol("gsk_transform_matrix") fn transform_matrix(next: *Transform, matrix: *graphene::Matrix) *Transform;
export @symbol("gsk_transform_perspective") fn transform_perspective(next: *Transform, depth: f32) *Transform;
export @symbol("gsk_transform_print") fn transform_print(self: *Transform, string: *glib::String) void;
export @symbol("gsk_transform_ref") fn transform_ref(self: *Transform) *Transform;
export @symbol("gsk_transform_rotate") fn transform_rotate(next: *Transform, angle: f32) *Transform;
export @symbol("gsk_transform_rotate_3d") fn transform_rotate_3d(next: *Transform, angle: f32, axis: *graphene::Vec3) *Transform;
export @symbol("gsk_transform_scale") fn transform_scale(next: *Transform, factor_x: f32, factor_y: f32) *Transform;
export @symbol("gsk_transform_scale_3d") fn transform_scale_3d(next: *Transform, factor_x: f32, factor_y: f32, factor_z: f32) *Transform;
export @symbol("gsk_transform_skew") fn transform_skew(next: *Transform, skew_x: f32, skew_y: f32) *Transform;
export @symbol("gsk_transform_to_2d") fn transform_to_2d(self: *Transform, out_xx: *f32, out_yx: *f32, out_xy: *f32, out_yy: *f32, out_dx: *f32, out_dy: *f32) void;
export @symbol("gsk_transform_to_2d_components") fn transform_to_2d_components(self: *Transform, out_skew_x: *f32, out_skew_y: *f32, out_scale_x: *f32, out_scale_y: *f32, out_angle: *f32, out_dx: *f32, out_dy: *f32) void;
export @symbol("gsk_transform_to_affine") fn transform_to_affine(self: *Transform, out_scale_x: *f32, out_scale_y: *f32, out_dx: *f32, out_dy: *f32) void;
export @symbol("gsk_transform_to_matrix") fn transform_to_matrix(self: *Transform, out_matrix: *graphene::Matrix) void;
export @symbol("gsk_transform_to_string") fn transform_to_string(self: *Transform) *c::char;
export @symbol("gsk_transform_to_translate") fn transform_to_translate(self: *Transform, out_dx: *f32, out_dy: *f32) void;
export @symbol("gsk_transform_transform") fn transform_transform(next: *Transform, other: *Transform) *Transform;
export @symbol("gsk_transform_transform_bounds") fn transform_transform_bounds(self: *Transform, rect: *graphene::Rect, out_rect: *graphene::Rect) void;
export @symbol("gsk_transform_transform_point") fn transform_transform_point(self: *Transform, point: *graphene::Point, out_point: *graphene::Point) void;
export @symbol("gsk_transform_translate") fn transform_translate(next: *Transform, point: *graphene::Point) *Transform;
export @symbol("gsk_transform_translate_3d") fn transform_translate_3d(next: *Transform, point: *graphene::Point3D) *Transform;
export @symbol("gsk_transform_unref") fn transform_unref(self: *Transform) void;
export @symbol("gsk_transform_parse") fn transform_parse(string: *c::char, out_transform: **Transform) glib::boolean;
export type BlendMode = enum uint {
	DEFAULT = 0,
	MULTIPLY = 1,
	SCREEN = 2,
	OVERLAY = 3,
	DARKEN = 4,
	LIGHTEN = 5,
	COLOR_DODGE = 6,
	COLOR_BURN = 7,
	HARD_LIGHT = 8,
	SOFT_LIGHT = 9,
	DIFFERENCE = 10,
	EXCLUSION = 11,
	COLOR = 12,
	HUE = 13,
	SATURATION = 14,
	LUMINOSITY = 15,
};
export type Corner = enum uint {
	TOP_LEFT = 0,
	TOP_RIGHT = 1,
	BOTTOM_RIGHT = 2,
	BOTTOM_LEFT = 3,
};
export type GLUniformType = enum uint {
	NONE = 0,
	FLOAT = 1,
	INT_ = 2,
	UINT_ = 3,
	BOOL_ = 4,
	VEC2 = 5,
	VEC3 = 6,
	VEC4 = 7,
};
export type MaskMode = enum uint {
	ALPHA = 0,
	INVERTED_ALPHA = 1,
	LUMINANCE = 2,
	INVERTED_LUMINANCE = 3,
};
export type RenderNodeType = enum uint {
	NOT_A_RENDER_NODE = 0,
	CONTAINER_NODE = 1,
	CAIRO_NODE = 2,
	COLOR_NODE = 3,
	LINEAR_GRADIENT_NODE = 4,
	REPEATING_LINEAR_GRADIENT_NODE = 5,
	RADIAL_GRADIENT_NODE = 6,
	REPEATING_RADIAL_GRADIENT_NODE = 7,
	CONIC_GRADIENT_NODE = 8,
	BORDER_NODE = 9,
	TEXTURE_NODE = 10,
	INSET_SHADOW_NODE = 11,
	OUTSET_SHADOW_NODE = 12,
	TRANSFORM_NODE = 13,
	OPACITY_NODE = 14,
	COLOR_MATRIX_NODE = 15,
	REPEAT_NODE = 16,
	CLIP_NODE = 17,
	ROUNDED_CLIP_NODE = 18,
	SHADOW_NODE = 19,
	BLEND_NODE = 20,
	CROSS_FADE_NODE = 21,
	TEXT_NODE = 22,
	BLUR_NODE = 23,
	DEBUG_NODE = 24,
	GL_SHADER_NODE = 25,
	TEXTURE_SCALE_NODE = 26,
	MASK_NODE = 27,
};
export type ScalingFilter = enum uint {
	LINEAR = 0,
	NEAREST = 1,
	TRILINEAR = 2,
};
export type SerializationError = enum uint {
	UNSUPPORTED_FORMAT = 0,
	UNSUPPORTED_VERSION = 1,
	INVALID_DATA = 2,
};
export @symbol("gsk_serialization_error_quark") fn serialization_error_quark() glib::Quark;
export type TransformCategory = enum uint {
	UNKNOWN = 0,
	ANY = 1,
	_3D = 2,
	_2D = 3,
	_2D_AFFINE = 4,
	_2D_TRANSLATE = 5,
	IDENTITY = 6,
};
export @symbol("gsk_value_dup_render_node") fn value_dup_render_node(value: *gobject::Value) *RenderNode;
export @symbol("gsk_value_get_render_node") fn value_get_render_node(value: *gobject::Value) *RenderNode;
export @symbol("gsk_value_set_render_node") fn value_set_render_node(value: *gobject::Value, node: *RenderNode) void;
export @symbol("gsk_value_take_render_node") fn value_take_render_node(value: *gobject::Value, node: *RenderNode) void;
export type ParseErrorFunc = *fn(start: *ParseLocation, end: *ParseLocation, error: *glib::Error, user_data: *opaque) void;
