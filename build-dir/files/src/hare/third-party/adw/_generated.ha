use gtk4;
use types::c;
use glib;
use gobject;
use gio;
use gdk4;
use pango;
export type AboutWindow = *opaque;
export @symbol("adw_about_window_new") fn about_window_new() *gtk4::Widget;
export @symbol("adw_about_window_new_from_appdata") fn about_window_new_from_appdata(resource_path: *c::char, release_notes_version: *c::char) *gtk4::Widget;
export @symbol("adw_about_window_add_acknowledgement_section") fn about_window_add_acknowledgement_section(self: *AboutWindow, name: *c::char, people: **c::char) void;
export @symbol("adw_about_window_add_credit_section") fn about_window_add_credit_section(self: *AboutWindow, name: *c::char, people: **c::char) void;
export @symbol("adw_about_window_add_legal_section") fn about_window_add_legal_section(self: *AboutWindow, title: *c::char, copyright: *c::char, license_type: gtk4::License, license: *c::char) void;
export @symbol("adw_about_window_add_link") fn about_window_add_link(self: *AboutWindow, title: *c::char, url: *c::char) void;
export @symbol("adw_about_window_get_application_icon") fn about_window_get_application_icon(self: *AboutWindow) *c::char;
export @symbol("adw_about_window_get_application_name") fn about_window_get_application_name(self: *AboutWindow) *c::char;
export @symbol("adw_about_window_get_artists") fn about_window_get_artists(self: *AboutWindow) **c::char;
export @symbol("adw_about_window_get_comments") fn about_window_get_comments(self: *AboutWindow) *c::char;
export @symbol("adw_about_window_get_copyright") fn about_window_get_copyright(self: *AboutWindow) *c::char;
export @symbol("adw_about_window_get_debug_info") fn about_window_get_debug_info(self: *AboutWindow) *c::char;
export @symbol("adw_about_window_get_debug_info_filename") fn about_window_get_debug_info_filename(self: *AboutWindow) *c::char;
export @symbol("adw_about_window_get_designers") fn about_window_get_designers(self: *AboutWindow) **c::char;
export @symbol("adw_about_window_get_developer_name") fn about_window_get_developer_name(self: *AboutWindow) *c::char;
export @symbol("adw_about_window_get_developers") fn about_window_get_developers(self: *AboutWindow) **c::char;
export @symbol("adw_about_window_get_documenters") fn about_window_get_documenters(self: *AboutWindow) **c::char;
export @symbol("adw_about_window_get_issue_url") fn about_window_get_issue_url(self: *AboutWindow) *c::char;
export @symbol("adw_about_window_get_license") fn about_window_get_license(self: *AboutWindow) *c::char;
export @symbol("adw_about_window_get_license_type") fn about_window_get_license_type(self: *AboutWindow) gtk4::License;
export @symbol("adw_about_window_get_release_notes") fn about_window_get_release_notes(self: *AboutWindow) *c::char;
export @symbol("adw_about_window_get_release_notes_version") fn about_window_get_release_notes_version(self: *AboutWindow) *c::char;
export @symbol("adw_about_window_get_support_url") fn about_window_get_support_url(self: *AboutWindow) *c::char;
export @symbol("adw_about_window_get_translator_credits") fn about_window_get_translator_credits(self: *AboutWindow) *c::char;
export @symbol("adw_about_window_get_version") fn about_window_get_version(self: *AboutWindow) *c::char;
export @symbol("adw_about_window_get_website") fn about_window_get_website(self: *AboutWindow) *c::char;
export @symbol("adw_about_window_set_application_icon") fn about_window_set_application_icon(self: *AboutWindow, application_icon: *c::char) void;
export @symbol("adw_about_window_set_application_name") fn about_window_set_application_name(self: *AboutWindow, application_name: *c::char) void;
export @symbol("adw_about_window_set_artists") fn about_window_set_artists(self: *AboutWindow, artists: **c::char) void;
export @symbol("adw_about_window_set_comments") fn about_window_set_comments(self: *AboutWindow, comments: *c::char) void;
export @symbol("adw_about_window_set_copyright") fn about_window_set_copyright(self: *AboutWindow, copyright: *c::char) void;
export @symbol("adw_about_window_set_debug_info") fn about_window_set_debug_info(self: *AboutWindow, debug_info: *c::char) void;
export @symbol("adw_about_window_set_debug_info_filename") fn about_window_set_debug_info_filename(self: *AboutWindow, filename: *c::char) void;
export @symbol("adw_about_window_set_designers") fn about_window_set_designers(self: *AboutWindow, designers: **c::char) void;
export @symbol("adw_about_window_set_developer_name") fn about_window_set_developer_name(self: *AboutWindow, developer_name: *c::char) void;
export @symbol("adw_about_window_set_developers") fn about_window_set_developers(self: *AboutWindow, developers: **c::char) void;
export @symbol("adw_about_window_set_documenters") fn about_window_set_documenters(self: *AboutWindow, documenters: **c::char) void;
export @symbol("adw_about_window_set_issue_url") fn about_window_set_issue_url(self: *AboutWindow, issue_url: *c::char) void;
export @symbol("adw_about_window_set_license") fn about_window_set_license(self: *AboutWindow, license: *c::char) void;
export @symbol("adw_about_window_set_license_type") fn about_window_set_license_type(self: *AboutWindow, license_type: gtk4::License) void;
export @symbol("adw_about_window_set_release_notes") fn about_window_set_release_notes(self: *AboutWindow, release_notes: *c::char) void;
export @symbol("adw_about_window_set_release_notes_version") fn about_window_set_release_notes_version(self: *AboutWindow, version: *c::char) void;
export @symbol("adw_about_window_set_support_url") fn about_window_set_support_url(self: *AboutWindow, support_url: *c::char) void;
export @symbol("adw_about_window_set_translator_credits") fn about_window_set_translator_credits(self: *AboutWindow, translator_credits: *c::char) void;
export @symbol("adw_about_window_set_version") fn about_window_set_version(self: *AboutWindow, version: *c::char) void;
export @symbol("adw_about_window_set_website") fn about_window_set_website(self: *AboutWindow, website: *c::char) void;
export fn about_window_connect_activate_link(
	instance: *AboutWindow,
	handler: *fn(instance: *AboutWindow, uri: *c::char, data: *opaque) glib::boolean,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"activate-link\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export type ActionRow = struct {
	parent_instance: PreferencesRow,
};
export @symbol("adw_action_row_new") fn action_row_new() *gtk4::Widget;
export @symbol("adw_action_row_activate") fn action_row_activate(self: *ActionRow) void;
export @symbol("adw_action_row_add_prefix") fn action_row_add_prefix(self: *ActionRow, widget: *gtk4::Widget) void;
export @symbol("adw_action_row_add_suffix") fn action_row_add_suffix(self: *ActionRow, widget: *gtk4::Widget) void;
export @symbol("adw_action_row_get_activatable_widget") fn action_row_get_activatable_widget(self: *ActionRow) *gtk4::Widget;
export @symbol("adw_action_row_get_icon_name") fn action_row_get_icon_name(self: *ActionRow) *c::char;
export @symbol("adw_action_row_get_subtitle") fn action_row_get_subtitle(self: *ActionRow) *c::char;
export @symbol("adw_action_row_get_subtitle_lines") fn action_row_get_subtitle_lines(self: *ActionRow) int;
export @symbol("adw_action_row_get_subtitle_selectable") fn action_row_get_subtitle_selectable(self: *ActionRow) glib::boolean;
export @symbol("adw_action_row_get_title_lines") fn action_row_get_title_lines(self: *ActionRow) int;
export @symbol("adw_action_row_remove") fn action_row_remove(self: *ActionRow, widget: *gtk4::Widget) void;
export @symbol("adw_action_row_set_activatable_widget") fn action_row_set_activatable_widget(self: *ActionRow, widget: *gtk4::Widget) void;
export @symbol("adw_action_row_set_icon_name") fn action_row_set_icon_name(self: *ActionRow, icon_name: *c::char) void;
export @symbol("adw_action_row_set_subtitle") fn action_row_set_subtitle(self: *ActionRow, subtitle: *c::char) void;
export @symbol("adw_action_row_set_subtitle_lines") fn action_row_set_subtitle_lines(self: *ActionRow, subtitle_lines: int) void;
export @symbol("adw_action_row_set_subtitle_selectable") fn action_row_set_subtitle_selectable(self: *ActionRow, subtitle_selectable: glib::boolean) void;
export @symbol("adw_action_row_set_title_lines") fn action_row_set_title_lines(self: *ActionRow, title_lines: int) void;
export fn action_row_connect_activated(
	instance: *ActionRow,
	handler: *fn(instance: *ActionRow, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"activated\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export type Animation = struct {
	parent_instance: gobject::Object,
};
export @symbol("adw_animation_get_follow_enable_animations_setting") fn animation_get_follow_enable_animations_setting(self: *Animation) glib::boolean;
export @symbol("adw_animation_get_state") fn animation_get_state(self: *Animation) AnimationState;
export @symbol("adw_animation_get_target") fn animation_get_target(self: *Animation) *AnimationTarget;
export @symbol("adw_animation_get_value") fn animation_get_value(self: *Animation) f64;
export @symbol("adw_animation_get_widget") fn animation_get_widget(self: *Animation) *gtk4::Widget;
export @symbol("adw_animation_pause") fn animation_pause(self: *Animation) void;
export @symbol("adw_animation_play") fn animation_play(self: *Animation) void;
export @symbol("adw_animation_reset") fn animation_reset(self: *Animation) void;
export @symbol("adw_animation_resume") fn animation_resume(self: *Animation) void;
export @symbol("adw_animation_set_follow_enable_animations_setting") fn animation_set_follow_enable_animations_setting(self: *Animation, setting: glib::boolean) void;
export @symbol("adw_animation_set_target") fn animation_set_target(self: *Animation, target: *AnimationTarget) void;
export @symbol("adw_animation_skip") fn animation_skip(self: *Animation) void;
export fn animation_connect_done(
	instance: *Animation,
	handler: *fn(instance: *Animation, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"done\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export type AnimationTarget = *opaque;
export type Application = struct {
	parent_instance: gtk4::Application,
};
export @symbol("adw_application_new") fn application_new(application_id: *c::char, flags: gio::ApplicationFlags) *Application;
export @symbol("adw_application_get_style_manager") fn application_get_style_manager(self: *Application) *StyleManager;
export type ApplicationWindow = struct {
	parent_instance: gtk4::ApplicationWindow,
};
export @symbol("adw_application_window_new") fn application_window_new(app: *gtk4::Application) *gtk4::Widget;
export @symbol("adw_application_window_add_breakpoint") fn application_window_add_breakpoint(self: *ApplicationWindow, breakpoint: *Breakpoint) void;
export @symbol("adw_application_window_get_content") fn application_window_get_content(self: *ApplicationWindow) *gtk4::Widget;
export @symbol("adw_application_window_get_current_breakpoint") fn application_window_get_current_breakpoint(self: *ApplicationWindow) *Breakpoint;
export @symbol("adw_application_window_set_content") fn application_window_set_content(self: *ApplicationWindow, content: *gtk4::Widget) void;
export type Avatar = *opaque;
export @symbol("adw_avatar_new") fn avatar_new(size_: int, text: *c::char, show_initials: glib::boolean) *gtk4::Widget;
export @symbol("adw_avatar_draw_to_texture") fn avatar_draw_to_texture(self: *Avatar, scale_factor: int) *gdk4::Texture;
export @symbol("adw_avatar_get_custom_image") fn avatar_get_custom_image(self: *Avatar) *gdk4::Paintable;
export @symbol("adw_avatar_get_icon_name") fn avatar_get_icon_name(self: *Avatar) *c::char;
export @symbol("adw_avatar_get_show_initials") fn avatar_get_show_initials(self: *Avatar) glib::boolean;
export @symbol("adw_avatar_get_size") fn avatar_get_size(self: *Avatar) int;
export @symbol("adw_avatar_get_text") fn avatar_get_text(self: *Avatar) *c::char;
export @symbol("adw_avatar_set_custom_image") fn avatar_set_custom_image(self: *Avatar, custom_image: *gdk4::Paintable) void;
export @symbol("adw_avatar_set_icon_name") fn avatar_set_icon_name(self: *Avatar, icon_name: *c::char) void;
export @symbol("adw_avatar_set_show_initials") fn avatar_set_show_initials(self: *Avatar, show_initials: glib::boolean) void;
export @symbol("adw_avatar_set_size") fn avatar_set_size(self: *Avatar, size_: int) void;
export @symbol("adw_avatar_set_text") fn avatar_set_text(self: *Avatar, text: *c::char) void;
export type Banner = *opaque;
export @symbol("adw_banner_new") fn banner_new(title: *c::char) *gtk4::Widget;
export @symbol("adw_banner_get_button_label") fn banner_get_button_label(self: *Banner) *c::char;
export @symbol("adw_banner_get_revealed") fn banner_get_revealed(self: *Banner) glib::boolean;
export @symbol("adw_banner_get_title") fn banner_get_title(self: *Banner) *c::char;
export @symbol("adw_banner_get_use_markup") fn banner_get_use_markup(self: *Banner) glib::boolean;
export @symbol("adw_banner_set_button_label") fn banner_set_button_label(self: *Banner, label: *c::char) void;
export @symbol("adw_banner_set_revealed") fn banner_set_revealed(self: *Banner, revealed: glib::boolean) void;
export @symbol("adw_banner_set_title") fn banner_set_title(self: *Banner, title: *c::char) void;
export @symbol("adw_banner_set_use_markup") fn banner_set_use_markup(self: *Banner, use_markup: glib::boolean) void;
export fn banner_connect_button_clicked(
	instance: *Banner,
	handler: *fn(instance: *Banner, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"button-clicked\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export type Bin = struct {
	parent_instance: gtk4::Widget,
};
export @symbol("adw_bin_new") fn bin_new() *gtk4::Widget;
export @symbol("adw_bin_get_child") fn bin_get_child(self: *Bin) *gtk4::Widget;
export @symbol("adw_bin_set_child") fn bin_set_child(self: *Bin, child: *gtk4::Widget) void;
export type Breakpoint = *opaque;
export @symbol("adw_breakpoint_new") fn breakpoint_new(condition: *BreakpointCondition) *Breakpoint;
export @symbol("adw_breakpoint_add_setter") fn breakpoint_add_setter(self: *Breakpoint, object: *gobject::Object, property: *c::char, value: *gobject::Value) void;
export @symbol("adw_breakpoint_add_setters") fn breakpoint_add_setters(self: *Breakpoint, first_object: *gobject::Object, first_property: *c::char, ...) void;
export @symbol("adw_breakpoint_add_setters_valist") fn breakpoint_add_setters_valist(self: *Breakpoint, first_object: *gobject::Object, first_property: *c::char, args: valist) void;
export @symbol("adw_breakpoint_add_settersv") fn breakpoint_add_settersv(self: *Breakpoint, n_setters: int, objects: **gobject::Object, names: **c::char, values: **gobject::Value) void;
export @symbol("adw_breakpoint_get_condition") fn breakpoint_get_condition(self: *Breakpoint) *BreakpointCondition;
export @symbol("adw_breakpoint_set_condition") fn breakpoint_set_condition(self: *Breakpoint, condition: *BreakpointCondition) void;
export fn breakpoint_connect_apply(
	instance: *Breakpoint,
	handler: *fn(instance: *Breakpoint, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"apply\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn breakpoint_connect_unapply(
	instance: *Breakpoint,
	handler: *fn(instance: *Breakpoint, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"unapply\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export type BreakpointBin = struct {
	parent_instance: gtk4::Widget,
};
export @symbol("adw_breakpoint_bin_new") fn breakpoint_bin_new() *gtk4::Widget;
export @symbol("adw_breakpoint_bin_add_breakpoint") fn breakpoint_bin_add_breakpoint(self: *BreakpointBin, breakpoint: *Breakpoint) void;
export @symbol("adw_breakpoint_bin_get_child") fn breakpoint_bin_get_child(self: *BreakpointBin) *gtk4::Widget;
export @symbol("adw_breakpoint_bin_get_current_breakpoint") fn breakpoint_bin_get_current_breakpoint(self: *BreakpointBin) *Breakpoint;
export @symbol("adw_breakpoint_bin_set_child") fn breakpoint_bin_set_child(self: *BreakpointBin, child: *gtk4::Widget) void;
export type ButtonContent = *opaque;
export @symbol("adw_button_content_new") fn button_content_new() *gtk4::Widget;
export @symbol("adw_button_content_get_can_shrink") fn button_content_get_can_shrink(self: *ButtonContent) glib::boolean;
export @symbol("adw_button_content_get_icon_name") fn button_content_get_icon_name(self: *ButtonContent) *c::char;
export @symbol("adw_button_content_get_label") fn button_content_get_label(self: *ButtonContent) *c::char;
export @symbol("adw_button_content_get_use_underline") fn button_content_get_use_underline(self: *ButtonContent) glib::boolean;
export @symbol("adw_button_content_set_can_shrink") fn button_content_set_can_shrink(self: *ButtonContent, can_shrink: glib::boolean) void;
export @symbol("adw_button_content_set_icon_name") fn button_content_set_icon_name(self: *ButtonContent, icon_name: *c::char) void;
export @symbol("adw_button_content_set_label") fn button_content_set_label(self: *ButtonContent, label: *c::char) void;
export @symbol("adw_button_content_set_use_underline") fn button_content_set_use_underline(self: *ButtonContent, use_underline: glib::boolean) void;
export type CallbackAnimationTarget = *opaque;
export @symbol("adw_callback_animation_target_new") fn callback_animation_target_new(callback: AnimationTargetFunc, user_data: *opaque, destroy: glib::DestroyNotify) *AnimationTarget;
export type Carousel = *opaque;
export @symbol("adw_carousel_new") fn carousel_new() *gtk4::Widget;
export @symbol("adw_carousel_append") fn carousel_append(self: *Carousel, child: *gtk4::Widget) void;
export @symbol("adw_carousel_get_allow_long_swipes") fn carousel_get_allow_long_swipes(self: *Carousel) glib::boolean;
export @symbol("adw_carousel_get_allow_mouse_drag") fn carousel_get_allow_mouse_drag(self: *Carousel) glib::boolean;
export @symbol("adw_carousel_get_allow_scroll_wheel") fn carousel_get_allow_scroll_wheel(self: *Carousel) glib::boolean;
export @symbol("adw_carousel_get_interactive") fn carousel_get_interactive(self: *Carousel) glib::boolean;
export @symbol("adw_carousel_get_n_pages") fn carousel_get_n_pages(self: *Carousel) uint;
export @symbol("adw_carousel_get_nth_page") fn carousel_get_nth_page(self: *Carousel, n: uint) *gtk4::Widget;
export @symbol("adw_carousel_get_position") fn carousel_get_position(self: *Carousel) f64;
export @symbol("adw_carousel_get_reveal_duration") fn carousel_get_reveal_duration(self: *Carousel) uint;
export @symbol("adw_carousel_get_scroll_params") fn carousel_get_scroll_params(self: *Carousel) *SpringParams;
export @symbol("adw_carousel_get_spacing") fn carousel_get_spacing(self: *Carousel) uint;
export @symbol("adw_carousel_insert") fn carousel_insert(self: *Carousel, child: *gtk4::Widget, position: int) void;
export @symbol("adw_carousel_prepend") fn carousel_prepend(self: *Carousel, child: *gtk4::Widget) void;
export @symbol("adw_carousel_remove") fn carousel_remove(self: *Carousel, child: *gtk4::Widget) void;
export @symbol("adw_carousel_reorder") fn carousel_reorder(self: *Carousel, child: *gtk4::Widget, position: int) void;
export @symbol("adw_carousel_scroll_to") fn carousel_scroll_to(self: *Carousel, widget: *gtk4::Widget, animate: glib::boolean) void;
export @symbol("adw_carousel_set_allow_long_swipes") fn carousel_set_allow_long_swipes(self: *Carousel, allow_long_swipes: glib::boolean) void;
export @symbol("adw_carousel_set_allow_mouse_drag") fn carousel_set_allow_mouse_drag(self: *Carousel, allow_mouse_drag: glib::boolean) void;
export @symbol("adw_carousel_set_allow_scroll_wheel") fn carousel_set_allow_scroll_wheel(self: *Carousel, allow_scroll_wheel: glib::boolean) void;
export @symbol("adw_carousel_set_interactive") fn carousel_set_interactive(self: *Carousel, interactive: glib::boolean) void;
export @symbol("adw_carousel_set_reveal_duration") fn carousel_set_reveal_duration(self: *Carousel, reveal_duration: uint) void;
export @symbol("adw_carousel_set_scroll_params") fn carousel_set_scroll_params(self: *Carousel, params: *SpringParams) void;
export @symbol("adw_carousel_set_spacing") fn carousel_set_spacing(self: *Carousel, spacing: uint) void;
export fn carousel_connect_page_changed(
	instance: *Carousel,
	handler: *fn(instance: *Carousel, index: uint, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"page-changed\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export type CarouselIndicatorDots = *opaque;
export @symbol("adw_carousel_indicator_dots_new") fn carousel_indicator_dots_new() *gtk4::Widget;
export @symbol("adw_carousel_indicator_dots_get_carousel") fn carousel_indicator_dots_get_carousel(self: *CarouselIndicatorDots) *Carousel;
export @symbol("adw_carousel_indicator_dots_set_carousel") fn carousel_indicator_dots_set_carousel(self: *CarouselIndicatorDots, carousel: *Carousel) void;
export type CarouselIndicatorLines = *opaque;
export @symbol("adw_carousel_indicator_lines_new") fn carousel_indicator_lines_new() *gtk4::Widget;
export @symbol("adw_carousel_indicator_lines_get_carousel") fn carousel_indicator_lines_get_carousel(self: *CarouselIndicatorLines) *Carousel;
export @symbol("adw_carousel_indicator_lines_set_carousel") fn carousel_indicator_lines_set_carousel(self: *CarouselIndicatorLines, carousel: *Carousel) void;
export type Clamp = *opaque;
export @symbol("adw_clamp_new") fn clamp_new() *gtk4::Widget;
export @symbol("adw_clamp_get_child") fn clamp_get_child(self: *Clamp) *gtk4::Widget;
export @symbol("adw_clamp_get_maximum_size") fn clamp_get_maximum_size(self: *Clamp) int;
export @symbol("adw_clamp_get_tightening_threshold") fn clamp_get_tightening_threshold(self: *Clamp) int;
export @symbol("adw_clamp_get_unit") fn clamp_get_unit(self: *Clamp) LengthUnit;
export @symbol("adw_clamp_set_child") fn clamp_set_child(self: *Clamp, child: *gtk4::Widget) void;
export @symbol("adw_clamp_set_maximum_size") fn clamp_set_maximum_size(self: *Clamp, maximum_size: int) void;
export @symbol("adw_clamp_set_tightening_threshold") fn clamp_set_tightening_threshold(self: *Clamp, tightening_threshold: int) void;
export @symbol("adw_clamp_set_unit") fn clamp_set_unit(self: *Clamp, unit: LengthUnit) void;
export type ClampLayout = *opaque;
export @symbol("adw_clamp_layout_new") fn clamp_layout_new() *gtk4::LayoutManager;
export @symbol("adw_clamp_layout_get_maximum_size") fn clamp_layout_get_maximum_size(self: *ClampLayout) int;
export @symbol("adw_clamp_layout_get_tightening_threshold") fn clamp_layout_get_tightening_threshold(self: *ClampLayout) int;
export @symbol("adw_clamp_layout_get_unit") fn clamp_layout_get_unit(self: *ClampLayout) LengthUnit;
export @symbol("adw_clamp_layout_set_maximum_size") fn clamp_layout_set_maximum_size(self: *ClampLayout, maximum_size: int) void;
export @symbol("adw_clamp_layout_set_tightening_threshold") fn clamp_layout_set_tightening_threshold(self: *ClampLayout, tightening_threshold: int) void;
export @symbol("adw_clamp_layout_set_unit") fn clamp_layout_set_unit(self: *ClampLayout, unit: LengthUnit) void;
export type ClampScrollable = *opaque;
export @symbol("adw_clamp_scrollable_new") fn clamp_scrollable_new() *gtk4::Widget;
export @symbol("adw_clamp_scrollable_get_child") fn clamp_scrollable_get_child(self: *ClampScrollable) *gtk4::Widget;
export @symbol("adw_clamp_scrollable_get_maximum_size") fn clamp_scrollable_get_maximum_size(self: *ClampScrollable) int;
export @symbol("adw_clamp_scrollable_get_tightening_threshold") fn clamp_scrollable_get_tightening_threshold(self: *ClampScrollable) int;
export @symbol("adw_clamp_scrollable_get_unit") fn clamp_scrollable_get_unit(self: *ClampScrollable) LengthUnit;
export @symbol("adw_clamp_scrollable_set_child") fn clamp_scrollable_set_child(self: *ClampScrollable, child: *gtk4::Widget) void;
export @symbol("adw_clamp_scrollable_set_maximum_size") fn clamp_scrollable_set_maximum_size(self: *ClampScrollable, maximum_size: int) void;
export @symbol("adw_clamp_scrollable_set_tightening_threshold") fn clamp_scrollable_set_tightening_threshold(self: *ClampScrollable, tightening_threshold: int) void;
export @symbol("adw_clamp_scrollable_set_unit") fn clamp_scrollable_set_unit(self: *ClampScrollable, unit: LengthUnit) void;
export type ComboRow = struct {
	parent_instance: ActionRow,
};
export @symbol("adw_combo_row_new") fn combo_row_new() *gtk4::Widget;
export @symbol("adw_combo_row_get_enable_search") fn combo_row_get_enable_search(self: *ComboRow) glib::boolean;
export @symbol("adw_combo_row_get_expression") fn combo_row_get_expression(self: *ComboRow) *gtk4::Expression;
export @symbol("adw_combo_row_get_factory") fn combo_row_get_factory(self: *ComboRow) *gtk4::ListItemFactory;
export @symbol("adw_combo_row_get_list_factory") fn combo_row_get_list_factory(self: *ComboRow) *gtk4::ListItemFactory;
export @symbol("adw_combo_row_get_model") fn combo_row_get_model(self: *ComboRow) *gio::ListModel;
export @symbol("adw_combo_row_get_selected") fn combo_row_get_selected(self: *ComboRow) uint;
export @symbol("adw_combo_row_get_selected_item") fn combo_row_get_selected_item(self: *ComboRow) *opaque;
export @symbol("adw_combo_row_get_use_subtitle") fn combo_row_get_use_subtitle(self: *ComboRow) glib::boolean;
export @symbol("adw_combo_row_set_enable_search") fn combo_row_set_enable_search(self: *ComboRow, enable_search: glib::boolean) void;
export @symbol("adw_combo_row_set_expression") fn combo_row_set_expression(self: *ComboRow, expression: *gtk4::Expression) void;
export @symbol("adw_combo_row_set_factory") fn combo_row_set_factory(self: *ComboRow, factory: *gtk4::ListItemFactory) void;
export @symbol("adw_combo_row_set_list_factory") fn combo_row_set_list_factory(self: *ComboRow, factory: *gtk4::ListItemFactory) void;
export @symbol("adw_combo_row_set_model") fn combo_row_set_model(self: *ComboRow, model: *gio::ListModel) void;
export @symbol("adw_combo_row_set_selected") fn combo_row_set_selected(self: *ComboRow, position: uint) void;
export @symbol("adw_combo_row_set_use_subtitle") fn combo_row_set_use_subtitle(self: *ComboRow, use_subtitle: glib::boolean) void;
export type EntryRow = struct {
	parent_instance: PreferencesRow,
};
export @symbol("adw_entry_row_new") fn entry_row_new() *gtk4::Widget;
export @symbol("adw_entry_row_add_prefix") fn entry_row_add_prefix(self: *EntryRow, widget: *gtk4::Widget) void;
export @symbol("adw_entry_row_add_suffix") fn entry_row_add_suffix(self: *EntryRow, widget: *gtk4::Widget) void;
export @symbol("adw_entry_row_get_activates_default") fn entry_row_get_activates_default(self: *EntryRow) glib::boolean;
export @symbol("adw_entry_row_get_attributes") fn entry_row_get_attributes(self: *EntryRow) *pango::AttrList;
export @symbol("adw_entry_row_get_enable_emoji_completion") fn entry_row_get_enable_emoji_completion(self: *EntryRow) glib::boolean;
export @symbol("adw_entry_row_get_input_hints") fn entry_row_get_input_hints(self: *EntryRow) gtk4::InputHints;
export @symbol("adw_entry_row_get_input_purpose") fn entry_row_get_input_purpose(self: *EntryRow) gtk4::InputPurpose;
export @symbol("adw_entry_row_get_show_apply_button") fn entry_row_get_show_apply_button(self: *EntryRow) glib::boolean;
export @symbol("adw_entry_row_grab_focus_without_selecting") fn entry_row_grab_focus_without_selecting(self: *EntryRow) glib::boolean;
export @symbol("adw_entry_row_remove") fn entry_row_remove(self: *EntryRow, widget: *gtk4::Widget) void;
export @symbol("adw_entry_row_set_activates_default") fn entry_row_set_activates_default(self: *EntryRow, activates: glib::boolean) void;
export @symbol("adw_entry_row_set_attributes") fn entry_row_set_attributes(self: *EntryRow, attributes: *pango::AttrList) void;
export @symbol("adw_entry_row_set_enable_emoji_completion") fn entry_row_set_enable_emoji_completion(self: *EntryRow, enable_emoji_completion: glib::boolean) void;
export @symbol("adw_entry_row_set_input_hints") fn entry_row_set_input_hints(self: *EntryRow, hints: gtk4::InputHints) void;
export @symbol("adw_entry_row_set_input_purpose") fn entry_row_set_input_purpose(self: *EntryRow, purpose: gtk4::InputPurpose) void;
export @symbol("adw_entry_row_set_show_apply_button") fn entry_row_set_show_apply_button(self: *EntryRow, show_apply_button: glib::boolean) void;
export fn entry_row_connect_apply(
	instance: *EntryRow,
	handler: *fn(instance: *EntryRow, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"apply\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn entry_row_connect_entry_activated(
	instance: *EntryRow,
	handler: *fn(instance: *EntryRow, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"entry-activated\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export type EnumListItem = *opaque;
export @symbol("adw_enum_list_item_get_name") fn enum_list_item_get_name(self: *EnumListItem) *c::char;
export @symbol("adw_enum_list_item_get_nick") fn enum_list_item_get_nick(self: *EnumListItem) *c::char;
export @symbol("adw_enum_list_item_get_value") fn enum_list_item_get_value(self: *EnumListItem) int;
export type EnumListModel = *opaque;
export @symbol("adw_enum_list_model_new") fn enum_list_model_new(enum_type: glib::Type) *EnumListModel;
export @symbol("adw_enum_list_model_find_position") fn enum_list_model_find_position(self: *EnumListModel, value: int) uint;
export @symbol("adw_enum_list_model_get_enum_type") fn enum_list_model_get_enum_type(self: *EnumListModel) glib::Type;
export type ExpanderRow = struct {
	parent_instance: PreferencesRow,
};
export @symbol("adw_expander_row_new") fn expander_row_new() *gtk4::Widget;
export @symbol("adw_expander_row_add_action") fn expander_row_add_action(self: *ExpanderRow, widget: *gtk4::Widget) void;
export @symbol("adw_expander_row_add_prefix") fn expander_row_add_prefix(self: *ExpanderRow, widget: *gtk4::Widget) void;
export @symbol("adw_expander_row_add_row") fn expander_row_add_row(self: *ExpanderRow, child: *gtk4::Widget) void;
export @symbol("adw_expander_row_add_suffix") fn expander_row_add_suffix(self: *ExpanderRow, widget: *gtk4::Widget) void;
export @symbol("adw_expander_row_get_enable_expansion") fn expander_row_get_enable_expansion(self: *ExpanderRow) glib::boolean;
export @symbol("adw_expander_row_get_expanded") fn expander_row_get_expanded(self: *ExpanderRow) glib::boolean;
export @symbol("adw_expander_row_get_icon_name") fn expander_row_get_icon_name(self: *ExpanderRow) *c::char;
export @symbol("adw_expander_row_get_show_enable_switch") fn expander_row_get_show_enable_switch(self: *ExpanderRow) glib::boolean;
export @symbol("adw_expander_row_get_subtitle") fn expander_row_get_subtitle(self: *ExpanderRow) *c::char;
export @symbol("adw_expander_row_get_subtitle_lines") fn expander_row_get_subtitle_lines(self: *ExpanderRow) glib::boolean;
export @symbol("adw_expander_row_get_title_lines") fn expander_row_get_title_lines(self: *ExpanderRow) glib::boolean;
export @symbol("adw_expander_row_remove") fn expander_row_remove(self: *ExpanderRow, child: *gtk4::Widget) void;
export @symbol("adw_expander_row_set_enable_expansion") fn expander_row_set_enable_expansion(self: *ExpanderRow, enable_expansion: glib::boolean) void;
export @symbol("adw_expander_row_set_expanded") fn expander_row_set_expanded(self: *ExpanderRow, expanded: glib::boolean) void;
export @symbol("adw_expander_row_set_icon_name") fn expander_row_set_icon_name(self: *ExpanderRow, icon_name: *c::char) void;
export @symbol("adw_expander_row_set_show_enable_switch") fn expander_row_set_show_enable_switch(self: *ExpanderRow, show_enable_switch: glib::boolean) void;
export @symbol("adw_expander_row_set_subtitle") fn expander_row_set_subtitle(self: *ExpanderRow, subtitle: *c::char) void;
export @symbol("adw_expander_row_set_subtitle_lines") fn expander_row_set_subtitle_lines(self: *ExpanderRow, subtitle_lines: int) void;
export @symbol("adw_expander_row_set_title_lines") fn expander_row_set_title_lines(self: *ExpanderRow, title_lines: int) void;
export type Flap = *opaque;
export @symbol("adw_flap_new") fn flap_new() *gtk4::Widget;
export @symbol("adw_flap_get_content") fn flap_get_content(self: *Flap) *gtk4::Widget;
export @symbol("adw_flap_get_flap") fn flap_get_flap(self: *Flap) *gtk4::Widget;
export @symbol("adw_flap_get_flap_position") fn flap_get_flap_position(self: *Flap) gtk4::PackType;
export @symbol("adw_flap_get_fold_duration") fn flap_get_fold_duration(self: *Flap) uint;
export @symbol("adw_flap_get_fold_policy") fn flap_get_fold_policy(self: *Flap) FlapFoldPolicy;
export @symbol("adw_flap_get_fold_threshold_policy") fn flap_get_fold_threshold_policy(self: *Flap) FoldThresholdPolicy;
export @symbol("adw_flap_get_folded") fn flap_get_folded(self: *Flap) glib::boolean;
export @symbol("adw_flap_get_locked") fn flap_get_locked(self: *Flap) glib::boolean;
export @symbol("adw_flap_get_modal") fn flap_get_modal(self: *Flap) glib::boolean;
export @symbol("adw_flap_get_reveal_flap") fn flap_get_reveal_flap(self: *Flap) glib::boolean;
export @symbol("adw_flap_get_reveal_params") fn flap_get_reveal_params(self: *Flap) *SpringParams;
export @symbol("adw_flap_get_reveal_progress") fn flap_get_reveal_progress(self: *Flap) f64;
export @symbol("adw_flap_get_separator") fn flap_get_separator(self: *Flap) *gtk4::Widget;
export @symbol("adw_flap_get_swipe_to_close") fn flap_get_swipe_to_close(self: *Flap) glib::boolean;
export @symbol("adw_flap_get_swipe_to_open") fn flap_get_swipe_to_open(self: *Flap) glib::boolean;
export @symbol("adw_flap_get_transition_type") fn flap_get_transition_type(self: *Flap) FlapTransitionType;
export @symbol("adw_flap_set_content") fn flap_set_content(self: *Flap, content: *gtk4::Widget) void;
export @symbol("adw_flap_set_flap") fn flap_set_flap(self: *Flap, flap: *gtk4::Widget) void;
export @symbol("adw_flap_set_flap_position") fn flap_set_flap_position(self: *Flap, position: gtk4::PackType) void;
export @symbol("adw_flap_set_fold_duration") fn flap_set_fold_duration(self: *Flap, duration: uint) void;
export @symbol("adw_flap_set_fold_policy") fn flap_set_fold_policy(self: *Flap, policy: FlapFoldPolicy) void;
export @symbol("adw_flap_set_fold_threshold_policy") fn flap_set_fold_threshold_policy(self: *Flap, policy: FoldThresholdPolicy) void;
export @symbol("adw_flap_set_locked") fn flap_set_locked(self: *Flap, locked: glib::boolean) void;
export @symbol("adw_flap_set_modal") fn flap_set_modal(self: *Flap, modal: glib::boolean) void;
export @symbol("adw_flap_set_reveal_flap") fn flap_set_reveal_flap(self: *Flap, reveal_flap: glib::boolean) void;
export @symbol("adw_flap_set_reveal_params") fn flap_set_reveal_params(self: *Flap, params: *SpringParams) void;
export @symbol("adw_flap_set_separator") fn flap_set_separator(self: *Flap, separator: *gtk4::Widget) void;
export @symbol("adw_flap_set_swipe_to_close") fn flap_set_swipe_to_close(self: *Flap, swipe_to_close: glib::boolean) void;
export @symbol("adw_flap_set_swipe_to_open") fn flap_set_swipe_to_open(self: *Flap, swipe_to_open: glib::boolean) void;
export @symbol("adw_flap_set_transition_type") fn flap_set_transition_type(self: *Flap, transition_type: FlapTransitionType) void;
export type HeaderBar = *opaque;
export @symbol("adw_header_bar_new") fn header_bar_new() *gtk4::Widget;
export @symbol("adw_header_bar_get_centering_policy") fn header_bar_get_centering_policy(self: *HeaderBar) CenteringPolicy;
export @symbol("adw_header_bar_get_decoration_layout") fn header_bar_get_decoration_layout(self: *HeaderBar) *c::char;
export @symbol("adw_header_bar_get_show_back_button") fn header_bar_get_show_back_button(self: *HeaderBar) glib::boolean;
export @symbol("adw_header_bar_get_show_end_title_buttons") fn header_bar_get_show_end_title_buttons(self: *HeaderBar) glib::boolean;
export @symbol("adw_header_bar_get_show_start_title_buttons") fn header_bar_get_show_start_title_buttons(self: *HeaderBar) glib::boolean;
export @symbol("adw_header_bar_get_show_title") fn header_bar_get_show_title(self: *HeaderBar) glib::boolean;
export @symbol("adw_header_bar_get_title_widget") fn header_bar_get_title_widget(self: *HeaderBar) *gtk4::Widget;
export @symbol("adw_header_bar_pack_end") fn header_bar_pack_end(self: *HeaderBar, child: *gtk4::Widget) void;
export @symbol("adw_header_bar_pack_start") fn header_bar_pack_start(self: *HeaderBar, child: *gtk4::Widget) void;
export @symbol("adw_header_bar_remove") fn header_bar_remove(self: *HeaderBar, child: *gtk4::Widget) void;
export @symbol("adw_header_bar_set_centering_policy") fn header_bar_set_centering_policy(self: *HeaderBar, centering_policy: CenteringPolicy) void;
export @symbol("adw_header_bar_set_decoration_layout") fn header_bar_set_decoration_layout(self: *HeaderBar, layout: *c::char) void;
export @symbol("adw_header_bar_set_show_back_button") fn header_bar_set_show_back_button(self: *HeaderBar, show_back_button: glib::boolean) void;
export @symbol("adw_header_bar_set_show_end_title_buttons") fn header_bar_set_show_end_title_buttons(self: *HeaderBar, setting: glib::boolean) void;
export @symbol("adw_header_bar_set_show_start_title_buttons") fn header_bar_set_show_start_title_buttons(self: *HeaderBar, setting: glib::boolean) void;
export @symbol("adw_header_bar_set_show_title") fn header_bar_set_show_title(self: *HeaderBar, show_title: glib::boolean) void;
export @symbol("adw_header_bar_set_title_widget") fn header_bar_set_title_widget(self: *HeaderBar, title_widget: *gtk4::Widget) void;
export type Leaflet = *opaque;
export @symbol("adw_leaflet_new") fn leaflet_new() *gtk4::Widget;
export @symbol("adw_leaflet_append") fn leaflet_append(self: *Leaflet, child: *gtk4::Widget) *LeafletPage;
export @symbol("adw_leaflet_get_adjacent_child") fn leaflet_get_adjacent_child(self: *Leaflet, direction: NavigationDirection) *gtk4::Widget;
export @symbol("adw_leaflet_get_can_navigate_back") fn leaflet_get_can_navigate_back(self: *Leaflet) glib::boolean;
export @symbol("adw_leaflet_get_can_navigate_forward") fn leaflet_get_can_navigate_forward(self: *Leaflet) glib::boolean;
export @symbol("adw_leaflet_get_can_unfold") fn leaflet_get_can_unfold(self: *Leaflet) glib::boolean;
export @symbol("adw_leaflet_get_child_by_name") fn leaflet_get_child_by_name(self: *Leaflet, name: *c::char) *gtk4::Widget;
export @symbol("adw_leaflet_get_child_transition_params") fn leaflet_get_child_transition_params(self: *Leaflet) *SpringParams;
export @symbol("adw_leaflet_get_child_transition_running") fn leaflet_get_child_transition_running(self: *Leaflet) glib::boolean;
export @symbol("adw_leaflet_get_fold_threshold_policy") fn leaflet_get_fold_threshold_policy(self: *Leaflet) FoldThresholdPolicy;
export @symbol("adw_leaflet_get_folded") fn leaflet_get_folded(self: *Leaflet) glib::boolean;
export @symbol("adw_leaflet_get_homogeneous") fn leaflet_get_homogeneous(self: *Leaflet) glib::boolean;
export @symbol("adw_leaflet_get_mode_transition_duration") fn leaflet_get_mode_transition_duration(self: *Leaflet) uint;
export @symbol("adw_leaflet_get_page") fn leaflet_get_page(self: *Leaflet, child: *gtk4::Widget) *LeafletPage;
export @symbol("adw_leaflet_get_pages") fn leaflet_get_pages(self: *Leaflet) *gtk4::SelectionModel;
export @symbol("adw_leaflet_get_transition_type") fn leaflet_get_transition_type(self: *Leaflet) LeafletTransitionType;
export @symbol("adw_leaflet_get_visible_child") fn leaflet_get_visible_child(self: *Leaflet) *gtk4::Widget;
export @symbol("adw_leaflet_get_visible_child_name") fn leaflet_get_visible_child_name(self: *Leaflet) *c::char;
export @symbol("adw_leaflet_insert_child_after") fn leaflet_insert_child_after(self: *Leaflet, child: *gtk4::Widget, sibling: *gtk4::Widget) *LeafletPage;
export @symbol("adw_leaflet_navigate") fn leaflet_navigate(self: *Leaflet, direction: NavigationDirection) glib::boolean;
export @symbol("adw_leaflet_prepend") fn leaflet_prepend(self: *Leaflet, child: *gtk4::Widget) *LeafletPage;
export @symbol("adw_leaflet_remove") fn leaflet_remove(self: *Leaflet, child: *gtk4::Widget) void;
export @symbol("adw_leaflet_reorder_child_after") fn leaflet_reorder_child_after(self: *Leaflet, child: *gtk4::Widget, sibling: *gtk4::Widget) void;
export @symbol("adw_leaflet_set_can_navigate_back") fn leaflet_set_can_navigate_back(self: *Leaflet, can_navigate_back: glib::boolean) void;
export @symbol("adw_leaflet_set_can_navigate_forward") fn leaflet_set_can_navigate_forward(self: *Leaflet, can_navigate_forward: glib::boolean) void;
export @symbol("adw_leaflet_set_can_unfold") fn leaflet_set_can_unfold(self: *Leaflet, can_unfold: glib::boolean) void;
export @symbol("adw_leaflet_set_child_transition_params") fn leaflet_set_child_transition_params(self: *Leaflet, params: *SpringParams) void;
export @symbol("adw_leaflet_set_fold_threshold_policy") fn leaflet_set_fold_threshold_policy(self: *Leaflet, policy: FoldThresholdPolicy) void;
export @symbol("adw_leaflet_set_homogeneous") fn leaflet_set_homogeneous(self: *Leaflet, homogeneous: glib::boolean) void;
export @symbol("adw_leaflet_set_mode_transition_duration") fn leaflet_set_mode_transition_duration(self: *Leaflet, duration: uint) void;
export @symbol("adw_leaflet_set_transition_type") fn leaflet_set_transition_type(self: *Leaflet, transition: LeafletTransitionType) void;
export @symbol("adw_leaflet_set_visible_child") fn leaflet_set_visible_child(self: *Leaflet, visible_child: *gtk4::Widget) void;
export @symbol("adw_leaflet_set_visible_child_name") fn leaflet_set_visible_child_name(self: *Leaflet, name: *c::char) void;
export type LeafletPage = *opaque;
export @symbol("adw_leaflet_page_get_child") fn leaflet_page_get_child(self: *LeafletPage) *gtk4::Widget;
export @symbol("adw_leaflet_page_get_name") fn leaflet_page_get_name(self: *LeafletPage) *c::char;
export @symbol("adw_leaflet_page_get_navigatable") fn leaflet_page_get_navigatable(self: *LeafletPage) glib::boolean;
export @symbol("adw_leaflet_page_set_name") fn leaflet_page_set_name(self: *LeafletPage, name: *c::char) void;
export @symbol("adw_leaflet_page_set_navigatable") fn leaflet_page_set_navigatable(self: *LeafletPage, navigatable: glib::boolean) void;
export type MessageDialog = struct {
	parent_instance: gtk4::Window,
};
export @symbol("adw_message_dialog_new") fn message_dialog_new(parent: *gtk4::Window, heading: *c::char, body: *c::char) *gtk4::Widget;
export @symbol("adw_message_dialog_add_response") fn message_dialog_add_response(self: *MessageDialog, id: *c::char, label: *c::char) void;
export @symbol("adw_message_dialog_add_responses") fn message_dialog_add_responses(self: *MessageDialog, first_id: *c::char, ...) void;
export @symbol("adw_message_dialog_choose") fn message_dialog_choose(self: *MessageDialog, cancellable: *gio::Cancellable, callback: gio::AsyncReadyCallback, user_data: *opaque) void;
export @symbol("adw_message_dialog_choose_finish") fn message_dialog_choose_finish(self: *MessageDialog, result: *gio::AsyncResult) *c::char;
export @symbol("adw_message_dialog_format_body") fn message_dialog_format_body(self: *MessageDialog, format: *c::char, ...) void;
export @symbol("adw_message_dialog_format_body_markup") fn message_dialog_format_body_markup(self: *MessageDialog, format: *c::char, ...) void;
export @symbol("adw_message_dialog_format_heading") fn message_dialog_format_heading(self: *MessageDialog, format: *c::char, ...) void;
export @symbol("adw_message_dialog_format_heading_markup") fn message_dialog_format_heading_markup(self: *MessageDialog, format: *c::char, ...) void;
export @symbol("adw_message_dialog_get_body") fn message_dialog_get_body(self: *MessageDialog) *c::char;
export @symbol("adw_message_dialog_get_body_use_markup") fn message_dialog_get_body_use_markup(self: *MessageDialog) glib::boolean;
export @symbol("adw_message_dialog_get_close_response") fn message_dialog_get_close_response(self: *MessageDialog) *c::char;
export @symbol("adw_message_dialog_get_default_response") fn message_dialog_get_default_response(self: *MessageDialog) *c::char;
export @symbol("adw_message_dialog_get_extra_child") fn message_dialog_get_extra_child(self: *MessageDialog) *gtk4::Widget;
export @symbol("adw_message_dialog_get_heading") fn message_dialog_get_heading(self: *MessageDialog) *c::char;
export @symbol("adw_message_dialog_get_heading_use_markup") fn message_dialog_get_heading_use_markup(self: *MessageDialog) glib::boolean;
export @symbol("adw_message_dialog_get_response_appearance") fn message_dialog_get_response_appearance(self: *MessageDialog, response: *c::char) ResponseAppearance;
export @symbol("adw_message_dialog_get_response_enabled") fn message_dialog_get_response_enabled(self: *MessageDialog, response: *c::char) glib::boolean;
export @symbol("adw_message_dialog_get_response_label") fn message_dialog_get_response_label(self: *MessageDialog, response: *c::char) *c::char;
export @symbol("adw_message_dialog_has_response") fn message_dialog_has_response(self: *MessageDialog, response: *c::char) glib::boolean;
export @symbol("adw_message_dialog_response") fn message_dialog_response(self: *MessageDialog, response: *c::char) void;
export @symbol("adw_message_dialog_set_body") fn message_dialog_set_body(self: *MessageDialog, body: *c::char) void;
export @symbol("adw_message_dialog_set_body_use_markup") fn message_dialog_set_body_use_markup(self: *MessageDialog, use_markup: glib::boolean) void;
export @symbol("adw_message_dialog_set_close_response") fn message_dialog_set_close_response(self: *MessageDialog, response: *c::char) void;
export @symbol("adw_message_dialog_set_default_response") fn message_dialog_set_default_response(self: *MessageDialog, response: *c::char) void;
export @symbol("adw_message_dialog_set_extra_child") fn message_dialog_set_extra_child(self: *MessageDialog, child: *gtk4::Widget) void;
export @symbol("adw_message_dialog_set_heading") fn message_dialog_set_heading(self: *MessageDialog, heading: *c::char) void;
export @symbol("adw_message_dialog_set_heading_use_markup") fn message_dialog_set_heading_use_markup(self: *MessageDialog, use_markup: glib::boolean) void;
export @symbol("adw_message_dialog_set_response_appearance") fn message_dialog_set_response_appearance(self: *MessageDialog, response: *c::char, appearance: ResponseAppearance) void;
export @symbol("adw_message_dialog_set_response_enabled") fn message_dialog_set_response_enabled(self: *MessageDialog, response: *c::char, enabled: glib::boolean) void;
export @symbol("adw_message_dialog_set_response_label") fn message_dialog_set_response_label(self: *MessageDialog, response: *c::char, label: *c::char) void;
export fn message_dialog_connect_response(
	instance: *MessageDialog,
	handler: *fn(instance: *MessageDialog, response: *c::char, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"response\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export type NavigationPage = struct {
	parent_instance: gtk4::Widget,
};
export @symbol("adw_navigation_page_new") fn navigation_page_new(child: *gtk4::Widget, title: *c::char) *NavigationPage;
export @symbol("adw_navigation_page_new_with_tag") fn navigation_page_new_with_tag(child: *gtk4::Widget, title: *c::char, tag: *c::char) *NavigationPage;
export @symbol("adw_navigation_page_get_can_pop") fn navigation_page_get_can_pop(self: *NavigationPage) glib::boolean;
export @symbol("adw_navigation_page_get_child") fn navigation_page_get_child(self: *NavigationPage) *gtk4::Widget;
export @symbol("adw_navigation_page_get_tag") fn navigation_page_get_tag(self: *NavigationPage) *c::char;
export @symbol("adw_navigation_page_get_title") fn navigation_page_get_title(self: *NavigationPage) *c::char;
export @symbol("adw_navigation_page_set_can_pop") fn navigation_page_set_can_pop(self: *NavigationPage, can_pop: glib::boolean) void;
export @symbol("adw_navigation_page_set_child") fn navigation_page_set_child(self: *NavigationPage, child: *gtk4::Widget) void;
export @symbol("adw_navigation_page_set_tag") fn navigation_page_set_tag(self: *NavigationPage, tag: *c::char) void;
export @symbol("adw_navigation_page_set_title") fn navigation_page_set_title(self: *NavigationPage, title: *c::char) void;
export fn navigation_page_connect_hidden(
	instance: *NavigationPage,
	handler: *fn(instance: *NavigationPage, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"hidden\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn navigation_page_connect_hiding(
	instance: *NavigationPage,
	handler: *fn(instance: *NavigationPage, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"hiding\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn navigation_page_connect_showing(
	instance: *NavigationPage,
	handler: *fn(instance: *NavigationPage, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"showing\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn navigation_page_connect_shown(
	instance: *NavigationPage,
	handler: *fn(instance: *NavigationPage, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"shown\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export type NavigationSplitView = *opaque;
export @symbol("adw_navigation_split_view_new") fn navigation_split_view_new() *gtk4::Widget;
export @symbol("adw_navigation_split_view_get_collapsed") fn navigation_split_view_get_collapsed(self: *NavigationSplitView) glib::boolean;
export @symbol("adw_navigation_split_view_get_content") fn navigation_split_view_get_content(self: *NavigationSplitView) *NavigationPage;
export @symbol("adw_navigation_split_view_get_max_sidebar_width") fn navigation_split_view_get_max_sidebar_width(self: *NavigationSplitView) f64;
export @symbol("adw_navigation_split_view_get_min_sidebar_width") fn navigation_split_view_get_min_sidebar_width(self: *NavigationSplitView) f64;
export @symbol("adw_navigation_split_view_get_show_content") fn navigation_split_view_get_show_content(self: *NavigationSplitView) glib::boolean;
export @symbol("adw_navigation_split_view_get_sidebar") fn navigation_split_view_get_sidebar(self: *NavigationSplitView) *NavigationPage;
export @symbol("adw_navigation_split_view_get_sidebar_width_fraction") fn navigation_split_view_get_sidebar_width_fraction(self: *NavigationSplitView) f64;
export @symbol("adw_navigation_split_view_get_sidebar_width_unit") fn navigation_split_view_get_sidebar_width_unit(self: *NavigationSplitView) LengthUnit;
export @symbol("adw_navigation_split_view_set_collapsed") fn navigation_split_view_set_collapsed(self: *NavigationSplitView, collapsed: glib::boolean) void;
export @symbol("adw_navigation_split_view_set_content") fn navigation_split_view_set_content(self: *NavigationSplitView, content: *NavigationPage) void;
export @symbol("adw_navigation_split_view_set_max_sidebar_width") fn navigation_split_view_set_max_sidebar_width(self: *NavigationSplitView, width: f64) void;
export @symbol("adw_navigation_split_view_set_min_sidebar_width") fn navigation_split_view_set_min_sidebar_width(self: *NavigationSplitView, width: f64) void;
export @symbol("adw_navigation_split_view_set_show_content") fn navigation_split_view_set_show_content(self: *NavigationSplitView, show_content: glib::boolean) void;
export @symbol("adw_navigation_split_view_set_sidebar") fn navigation_split_view_set_sidebar(self: *NavigationSplitView, sidebar: *NavigationPage) void;
export @symbol("adw_navigation_split_view_set_sidebar_width_fraction") fn navigation_split_view_set_sidebar_width_fraction(self: *NavigationSplitView, fraction: f64) void;
export @symbol("adw_navigation_split_view_set_sidebar_width_unit") fn navigation_split_view_set_sidebar_width_unit(self: *NavigationSplitView, unit: LengthUnit) void;
export type NavigationView = *opaque;
export @symbol("adw_navigation_view_new") fn navigation_view_new() *gtk4::Widget;
export @symbol("adw_navigation_view_add") fn navigation_view_add(self: *NavigationView, page: *NavigationPage) void;
export @symbol("adw_navigation_view_find_page") fn navigation_view_find_page(self: *NavigationView, tag: *c::char) *NavigationPage;
export @symbol("adw_navigation_view_get_animate_transitions") fn navigation_view_get_animate_transitions(self: *NavigationView) glib::boolean;
export @symbol("adw_navigation_view_get_navigation_stack") fn navigation_view_get_navigation_stack(self: *NavigationView) *gio::ListModel;
export @symbol("adw_navigation_view_get_pop_on_escape") fn navigation_view_get_pop_on_escape(self: *NavigationView) glib::boolean;
export @symbol("adw_navigation_view_get_previous_page") fn navigation_view_get_previous_page(self: *NavigationView, page: *NavigationPage) *NavigationPage;
export @symbol("adw_navigation_view_get_visible_page") fn navigation_view_get_visible_page(self: *NavigationView) *NavigationPage;
export @symbol("adw_navigation_view_pop") fn navigation_view_pop(self: *NavigationView) glib::boolean;
export @symbol("adw_navigation_view_pop_to_page") fn navigation_view_pop_to_page(self: *NavigationView, page: *NavigationPage) glib::boolean;
export @symbol("adw_navigation_view_pop_to_tag") fn navigation_view_pop_to_tag(self: *NavigationView, tag: *c::char) glib::boolean;
export @symbol("adw_navigation_view_push") fn navigation_view_push(self: *NavigationView, page: *NavigationPage) void;
export @symbol("adw_navigation_view_push_by_tag") fn navigation_view_push_by_tag(self: *NavigationView, tag: *c::char) void;
export @symbol("adw_navigation_view_remove") fn navigation_view_remove(self: *NavigationView, page: *NavigationPage) void;
export @symbol("adw_navigation_view_replace") fn navigation_view_replace(self: *NavigationView, pages: **NavigationPage, n_pages: int) void;
export @symbol("adw_navigation_view_replace_with_tags") fn navigation_view_replace_with_tags(self: *NavigationView, tags: **c::char, n_tags: int) void;
export @symbol("adw_navigation_view_set_animate_transitions") fn navigation_view_set_animate_transitions(self: *NavigationView, animate_transitions: glib::boolean) void;
export @symbol("adw_navigation_view_set_pop_on_escape") fn navigation_view_set_pop_on_escape(self: *NavigationView, pop_on_escape: glib::boolean) void;
export fn navigation_view_connect_get_next_page(
	instance: *NavigationView,
	handler: *fn(instance: *NavigationView, data: *opaque) *NavigationPage,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"get-next-page\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn navigation_view_connect_popped(
	instance: *NavigationView,
	handler: *fn(instance: *NavigationView, page: *NavigationPage, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"popped\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn navigation_view_connect_pushed(
	instance: *NavigationView,
	handler: *fn(instance: *NavigationView, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"pushed\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn navigation_view_connect_replaced(
	instance: *NavigationView,
	handler: *fn(instance: *NavigationView, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"replaced\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export type OverlaySplitView = *opaque;
export @symbol("adw_overlay_split_view_new") fn overlay_split_view_new() *gtk4::Widget;
export @symbol("adw_overlay_split_view_get_collapsed") fn overlay_split_view_get_collapsed(self: *OverlaySplitView) glib::boolean;
export @symbol("adw_overlay_split_view_get_content") fn overlay_split_view_get_content(self: *OverlaySplitView) *gtk4::Widget;
export @symbol("adw_overlay_split_view_get_enable_hide_gesture") fn overlay_split_view_get_enable_hide_gesture(self: *OverlaySplitView) glib::boolean;
export @symbol("adw_overlay_split_view_get_enable_show_gesture") fn overlay_split_view_get_enable_show_gesture(self: *OverlaySplitView) glib::boolean;
export @symbol("adw_overlay_split_view_get_max_sidebar_width") fn overlay_split_view_get_max_sidebar_width(self: *OverlaySplitView) f64;
export @symbol("adw_overlay_split_view_get_min_sidebar_width") fn overlay_split_view_get_min_sidebar_width(self: *OverlaySplitView) f64;
export @symbol("adw_overlay_split_view_get_pin_sidebar") fn overlay_split_view_get_pin_sidebar(self: *OverlaySplitView) glib::boolean;
export @symbol("adw_overlay_split_view_get_show_sidebar") fn overlay_split_view_get_show_sidebar(self: *OverlaySplitView) glib::boolean;
export @symbol("adw_overlay_split_view_get_sidebar") fn overlay_split_view_get_sidebar(self: *OverlaySplitView) *gtk4::Widget;
export @symbol("adw_overlay_split_view_get_sidebar_position") fn overlay_split_view_get_sidebar_position(self: *OverlaySplitView) gtk4::PackType;
export @symbol("adw_overlay_split_view_get_sidebar_width_fraction") fn overlay_split_view_get_sidebar_width_fraction(self: *OverlaySplitView) f64;
export @symbol("adw_overlay_split_view_get_sidebar_width_unit") fn overlay_split_view_get_sidebar_width_unit(self: *OverlaySplitView) LengthUnit;
export @symbol("adw_overlay_split_view_set_collapsed") fn overlay_split_view_set_collapsed(self: *OverlaySplitView, collapsed: glib::boolean) void;
export @symbol("adw_overlay_split_view_set_content") fn overlay_split_view_set_content(self: *OverlaySplitView, content: *gtk4::Widget) void;
export @symbol("adw_overlay_split_view_set_enable_hide_gesture") fn overlay_split_view_set_enable_hide_gesture(self: *OverlaySplitView, enable_hide_gesture: glib::boolean) void;
export @symbol("adw_overlay_split_view_set_enable_show_gesture") fn overlay_split_view_set_enable_show_gesture(self: *OverlaySplitView, enable_show_gesture: glib::boolean) void;
export @symbol("adw_overlay_split_view_set_max_sidebar_width") fn overlay_split_view_set_max_sidebar_width(self: *OverlaySplitView, width: f64) void;
export @symbol("adw_overlay_split_view_set_min_sidebar_width") fn overlay_split_view_set_min_sidebar_width(self: *OverlaySplitView, width: f64) void;
export @symbol("adw_overlay_split_view_set_pin_sidebar") fn overlay_split_view_set_pin_sidebar(self: *OverlaySplitView, pin_sidebar: glib::boolean) void;
export @symbol("adw_overlay_split_view_set_show_sidebar") fn overlay_split_view_set_show_sidebar(self: *OverlaySplitView, show_sidebar: glib::boolean) void;
export @symbol("adw_overlay_split_view_set_sidebar") fn overlay_split_view_set_sidebar(self: *OverlaySplitView, sidebar: *gtk4::Widget) void;
export @symbol("adw_overlay_split_view_set_sidebar_position") fn overlay_split_view_set_sidebar_position(self: *OverlaySplitView, position: gtk4::PackType) void;
export @symbol("adw_overlay_split_view_set_sidebar_width_fraction") fn overlay_split_view_set_sidebar_width_fraction(self: *OverlaySplitView, fraction: f64) void;
export @symbol("adw_overlay_split_view_set_sidebar_width_unit") fn overlay_split_view_set_sidebar_width_unit(self: *OverlaySplitView, unit: LengthUnit) void;
export type PasswordEntryRow = *opaque;
export @symbol("adw_password_entry_row_new") fn password_entry_row_new() *gtk4::Widget;
export type PreferencesGroup = struct {
	parent_instance: gtk4::Widget,
};
export @symbol("adw_preferences_group_new") fn preferences_group_new() *gtk4::Widget;
export @symbol("adw_preferences_group_add") fn preferences_group_add(self: *PreferencesGroup, child: *gtk4::Widget) void;
export @symbol("adw_preferences_group_get_description") fn preferences_group_get_description(self: *PreferencesGroup) *c::char;
export @symbol("adw_preferences_group_get_header_suffix") fn preferences_group_get_header_suffix(self: *PreferencesGroup) *gtk4::Widget;
export @symbol("adw_preferences_group_get_title") fn preferences_group_get_title(self: *PreferencesGroup) *c::char;
export @symbol("adw_preferences_group_remove") fn preferences_group_remove(self: *PreferencesGroup, child: *gtk4::Widget) void;
export @symbol("adw_preferences_group_set_description") fn preferences_group_set_description(self: *PreferencesGroup, description: *c::char) void;
export @symbol("adw_preferences_group_set_header_suffix") fn preferences_group_set_header_suffix(self: *PreferencesGroup, suffix: *gtk4::Widget) void;
export @symbol("adw_preferences_group_set_title") fn preferences_group_set_title(self: *PreferencesGroup, title: *c::char) void;
export type PreferencesPage = struct {
	parent_instance: gtk4::Widget,
};
export @symbol("adw_preferences_page_new") fn preferences_page_new() *gtk4::Widget;
export @symbol("adw_preferences_page_add") fn preferences_page_add(self: *PreferencesPage, group: *PreferencesGroup) void;
export @symbol("adw_preferences_page_get_description") fn preferences_page_get_description(self: *PreferencesPage) *c::char;
export @symbol("adw_preferences_page_get_icon_name") fn preferences_page_get_icon_name(self: *PreferencesPage) *c::char;
export @symbol("adw_preferences_page_get_name") fn preferences_page_get_name(self: *PreferencesPage) *c::char;
export @symbol("adw_preferences_page_get_title") fn preferences_page_get_title(self: *PreferencesPage) *c::char;
export @symbol("adw_preferences_page_get_use_underline") fn preferences_page_get_use_underline(self: *PreferencesPage) glib::boolean;
export @symbol("adw_preferences_page_remove") fn preferences_page_remove(self: *PreferencesPage, group: *PreferencesGroup) void;
export @symbol("adw_preferences_page_scroll_to_top") fn preferences_page_scroll_to_top(self: *PreferencesPage) void;
export @symbol("adw_preferences_page_set_description") fn preferences_page_set_description(self: *PreferencesPage, description: *c::char) void;
export @symbol("adw_preferences_page_set_icon_name") fn preferences_page_set_icon_name(self: *PreferencesPage, icon_name: *c::char) void;
export @symbol("adw_preferences_page_set_name") fn preferences_page_set_name(self: *PreferencesPage, name: *c::char) void;
export @symbol("adw_preferences_page_set_title") fn preferences_page_set_title(self: *PreferencesPage, title: *c::char) void;
export @symbol("adw_preferences_page_set_use_underline") fn preferences_page_set_use_underline(self: *PreferencesPage, use_underline: glib::boolean) void;
export type PreferencesRow = struct {
	parent_instance: gtk4::ListBoxRow,
};
export @symbol("adw_preferences_row_new") fn preferences_row_new() *gtk4::Widget;
export @symbol("adw_preferences_row_get_title") fn preferences_row_get_title(self: *PreferencesRow) *c::char;
export @symbol("adw_preferences_row_get_title_selectable") fn preferences_row_get_title_selectable(self: *PreferencesRow) glib::boolean;
export @symbol("adw_preferences_row_get_use_markup") fn preferences_row_get_use_markup(self: *PreferencesRow) glib::boolean;
export @symbol("adw_preferences_row_get_use_underline") fn preferences_row_get_use_underline(self: *PreferencesRow) glib::boolean;
export @symbol("adw_preferences_row_set_title") fn preferences_row_set_title(self: *PreferencesRow, title: *c::char) void;
export @symbol("adw_preferences_row_set_title_selectable") fn preferences_row_set_title_selectable(self: *PreferencesRow, title_selectable: glib::boolean) void;
export @symbol("adw_preferences_row_set_use_markup") fn preferences_row_set_use_markup(self: *PreferencesRow, use_markup: glib::boolean) void;
export @symbol("adw_preferences_row_set_use_underline") fn preferences_row_set_use_underline(self: *PreferencesRow, use_underline: glib::boolean) void;
export type PreferencesWindow = struct {
	parent_instance: Window,
};
export @symbol("adw_preferences_window_new") fn preferences_window_new() *gtk4::Widget;
export @symbol("adw_preferences_window_add") fn preferences_window_add(self: *PreferencesWindow, page: *PreferencesPage) void;
export @symbol("adw_preferences_window_add_toast") fn preferences_window_add_toast(self: *PreferencesWindow, toast: *Toast) void;
export @symbol("adw_preferences_window_close_subpage") fn preferences_window_close_subpage(self: *PreferencesWindow) void;
export @symbol("adw_preferences_window_get_can_navigate_back") fn preferences_window_get_can_navigate_back(self: *PreferencesWindow) glib::boolean;
export @symbol("adw_preferences_window_get_search_enabled") fn preferences_window_get_search_enabled(self: *PreferencesWindow) glib::boolean;
export @symbol("adw_preferences_window_get_visible_page") fn preferences_window_get_visible_page(self: *PreferencesWindow) *PreferencesPage;
export @symbol("adw_preferences_window_get_visible_page_name") fn preferences_window_get_visible_page_name(self: *PreferencesWindow) *c::char;
export @symbol("adw_preferences_window_pop_subpage") fn preferences_window_pop_subpage(self: *PreferencesWindow) glib::boolean;
export @symbol("adw_preferences_window_present_subpage") fn preferences_window_present_subpage(self: *PreferencesWindow, subpage: *gtk4::Widget) void;
export @symbol("adw_preferences_window_push_subpage") fn preferences_window_push_subpage(self: *PreferencesWindow, page: *NavigationPage) void;
export @symbol("adw_preferences_window_remove") fn preferences_window_remove(self: *PreferencesWindow, page: *PreferencesPage) void;
export @symbol("adw_preferences_window_set_can_navigate_back") fn preferences_window_set_can_navigate_back(self: *PreferencesWindow, can_navigate_back: glib::boolean) void;
export @symbol("adw_preferences_window_set_search_enabled") fn preferences_window_set_search_enabled(self: *PreferencesWindow, search_enabled: glib::boolean) void;
export @symbol("adw_preferences_window_set_visible_page") fn preferences_window_set_visible_page(self: *PreferencesWindow, page: *PreferencesPage) void;
export @symbol("adw_preferences_window_set_visible_page_name") fn preferences_window_set_visible_page_name(self: *PreferencesWindow, name: *c::char) void;
export type PropertyAnimationTarget = *opaque;
export @symbol("adw_property_animation_target_new") fn property_animation_target_new(object: *gobject::Object, property_name: *c::char) *AnimationTarget;
export @symbol("adw_property_animation_target_new_for_pspec") fn property_animation_target_new_for_pspec(object: *gobject::Object, pspec: *gobject::ParamSpec) *AnimationTarget;
export @symbol("adw_property_animation_target_get_object") fn property_animation_target_get_object(self: *PropertyAnimationTarget) *gobject::Object;
export @symbol("adw_property_animation_target_get_pspec") fn property_animation_target_get_pspec(self: *PropertyAnimationTarget) *gobject::ParamSpec;
export type SpinRow = *opaque;
export @symbol("adw_spin_row_new") fn spin_row_new(adjustment: *gtk4::Adjustment, climb_rate: f64, digits: uint) *gtk4::Widget;
export @symbol("adw_spin_row_new_with_range") fn spin_row_new_with_range(min: f64, max: f64, step: f64) *gtk4::Widget;
export @symbol("adw_spin_row_configure") fn spin_row_configure(self: *SpinRow, adjustment: *gtk4::Adjustment, climb_rate: f64, digits: uint) void;
export @symbol("adw_spin_row_get_adjustment") fn spin_row_get_adjustment(self: *SpinRow) *gtk4::Adjustment;
export @symbol("adw_spin_row_get_climb_rate") fn spin_row_get_climb_rate(self: *SpinRow) f64;
export @symbol("adw_spin_row_get_digits") fn spin_row_get_digits(self: *SpinRow) uint;
export @symbol("adw_spin_row_get_numeric") fn spin_row_get_numeric(self: *SpinRow) glib::boolean;
export @symbol("adw_spin_row_get_snap_to_ticks") fn spin_row_get_snap_to_ticks(self: *SpinRow) glib::boolean;
export @symbol("adw_spin_row_get_update_policy") fn spin_row_get_update_policy(self: *SpinRow) gtk4::SpinButtonUpdatePolicy;
export @symbol("adw_spin_row_get_value") fn spin_row_get_value(self: *SpinRow) f64;
export @symbol("adw_spin_row_get_wrap") fn spin_row_get_wrap(self: *SpinRow) glib::boolean;
export @symbol("adw_spin_row_set_adjustment") fn spin_row_set_adjustment(self: *SpinRow, adjustment: *gtk4::Adjustment) void;
export @symbol("adw_spin_row_set_climb_rate") fn spin_row_set_climb_rate(self: *SpinRow, climb_rate: f64) void;
export @symbol("adw_spin_row_set_digits") fn spin_row_set_digits(self: *SpinRow, digits: uint) void;
export @symbol("adw_spin_row_set_numeric") fn spin_row_set_numeric(self: *SpinRow, numeric: glib::boolean) void;
export @symbol("adw_spin_row_set_range") fn spin_row_set_range(self: *SpinRow, min: f64, max: f64) void;
export @symbol("adw_spin_row_set_snap_to_ticks") fn spin_row_set_snap_to_ticks(self: *SpinRow, snap_to_ticks: glib::boolean) void;
export @symbol("adw_spin_row_set_update_policy") fn spin_row_set_update_policy(self: *SpinRow, policy: gtk4::SpinButtonUpdatePolicy) void;
export @symbol("adw_spin_row_set_value") fn spin_row_set_value(self: *SpinRow, value: f64) void;
export @symbol("adw_spin_row_set_wrap") fn spin_row_set_wrap(self: *SpinRow, wrap: glib::boolean) void;
export @symbol("adw_spin_row_update") fn spin_row_update(self: *SpinRow) void;
export fn spin_row_connect_input(
	instance: *SpinRow,
	handler: *fn(instance: *SpinRow, new_value: *opaque, data: *opaque) int,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"input\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn spin_row_connect_output(
	instance: *SpinRow,
	handler: *fn(instance: *SpinRow, data: *opaque) glib::boolean,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"output\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn spin_row_connect_wrapped(
	instance: *SpinRow,
	handler: *fn(instance: *SpinRow, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"wrapped\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export type SplitButton = *opaque;
export @symbol("adw_split_button_new") fn split_button_new() *gtk4::Widget;
export @symbol("adw_split_button_get_can_shrink") fn split_button_get_can_shrink(self: *SplitButton) glib::boolean;
export @symbol("adw_split_button_get_child") fn split_button_get_child(self: *SplitButton) *gtk4::Widget;
export @symbol("adw_split_button_get_direction") fn split_button_get_direction(self: *SplitButton) gtk4::ArrowType;
export @symbol("adw_split_button_get_dropdown_tooltip") fn split_button_get_dropdown_tooltip(self: *SplitButton) *c::char;
export @symbol("adw_split_button_get_icon_name") fn split_button_get_icon_name(self: *SplitButton) *c::char;
export @symbol("adw_split_button_get_label") fn split_button_get_label(self: *SplitButton) *c::char;
export @symbol("adw_split_button_get_menu_model") fn split_button_get_menu_model(self: *SplitButton) *gio::MenuModel;
export @symbol("adw_split_button_get_popover") fn split_button_get_popover(self: *SplitButton) *gtk4::Popover;
export @symbol("adw_split_button_get_use_underline") fn split_button_get_use_underline(self: *SplitButton) glib::boolean;
export @symbol("adw_split_button_popdown") fn split_button_popdown(self: *SplitButton) void;
export @symbol("adw_split_button_popup") fn split_button_popup(self: *SplitButton) void;
export @symbol("adw_split_button_set_can_shrink") fn split_button_set_can_shrink(self: *SplitButton, can_shrink: glib::boolean) void;
export @symbol("adw_split_button_set_child") fn split_button_set_child(self: *SplitButton, child: *gtk4::Widget) void;
export @symbol("adw_split_button_set_direction") fn split_button_set_direction(self: *SplitButton, direction: gtk4::ArrowType) void;
export @symbol("adw_split_button_set_dropdown_tooltip") fn split_button_set_dropdown_tooltip(self: *SplitButton, tooltip: *c::char) void;
export @symbol("adw_split_button_set_icon_name") fn split_button_set_icon_name(self: *SplitButton, icon_name: *c::char) void;
export @symbol("adw_split_button_set_label") fn split_button_set_label(self: *SplitButton, label: *c::char) void;
export @symbol("adw_split_button_set_menu_model") fn split_button_set_menu_model(self: *SplitButton, menu_model: *gio::MenuModel) void;
export @symbol("adw_split_button_set_popover") fn split_button_set_popover(self: *SplitButton, popover: *gtk4::Popover) void;
export @symbol("adw_split_button_set_use_underline") fn split_button_set_use_underline(self: *SplitButton, use_underline: glib::boolean) void;
export fn split_button_connect_activate(
	instance: *SplitButton,
	handler: *fn(instance: *SplitButton, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"activate\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn split_button_connect_clicked(
	instance: *SplitButton,
	handler: *fn(instance: *SplitButton, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"clicked\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export type SpringAnimation = *opaque;
export @symbol("adw_spring_animation_new") fn spring_animation_new(widget: *gtk4::Widget, from: f64, to: f64, spring_params: *SpringParams, target: *AnimationTarget) *Animation;
export @symbol("adw_spring_animation_calculate_value") fn spring_animation_calculate_value(self: *SpringAnimation, time: uint) f64;
export @symbol("adw_spring_animation_calculate_velocity") fn spring_animation_calculate_velocity(self: *SpringAnimation, time: uint) f64;
export @symbol("adw_spring_animation_get_clamp") fn spring_animation_get_clamp(self: *SpringAnimation) glib::boolean;
export @symbol("adw_spring_animation_get_epsilon") fn spring_animation_get_epsilon(self: *SpringAnimation) f64;
export @symbol("adw_spring_animation_get_estimated_duration") fn spring_animation_get_estimated_duration(self: *SpringAnimation) uint;
export @symbol("adw_spring_animation_get_initial_velocity") fn spring_animation_get_initial_velocity(self: *SpringAnimation) f64;
export @symbol("adw_spring_animation_get_spring_params") fn spring_animation_get_spring_params(self: *SpringAnimation) *SpringParams;
export @symbol("adw_spring_animation_get_value_from") fn spring_animation_get_value_from(self: *SpringAnimation) f64;
export @symbol("adw_spring_animation_get_value_to") fn spring_animation_get_value_to(self: *SpringAnimation) f64;
export @symbol("adw_spring_animation_get_velocity") fn spring_animation_get_velocity(self: *SpringAnimation) f64;
export @symbol("adw_spring_animation_set_clamp") fn spring_animation_set_clamp(self: *SpringAnimation, clamp: glib::boolean) void;
export @symbol("adw_spring_animation_set_epsilon") fn spring_animation_set_epsilon(self: *SpringAnimation, epsilon: f64) void;
export @symbol("adw_spring_animation_set_initial_velocity") fn spring_animation_set_initial_velocity(self: *SpringAnimation, velocity: f64) void;
export @symbol("adw_spring_animation_set_spring_params") fn spring_animation_set_spring_params(self: *SpringAnimation, spring_params: *SpringParams) void;
export @symbol("adw_spring_animation_set_value_from") fn spring_animation_set_value_from(self: *SpringAnimation, value: f64) void;
export @symbol("adw_spring_animation_set_value_to") fn spring_animation_set_value_to(self: *SpringAnimation, value: f64) void;
export type Squeezer = *opaque;
export @symbol("adw_squeezer_new") fn squeezer_new() *gtk4::Widget;
export @symbol("adw_squeezer_add") fn squeezer_add(self: *Squeezer, child: *gtk4::Widget) *SqueezerPage;
export @symbol("adw_squeezer_get_allow_none") fn squeezer_get_allow_none(self: *Squeezer) glib::boolean;
export @symbol("adw_squeezer_get_homogeneous") fn squeezer_get_homogeneous(self: *Squeezer) glib::boolean;
export @symbol("adw_squeezer_get_interpolate_size") fn squeezer_get_interpolate_size(self: *Squeezer) glib::boolean;
export @symbol("adw_squeezer_get_page") fn squeezer_get_page(self: *Squeezer, child: *gtk4::Widget) *SqueezerPage;
export @symbol("adw_squeezer_get_pages") fn squeezer_get_pages(self: *Squeezer) *gtk4::SelectionModel;
export @symbol("adw_squeezer_get_switch_threshold_policy") fn squeezer_get_switch_threshold_policy(self: *Squeezer) FoldThresholdPolicy;
export @symbol("adw_squeezer_get_transition_duration") fn squeezer_get_transition_duration(self: *Squeezer) uint;
export @symbol("adw_squeezer_get_transition_running") fn squeezer_get_transition_running(self: *Squeezer) glib::boolean;
export @symbol("adw_squeezer_get_transition_type") fn squeezer_get_transition_type(self: *Squeezer) SqueezerTransitionType;
export @symbol("adw_squeezer_get_visible_child") fn squeezer_get_visible_child(self: *Squeezer) *gtk4::Widget;
export @symbol("adw_squeezer_get_xalign") fn squeezer_get_xalign(self: *Squeezer) f32;
export @symbol("adw_squeezer_get_yalign") fn squeezer_get_yalign(self: *Squeezer) f32;
export @symbol("adw_squeezer_remove") fn squeezer_remove(self: *Squeezer, child: *gtk4::Widget) void;
export @symbol("adw_squeezer_set_allow_none") fn squeezer_set_allow_none(self: *Squeezer, allow_none: glib::boolean) void;
export @symbol("adw_squeezer_set_homogeneous") fn squeezer_set_homogeneous(self: *Squeezer, homogeneous: glib::boolean) void;
export @symbol("adw_squeezer_set_interpolate_size") fn squeezer_set_interpolate_size(self: *Squeezer, interpolate_size: glib::boolean) void;
export @symbol("adw_squeezer_set_switch_threshold_policy") fn squeezer_set_switch_threshold_policy(self: *Squeezer, policy: FoldThresholdPolicy) void;
export @symbol("adw_squeezer_set_transition_duration") fn squeezer_set_transition_duration(self: *Squeezer, duration: uint) void;
export @symbol("adw_squeezer_set_transition_type") fn squeezer_set_transition_type(self: *Squeezer, transition: SqueezerTransitionType) void;
export @symbol("adw_squeezer_set_xalign") fn squeezer_set_xalign(self: *Squeezer, xalign: f32) void;
export @symbol("adw_squeezer_set_yalign") fn squeezer_set_yalign(self: *Squeezer, yalign: f32) void;
export type SqueezerPage = *opaque;
export @symbol("adw_squeezer_page_get_child") fn squeezer_page_get_child(self: *SqueezerPage) *gtk4::Widget;
export @symbol("adw_squeezer_page_get_enabled") fn squeezer_page_get_enabled(self: *SqueezerPage) glib::boolean;
export @symbol("adw_squeezer_page_set_enabled") fn squeezer_page_set_enabled(self: *SqueezerPage, enabled: glib::boolean) void;
export type StatusPage = *opaque;
export @symbol("adw_status_page_new") fn status_page_new() *gtk4::Widget;
export @symbol("adw_status_page_get_child") fn status_page_get_child(self: *StatusPage) *gtk4::Widget;
export @symbol("adw_status_page_get_description") fn status_page_get_description(self: *StatusPage) *c::char;
export @symbol("adw_status_page_get_icon_name") fn status_page_get_icon_name(self: *StatusPage) *c::char;
export @symbol("adw_status_page_get_paintable") fn status_page_get_paintable(self: *StatusPage) *gdk4::Paintable;
export @symbol("adw_status_page_get_title") fn status_page_get_title(self: *StatusPage) *c::char;
export @symbol("adw_status_page_set_child") fn status_page_set_child(self: *StatusPage, child: *gtk4::Widget) void;
export @symbol("adw_status_page_set_description") fn status_page_set_description(self: *StatusPage, description: *c::char) void;
export @symbol("adw_status_page_set_icon_name") fn status_page_set_icon_name(self: *StatusPage, icon_name: *c::char) void;
export @symbol("adw_status_page_set_paintable") fn status_page_set_paintable(self: *StatusPage, paintable: *gdk4::Paintable) void;
export @symbol("adw_status_page_set_title") fn status_page_set_title(self: *StatusPage, title: *c::char) void;
export type StyleManager = *opaque;
export @symbol("adw_style_manager_get_color_scheme") fn style_manager_get_color_scheme(self: *StyleManager) ColorScheme;
export @symbol("adw_style_manager_get_dark") fn style_manager_get_dark(self: *StyleManager) glib::boolean;
export @symbol("adw_style_manager_get_display") fn style_manager_get_display(self: *StyleManager) *gdk4::Display;
export @symbol("adw_style_manager_get_high_contrast") fn style_manager_get_high_contrast(self: *StyleManager) glib::boolean;
export @symbol("adw_style_manager_get_system_supports_color_schemes") fn style_manager_get_system_supports_color_schemes(self: *StyleManager) glib::boolean;
export @symbol("adw_style_manager_set_color_scheme") fn style_manager_set_color_scheme(self: *StyleManager, color_scheme: ColorScheme) void;
export @symbol("adw_style_manager_get_default") fn style_manager_get_default() *StyleManager;
export @symbol("adw_style_manager_get_for_display") fn style_manager_get_for_display(display: *gdk4::Display) *StyleManager;
export type SwipeTracker = *opaque;
export @symbol("adw_swipe_tracker_new") fn swipe_tracker_new(swipeable: *Swipeable) *SwipeTracker;
export @symbol("adw_swipe_tracker_get_allow_long_swipes") fn swipe_tracker_get_allow_long_swipes(self: *SwipeTracker) glib::boolean;
export @symbol("adw_swipe_tracker_get_allow_mouse_drag") fn swipe_tracker_get_allow_mouse_drag(self: *SwipeTracker) glib::boolean;
export @symbol("adw_swipe_tracker_get_enabled") fn swipe_tracker_get_enabled(self: *SwipeTracker) glib::boolean;
export @symbol("adw_swipe_tracker_get_lower_overshoot") fn swipe_tracker_get_lower_overshoot(self: *SwipeTracker) glib::boolean;
export @symbol("adw_swipe_tracker_get_reversed") fn swipe_tracker_get_reversed(self: *SwipeTracker) glib::boolean;
export @symbol("adw_swipe_tracker_get_swipeable") fn swipe_tracker_get_swipeable(self: *SwipeTracker) *Swipeable;
export @symbol("adw_swipe_tracker_get_upper_overshoot") fn swipe_tracker_get_upper_overshoot(self: *SwipeTracker) glib::boolean;
export @symbol("adw_swipe_tracker_set_allow_long_swipes") fn swipe_tracker_set_allow_long_swipes(self: *SwipeTracker, allow_long_swipes: glib::boolean) void;
export @symbol("adw_swipe_tracker_set_allow_mouse_drag") fn swipe_tracker_set_allow_mouse_drag(self: *SwipeTracker, allow_mouse_drag: glib::boolean) void;
export @symbol("adw_swipe_tracker_set_enabled") fn swipe_tracker_set_enabled(self: *SwipeTracker, enabled: glib::boolean) void;
export @symbol("adw_swipe_tracker_set_lower_overshoot") fn swipe_tracker_set_lower_overshoot(self: *SwipeTracker, overshoot: glib::boolean) void;
export @symbol("adw_swipe_tracker_set_reversed") fn swipe_tracker_set_reversed(self: *SwipeTracker, reversed: glib::boolean) void;
export @symbol("adw_swipe_tracker_set_upper_overshoot") fn swipe_tracker_set_upper_overshoot(self: *SwipeTracker, overshoot: glib::boolean) void;
export @symbol("adw_swipe_tracker_shift_position") fn swipe_tracker_shift_position(self: *SwipeTracker, delta: f64) void;
export fn swipe_tracker_connect_begin_swipe(
	instance: *SwipeTracker,
	handler: *fn(instance: *SwipeTracker, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"begin-swipe\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn swipe_tracker_connect_end_swipe(
	instance: *SwipeTracker,
	handler: *fn(instance: *SwipeTracker, velocity: f64, to: f64, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"end-swipe\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn swipe_tracker_connect_prepare(
	instance: *SwipeTracker,
	handler: *fn(instance: *SwipeTracker, direction: NavigationDirection, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"prepare\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn swipe_tracker_connect_update_swipe(
	instance: *SwipeTracker,
	handler: *fn(instance: *SwipeTracker, progress: f64, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"update-swipe\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export type SwitchRow = *opaque;
export @symbol("adw_switch_row_new") fn switch_row_new() *gtk4::Widget;
export @symbol("adw_switch_row_get_active") fn switch_row_get_active(self: *SwitchRow) glib::boolean;
export @symbol("adw_switch_row_set_active") fn switch_row_set_active(self: *SwitchRow, is_active: glib::boolean) void;
export type TabBar = *opaque;
export @symbol("adw_tab_bar_new") fn tab_bar_new() *TabBar;
export @symbol("adw_tab_bar_get_autohide") fn tab_bar_get_autohide(self: *TabBar) glib::boolean;
export @symbol("adw_tab_bar_get_end_action_widget") fn tab_bar_get_end_action_widget(self: *TabBar) *gtk4::Widget;
export @symbol("adw_tab_bar_get_expand_tabs") fn tab_bar_get_expand_tabs(self: *TabBar) glib::boolean;
export @symbol("adw_tab_bar_get_extra_drag_preferred_action") fn tab_bar_get_extra_drag_preferred_action(self: *TabBar) gdk4::DragAction;
export @symbol("adw_tab_bar_get_extra_drag_preload") fn tab_bar_get_extra_drag_preload(self: *TabBar) glib::boolean;
export @symbol("adw_tab_bar_get_inverted") fn tab_bar_get_inverted(self: *TabBar) glib::boolean;
export @symbol("adw_tab_bar_get_is_overflowing") fn tab_bar_get_is_overflowing(self: *TabBar) glib::boolean;
export @symbol("adw_tab_bar_get_start_action_widget") fn tab_bar_get_start_action_widget(self: *TabBar) *gtk4::Widget;
export @symbol("adw_tab_bar_get_tabs_revealed") fn tab_bar_get_tabs_revealed(self: *TabBar) glib::boolean;
export @symbol("adw_tab_bar_get_view") fn tab_bar_get_view(self: *TabBar) *TabView;
export @symbol("adw_tab_bar_set_autohide") fn tab_bar_set_autohide(self: *TabBar, autohide: glib::boolean) void;
export @symbol("adw_tab_bar_set_end_action_widget") fn tab_bar_set_end_action_widget(self: *TabBar, widget: *gtk4::Widget) void;
export @symbol("adw_tab_bar_set_expand_tabs") fn tab_bar_set_expand_tabs(self: *TabBar, expand_tabs: glib::boolean) void;
export @symbol("adw_tab_bar_set_extra_drag_preload") fn tab_bar_set_extra_drag_preload(self: *TabBar, preload: glib::boolean) void;
export @symbol("adw_tab_bar_set_inverted") fn tab_bar_set_inverted(self: *TabBar, inverted: glib::boolean) void;
export @symbol("adw_tab_bar_set_start_action_widget") fn tab_bar_set_start_action_widget(self: *TabBar, widget: *gtk4::Widget) void;
export @symbol("adw_tab_bar_set_view") fn tab_bar_set_view(self: *TabBar, view: *TabView) void;
export @symbol("adw_tab_bar_setup_extra_drop_target") fn tab_bar_setup_extra_drop_target(self: *TabBar, actions: gdk4::DragAction, types: *glib::Type, n_types: size) void;
export fn tab_bar_connect_extra_drag_drop(
	instance: *TabBar,
	handler: *fn(instance: *TabBar, page: *TabPage, value: gobject::Value, data: *opaque) glib::boolean,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"extra-drag-drop\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn tab_bar_connect_extra_drag_value(
	instance: *TabBar,
	handler: *fn(instance: *TabBar, page: *TabPage, value: gobject::Value, data: *opaque) gdk4::DragAction,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"extra-drag-value\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export type TabButton = *opaque;
export @symbol("adw_tab_button_new") fn tab_button_new() *gtk4::Widget;
export @symbol("adw_tab_button_get_view") fn tab_button_get_view(self: *TabButton) *TabView;
export @symbol("adw_tab_button_set_view") fn tab_button_set_view(self: *TabButton, view: *TabView) void;
export fn tab_button_connect_activate(
	instance: *TabButton,
	handler: *fn(instance: *TabButton, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"activate\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn tab_button_connect_clicked(
	instance: *TabButton,
	handler: *fn(instance: *TabButton, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"clicked\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export type TabOverview = *opaque;
export @symbol("adw_tab_overview_new") fn tab_overview_new() *gtk4::Widget;
export @symbol("adw_tab_overview_get_child") fn tab_overview_get_child(self: *TabOverview) *gtk4::Widget;
export @symbol("adw_tab_overview_get_enable_new_tab") fn tab_overview_get_enable_new_tab(self: *TabOverview) glib::boolean;
export @symbol("adw_tab_overview_get_enable_search") fn tab_overview_get_enable_search(self: *TabOverview) glib::boolean;
export @symbol("adw_tab_overview_get_extra_drag_preferred_action") fn tab_overview_get_extra_drag_preferred_action(self: *TabOverview) gdk4::DragAction;
export @symbol("adw_tab_overview_get_extra_drag_preload") fn tab_overview_get_extra_drag_preload(self: *TabOverview) glib::boolean;
export @symbol("adw_tab_overview_get_inverted") fn tab_overview_get_inverted(self: *TabOverview) glib::boolean;
export @symbol("adw_tab_overview_get_open") fn tab_overview_get_open(self: *TabOverview) glib::boolean;
export @symbol("adw_tab_overview_get_search_active") fn tab_overview_get_search_active(self: *TabOverview) glib::boolean;
export @symbol("adw_tab_overview_get_secondary_menu") fn tab_overview_get_secondary_menu(self: *TabOverview) *gio::MenuModel;
export @symbol("adw_tab_overview_get_show_end_title_buttons") fn tab_overview_get_show_end_title_buttons(self: *TabOverview) glib::boolean;
export @symbol("adw_tab_overview_get_show_start_title_buttons") fn tab_overview_get_show_start_title_buttons(self: *TabOverview) glib::boolean;
export @symbol("adw_tab_overview_get_view") fn tab_overview_get_view(self: *TabOverview) *TabView;
export @symbol("adw_tab_overview_set_child") fn tab_overview_set_child(self: *TabOverview, child: *gtk4::Widget) void;
export @symbol("adw_tab_overview_set_enable_new_tab") fn tab_overview_set_enable_new_tab(self: *TabOverview, enable_new_tab: glib::boolean) void;
export @symbol("adw_tab_overview_set_enable_search") fn tab_overview_set_enable_search(self: *TabOverview, enable_search: glib::boolean) void;
export @symbol("adw_tab_overview_set_extra_drag_preload") fn tab_overview_set_extra_drag_preload(self: *TabOverview, preload: glib::boolean) void;
export @symbol("adw_tab_overview_set_inverted") fn tab_overview_set_inverted(self: *TabOverview, inverted: glib::boolean) void;
export @symbol("adw_tab_overview_set_open") fn tab_overview_set_open(self: *TabOverview, open: glib::boolean) void;
export @symbol("adw_tab_overview_set_secondary_menu") fn tab_overview_set_secondary_menu(self: *TabOverview, secondary_menu: *gio::MenuModel) void;
export @symbol("adw_tab_overview_set_show_end_title_buttons") fn tab_overview_set_show_end_title_buttons(self: *TabOverview, show_end_title_buttons: glib::boolean) void;
export @symbol("adw_tab_overview_set_show_start_title_buttons") fn tab_overview_set_show_start_title_buttons(self: *TabOverview, show_start_title_buttons: glib::boolean) void;
export @symbol("adw_tab_overview_set_view") fn tab_overview_set_view(self: *TabOverview, view: *TabView) void;
export @symbol("adw_tab_overview_setup_extra_drop_target") fn tab_overview_setup_extra_drop_target(self: *TabOverview, actions: gdk4::DragAction, types: *glib::Type, n_types: size) void;
export fn tab_overview_connect_create_tab(
	instance: *TabOverview,
	handler: *fn(instance: *TabOverview, data: *opaque) *TabPage,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"create-tab\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn tab_overview_connect_extra_drag_drop(
	instance: *TabOverview,
	handler: *fn(instance: *TabOverview, page: *TabPage, value: gobject::Value, data: *opaque) glib::boolean,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"extra-drag-drop\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn tab_overview_connect_extra_drag_value(
	instance: *TabOverview,
	handler: *fn(instance: *TabOverview, page: *TabPage, value: gobject::Value, data: *opaque) gdk4::DragAction,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"extra-drag-value\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export type TabPage = *opaque;
export @symbol("adw_tab_page_get_child") fn tab_page_get_child(self: *TabPage) *gtk4::Widget;
export @symbol("adw_tab_page_get_icon") fn tab_page_get_icon(self: *TabPage) *gio::Icon;
export @symbol("adw_tab_page_get_indicator_activatable") fn tab_page_get_indicator_activatable(self: *TabPage) glib::boolean;
export @symbol("adw_tab_page_get_indicator_icon") fn tab_page_get_indicator_icon(self: *TabPage) *gio::Icon;
export @symbol("adw_tab_page_get_indicator_tooltip") fn tab_page_get_indicator_tooltip(self: *TabPage) *c::char;
export @symbol("adw_tab_page_get_keyword") fn tab_page_get_keyword(self: *TabPage) *c::char;
export @symbol("adw_tab_page_get_live_thumbnail") fn tab_page_get_live_thumbnail(self: *TabPage) glib::boolean;
export @symbol("adw_tab_page_get_loading") fn tab_page_get_loading(self: *TabPage) glib::boolean;
export @symbol("adw_tab_page_get_needs_attention") fn tab_page_get_needs_attention(self: *TabPage) glib::boolean;
export @symbol("adw_tab_page_get_parent") fn tab_page_get_parent(self: *TabPage) *TabPage;
export @symbol("adw_tab_page_get_pinned") fn tab_page_get_pinned(self: *TabPage) glib::boolean;
export @symbol("adw_tab_page_get_selected") fn tab_page_get_selected(self: *TabPage) glib::boolean;
export @symbol("adw_tab_page_get_thumbnail_xalign") fn tab_page_get_thumbnail_xalign(self: *TabPage) f32;
export @symbol("adw_tab_page_get_thumbnail_yalign") fn tab_page_get_thumbnail_yalign(self: *TabPage) f32;
export @symbol("adw_tab_page_get_title") fn tab_page_get_title(self: *TabPage) *c::char;
export @symbol("adw_tab_page_get_tooltip") fn tab_page_get_tooltip(self: *TabPage) *c::char;
export @symbol("adw_tab_page_invalidate_thumbnail") fn tab_page_invalidate_thumbnail(self: *TabPage) void;
export @symbol("adw_tab_page_set_icon") fn tab_page_set_icon(self: *TabPage, icon: *gio::Icon) void;
export @symbol("adw_tab_page_set_indicator_activatable") fn tab_page_set_indicator_activatable(self: *TabPage, activatable: glib::boolean) void;
export @symbol("adw_tab_page_set_indicator_icon") fn tab_page_set_indicator_icon(self: *TabPage, indicator_icon: *gio::Icon) void;
export @symbol("adw_tab_page_set_indicator_tooltip") fn tab_page_set_indicator_tooltip(self: *TabPage, tooltip: *c::char) void;
export @symbol("adw_tab_page_set_keyword") fn tab_page_set_keyword(self: *TabPage, keyword: *c::char) void;
export @symbol("adw_tab_page_set_live_thumbnail") fn tab_page_set_live_thumbnail(self: *TabPage, live_thumbnail: glib::boolean) void;
export @symbol("adw_tab_page_set_loading") fn tab_page_set_loading(self: *TabPage, loading: glib::boolean) void;
export @symbol("adw_tab_page_set_needs_attention") fn tab_page_set_needs_attention(self: *TabPage, needs_attention: glib::boolean) void;
export @symbol("adw_tab_page_set_thumbnail_xalign") fn tab_page_set_thumbnail_xalign(self: *TabPage, xalign: f32) void;
export @symbol("adw_tab_page_set_thumbnail_yalign") fn tab_page_set_thumbnail_yalign(self: *TabPage, yalign: f32) void;
export @symbol("adw_tab_page_set_title") fn tab_page_set_title(self: *TabPage, title: *c::char) void;
export @symbol("adw_tab_page_set_tooltip") fn tab_page_set_tooltip(self: *TabPage, tooltip: *c::char) void;
export type TabView = *opaque;
export @symbol("adw_tab_view_new") fn tab_view_new() *TabView;
export @symbol("adw_tab_view_add_page") fn tab_view_add_page(self: *TabView, child: *gtk4::Widget, parent: *TabPage) *TabPage;
export @symbol("adw_tab_view_add_shortcuts") fn tab_view_add_shortcuts(self: *TabView, shortcuts: TabViewShortcuts) void;
export @symbol("adw_tab_view_append") fn tab_view_append(self: *TabView, child: *gtk4::Widget) *TabPage;
export @symbol("adw_tab_view_append_pinned") fn tab_view_append_pinned(self: *TabView, child: *gtk4::Widget) *TabPage;
export @symbol("adw_tab_view_close_other_pages") fn tab_view_close_other_pages(self: *TabView, page: *TabPage) void;
export @symbol("adw_tab_view_close_page") fn tab_view_close_page(self: *TabView, page: *TabPage) void;
export @symbol("adw_tab_view_close_page_finish") fn tab_view_close_page_finish(self: *TabView, page: *TabPage, confirm: glib::boolean) void;
export @symbol("adw_tab_view_close_pages_after") fn tab_view_close_pages_after(self: *TabView, page: *TabPage) void;
export @symbol("adw_tab_view_close_pages_before") fn tab_view_close_pages_before(self: *TabView, page: *TabPage) void;
export @symbol("adw_tab_view_get_default_icon") fn tab_view_get_default_icon(self: *TabView) *gio::Icon;
export @symbol("adw_tab_view_get_is_transferring_page") fn tab_view_get_is_transferring_page(self: *TabView) glib::boolean;
export @symbol("adw_tab_view_get_menu_model") fn tab_view_get_menu_model(self: *TabView) *gio::MenuModel;
export @symbol("adw_tab_view_get_n_pages") fn tab_view_get_n_pages(self: *TabView) int;
export @symbol("adw_tab_view_get_n_pinned_pages") fn tab_view_get_n_pinned_pages(self: *TabView) int;
export @symbol("adw_tab_view_get_nth_page") fn tab_view_get_nth_page(self: *TabView, position: int) *TabPage;
export @symbol("adw_tab_view_get_page") fn tab_view_get_page(self: *TabView, child: *gtk4::Widget) *TabPage;
export @symbol("adw_tab_view_get_page_position") fn tab_view_get_page_position(self: *TabView, page: *TabPage) int;
export @symbol("adw_tab_view_get_pages") fn tab_view_get_pages(self: *TabView) *gtk4::SelectionModel;
export @symbol("adw_tab_view_get_selected_page") fn tab_view_get_selected_page(self: *TabView) *TabPage;
export @symbol("adw_tab_view_get_shortcuts") fn tab_view_get_shortcuts(self: *TabView) TabViewShortcuts;
export @symbol("adw_tab_view_insert") fn tab_view_insert(self: *TabView, child: *gtk4::Widget, position: int) *TabPage;
export @symbol("adw_tab_view_insert_pinned") fn tab_view_insert_pinned(self: *TabView, child: *gtk4::Widget, position: int) *TabPage;
export @symbol("adw_tab_view_invalidate_thumbnails") fn tab_view_invalidate_thumbnails(self: *TabView) void;
export @symbol("adw_tab_view_prepend") fn tab_view_prepend(self: *TabView, child: *gtk4::Widget) *TabPage;
export @symbol("adw_tab_view_prepend_pinned") fn tab_view_prepend_pinned(self: *TabView, child: *gtk4::Widget) *TabPage;
export @symbol("adw_tab_view_remove_shortcuts") fn tab_view_remove_shortcuts(self: *TabView, shortcuts: TabViewShortcuts) void;
export @symbol("adw_tab_view_reorder_backward") fn tab_view_reorder_backward(self: *TabView, page: *TabPage) glib::boolean;
export @symbol("adw_tab_view_reorder_first") fn tab_view_reorder_first(self: *TabView, page: *TabPage) glib::boolean;
export @symbol("adw_tab_view_reorder_forward") fn tab_view_reorder_forward(self: *TabView, page: *TabPage) glib::boolean;
export @symbol("adw_tab_view_reorder_last") fn tab_view_reorder_last(self: *TabView, page: *TabPage) glib::boolean;
export @symbol("adw_tab_view_reorder_page") fn tab_view_reorder_page(self: *TabView, page: *TabPage, position: int) glib::boolean;
export @symbol("adw_tab_view_select_next_page") fn tab_view_select_next_page(self: *TabView) glib::boolean;
export @symbol("adw_tab_view_select_previous_page") fn tab_view_select_previous_page(self: *TabView) glib::boolean;
export @symbol("adw_tab_view_set_default_icon") fn tab_view_set_default_icon(self: *TabView, default_icon: *gio::Icon) void;
export @symbol("adw_tab_view_set_menu_model") fn tab_view_set_menu_model(self: *TabView, menu_model: *gio::MenuModel) void;
export @symbol("adw_tab_view_set_page_pinned") fn tab_view_set_page_pinned(self: *TabView, page: *TabPage, pinned: glib::boolean) void;
export @symbol("adw_tab_view_set_selected_page") fn tab_view_set_selected_page(self: *TabView, selected_page: *TabPage) void;
export @symbol("adw_tab_view_set_shortcuts") fn tab_view_set_shortcuts(self: *TabView, shortcuts: TabViewShortcuts) void;
export @symbol("adw_tab_view_transfer_page") fn tab_view_transfer_page(self: *TabView, page: *TabPage, other_view: *TabView, position: int) void;
export fn tab_view_connect_close_page(
	instance: *TabView,
	handler: *fn(instance: *TabView, page: *TabPage, data: *opaque) glib::boolean,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"close-page\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn tab_view_connect_create_window(
	instance: *TabView,
	handler: *fn(instance: *TabView, data: *opaque) *TabView,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"create-window\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn tab_view_connect_indicator_activated(
	instance: *TabView,
	handler: *fn(instance: *TabView, page: *TabPage, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"indicator-activated\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn tab_view_connect_page_attached(
	instance: *TabView,
	handler: *fn(instance: *TabView, page: *TabPage, position: int, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"page-attached\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn tab_view_connect_page_detached(
	instance: *TabView,
	handler: *fn(instance: *TabView, page: *TabPage, position: int, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"page-detached\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn tab_view_connect_page_reordered(
	instance: *TabView,
	handler: *fn(instance: *TabView, page: *TabPage, position: int, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"page-reordered\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn tab_view_connect_setup_menu(
	instance: *TabView,
	handler: *fn(instance: *TabView, page: *TabPage, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"setup-menu\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export type TimedAnimation = *opaque;
export @symbol("adw_timed_animation_new") fn timed_animation_new(widget: *gtk4::Widget, from: f64, to: f64, duration: uint, target: *AnimationTarget) *Animation;
export @symbol("adw_timed_animation_get_alternate") fn timed_animation_get_alternate(self: *TimedAnimation) glib::boolean;
export @symbol("adw_timed_animation_get_duration") fn timed_animation_get_duration(self: *TimedAnimation) uint;
export @symbol("adw_timed_animation_get_easing") fn timed_animation_get_easing(self: *TimedAnimation) Easing;
export @symbol("adw_timed_animation_get_repeat_count") fn timed_animation_get_repeat_count(self: *TimedAnimation) uint;
export @symbol("adw_timed_animation_get_reverse") fn timed_animation_get_reverse(self: *TimedAnimation) glib::boolean;
export @symbol("adw_timed_animation_get_value_from") fn timed_animation_get_value_from(self: *TimedAnimation) f64;
export @symbol("adw_timed_animation_get_value_to") fn timed_animation_get_value_to(self: *TimedAnimation) f64;
export @symbol("adw_timed_animation_set_alternate") fn timed_animation_set_alternate(self: *TimedAnimation, alternate: glib::boolean) void;
export @symbol("adw_timed_animation_set_duration") fn timed_animation_set_duration(self: *TimedAnimation, duration: uint) void;
export @symbol("adw_timed_animation_set_easing") fn timed_animation_set_easing(self: *TimedAnimation, easing: Easing) void;
export @symbol("adw_timed_animation_set_repeat_count") fn timed_animation_set_repeat_count(self: *TimedAnimation, repeat_count: uint) void;
export @symbol("adw_timed_animation_set_reverse") fn timed_animation_set_reverse(self: *TimedAnimation, reverse: glib::boolean) void;
export @symbol("adw_timed_animation_set_value_from") fn timed_animation_set_value_from(self: *TimedAnimation, value: f64) void;
export @symbol("adw_timed_animation_set_value_to") fn timed_animation_set_value_to(self: *TimedAnimation, value: f64) void;
export type Toast = *opaque;
export @symbol("adw_toast_new") fn toast_new(title: *c::char) *Toast;
export @symbol("adw_toast_new_format") fn toast_new_format(format: *c::char, ...) *Toast;
export @symbol("adw_toast_dismiss") fn toast_dismiss(self: *Toast) void;
export @symbol("adw_toast_get_action_name") fn toast_get_action_name(self: *Toast) *c::char;
export @symbol("adw_toast_get_action_target_value") fn toast_get_action_target_value(self: *Toast) *glib::Variant;
export @symbol("adw_toast_get_button_label") fn toast_get_button_label(self: *Toast) *c::char;
export @symbol("adw_toast_get_custom_title") fn toast_get_custom_title(self: *Toast) *gtk4::Widget;
export @symbol("adw_toast_get_priority") fn toast_get_priority(self: *Toast) ToastPriority;
export @symbol("adw_toast_get_timeout") fn toast_get_timeout(self: *Toast) uint;
export @symbol("adw_toast_get_title") fn toast_get_title(self: *Toast) *c::char;
export @symbol("adw_toast_get_use_markup") fn toast_get_use_markup(self: *Toast) glib::boolean;
export @symbol("adw_toast_set_action_name") fn toast_set_action_name(self: *Toast, action_name: *c::char) void;
export @symbol("adw_toast_set_action_target") fn toast_set_action_target(self: *Toast, format_string: *c::char, ...) void;
export @symbol("adw_toast_set_action_target_value") fn toast_set_action_target_value(self: *Toast, action_target: *glib::Variant) void;
export @symbol("adw_toast_set_button_label") fn toast_set_button_label(self: *Toast, button_label: *c::char) void;
export @symbol("adw_toast_set_custom_title") fn toast_set_custom_title(self: *Toast, widget: *gtk4::Widget) void;
export @symbol("adw_toast_set_detailed_action_name") fn toast_set_detailed_action_name(self: *Toast, detailed_action_name: *c::char) void;
export @symbol("adw_toast_set_priority") fn toast_set_priority(self: *Toast, priority: ToastPriority) void;
export @symbol("adw_toast_set_timeout") fn toast_set_timeout(self: *Toast, timeout: uint) void;
export @symbol("adw_toast_set_title") fn toast_set_title(self: *Toast, title: *c::char) void;
export @symbol("adw_toast_set_use_markup") fn toast_set_use_markup(self: *Toast, use_markup: glib::boolean) void;
export fn toast_connect_button_clicked(
	instance: *Toast,
	handler: *fn(instance: *Toast, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"button-clicked\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn toast_connect_dismissed(
	instance: *Toast,
	handler: *fn(instance: *Toast, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"dismissed\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export type ToastOverlay = *opaque;
export @symbol("adw_toast_overlay_new") fn toast_overlay_new() *gtk4::Widget;
export @symbol("adw_toast_overlay_add_toast") fn toast_overlay_add_toast(self: *ToastOverlay, toast: *Toast) void;
export @symbol("adw_toast_overlay_get_child") fn toast_overlay_get_child(self: *ToastOverlay) *gtk4::Widget;
export @symbol("adw_toast_overlay_set_child") fn toast_overlay_set_child(self: *ToastOverlay, child: *gtk4::Widget) void;
export type ToolbarView = *opaque;
export @symbol("adw_toolbar_view_new") fn toolbar_view_new() *gtk4::Widget;
export @symbol("adw_toolbar_view_add_bottom_bar") fn toolbar_view_add_bottom_bar(self: *ToolbarView, widget: *gtk4::Widget) void;
export @symbol("adw_toolbar_view_add_top_bar") fn toolbar_view_add_top_bar(self: *ToolbarView, widget: *gtk4::Widget) void;
export @symbol("adw_toolbar_view_get_bottom_bar_height") fn toolbar_view_get_bottom_bar_height(self: *ToolbarView) int;
export @symbol("adw_toolbar_view_get_bottom_bar_style") fn toolbar_view_get_bottom_bar_style(self: *ToolbarView) ToolbarStyle;
export @symbol("adw_toolbar_view_get_content") fn toolbar_view_get_content(self: *ToolbarView) *gtk4::Widget;
export @symbol("adw_toolbar_view_get_extend_content_to_bottom_edge") fn toolbar_view_get_extend_content_to_bottom_edge(self: *ToolbarView) glib::boolean;
export @symbol("adw_toolbar_view_get_extend_content_to_top_edge") fn toolbar_view_get_extend_content_to_top_edge(self: *ToolbarView) glib::boolean;
export @symbol("adw_toolbar_view_get_reveal_bottom_bars") fn toolbar_view_get_reveal_bottom_bars(self: *ToolbarView) glib::boolean;
export @symbol("adw_toolbar_view_get_reveal_top_bars") fn toolbar_view_get_reveal_top_bars(self: *ToolbarView) glib::boolean;
export @symbol("adw_toolbar_view_get_top_bar_height") fn toolbar_view_get_top_bar_height(self: *ToolbarView) int;
export @symbol("adw_toolbar_view_get_top_bar_style") fn toolbar_view_get_top_bar_style(self: *ToolbarView) ToolbarStyle;
export @symbol("adw_toolbar_view_remove") fn toolbar_view_remove(self: *ToolbarView, widget: *gtk4::Widget) void;
export @symbol("adw_toolbar_view_set_bottom_bar_style") fn toolbar_view_set_bottom_bar_style(self: *ToolbarView, style: ToolbarStyle) void;
export @symbol("adw_toolbar_view_set_content") fn toolbar_view_set_content(self: *ToolbarView, content: *gtk4::Widget) void;
export @symbol("adw_toolbar_view_set_extend_content_to_bottom_edge") fn toolbar_view_set_extend_content_to_bottom_edge(self: *ToolbarView, extend: glib::boolean) void;
export @symbol("adw_toolbar_view_set_extend_content_to_top_edge") fn toolbar_view_set_extend_content_to_top_edge(self: *ToolbarView, extend: glib::boolean) void;
export @symbol("adw_toolbar_view_set_reveal_bottom_bars") fn toolbar_view_set_reveal_bottom_bars(self: *ToolbarView, reveal: glib::boolean) void;
export @symbol("adw_toolbar_view_set_reveal_top_bars") fn toolbar_view_set_reveal_top_bars(self: *ToolbarView, reveal: glib::boolean) void;
export @symbol("adw_toolbar_view_set_top_bar_style") fn toolbar_view_set_top_bar_style(self: *ToolbarView, style: ToolbarStyle) void;
export type ViewStack = *opaque;
export @symbol("adw_view_stack_new") fn view_stack_new() *gtk4::Widget;
export @symbol("adw_view_stack_add") fn view_stack_add(self: *ViewStack, child: *gtk4::Widget) *ViewStackPage;
export @symbol("adw_view_stack_add_named") fn view_stack_add_named(self: *ViewStack, child: *gtk4::Widget, name: *c::char) *ViewStackPage;
export @symbol("adw_view_stack_add_titled") fn view_stack_add_titled(self: *ViewStack, child: *gtk4::Widget, name: *c::char, title: *c::char) *ViewStackPage;
export @symbol("adw_view_stack_add_titled_with_icon") fn view_stack_add_titled_with_icon(self: *ViewStack, child: *gtk4::Widget, name: *c::char, title: *c::char, icon_name: *c::char) *ViewStackPage;
export @symbol("adw_view_stack_get_child_by_name") fn view_stack_get_child_by_name(self: *ViewStack, name: *c::char) *gtk4::Widget;
export @symbol("adw_view_stack_get_hhomogeneous") fn view_stack_get_hhomogeneous(self: *ViewStack) glib::boolean;
export @symbol("adw_view_stack_get_page") fn view_stack_get_page(self: *ViewStack, child: *gtk4::Widget) *ViewStackPage;
export @symbol("adw_view_stack_get_pages") fn view_stack_get_pages(self: *ViewStack) *gtk4::SelectionModel;
export @symbol("adw_view_stack_get_vhomogeneous") fn view_stack_get_vhomogeneous(self: *ViewStack) glib::boolean;
export @symbol("adw_view_stack_get_visible_child") fn view_stack_get_visible_child(self: *ViewStack) *gtk4::Widget;
export @symbol("adw_view_stack_get_visible_child_name") fn view_stack_get_visible_child_name(self: *ViewStack) *c::char;
export @symbol("adw_view_stack_remove") fn view_stack_remove(self: *ViewStack, child: *gtk4::Widget) void;
export @symbol("adw_view_stack_set_hhomogeneous") fn view_stack_set_hhomogeneous(self: *ViewStack, hhomogeneous: glib::boolean) void;
export @symbol("adw_view_stack_set_vhomogeneous") fn view_stack_set_vhomogeneous(self: *ViewStack, vhomogeneous: glib::boolean) void;
export @symbol("adw_view_stack_set_visible_child") fn view_stack_set_visible_child(self: *ViewStack, child: *gtk4::Widget) void;
export @symbol("adw_view_stack_set_visible_child_name") fn view_stack_set_visible_child_name(self: *ViewStack, name: *c::char) void;
export type ViewStackPage = *opaque;
export @symbol("adw_view_stack_page_get_badge_number") fn view_stack_page_get_badge_number(self: *ViewStackPage) uint;
export @symbol("adw_view_stack_page_get_child") fn view_stack_page_get_child(self: *ViewStackPage) *gtk4::Widget;
export @symbol("adw_view_stack_page_get_icon_name") fn view_stack_page_get_icon_name(self: *ViewStackPage) *c::char;
export @symbol("adw_view_stack_page_get_name") fn view_stack_page_get_name(self: *ViewStackPage) *c::char;
export @symbol("adw_view_stack_page_get_needs_attention") fn view_stack_page_get_needs_attention(self: *ViewStackPage) glib::boolean;
export @symbol("adw_view_stack_page_get_title") fn view_stack_page_get_title(self: *ViewStackPage) *c::char;
export @symbol("adw_view_stack_page_get_use_underline") fn view_stack_page_get_use_underline(self: *ViewStackPage) glib::boolean;
export @symbol("adw_view_stack_page_get_visible") fn view_stack_page_get_visible(self: *ViewStackPage) glib::boolean;
export @symbol("adw_view_stack_page_set_badge_number") fn view_stack_page_set_badge_number(self: *ViewStackPage, badge_number: uint) void;
export @symbol("adw_view_stack_page_set_icon_name") fn view_stack_page_set_icon_name(self: *ViewStackPage, icon_name: *c::char) void;
export @symbol("adw_view_stack_page_set_name") fn view_stack_page_set_name(self: *ViewStackPage, name: *c::char) void;
export @symbol("adw_view_stack_page_set_needs_attention") fn view_stack_page_set_needs_attention(self: *ViewStackPage, needs_attention: glib::boolean) void;
export @symbol("adw_view_stack_page_set_title") fn view_stack_page_set_title(self: *ViewStackPage, title: *c::char) void;
export @symbol("adw_view_stack_page_set_use_underline") fn view_stack_page_set_use_underline(self: *ViewStackPage, use_underline: glib::boolean) void;
export @symbol("adw_view_stack_page_set_visible") fn view_stack_page_set_visible(self: *ViewStackPage, visible: glib::boolean) void;
export type ViewStackPages = *opaque;
export @symbol("adw_view_stack_pages_get_selected_page") fn view_stack_pages_get_selected_page(self: *ViewStackPages) *ViewStackPage;
export @symbol("adw_view_stack_pages_set_selected_page") fn view_stack_pages_set_selected_page(self: *ViewStackPages, page: *ViewStackPage) void;
export type ViewSwitcher = *opaque;
export @symbol("adw_view_switcher_new") fn view_switcher_new() *gtk4::Widget;
export @symbol("adw_view_switcher_get_policy") fn view_switcher_get_policy(self: *ViewSwitcher) ViewSwitcherPolicy;
export @symbol("adw_view_switcher_get_stack") fn view_switcher_get_stack(self: *ViewSwitcher) *ViewStack;
export @symbol("adw_view_switcher_set_policy") fn view_switcher_set_policy(self: *ViewSwitcher, policy: ViewSwitcherPolicy) void;
export @symbol("adw_view_switcher_set_stack") fn view_switcher_set_stack(self: *ViewSwitcher, stack: *ViewStack) void;
export type ViewSwitcherBar = *opaque;
export @symbol("adw_view_switcher_bar_new") fn view_switcher_bar_new() *gtk4::Widget;
export @symbol("adw_view_switcher_bar_get_reveal") fn view_switcher_bar_get_reveal(self: *ViewSwitcherBar) glib::boolean;
export @symbol("adw_view_switcher_bar_get_stack") fn view_switcher_bar_get_stack(self: *ViewSwitcherBar) *ViewStack;
export @symbol("adw_view_switcher_bar_set_reveal") fn view_switcher_bar_set_reveal(self: *ViewSwitcherBar, reveal: glib::boolean) void;
export @symbol("adw_view_switcher_bar_set_stack") fn view_switcher_bar_set_stack(self: *ViewSwitcherBar, stack: *ViewStack) void;
export type ViewSwitcherTitle = *opaque;
export @symbol("adw_view_switcher_title_new") fn view_switcher_title_new() *gtk4::Widget;
export @symbol("adw_view_switcher_title_get_stack") fn view_switcher_title_get_stack(self: *ViewSwitcherTitle) *ViewStack;
export @symbol("adw_view_switcher_title_get_subtitle") fn view_switcher_title_get_subtitle(self: *ViewSwitcherTitle) *c::char;
export @symbol("adw_view_switcher_title_get_title") fn view_switcher_title_get_title(self: *ViewSwitcherTitle) *c::char;
export @symbol("adw_view_switcher_title_get_title_visible") fn view_switcher_title_get_title_visible(self: *ViewSwitcherTitle) glib::boolean;
export @symbol("adw_view_switcher_title_get_view_switcher_enabled") fn view_switcher_title_get_view_switcher_enabled(self: *ViewSwitcherTitle) glib::boolean;
export @symbol("adw_view_switcher_title_set_stack") fn view_switcher_title_set_stack(self: *ViewSwitcherTitle, stack: *ViewStack) void;
export @symbol("adw_view_switcher_title_set_subtitle") fn view_switcher_title_set_subtitle(self: *ViewSwitcherTitle, subtitle: *c::char) void;
export @symbol("adw_view_switcher_title_set_title") fn view_switcher_title_set_title(self: *ViewSwitcherTitle, title: *c::char) void;
export @symbol("adw_view_switcher_title_set_view_switcher_enabled") fn view_switcher_title_set_view_switcher_enabled(self: *ViewSwitcherTitle, enabled: glib::boolean) void;
export type Window = struct {
	parent_instance: gtk4::Window,
};
export @symbol("adw_window_new") fn window_new() *gtk4::Widget;
export @symbol("adw_window_add_breakpoint") fn window_add_breakpoint(self: *Window, breakpoint: *Breakpoint) void;
export @symbol("adw_window_get_content") fn window_get_content(self: *Window) *gtk4::Widget;
export @symbol("adw_window_get_current_breakpoint") fn window_get_current_breakpoint(self: *Window) *Breakpoint;
export @symbol("adw_window_set_content") fn window_set_content(self: *Window, content: *gtk4::Widget) void;
export type WindowTitle = *opaque;
export @symbol("adw_window_title_new") fn window_title_new(title: *c::char, subtitle: *c::char) *gtk4::Widget;
export @symbol("adw_window_title_get_subtitle") fn window_title_get_subtitle(self: *WindowTitle) *c::char;
export @symbol("adw_window_title_get_title") fn window_title_get_title(self: *WindowTitle) *c::char;
export @symbol("adw_window_title_set_subtitle") fn window_title_set_subtitle(self: *WindowTitle, subtitle: *c::char) void;
export @symbol("adw_window_title_set_title") fn window_title_set_title(self: *WindowTitle, title: *c::char) void;
export type Swipeable = *opaque;
export @symbol("adw_swipeable_get_cancel_progress") fn swipeable_get_cancel_progress(self: *Swipeable) f64;
export @symbol("adw_swipeable_get_distance") fn swipeable_get_distance(self: *Swipeable) f64;
export @symbol("adw_swipeable_get_progress") fn swipeable_get_progress(self: *Swipeable) f64;
export @symbol("adw_swipeable_get_snap_points") fn swipeable_get_snap_points(self: *Swipeable, n_snap_points: *int) *f64;
export @symbol("adw_swipeable_get_swipe_area") fn swipeable_get_swipe_area(self: *Swipeable, navigation_direction: NavigationDirection, is_drag: glib::boolean, rect: *gdk4::Rectangle) void;
export type AboutWindowClass = struct {
	parent_class: WindowClass,
};
export type ActionRowClass = struct {
	parent_class: PreferencesRowClass,
	activate: *fn(self: *ActionRow) void,
	padding: [4]*opaque,
};
export type AnimationClass = *opaque;
export type AnimationTargetClass = *opaque;
export type ApplicationClass = struct {
	parent_class: gtk4::ApplicationClass,
	padding: [4]*opaque,
};
export type ApplicationWindowClass = struct {
	parent_class: gtk4::ApplicationWindowClass,
	padding: [4]*opaque,
};
export type AvatarClass = struct {
	parent_class: gtk4::WidgetClass,
};
export type BannerClass = struct {
	parent_class: gtk4::WidgetClass,
};
export type BinClass = struct {
	parent_class: gtk4::WidgetClass,
};
export type BreakpointBinClass = struct {
	parent_class: gtk4::WidgetClass,
	padding: [4]*opaque,
};
export type BreakpointClass = struct {
	parent_class: gobject::ObjectClass,
};
export type BreakpointCondition = *opaque;
export @symbol("adw_breakpoint_condition_new_and") fn breakpoint_condition_new_and(condition_1: *BreakpointCondition, condition_2: *BreakpointCondition) *BreakpointCondition;
export @symbol("adw_breakpoint_condition_new_length") fn breakpoint_condition_new_length(type_: BreakpointConditionLengthType, value: f64, unit: LengthUnit) *BreakpointCondition;
export @symbol("adw_breakpoint_condition_new_or") fn breakpoint_condition_new_or(condition_1: *BreakpointCondition, condition_2: *BreakpointCondition) *BreakpointCondition;
export @symbol("adw_breakpoint_condition_new_ratio") fn breakpoint_condition_new_ratio(type_: BreakpointConditionRatioType, width: int, height: int) *BreakpointCondition;
export @symbol("adw_breakpoint_condition_copy") fn breakpoint_condition_copy(self: *BreakpointCondition) *BreakpointCondition;
export @symbol("adw_breakpoint_condition_free") fn breakpoint_condition_free(self: *BreakpointCondition) void;
export @symbol("adw_breakpoint_condition_to_string") fn breakpoint_condition_to_string(self: *BreakpointCondition) *c::char;
export @symbol("adw_breakpoint_condition_parse") fn breakpoint_condition_parse(str_: *c::char) *BreakpointCondition;
export type ButtonContentClass = struct {
	parent_class: gtk4::WidgetClass,
};
export type CallbackAnimationTargetClass = *opaque;
export type CarouselClass = struct {
	parent_class: gtk4::WidgetClass,
};
export type CarouselIndicatorDotsClass = struct {
	parent_class: gtk4::WidgetClass,
};
export type CarouselIndicatorLinesClass = struct {
	parent_class: gtk4::WidgetClass,
};
export type ClampClass = struct {
	parent_class: gtk4::WidgetClass,
};
export type ClampLayoutClass = struct {
	parent_class: gtk4::LayoutManagerClass,
};
export type ClampScrollableClass = struct {
	parent_class: gtk4::WidgetClass,
};
export type ComboRowClass = struct {
	parent_class: ActionRowClass,
	padding: [4]*opaque,
};
export type EntryRowClass = struct {
	parent_class: PreferencesRowClass,
};
export type EnumListItemClass = struct {
	parent_class: gobject::ObjectClass,
};
export type EnumListModelClass = struct {
	parent_class: gobject::ObjectClass,
};
export type ExpanderRowClass = struct {
	parent_class: PreferencesRowClass,
	padding: [4]*opaque,
};
export type FlapClass = struct {
	parent_class: gtk4::WidgetClass,
};
export type HeaderBarClass = struct {
	parent_class: gtk4::WidgetClass,
};
export type LeafletClass = struct {
	parent_class: gtk4::WidgetClass,
};
export type LeafletPageClass = struct {
	parent_class: gobject::ObjectClass,
};
export type MessageDialogClass = struct {
	parent_class: gtk4::WindowClass,
	response: *fn(self: *MessageDialog, response: *c::char) void,
	padding: [4]*opaque,
};
export type NavigationPageClass = struct {
	parent_class: gtk4::WidgetClass,
	showing: *fn(self: *NavigationPage) void,
	shown: *fn(self: *NavigationPage) void,
	hiding: *fn(self: *NavigationPage) void,
	hidden: *fn(self: *NavigationPage) void,
	padding: [8]*opaque,
};
export type NavigationSplitViewClass = struct {
	parent_class: gtk4::WidgetClass,
};
export type NavigationViewClass = struct {
	parent_class: gtk4::WidgetClass,
};
export type OverlaySplitViewClass = struct {
	parent_class: gtk4::WidgetClass,
};
export type PasswordEntryRowClass = struct {
	parent_class: EntryRowClass,
};
export type PreferencesGroupClass = struct {
	parent_class: gtk4::WidgetClass,
	padding: [4]*opaque,
};
export type PreferencesPageClass = struct {
	parent_class: gtk4::WidgetClass,
	padding: [4]*opaque,
};
export type PreferencesRowClass = struct {
	parent_class: gtk4::ListBoxRowClass,
	padding: [4]*opaque,
};
export type PreferencesWindowClass = struct {
	parent_class: WindowClass,
	padding: [4]*opaque,
};
export type PropertyAnimationTargetClass = *opaque;
export type SpinRowClass = struct {
	parent_class: ActionRowClass,
};
export type SplitButtonClass = struct {
	parent_class: gtk4::WidgetClass,
};
export type SpringAnimationClass = *opaque;
export type SpringParams = *opaque;
export @symbol("adw_spring_params_new") fn spring_params_new(damping_ratio: f64, mass: f64, stiffness: f64) *SpringParams;
export @symbol("adw_spring_params_new_full") fn spring_params_new_full(damping: f64, mass: f64, stiffness: f64) *SpringParams;
export @symbol("adw_spring_params_get_damping") fn spring_params_get_damping(self: *SpringParams) f64;
export @symbol("adw_spring_params_get_damping_ratio") fn spring_params_get_damping_ratio(self: *SpringParams) f64;
export @symbol("adw_spring_params_get_mass") fn spring_params_get_mass(self: *SpringParams) f64;
export @symbol("adw_spring_params_get_stiffness") fn spring_params_get_stiffness(self: *SpringParams) f64;
export @symbol("adw_spring_params_ref") fn spring_params_ref(self: *SpringParams) *SpringParams;
export @symbol("adw_spring_params_unref") fn spring_params_unref(self: *SpringParams) void;
export type SqueezerClass = struct {
	parent_class: gtk4::WidgetClass,
};
export type SqueezerPageClass = struct {
	parent_class: gobject::ObjectClass,
};
export type StatusPageClass = struct {
	parent_class: gtk4::WidgetClass,
};
export type StyleManagerClass = struct {
	parent_class: gobject::ObjectClass,
};
export type SwipeTrackerClass = struct {
	parent_class: gobject::ObjectClass,
};
export type SwipeableInterface = struct {
	parent: gobject::TypeInterface,
	get_distance: *fn(self: *Swipeable) f64,
	get_snap_points: *fn(self: *Swipeable, n_snap_points: *int) *f64,
	get_progress: *fn(self: *Swipeable) f64,
	get_cancel_progress: *fn(self: *Swipeable) f64,
	get_swipe_area: *fn(self: *Swipeable, navigation_direction: NavigationDirection, is_drag: glib::boolean, rect: *gdk4::Rectangle) void,
	padding: [4]*opaque,
};
export type SwitchRowClass = struct {
	parent_class: ActionRowClass,
};
export type TabBarClass = struct {
	parent_class: gtk4::WidgetClass,
};
export type TabButtonClass = struct {
	parent_class: gtk4::WidgetClass,
};
export type TabOverviewClass = struct {
	parent_class: gtk4::WidgetClass,
};
export type TabPageClass = struct {
	parent_class: gobject::ObjectClass,
};
export type TabViewClass = struct {
	parent_class: gtk4::WidgetClass,
};
export type TimedAnimationClass = *opaque;
export type ToastClass = struct {
	parent_class: gobject::ObjectClass,
};
export type ToastOverlayClass = struct {
	parent_class: gtk4::WidgetClass,
};
export type ToolbarViewClass = struct {
	parent_class: gtk4::WidgetClass,
};
export type ViewStackClass = struct {
	parent_class: gtk4::WidgetClass,
};
export type ViewStackPageClass = struct {
	parent_class: gobject::ObjectClass,
};
export type ViewStackPagesClass = struct {
	parent_class: gobject::ObjectClass,
};
export type ViewSwitcherBarClass = struct {
	parent_class: gtk4::WidgetClass,
};
export type ViewSwitcherClass = struct {
	parent_class: gtk4::WidgetClass,
};
export type ViewSwitcherTitleClass = struct {
	parent_class: gtk4::WidgetClass,
};
export type WindowClass = struct {
	parent_class: gtk4::WindowClass,
	padding: [4]*opaque,
};
export type WindowTitleClass = struct {
	parent_class: gtk4::WidgetClass,
};
export type AnimationState = enum uint {
	IDLE = 0,
	PAUSED = 1,
	PLAYING = 2,
	FINISHED = 3,
};
export type BreakpointConditionLengthType = enum uint {
	MIN_WIDTH = 0,
	MAX_WIDTH = 1,
	MIN_HEIGHT = 2,
	MAX_HEIGHT = 3,
};
export type BreakpointConditionRatioType = enum uint {
	MIN_ASPECT_RATIO = 0,
	MAX_ASPECT_RATIO = 1,
};
export type CenteringPolicy = enum uint {
	LOOSE = 0,
	STRICT = 1,
};
export type ColorScheme = enum uint {
	DEFAULT = 0,
	FORCE_LIGHT = 1,
	PREFER_LIGHT = 2,
	PREFER_DARK = 3,
	FORCE_DARK = 4,
};
export type Easing = enum uint {
	LINEAR = 0,
	EASE_IN_QUAD = 1,
	EASE_OUT_QUAD = 2,
	EASE_IN_OUT_QUAD = 3,
	EASE_IN_CUBIC = 4,
	EASE_OUT_CUBIC = 5,
	EASE_IN_OUT_CUBIC = 6,
	EASE_IN_QUART = 7,
	EASE_OUT_QUART = 8,
	EASE_IN_OUT_QUART = 9,
	EASE_IN_QUINT = 10,
	EASE_OUT_QUINT = 11,
	EASE_IN_OUT_QUINT = 12,
	EASE_IN_SINE = 13,
	EASE_OUT_SINE = 14,
	EASE_IN_OUT_SINE = 15,
	EASE_IN_EXPO = 16,
	EASE_OUT_EXPO = 17,
	EASE_IN_OUT_EXPO = 18,
	EASE_IN_CIRC = 19,
	EASE_OUT_CIRC = 20,
	EASE_IN_OUT_CIRC = 21,
	EASE_IN_ELASTIC = 22,
	EASE_OUT_ELASTIC = 23,
	EASE_IN_OUT_ELASTIC = 24,
	EASE_IN_BACK = 25,
	EASE_OUT_BACK = 26,
	EASE_IN_OUT_BACK = 27,
	EASE_IN_BOUNCE = 28,
	EASE_OUT_BOUNCE = 29,
	EASE_IN_OUT_BOUNCE = 30,
};
export @symbol("adw_easing_ease") fn easing_ease(self: Easing, value: f64) f64;
export type FlapFoldPolicy = enum uint {
	NEVER = 0,
	ALWAYS = 1,
	AUTO = 2,
};
export type FlapTransitionType = enum uint {
	OVER = 0,
	UNDER = 1,
	SLIDE = 2,
};
export type FoldThresholdPolicy = enum uint {
	MINIMUM = 0,
	NATURAL = 1,
};
export type LeafletTransitionType = enum uint {
	OVER = 0,
	UNDER = 1,
	SLIDE = 2,
};
export type LengthUnit = enum uint {
	PX = 0,
	PT = 1,
	SP = 2,
};
export @symbol("adw_length_unit_from_px") fn length_unit_from_px(unit: LengthUnit, value: f64, settings: *gtk4::Settings) f64;
export @symbol("adw_length_unit_to_px") fn length_unit_to_px(unit: LengthUnit, value: f64, settings: *gtk4::Settings) f64;
export type NavigationDirection = enum uint {
	BACK = 0,
	FORWARD = 1,
};
export type ResponseAppearance = enum uint {
	DEFAULT = 0,
	SUGGESTED = 1,
	DESTRUCTIVE = 2,
};
export type SqueezerTransitionType = enum uint {
	NONE = 0,
	CROSSFADE = 1,
};
export type ToastPriority = enum uint {
	NORMAL = 0,
	HIGH = 1,
};
export type ToolbarStyle = enum uint {
	FLAT = 0,
	RAISED = 1,
	RAISED_BORDER = 2,
};
export type ViewSwitcherPolicy = enum uint {
	NARROW = 0,
	WIDE = 1,
};
export @symbol("adw_get_enable_animations") fn get_enable_animations(widget: *gtk4::Widget) glib::boolean;
export @symbol("adw_get_major_version") fn get_major_version() uint;
export @symbol("adw_get_micro_version") fn get_micro_version() uint;
export @symbol("adw_get_minor_version") fn get_minor_version() uint;
export @symbol("adw_init") fn init() void;
export @symbol("adw_is_initialized") fn is_initialized() glib::boolean;
export @symbol("adw_lerp") fn lerp(a: f64, b: f64, t: f64) f64;
export @symbol("adw_show_about_window") fn show_about_window(parent: *gtk4::Window, first_property_name: *c::char, ...) void;
export @symbol("adw_show_about_window_from_appdata") fn show_about_window_from_appdata(parent: *gtk4::Window, resource_path: *c::char, release_notes_version: *c::char, first_property_name: *c::char, ...) void;
export type TabViewShortcuts = enum uint {
	NONE = 0,
	CONTROL_TAB = 1,
	CONTROL_SHIFT_TAB = 2,
	CONTROL_PAGE_UP = 4,
	CONTROL_PAGE_DOWN = 8,
	CONTROL_HOME = 16,
	CONTROL_END = 32,
	CONTROL_SHIFT_PAGE_UP = 64,
	CONTROL_SHIFT_PAGE_DOWN = 128,
	CONTROL_SHIFT_HOME = 256,
	CONTROL_SHIFT_END = 512,
	ALT_DIGITS = 1024,
	ALT_ZERO = 2048,
	ALL_SHORTCUTS = 4095,
};
export type AnimationTargetFunc = *fn(value: f64, user_data: *opaque) void;
