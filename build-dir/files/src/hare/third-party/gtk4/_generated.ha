use gdk4;
use gobject;
use types::c;
use glib;
use gio;
use atk;
use pango;
use gsk;
use gdkpixbuf;
use cairo;
use graphene;
export type Allocation = gdk4::Rectangle;
export type ATContext = *opaque;
export @symbol("gtk_at_context_create") fn atcontext_create(accessible_role: AccessibleRole, accessible: *Accessible, display: *gdk4::Display) *ATContext;
export @symbol("gtk_at_context_get_accessible") fn atcontext_get_accessible(self: *ATContext) *Accessible;
export @symbol("gtk_at_context_get_accessible_role") fn atcontext_get_accessible_role(self: *ATContext) AccessibleRole;
export fn atcontext_connect_state_change(
	instance: *ATContext,
	handler: *fn(instance: *ATContext, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"state-change\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export type AboutDialog = *opaque;
export @symbol("gtk_about_dialog_new") fn about_dialog_new() *Widget;
export @symbol("gtk_about_dialog_add_credit_section") fn about_dialog_add_credit_section(about: *AboutDialog, section_name: *c::char, people: **c::char) void;
export @symbol("gtk_about_dialog_get_artists") fn about_dialog_get_artists(about: *AboutDialog) **c::char;
export @symbol("gtk_about_dialog_get_authors") fn about_dialog_get_authors(about: *AboutDialog) **c::char;
export @symbol("gtk_about_dialog_get_comments") fn about_dialog_get_comments(about: *AboutDialog) *c::char;
export @symbol("gtk_about_dialog_get_copyright") fn about_dialog_get_copyright(about: *AboutDialog) *c::char;
export @symbol("gtk_about_dialog_get_documenters") fn about_dialog_get_documenters(about: *AboutDialog) **c::char;
export @symbol("gtk_about_dialog_get_license") fn about_dialog_get_license(about: *AboutDialog) *c::char;
export @symbol("gtk_about_dialog_get_license_type") fn about_dialog_get_license_type(about: *AboutDialog) License;
export @symbol("gtk_about_dialog_get_logo") fn about_dialog_get_logo(about: *AboutDialog) *gdk4::Paintable;
export @symbol("gtk_about_dialog_get_logo_icon_name") fn about_dialog_get_logo_icon_name(about: *AboutDialog) *c::char;
export @symbol("gtk_about_dialog_get_program_name") fn about_dialog_get_program_name(about: *AboutDialog) *c::char;
export @symbol("gtk_about_dialog_get_system_information") fn about_dialog_get_system_information(about: *AboutDialog) *c::char;
export @symbol("gtk_about_dialog_get_translator_credits") fn about_dialog_get_translator_credits(about: *AboutDialog) *c::char;
export @symbol("gtk_about_dialog_get_version") fn about_dialog_get_version(about: *AboutDialog) *c::char;
export @symbol("gtk_about_dialog_get_website") fn about_dialog_get_website(about: *AboutDialog) *c::char;
export @symbol("gtk_about_dialog_get_website_label") fn about_dialog_get_website_label(about: *AboutDialog) *c::char;
export @symbol("gtk_about_dialog_get_wrap_license") fn about_dialog_get_wrap_license(about: *AboutDialog) glib::boolean;
export @symbol("gtk_about_dialog_set_artists") fn about_dialog_set_artists(about: *AboutDialog, artists: **c::char) void;
export @symbol("gtk_about_dialog_set_authors") fn about_dialog_set_authors(about: *AboutDialog, authors: **c::char) void;
export @symbol("gtk_about_dialog_set_comments") fn about_dialog_set_comments(about: *AboutDialog, comments: *c::char) void;
export @symbol("gtk_about_dialog_set_copyright") fn about_dialog_set_copyright(about: *AboutDialog, copyright: *c::char) void;
export @symbol("gtk_about_dialog_set_documenters") fn about_dialog_set_documenters(about: *AboutDialog, documenters: **c::char) void;
export @symbol("gtk_about_dialog_set_license") fn about_dialog_set_license(about: *AboutDialog, license: *c::char) void;
export @symbol("gtk_about_dialog_set_license_type") fn about_dialog_set_license_type(about: *AboutDialog, license_type: License) void;
export @symbol("gtk_about_dialog_set_logo") fn about_dialog_set_logo(about: *AboutDialog, logo: *gdk4::Paintable) void;
export @symbol("gtk_about_dialog_set_logo_icon_name") fn about_dialog_set_logo_icon_name(about: *AboutDialog, icon_name: *c::char) void;
export @symbol("gtk_about_dialog_set_program_name") fn about_dialog_set_program_name(about: *AboutDialog, name: *c::char) void;
export @symbol("gtk_about_dialog_set_system_information") fn about_dialog_set_system_information(about: *AboutDialog, system_information: *c::char) void;
export @symbol("gtk_about_dialog_set_translator_credits") fn about_dialog_set_translator_credits(about: *AboutDialog, translator_credits: *c::char) void;
export @symbol("gtk_about_dialog_set_version") fn about_dialog_set_version(about: *AboutDialog, version: *c::char) void;
export @symbol("gtk_about_dialog_set_website") fn about_dialog_set_website(about: *AboutDialog, website: *c::char) void;
export @symbol("gtk_about_dialog_set_website_label") fn about_dialog_set_website_label(about: *AboutDialog, website_label: *c::char) void;
export @symbol("gtk_about_dialog_set_wrap_license") fn about_dialog_set_wrap_license(about: *AboutDialog, wrap_license: glib::boolean) void;
export fn about_dialog_connect_activate_link(
	instance: *AboutDialog,
	handler: *fn(instance: *AboutDialog, uri: *c::char, data: *opaque) glib::boolean,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"activate-link\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export type ActionBar = *opaque;
export @symbol("gtk_action_bar_new") fn action_bar_new() *Widget;
export @symbol("gtk_action_bar_get_center_widget") fn action_bar_get_center_widget(action_bar: *ActionBar) *Widget;
export @symbol("gtk_action_bar_get_revealed") fn action_bar_get_revealed(action_bar: *ActionBar) glib::boolean;
export @symbol("gtk_action_bar_pack_end") fn action_bar_pack_end(action_bar: *ActionBar, child: *Widget) void;
export @symbol("gtk_action_bar_pack_start") fn action_bar_pack_start(action_bar: *ActionBar, child: *Widget) void;
export @symbol("gtk_action_bar_remove") fn action_bar_remove(action_bar: *ActionBar, child: *Widget) void;
export @symbol("gtk_action_bar_set_center_widget") fn action_bar_set_center_widget(action_bar: *ActionBar, center_widget: *Widget) void;
export @symbol("gtk_action_bar_set_revealed") fn action_bar_set_revealed(action_bar: *ActionBar, revealed: glib::boolean) void;
export type ActivateAction = *opaque;
export @symbol("gtk_activate_action_get") fn activate_action_get() *ShortcutAction;
export type Adjustment = struct {
	parent_instance: gobject::InitiallyUnowned,
};
export @symbol("gtk_adjustment_new") fn adjustment_new(value: f64, lower: f64, upper: f64, step_increment: f64, page_increment: f64, page_size: f64) *Adjustment;
export @symbol("gtk_adjustment_clamp_page") fn adjustment_clamp_page(adjustment: *Adjustment, lower: f64, upper: f64) void;
export @symbol("gtk_adjustment_configure") fn adjustment_configure(adjustment: *Adjustment, value: f64, lower: f64, upper: f64, step_increment: f64, page_increment: f64, page_size: f64) void;
export @symbol("gtk_adjustment_get_lower") fn adjustment_get_lower(adjustment: *Adjustment) f64;
export @symbol("gtk_adjustment_get_minimum_increment") fn adjustment_get_minimum_increment(adjustment: *Adjustment) f64;
export @symbol("gtk_adjustment_get_page_increment") fn adjustment_get_page_increment(adjustment: *Adjustment) f64;
export @symbol("gtk_adjustment_get_page_size") fn adjustment_get_page_size(adjustment: *Adjustment) f64;
export @symbol("gtk_adjustment_get_step_increment") fn adjustment_get_step_increment(adjustment: *Adjustment) f64;
export @symbol("gtk_adjustment_get_upper") fn adjustment_get_upper(adjustment: *Adjustment) f64;
export @symbol("gtk_adjustment_get_value") fn adjustment_get_value(adjustment: *Adjustment) f64;
export @symbol("gtk_adjustment_set_lower") fn adjustment_set_lower(adjustment: *Adjustment, lower: f64) void;
export @symbol("gtk_adjustment_set_page_increment") fn adjustment_set_page_increment(adjustment: *Adjustment, page_increment: f64) void;
export @symbol("gtk_adjustment_set_page_size") fn adjustment_set_page_size(adjustment: *Adjustment, page_size: f64) void;
export @symbol("gtk_adjustment_set_step_increment") fn adjustment_set_step_increment(adjustment: *Adjustment, step_increment: f64) void;
export @symbol("gtk_adjustment_set_upper") fn adjustment_set_upper(adjustment: *Adjustment, upper: f64) void;
export @symbol("gtk_adjustment_set_value") fn adjustment_set_value(adjustment: *Adjustment, value: f64) void;
export fn adjustment_connect_changed(
	instance: *Adjustment,
	handler: *fn(instance: *Adjustment, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"changed\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn adjustment_connect_value_changed(
	instance: *Adjustment,
	handler: *fn(instance: *Adjustment, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"value-changed\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export type AlertDialog = *opaque;
export @symbol("gtk_alert_dialog_new") fn alert_dialog_new(format: *c::char, ...) *AlertDialog;
export @symbol("gtk_alert_dialog_choose") fn alert_dialog_choose(self: *AlertDialog, parent: *Window, cancellable: *gio::Cancellable, callback: gio::AsyncReadyCallback, user_data: *opaque) void;
export @symbol("gtk_alert_dialog_choose_finish") fn alert_dialog_choose_finish(self: *AlertDialog, result: *gio::AsyncResult, error: nullable **glib::Error) int;
export @symbol("gtk_alert_dialog_get_buttons") fn alert_dialog_get_buttons(self: *AlertDialog) **c::char;
export @symbol("gtk_alert_dialog_get_cancel_button") fn alert_dialog_get_cancel_button(self: *AlertDialog) int;
export @symbol("gtk_alert_dialog_get_default_button") fn alert_dialog_get_default_button(self: *AlertDialog) int;
export @symbol("gtk_alert_dialog_get_detail") fn alert_dialog_get_detail(self: *AlertDialog) *c::char;
export @symbol("gtk_alert_dialog_get_message") fn alert_dialog_get_message(self: *AlertDialog) *c::char;
export @symbol("gtk_alert_dialog_get_modal") fn alert_dialog_get_modal(self: *AlertDialog) glib::boolean;
export @symbol("gtk_alert_dialog_set_buttons") fn alert_dialog_set_buttons(self: *AlertDialog, labels: **c::char) void;
export @symbol("gtk_alert_dialog_set_cancel_button") fn alert_dialog_set_cancel_button(self: *AlertDialog, button: int) void;
export @symbol("gtk_alert_dialog_set_default_button") fn alert_dialog_set_default_button(self: *AlertDialog, button: int) void;
export @symbol("gtk_alert_dialog_set_detail") fn alert_dialog_set_detail(self: *AlertDialog, detail: *c::char) void;
export @symbol("gtk_alert_dialog_set_message") fn alert_dialog_set_message(self: *AlertDialog, message: *c::char) void;
export @symbol("gtk_alert_dialog_set_modal") fn alert_dialog_set_modal(self: *AlertDialog, modal: glib::boolean) void;
export @symbol("gtk_alert_dialog_show") fn alert_dialog_show(self: *AlertDialog, parent: *Window) void;
export type AlternativeTrigger = *opaque;
export @symbol("gtk_alternative_trigger_new") fn alternative_trigger_new(first: *ShortcutTrigger, second: *ShortcutTrigger) *ShortcutTrigger;
export @symbol("gtk_alternative_trigger_get_first") fn alternative_trigger_get_first(self: *AlternativeTrigger) *ShortcutTrigger;
export @symbol("gtk_alternative_trigger_get_second") fn alternative_trigger_get_second(self: *AlternativeTrigger) *ShortcutTrigger;
export type AnyFilter = *opaque;
export @symbol("gtk_any_filter_new") fn any_filter_new() *AnyFilter;
export type AppChooserButton = *opaque;
export @symbol("gtk_app_chooser_button_new") fn app_chooser_button_new(content_type: *c::char) *Widget;
export @symbol("gtk_app_chooser_button_append_custom_item") fn app_chooser_button_append_custom_item(self: *AppChooserButton, name: *c::char, label: *c::char, icon: *gio::Icon) void;
export @symbol("gtk_app_chooser_button_append_separator") fn app_chooser_button_append_separator(self: *AppChooserButton) void;
export @symbol("gtk_app_chooser_button_get_heading") fn app_chooser_button_get_heading(self: *AppChooserButton) *c::char;
export @symbol("gtk_app_chooser_button_get_modal") fn app_chooser_button_get_modal(self: *AppChooserButton) glib::boolean;
export @symbol("gtk_app_chooser_button_get_show_default_item") fn app_chooser_button_get_show_default_item(self: *AppChooserButton) glib::boolean;
export @symbol("gtk_app_chooser_button_get_show_dialog_item") fn app_chooser_button_get_show_dialog_item(self: *AppChooserButton) glib::boolean;
export @symbol("gtk_app_chooser_button_set_active_custom_item") fn app_chooser_button_set_active_custom_item(self: *AppChooserButton, name: *c::char) void;
export @symbol("gtk_app_chooser_button_set_heading") fn app_chooser_button_set_heading(self: *AppChooserButton, heading: *c::char) void;
export @symbol("gtk_app_chooser_button_set_modal") fn app_chooser_button_set_modal(self: *AppChooserButton, modal: glib::boolean) void;
export @symbol("gtk_app_chooser_button_set_show_default_item") fn app_chooser_button_set_show_default_item(self: *AppChooserButton, setting: glib::boolean) void;
export @symbol("gtk_app_chooser_button_set_show_dialog_item") fn app_chooser_button_set_show_dialog_item(self: *AppChooserButton, setting: glib::boolean) void;
export fn app_chooser_button_connect_activate(
	instance: *AppChooserButton,
	handler: *fn(instance: *AppChooserButton, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"activate\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn app_chooser_button_connect_changed(
	instance: *AppChooserButton,
	handler: *fn(instance: *AppChooserButton, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"changed\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn app_chooser_button_connect_custom_item_activated(
	instance: *AppChooserButton,
	handler: *fn(instance: *AppChooserButton, item_name: *c::char, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"custom-item-activated\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export type AppChooserDialog = *opaque;
export @symbol("gtk_app_chooser_dialog_new") fn app_chooser_dialog_new(parent: *Window, flags: DialogFlags, file: *gio::File) *Widget;
export @symbol("gtk_app_chooser_dialog_new_for_content_type") fn app_chooser_dialog_new_for_content_type(parent: *Window, flags: DialogFlags, content_type: *c::char) *Widget;
export @symbol("gtk_app_chooser_dialog_get_heading") fn app_chooser_dialog_get_heading(self: *AppChooserDialog) *c::char;
export @symbol("gtk_app_chooser_dialog_get_widget") fn app_chooser_dialog_get_widget(self: *AppChooserDialog) *Widget;
export @symbol("gtk_app_chooser_dialog_set_heading") fn app_chooser_dialog_set_heading(self: *AppChooserDialog, heading: *c::char) void;
export type AppChooserWidget = *opaque;
export @symbol("gtk_app_chooser_widget_new") fn app_chooser_widget_new(content_type: *c::char) *Widget;
export @symbol("gtk_app_chooser_widget_get_default_text") fn app_chooser_widget_get_default_text(self: *AppChooserWidget) *c::char;
export @symbol("gtk_app_chooser_widget_get_show_all") fn app_chooser_widget_get_show_all(self: *AppChooserWidget) glib::boolean;
export @symbol("gtk_app_chooser_widget_get_show_default") fn app_chooser_widget_get_show_default(self: *AppChooserWidget) glib::boolean;
export @symbol("gtk_app_chooser_widget_get_show_fallback") fn app_chooser_widget_get_show_fallback(self: *AppChooserWidget) glib::boolean;
export @symbol("gtk_app_chooser_widget_get_show_other") fn app_chooser_widget_get_show_other(self: *AppChooserWidget) glib::boolean;
export @symbol("gtk_app_chooser_widget_get_show_recommended") fn app_chooser_widget_get_show_recommended(self: *AppChooserWidget) glib::boolean;
export @symbol("gtk_app_chooser_widget_set_default_text") fn app_chooser_widget_set_default_text(self: *AppChooserWidget, text: *c::char) void;
export @symbol("gtk_app_chooser_widget_set_show_all") fn app_chooser_widget_set_show_all(self: *AppChooserWidget, setting: glib::boolean) void;
export @symbol("gtk_app_chooser_widget_set_show_default") fn app_chooser_widget_set_show_default(self: *AppChooserWidget, setting: glib::boolean) void;
export @symbol("gtk_app_chooser_widget_set_show_fallback") fn app_chooser_widget_set_show_fallback(self: *AppChooserWidget, setting: glib::boolean) void;
export @symbol("gtk_app_chooser_widget_set_show_other") fn app_chooser_widget_set_show_other(self: *AppChooserWidget, setting: glib::boolean) void;
export @symbol("gtk_app_chooser_widget_set_show_recommended") fn app_chooser_widget_set_show_recommended(self: *AppChooserWidget, setting: glib::boolean) void;
export fn app_chooser_widget_connect_application_activated(
	instance: *AppChooserWidget,
	handler: *fn(instance: *AppChooserWidget, application: gio::AppInfo, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"application-activated\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn app_chooser_widget_connect_application_selected(
	instance: *AppChooserWidget,
	handler: *fn(instance: *AppChooserWidget, application: gio::AppInfo, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"application-selected\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export type Application = struct {
	parent_instance: gio::Application,
};
export @symbol("gtk_application_new") fn application_new(application_id: *c::char, flags: gio::ApplicationFlags) *Application;
export @symbol("gtk_application_add_window") fn application_add_window(application: *Application, window: *Window) void;
export @symbol("gtk_application_get_accels_for_action") fn application_get_accels_for_action(application: *Application, detailed_action_name: *c::char) **c::char;
export @symbol("gtk_application_get_actions_for_accel") fn application_get_actions_for_accel(application: *Application, accel: *c::char) **c::char;
export @symbol("gtk_application_get_active_window") fn application_get_active_window(application: *Application) *Window;
export @symbol("gtk_application_get_menu_by_id") fn application_get_menu_by_id(application: *Application, id: *c::char) *gio::Menu;
export @symbol("gtk_application_get_menubar") fn application_get_menubar(application: *Application) *gio::MenuModel;
export @symbol("gtk_application_get_window_by_id") fn application_get_window_by_id(application: *Application, id: uint) *Window;
export @symbol("gtk_application_get_windows") fn application_get_windows(application: *Application) *glib::List;
export @symbol("gtk_application_inhibit") fn application_inhibit(application: *Application, window: *Window, flags: ApplicationInhibitFlags, reason: *c::char) uint;
export @symbol("gtk_application_list_action_descriptions") fn application_list_action_descriptions(application: *Application) **c::char;
export @symbol("gtk_application_remove_window") fn application_remove_window(application: *Application, window: *Window) void;
export @symbol("gtk_application_set_accels_for_action") fn application_set_accels_for_action(application: *Application, detailed_action_name: *c::char, accels: **c::char) void;
export @symbol("gtk_application_set_menubar") fn application_set_menubar(application: *Application, menubar: *gio::MenuModel) void;
export @symbol("gtk_application_uninhibit") fn application_uninhibit(application: *Application, cookie: uint) void;
export fn application_connect_query_end(
	instance: *Application,
	handler: *fn(instance: *Application, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"query-end\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn application_connect_window_added(
	instance: *Application,
	handler: *fn(instance: *Application, window: *atk::Window, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"window-added\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn application_connect_window_removed(
	instance: *Application,
	handler: *fn(instance: *Application, window: *atk::Window, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"window-removed\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export type ApplicationWindow = struct {
	parent_instance: Window,
};
export @symbol("gtk_application_window_new") fn application_window_new(application: *Application) *Widget;
export @symbol("gtk_application_window_get_help_overlay") fn application_window_get_help_overlay(window: *ApplicationWindow) *ShortcutsWindow;
export @symbol("gtk_application_window_get_id") fn application_window_get_id(window: *ApplicationWindow) uint;
export @symbol("gtk_application_window_get_show_menubar") fn application_window_get_show_menubar(window: *ApplicationWindow) glib::boolean;
export @symbol("gtk_application_window_set_help_overlay") fn application_window_set_help_overlay(window: *ApplicationWindow, help_overlay: *ShortcutsWindow) void;
export @symbol("gtk_application_window_set_show_menubar") fn application_window_set_show_menubar(window: *ApplicationWindow, show_menubar: glib::boolean) void;
export type AspectFrame = *opaque;
export @symbol("gtk_aspect_frame_new") fn aspect_frame_new(xalign: f32, yalign: f32, ratio: f32, obey_child: glib::boolean) *Widget;
export @symbol("gtk_aspect_frame_get_child") fn aspect_frame_get_child(self: *AspectFrame) *Widget;
export @symbol("gtk_aspect_frame_get_obey_child") fn aspect_frame_get_obey_child(self: *AspectFrame) glib::boolean;
export @symbol("gtk_aspect_frame_get_ratio") fn aspect_frame_get_ratio(self: *AspectFrame) f32;
export @symbol("gtk_aspect_frame_get_xalign") fn aspect_frame_get_xalign(self: *AspectFrame) f32;
export @symbol("gtk_aspect_frame_get_yalign") fn aspect_frame_get_yalign(self: *AspectFrame) f32;
export @symbol("gtk_aspect_frame_set_child") fn aspect_frame_set_child(self: *AspectFrame, child: *Widget) void;
export @symbol("gtk_aspect_frame_set_obey_child") fn aspect_frame_set_obey_child(self: *AspectFrame, obey_child: glib::boolean) void;
export @symbol("gtk_aspect_frame_set_ratio") fn aspect_frame_set_ratio(self: *AspectFrame, ratio: f32) void;
export @symbol("gtk_aspect_frame_set_xalign") fn aspect_frame_set_xalign(self: *AspectFrame, xalign: f32) void;
export @symbol("gtk_aspect_frame_set_yalign") fn aspect_frame_set_yalign(self: *AspectFrame, yalign: f32) void;
export type Assistant = *opaque;
export @symbol("gtk_assistant_new") fn assistant_new() *Widget;
export @symbol("gtk_assistant_add_action_widget") fn assistant_add_action_widget(assistant: *Assistant, child: *Widget) void;
export @symbol("gtk_assistant_append_page") fn assistant_append_page(assistant: *Assistant, page: *Widget) int;
export @symbol("gtk_assistant_commit") fn assistant_commit(assistant: *Assistant) void;
export @symbol("gtk_assistant_get_current_page") fn assistant_get_current_page(assistant: *Assistant) int;
export @symbol("gtk_assistant_get_n_pages") fn assistant_get_n_pages(assistant: *Assistant) int;
export @symbol("gtk_assistant_get_nth_page") fn assistant_get_nth_page(assistant: *Assistant, page_num: int) *Widget;
export @symbol("gtk_assistant_get_page") fn assistant_get_page(assistant: *Assistant, child: *Widget) *AssistantPage;
export @symbol("gtk_assistant_get_page_complete") fn assistant_get_page_complete(assistant: *Assistant, page: *Widget) glib::boolean;
export @symbol("gtk_assistant_get_page_title") fn assistant_get_page_title(assistant: *Assistant, page: *Widget) *c::char;
export @symbol("gtk_assistant_get_page_type") fn assistant_get_page_type(assistant: *Assistant, page: *Widget) AssistantPageType;
export @symbol("gtk_assistant_get_pages") fn assistant_get_pages(assistant: *Assistant) *gio::ListModel;
export @symbol("gtk_assistant_insert_page") fn assistant_insert_page(assistant: *Assistant, page: *Widget, position: int) int;
export @symbol("gtk_assistant_next_page") fn assistant_next_page(assistant: *Assistant) void;
export @symbol("gtk_assistant_prepend_page") fn assistant_prepend_page(assistant: *Assistant, page: *Widget) int;
export @symbol("gtk_assistant_previous_page") fn assistant_previous_page(assistant: *Assistant) void;
export @symbol("gtk_assistant_remove_action_widget") fn assistant_remove_action_widget(assistant: *Assistant, child: *Widget) void;
export @symbol("gtk_assistant_remove_page") fn assistant_remove_page(assistant: *Assistant, page_num: int) void;
export @symbol("gtk_assistant_set_current_page") fn assistant_set_current_page(assistant: *Assistant, page_num: int) void;
export @symbol("gtk_assistant_set_forward_page_func") fn assistant_set_forward_page_func(assistant: *Assistant, page_func: AssistantPageFunc, data: *opaque, destroy: glib::DestroyNotify) void;
export @symbol("gtk_assistant_set_page_complete") fn assistant_set_page_complete(assistant: *Assistant, page: *Widget, complete: glib::boolean) void;
export @symbol("gtk_assistant_set_page_title") fn assistant_set_page_title(assistant: *Assistant, page: *Widget, title: *c::char) void;
export @symbol("gtk_assistant_set_page_type") fn assistant_set_page_type(assistant: *Assistant, page: *Widget, type_: AssistantPageType) void;
export @symbol("gtk_assistant_update_buttons_state") fn assistant_update_buttons_state(assistant: *Assistant) void;
export fn assistant_connect_apply(
	instance: *Assistant,
	handler: *fn(instance: *Assistant, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"apply\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn assistant_connect_cancel(
	instance: *Assistant,
	handler: *fn(instance: *Assistant, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"cancel\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn assistant_connect_close(
	instance: *Assistant,
	handler: *fn(instance: *Assistant, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"close\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn assistant_connect_escape(
	instance: *Assistant,
	handler: *fn(instance: *Assistant, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"escape\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn assistant_connect_prepare(
	instance: *Assistant,
	handler: *fn(instance: *Assistant, page: *Widget, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"prepare\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export type AssistantPage = *opaque;
export @symbol("gtk_assistant_page_get_child") fn assistant_page_get_child(page: *AssistantPage) *Widget;
export type BinLayout = *opaque;
export @symbol("gtk_bin_layout_new") fn bin_layout_new() *LayoutManager;
export type BookmarkList = *opaque;
export @symbol("gtk_bookmark_list_new") fn bookmark_list_new(filename: *c::char, attributes: *c::char) *BookmarkList;
export @symbol("gtk_bookmark_list_get_attributes") fn bookmark_list_get_attributes(self: *BookmarkList) *c::char;
export @symbol("gtk_bookmark_list_get_filename") fn bookmark_list_get_filename(self: *BookmarkList) *c::char;
export @symbol("gtk_bookmark_list_get_io_priority") fn bookmark_list_get_io_priority(self: *BookmarkList) int;
export @symbol("gtk_bookmark_list_is_loading") fn bookmark_list_is_loading(self: *BookmarkList) glib::boolean;
export @symbol("gtk_bookmark_list_set_attributes") fn bookmark_list_set_attributes(self: *BookmarkList, attributes: *c::char) void;
export @symbol("gtk_bookmark_list_set_io_priority") fn bookmark_list_set_io_priority(self: *BookmarkList, io_priority: int) void;
export type BoolFilter = *opaque;
export @symbol("gtk_bool_filter_new") fn bool_filter_new(expression: *Expression) *BoolFilter;
export @symbol("gtk_bool_filter_get_expression") fn bool_filter_get_expression(self: *BoolFilter) *Expression;
export @symbol("gtk_bool_filter_get_invert") fn bool_filter_get_invert(self: *BoolFilter) glib::boolean;
export @symbol("gtk_bool_filter_set_expression") fn bool_filter_set_expression(self: *BoolFilter, expression: *Expression) void;
export @symbol("gtk_bool_filter_set_invert") fn bool_filter_set_invert(self: *BoolFilter, invert: glib::boolean) void;
export type Box = struct {
	parent_instance: Widget,
};
export @symbol("gtk_box_new") fn box_new(orientation: Orientation, spacing: int) *Widget;
export @symbol("gtk_box_append") fn box_append(box: *Box, child: *Widget) void;
export @symbol("gtk_box_get_baseline_child") fn box_get_baseline_child(box: *Box) int;
export @symbol("gtk_box_get_baseline_position") fn box_get_baseline_position(box: *Box) BaselinePosition;
export @symbol("gtk_box_get_homogeneous") fn box_get_homogeneous(box: *Box) glib::boolean;
export @symbol("gtk_box_get_spacing") fn box_get_spacing(box: *Box) int;
export @symbol("gtk_box_insert_child_after") fn box_insert_child_after(box: *Box, child: *Widget, sibling: *Widget) void;
export @symbol("gtk_box_prepend") fn box_prepend(box: *Box, child: *Widget) void;
export @symbol("gtk_box_remove") fn box_remove(box: *Box, child: *Widget) void;
export @symbol("gtk_box_reorder_child_after") fn box_reorder_child_after(box: *Box, child: *Widget, sibling: *Widget) void;
export @symbol("gtk_box_set_baseline_child") fn box_set_baseline_child(box: *Box, child: int) void;
export @symbol("gtk_box_set_baseline_position") fn box_set_baseline_position(box: *Box, position: BaselinePosition) void;
export @symbol("gtk_box_set_homogeneous") fn box_set_homogeneous(box: *Box, homogeneous: glib::boolean) void;
export @symbol("gtk_box_set_spacing") fn box_set_spacing(box: *Box, spacing: int) void;
export type BoxLayout = *opaque;
export @symbol("gtk_box_layout_new") fn box_layout_new(orientation: Orientation) *LayoutManager;
export @symbol("gtk_box_layout_get_baseline_child") fn box_layout_get_baseline_child(box_layout: *BoxLayout) int;
export @symbol("gtk_box_layout_get_baseline_position") fn box_layout_get_baseline_position(box_layout: *BoxLayout) BaselinePosition;
export @symbol("gtk_box_layout_get_homogeneous") fn box_layout_get_homogeneous(box_layout: *BoxLayout) glib::boolean;
export @symbol("gtk_box_layout_get_spacing") fn box_layout_get_spacing(box_layout: *BoxLayout) uint;
export @symbol("gtk_box_layout_set_baseline_child") fn box_layout_set_baseline_child(box_layout: *BoxLayout, child: int) void;
export @symbol("gtk_box_layout_set_baseline_position") fn box_layout_set_baseline_position(box_layout: *BoxLayout, position: BaselinePosition) void;
export @symbol("gtk_box_layout_set_homogeneous") fn box_layout_set_homogeneous(box_layout: *BoxLayout, homogeneous: glib::boolean) void;
export @symbol("gtk_box_layout_set_spacing") fn box_layout_set_spacing(box_layout: *BoxLayout, spacing: uint) void;
export type Builder = *opaque;
export @symbol("gtk_builder_new") fn builder_new() *Builder;
export @symbol("gtk_builder_new_from_file") fn builder_new_from_file(filename: *c::char) *Builder;
export @symbol("gtk_builder_new_from_resource") fn builder_new_from_resource(resource_path: *c::char) *Builder;
export @symbol("gtk_builder_new_from_string") fn builder_new_from_string(string: *c::char, length: c::ssize) *Builder;
export @symbol("gtk_builder_add_from_file") fn builder_add_from_file(builder: *Builder, filename: *c::char, error: nullable **glib::Error) glib::boolean;
export @symbol("gtk_builder_add_from_resource") fn builder_add_from_resource(builder: *Builder, resource_path: *c::char, error: nullable **glib::Error) glib::boolean;
export @symbol("gtk_builder_add_from_string") fn builder_add_from_string(builder: *Builder, buffer: *c::char, length: c::ssize, error: nullable **glib::Error) glib::boolean;
export @symbol("gtk_builder_add_objects_from_file") fn builder_add_objects_from_file(builder: *Builder, filename: *c::char, object_ids: **c::char, error: nullable **glib::Error) glib::boolean;
export @symbol("gtk_builder_add_objects_from_resource") fn builder_add_objects_from_resource(builder: *Builder, resource_path: *c::char, object_ids: **c::char, error: nullable **glib::Error) glib::boolean;
export @symbol("gtk_builder_add_objects_from_string") fn builder_add_objects_from_string(builder: *Builder, buffer: *c::char, length: c::ssize, object_ids: **c::char, error: nullable **glib::Error) glib::boolean;
export @symbol("gtk_builder_create_closure") fn builder_create_closure(builder: *Builder, function_name: *c::char, flags: BuilderClosureFlags, object: *gobject::Object, error: nullable **glib::Error) *gobject::Closure;
export @symbol("gtk_builder_expose_object") fn builder_expose_object(builder: *Builder, name: *c::char, object: *gobject::Object) void;
export @symbol("gtk_builder_extend_with_template") fn builder_extend_with_template(builder: *Builder, object: *gobject::Object, template_type: glib::Type, buffer: *c::char, length: c::ssize, error: nullable **glib::Error) glib::boolean;
export @symbol("gtk_builder_get_current_object") fn builder_get_current_object(builder: *Builder) *gobject::Object;
export @symbol("gtk_builder_get_object") fn builder_get_object(builder: *Builder, name: *c::char) *gobject::Object;
export @symbol("gtk_builder_get_objects") fn builder_get_objects(builder: *Builder) *glib::SList;
export @symbol("gtk_builder_get_scope") fn builder_get_scope(builder: *Builder) *BuilderScope;
export @symbol("gtk_builder_get_translation_domain") fn builder_get_translation_domain(builder: *Builder) *c::char;
export @symbol("gtk_builder_get_type_from_name") fn builder_get_type_from_name(builder: *Builder, type_name: *c::char) glib::Type;
export @symbol("gtk_builder_set_current_object") fn builder_set_current_object(builder: *Builder, current_object: *gobject::Object) void;
export @symbol("gtk_builder_set_scope") fn builder_set_scope(builder: *Builder, scope: *BuilderScope) void;
export @symbol("gtk_builder_set_translation_domain") fn builder_set_translation_domain(builder: *Builder, domain: *c::char) void;
export @symbol("gtk_builder_value_from_string") fn builder_value_from_string(builder: *Builder, pspec: *gobject::ParamSpec, string: *c::char, value: *gobject::Value, error: nullable **glib::Error) glib::boolean;
export @symbol("gtk_builder_value_from_string_type") fn builder_value_from_string_type(builder: *Builder, type_: glib::Type, string: *c::char, value: *gobject::Value, error: nullable **glib::Error) glib::boolean;
export type BuilderCScope = struct {
	parent_instance: gobject::Object,
};
export @symbol("gtk_builder_cscope_new") fn builder_cscope_new() *BuilderScope;
export @symbol("gtk_builder_cscope_add_callback_symbol") fn builder_cscope_add_callback_symbol(self: *BuilderCScope, callback_name: *c::char, callback_symbol: gobject::Callback) void;
export @symbol("gtk_builder_cscope_add_callback_symbols") fn builder_cscope_add_callback_symbols(self: *BuilderCScope, first_callback_name: *c::char, first_callback_symbol: gobject::Callback, ...) void;
export @symbol("gtk_builder_cscope_lookup_callback_symbol") fn builder_cscope_lookup_callback_symbol(self: *BuilderCScope, callback_name: *c::char) gobject::Callback;
export type BuilderListItemFactory = *opaque;
export @symbol("gtk_builder_list_item_factory_new_from_bytes") fn builder_list_item_factory_new_from_bytes(scope: *BuilderScope, bytes: *glib::Bytes) *ListItemFactory;
export @symbol("gtk_builder_list_item_factory_new_from_resource") fn builder_list_item_factory_new_from_resource(scope: *BuilderScope, resource_path: *c::char) *ListItemFactory;
export @symbol("gtk_builder_list_item_factory_get_bytes") fn builder_list_item_factory_get_bytes(self: *BuilderListItemFactory) *glib::Bytes;
export @symbol("gtk_builder_list_item_factory_get_resource") fn builder_list_item_factory_get_resource(self: *BuilderListItemFactory) *c::char;
export @symbol("gtk_builder_list_item_factory_get_scope") fn builder_list_item_factory_get_scope(self: *BuilderListItemFactory) *BuilderScope;
export type Button = struct {
	parent_instance: Widget,
};
export @symbol("gtk_button_new") fn button_new() *Widget;
export @symbol("gtk_button_new_from_icon_name") fn button_new_from_icon_name(icon_name: *c::char) *Widget;
export @symbol("gtk_button_new_with_label") fn button_new_with_label(label: *c::char) *Widget;
export @symbol("gtk_button_new_with_mnemonic") fn button_new_with_mnemonic(label: *c::char) *Widget;
export @symbol("gtk_button_get_can_shrink") fn button_get_can_shrink(button: *Button) glib::boolean;
export @symbol("gtk_button_get_child") fn button_get_child(button: *Button) *Widget;
export @symbol("gtk_button_get_has_frame") fn button_get_has_frame(button: *Button) glib::boolean;
export @symbol("gtk_button_get_icon_name") fn button_get_icon_name(button: *Button) *c::char;
export @symbol("gtk_button_get_label") fn button_get_label(button: *Button) *c::char;
export @symbol("gtk_button_get_use_underline") fn button_get_use_underline(button: *Button) glib::boolean;
export @symbol("gtk_button_set_can_shrink") fn button_set_can_shrink(button: *Button, can_shrink: glib::boolean) void;
export @symbol("gtk_button_set_child") fn button_set_child(button: *Button, child: *Widget) void;
export @symbol("gtk_button_set_has_frame") fn button_set_has_frame(button: *Button, has_frame: glib::boolean) void;
export @symbol("gtk_button_set_icon_name") fn button_set_icon_name(button: *Button, icon_name: *c::char) void;
export @symbol("gtk_button_set_label") fn button_set_label(button: *Button, label: *c::char) void;
export @symbol("gtk_button_set_use_underline") fn button_set_use_underline(button: *Button, use_underline: glib::boolean) void;
export fn button_connect_activate(
	instance: *Button,
	handler: *fn(instance: *Button, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"activate\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn button_connect_clicked(
	instance: *Button,
	handler: *fn(instance: *Button, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"clicked\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export type CClosureExpression = *opaque;
export @symbol("gtk_cclosure_expression_new") fn cclosure_expression_new(value_type: glib::Type, marshal: gobject::ClosureMarshal, n_params: uint, params: **Expression, callback_func: gobject::Callback, user_data: *opaque, user_destroy: gobject::ClosureNotify) *Expression;
export type Calendar = *opaque;
export @symbol("gtk_calendar_new") fn calendar_new() *Widget;
export @symbol("gtk_calendar_clear_marks") fn calendar_clear_marks(calendar: *Calendar) void;
export @symbol("gtk_calendar_get_date") fn calendar_get_date(self: *Calendar) *glib::DateTime;
export @symbol("gtk_calendar_get_day_is_marked") fn calendar_get_day_is_marked(calendar: *Calendar, day: uint) glib::boolean;
export @symbol("gtk_calendar_get_show_day_names") fn calendar_get_show_day_names(self: *Calendar) glib::boolean;
export @symbol("gtk_calendar_get_show_heading") fn calendar_get_show_heading(self: *Calendar) glib::boolean;
export @symbol("gtk_calendar_get_show_week_numbers") fn calendar_get_show_week_numbers(self: *Calendar) glib::boolean;
export @symbol("gtk_calendar_mark_day") fn calendar_mark_day(calendar: *Calendar, day: uint) void;
export @symbol("gtk_calendar_select_day") fn calendar_select_day(self: *Calendar, date: *glib::DateTime) void;
export @symbol("gtk_calendar_set_show_day_names") fn calendar_set_show_day_names(self: *Calendar, value: glib::boolean) void;
export @symbol("gtk_calendar_set_show_heading") fn calendar_set_show_heading(self: *Calendar, value: glib::boolean) void;
export @symbol("gtk_calendar_set_show_week_numbers") fn calendar_set_show_week_numbers(self: *Calendar, value: glib::boolean) void;
export @symbol("gtk_calendar_unmark_day") fn calendar_unmark_day(calendar: *Calendar, day: uint) void;
export fn calendar_connect_day_selected(
	instance: *Calendar,
	handler: *fn(instance: *Calendar, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"day-selected\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn calendar_connect_next_month(
	instance: *Calendar,
	handler: *fn(instance: *Calendar, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"next-month\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn calendar_connect_next_year(
	instance: *Calendar,
	handler: *fn(instance: *Calendar, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"next-year\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn calendar_connect_prev_month(
	instance: *Calendar,
	handler: *fn(instance: *Calendar, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"prev-month\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn calendar_connect_prev_year(
	instance: *Calendar,
	handler: *fn(instance: *Calendar, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"prev-year\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export type CallbackAction = *opaque;
export @symbol("gtk_callback_action_new") fn callback_action_new(callback: ShortcutFunc, data: *opaque, destroy: glib::DestroyNotify) *ShortcutAction;
export type CellArea = struct {
	parent_instance: gobject::InitiallyUnowned,
};
export @symbol("gtk_cell_area_activate") fn cell_area_activate(area: *CellArea, context: *CellAreaContext, widget: *Widget, cell_area: *gdk4::Rectangle, flags: CellRendererState, edit_only: glib::boolean) glib::boolean;
export @symbol("gtk_cell_area_activate_cell") fn cell_area_activate_cell(area: *CellArea, widget: *Widget, renderer: *CellRenderer, event: *gdk4::Event, cell_area: *gdk4::Rectangle, flags: CellRendererState) glib::boolean;
export @symbol("gtk_cell_area_add") fn cell_area_add(area: *CellArea, renderer: *CellRenderer) void;
export @symbol("gtk_cell_area_add_focus_sibling") fn cell_area_add_focus_sibling(area: *CellArea, renderer: *CellRenderer, sibling: *CellRenderer) void;
export @symbol("gtk_cell_area_add_with_properties") fn cell_area_add_with_properties(area: *CellArea, renderer: *CellRenderer, first_prop_name: *c::char, ...) void;
export @symbol("gtk_cell_area_apply_attributes") fn cell_area_apply_attributes(area: *CellArea, tree_model: *TreeModel, iter: *TreeIter, is_expander: glib::boolean, is_expanded: glib::boolean) void;
export @symbol("gtk_cell_area_attribute_connect") fn cell_area_attribute_connect(area: *CellArea, renderer: *CellRenderer, attribute: *c::char, column: int) void;
export @symbol("gtk_cell_area_attribute_disconnect") fn cell_area_attribute_disconnect(area: *CellArea, renderer: *CellRenderer, attribute: *c::char) void;
export @symbol("gtk_cell_area_attribute_get_column") fn cell_area_attribute_get_column(area: *CellArea, renderer: *CellRenderer, attribute: *c::char) int;
export @symbol("gtk_cell_area_cell_get") fn cell_area_cell_get(area: *CellArea, renderer: *CellRenderer, first_prop_name: *c::char, ...) void;
export @symbol("gtk_cell_area_cell_get_property") fn cell_area_cell_get_property(area: *CellArea, renderer: *CellRenderer, property_name: *c::char, value: *gobject::Value) void;
export @symbol("gtk_cell_area_cell_get_valist") fn cell_area_cell_get_valist(area: *CellArea, renderer: *CellRenderer, first_property_name: *c::char, var_args: valist) void;
export @symbol("gtk_cell_area_cell_set") fn cell_area_cell_set(area: *CellArea, renderer: *CellRenderer, first_prop_name: *c::char, ...) void;
export @symbol("gtk_cell_area_cell_set_property") fn cell_area_cell_set_property(area: *CellArea, renderer: *CellRenderer, property_name: *c::char, value: *gobject::Value) void;
export @symbol("gtk_cell_area_cell_set_valist") fn cell_area_cell_set_valist(area: *CellArea, renderer: *CellRenderer, first_property_name: *c::char, var_args: valist) void;
export @symbol("gtk_cell_area_copy_context") fn cell_area_copy_context(area: *CellArea, context: *CellAreaContext) *CellAreaContext;
export @symbol("gtk_cell_area_create_context") fn cell_area_create_context(area: *CellArea) *CellAreaContext;
export @symbol("gtk_cell_area_event") fn cell_area_event(area: *CellArea, context: *CellAreaContext, widget: *Widget, event: *gdk4::Event, cell_area: *gdk4::Rectangle, flags: CellRendererState) int;
export @symbol("gtk_cell_area_focus") fn cell_area_focus(area: *CellArea, direction: DirectionType) glib::boolean;
export @symbol("gtk_cell_area_foreach") fn cell_area_foreach(area: *CellArea, callback: CellCallback, callback_data: *opaque) void;
export @symbol("gtk_cell_area_foreach_alloc") fn cell_area_foreach_alloc(area: *CellArea, context: *CellAreaContext, widget: *Widget, cell_area: *gdk4::Rectangle, background_area: *gdk4::Rectangle, callback: CellAllocCallback, callback_data: *opaque) void;
export @symbol("gtk_cell_area_get_cell_allocation") fn cell_area_get_cell_allocation(area: *CellArea, context: *CellAreaContext, widget: *Widget, renderer: *CellRenderer, cell_area: *gdk4::Rectangle, allocation: *gdk4::Rectangle) void;
export @symbol("gtk_cell_area_get_cell_at_position") fn cell_area_get_cell_at_position(area: *CellArea, context: *CellAreaContext, widget: *Widget, cell_area: *gdk4::Rectangle, x: int, y: int, alloc_area: *gdk4::Rectangle) *CellRenderer;
export @symbol("gtk_cell_area_get_current_path_string") fn cell_area_get_current_path_string(area: *CellArea) *c::char;
export @symbol("gtk_cell_area_get_edit_widget") fn cell_area_get_edit_widget(area: *CellArea) *CellEditable;
export @symbol("gtk_cell_area_get_edited_cell") fn cell_area_get_edited_cell(area: *CellArea) *CellRenderer;
export @symbol("gtk_cell_area_get_focus_cell") fn cell_area_get_focus_cell(area: *CellArea) *CellRenderer;
export @symbol("gtk_cell_area_get_focus_from_sibling") fn cell_area_get_focus_from_sibling(area: *CellArea, renderer: *CellRenderer) *CellRenderer;
export @symbol("gtk_cell_area_get_focus_siblings") fn cell_area_get_focus_siblings(area: *CellArea, renderer: *CellRenderer) *glib::List;
export @symbol("gtk_cell_area_get_preferred_height") fn cell_area_get_preferred_height(area: *CellArea, context: *CellAreaContext, widget: *Widget, minimum_height: *int, natural_height: *int) void;
export @symbol("gtk_cell_area_get_preferred_height_for_width") fn cell_area_get_preferred_height_for_width(area: *CellArea, context: *CellAreaContext, widget: *Widget, width: int, minimum_height: *int, natural_height: *int) void;
export @symbol("gtk_cell_area_get_preferred_width") fn cell_area_get_preferred_width(area: *CellArea, context: *CellAreaContext, widget: *Widget, minimum_width: *int, natural_width: *int) void;
export @symbol("gtk_cell_area_get_preferred_width_for_height") fn cell_area_get_preferred_width_for_height(area: *CellArea, context: *CellAreaContext, widget: *Widget, height: int, minimum_width: *int, natural_width: *int) void;
export @symbol("gtk_cell_area_get_request_mode") fn cell_area_get_request_mode(area: *CellArea) SizeRequestMode;
export @symbol("gtk_cell_area_has_renderer") fn cell_area_has_renderer(area: *CellArea, renderer: *CellRenderer) glib::boolean;
export @symbol("gtk_cell_area_inner_cell_area") fn cell_area_inner_cell_area(area: *CellArea, widget: *Widget, cell_area: *gdk4::Rectangle, inner_area: *gdk4::Rectangle) void;
export @symbol("gtk_cell_area_is_activatable") fn cell_area_is_activatable(area: *CellArea) glib::boolean;
export @symbol("gtk_cell_area_is_focus_sibling") fn cell_area_is_focus_sibling(area: *CellArea, renderer: *CellRenderer, sibling: *CellRenderer) glib::boolean;
export @symbol("gtk_cell_area_remove") fn cell_area_remove(area: *CellArea, renderer: *CellRenderer) void;
export @symbol("gtk_cell_area_remove_focus_sibling") fn cell_area_remove_focus_sibling(area: *CellArea, renderer: *CellRenderer, sibling: *CellRenderer) void;
export @symbol("gtk_cell_area_request_renderer") fn cell_area_request_renderer(area: *CellArea, renderer: *CellRenderer, orientation: Orientation, widget: *Widget, for_size: int, minimum_size: *int, natural_size: *int) void;
export @symbol("gtk_cell_area_set_focus_cell") fn cell_area_set_focus_cell(area: *CellArea, renderer: *CellRenderer) void;
export @symbol("gtk_cell_area_snapshot") fn cell_area_snapshot(area: *CellArea, context: *CellAreaContext, widget: *Widget, snapshot: *Snapshot, background_area: *gdk4::Rectangle, cell_area: *gdk4::Rectangle, flags: CellRendererState, paint_focus: glib::boolean) void;
export @symbol("gtk_cell_area_stop_editing") fn cell_area_stop_editing(area: *CellArea, canceled: glib::boolean) void;
export fn cell_area_connect_add_editable(
	instance: *CellArea,
	handler: *fn(instance: *CellArea, renderer: *CellRenderer, editable: *CellEditable, cell_area: gdk4::Rectangle, path: *c::char, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"add-editable\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn cell_area_connect_apply_attributes(
	instance: *CellArea,
	handler: *fn(instance: *CellArea, model: *TreeModel, iter: *TreeIter, is_expander: glib::boolean, is_expanded: glib::boolean, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"apply-attributes\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn cell_area_connect_focus_changed(
	instance: *CellArea,
	handler: *fn(instance: *CellArea, renderer: *CellRenderer, path: *c::char, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"focus-changed\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn cell_area_connect_remove_editable(
	instance: *CellArea,
	handler: *fn(instance: *CellArea, renderer: *CellRenderer, editable: *CellEditable, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"remove-editable\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export type CellAreaBox = *opaque;
export @symbol("gtk_cell_area_box_new") fn cell_area_box_new() *CellArea;
export @symbol("gtk_cell_area_box_get_spacing") fn cell_area_box_get_spacing(box: *CellAreaBox) int;
export @symbol("gtk_cell_area_box_pack_end") fn cell_area_box_pack_end(box: *CellAreaBox, renderer: *CellRenderer, expand: glib::boolean, align_: glib::boolean, fixed: glib::boolean) void;
export @symbol("gtk_cell_area_box_pack_start") fn cell_area_box_pack_start(box: *CellAreaBox, renderer: *CellRenderer, expand: glib::boolean, align_: glib::boolean, fixed: glib::boolean) void;
export @symbol("gtk_cell_area_box_set_spacing") fn cell_area_box_set_spacing(box: *CellAreaBox, spacing: int) void;
export type CellAreaContext = struct {
	parent_instance: gobject::Object,
};
export @symbol("gtk_cell_area_context_allocate") fn cell_area_context_allocate(context: *CellAreaContext, width: int, height: int) void;
export @symbol("gtk_cell_area_context_get_allocation") fn cell_area_context_get_allocation(context: *CellAreaContext, width: *int, height: *int) void;
export @symbol("gtk_cell_area_context_get_area") fn cell_area_context_get_area(context: *CellAreaContext) *CellArea;
export @symbol("gtk_cell_area_context_get_preferred_height") fn cell_area_context_get_preferred_height(context: *CellAreaContext, minimum_height: *int, natural_height: *int) void;
export @symbol("gtk_cell_area_context_get_preferred_height_for_width") fn cell_area_context_get_preferred_height_for_width(context: *CellAreaContext, width: int, minimum_height: *int, natural_height: *int) void;
export @symbol("gtk_cell_area_context_get_preferred_width") fn cell_area_context_get_preferred_width(context: *CellAreaContext, minimum_width: *int, natural_width: *int) void;
export @symbol("gtk_cell_area_context_get_preferred_width_for_height") fn cell_area_context_get_preferred_width_for_height(context: *CellAreaContext, height: int, minimum_width: *int, natural_width: *int) void;
export @symbol("gtk_cell_area_context_push_preferred_height") fn cell_area_context_push_preferred_height(context: *CellAreaContext, minimum_height: int, natural_height: int) void;
export @symbol("gtk_cell_area_context_push_preferred_width") fn cell_area_context_push_preferred_width(context: *CellAreaContext, minimum_width: int, natural_width: int) void;
export @symbol("gtk_cell_area_context_reset") fn cell_area_context_reset(context: *CellAreaContext) void;
export type CellRenderer = struct {
	parent_instance: gobject::InitiallyUnowned,
	priv: *CellRendererPrivate,
};
export @symbol("gtk_cell_renderer_activate") fn cell_renderer_activate(cell: *CellRenderer, event: *gdk4::Event, widget: *Widget, path: *c::char, background_area: *gdk4::Rectangle, cell_area: *gdk4::Rectangle, flags: CellRendererState) glib::boolean;
export @symbol("gtk_cell_renderer_get_aligned_area") fn cell_renderer_get_aligned_area(cell: *CellRenderer, widget: *Widget, flags: CellRendererState, cell_area: *gdk4::Rectangle, aligned_area: *gdk4::Rectangle) void;
export @symbol("gtk_cell_renderer_get_alignment") fn cell_renderer_get_alignment(cell: *CellRenderer, xalign: *f32, yalign: *f32) void;
export @symbol("gtk_cell_renderer_get_fixed_size") fn cell_renderer_get_fixed_size(cell: *CellRenderer, width: *int, height: *int) void;
export @symbol("gtk_cell_renderer_get_is_expanded") fn cell_renderer_get_is_expanded(cell: *CellRenderer) glib::boolean;
export @symbol("gtk_cell_renderer_get_is_expander") fn cell_renderer_get_is_expander(cell: *CellRenderer) glib::boolean;
export @symbol("gtk_cell_renderer_get_padding") fn cell_renderer_get_padding(cell: *CellRenderer, xpad: *int, ypad: *int) void;
export @symbol("gtk_cell_renderer_get_preferred_height") fn cell_renderer_get_preferred_height(cell: *CellRenderer, widget: *Widget, minimum_size: *int, natural_size: *int) void;
export @symbol("gtk_cell_renderer_get_preferred_height_for_width") fn cell_renderer_get_preferred_height_for_width(cell: *CellRenderer, widget: *Widget, width: int, minimum_height: *int, natural_height: *int) void;
export @symbol("gtk_cell_renderer_get_preferred_size") fn cell_renderer_get_preferred_size(cell: *CellRenderer, widget: *Widget, minimum_size: *Requisition, natural_size: *Requisition) void;
export @symbol("gtk_cell_renderer_get_preferred_width") fn cell_renderer_get_preferred_width(cell: *CellRenderer, widget: *Widget, minimum_size: *int, natural_size: *int) void;
export @symbol("gtk_cell_renderer_get_preferred_width_for_height") fn cell_renderer_get_preferred_width_for_height(cell: *CellRenderer, widget: *Widget, height: int, minimum_width: *int, natural_width: *int) void;
export @symbol("gtk_cell_renderer_get_request_mode") fn cell_renderer_get_request_mode(cell: *CellRenderer) SizeRequestMode;
export @symbol("gtk_cell_renderer_get_sensitive") fn cell_renderer_get_sensitive(cell: *CellRenderer) glib::boolean;
export @symbol("gtk_cell_renderer_get_state") fn cell_renderer_get_state(cell: *CellRenderer, widget: *Widget, cell_state: CellRendererState) StateFlags;
export @symbol("gtk_cell_renderer_get_visible") fn cell_renderer_get_visible(cell: *CellRenderer) glib::boolean;
export @symbol("gtk_cell_renderer_is_activatable") fn cell_renderer_is_activatable(cell: *CellRenderer) glib::boolean;
export @symbol("gtk_cell_renderer_set_alignment") fn cell_renderer_set_alignment(cell: *CellRenderer, xalign: f32, yalign: f32) void;
export @symbol("gtk_cell_renderer_set_fixed_size") fn cell_renderer_set_fixed_size(cell: *CellRenderer, width: int, height: int) void;
export @symbol("gtk_cell_renderer_set_is_expanded") fn cell_renderer_set_is_expanded(cell: *CellRenderer, is_expanded: glib::boolean) void;
export @symbol("gtk_cell_renderer_set_is_expander") fn cell_renderer_set_is_expander(cell: *CellRenderer, is_expander: glib::boolean) void;
export @symbol("gtk_cell_renderer_set_padding") fn cell_renderer_set_padding(cell: *CellRenderer, xpad: int, ypad: int) void;
export @symbol("gtk_cell_renderer_set_sensitive") fn cell_renderer_set_sensitive(cell: *CellRenderer, sensitive: glib::boolean) void;
export @symbol("gtk_cell_renderer_set_visible") fn cell_renderer_set_visible(cell: *CellRenderer, visible: glib::boolean) void;
export @symbol("gtk_cell_renderer_snapshot") fn cell_renderer_snapshot(cell: *CellRenderer, snapshot: *Snapshot, widget: *Widget, background_area: *gdk4::Rectangle, cell_area: *gdk4::Rectangle, flags: CellRendererState) void;
export @symbol("gtk_cell_renderer_start_editing") fn cell_renderer_start_editing(cell: *CellRenderer, event: *gdk4::Event, widget: *Widget, path: *c::char, background_area: *gdk4::Rectangle, cell_area: *gdk4::Rectangle, flags: CellRendererState) *CellEditable;
export @symbol("gtk_cell_renderer_stop_editing") fn cell_renderer_stop_editing(cell: *CellRenderer, canceled: glib::boolean) void;
export fn cell_renderer_connect_editing_canceled(
	instance: *CellRenderer,
	handler: *fn(instance: *CellRenderer, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"editing-canceled\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn cell_renderer_connect_editing_started(
	instance: *CellRenderer,
	handler: *fn(instance: *CellRenderer, editable: *CellEditable, path: *c::char, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"editing-started\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export type CellRendererAccel = *opaque;
export @symbol("gtk_cell_renderer_accel_new") fn cell_renderer_accel_new() *CellRenderer;
export fn cell_renderer_accel_connect_accel_cleared(
	instance: *CellRendererAccel,
	handler: *fn(instance: *CellRendererAccel, path_string: *c::char, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"accel-cleared\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn cell_renderer_accel_connect_accel_edited(
	instance: *CellRendererAccel,
	handler: *fn(instance: *CellRendererAccel, path_string: *c::char, accel_key: uint, accel_mods: gdk4::ModifierType, hardware_keycode: uint, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"accel-edited\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export type CellRendererCombo = *opaque;
export @symbol("gtk_cell_renderer_combo_new") fn cell_renderer_combo_new() *CellRenderer;
export fn cell_renderer_combo_connect_changed(
	instance: *CellRendererCombo,
	handler: *fn(instance: *CellRendererCombo, path_string: *c::char, new_iter: *TreeIter, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"changed\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export type CellRendererPixbuf = *opaque;
export @symbol("gtk_cell_renderer_pixbuf_new") fn cell_renderer_pixbuf_new() *CellRenderer;
export type CellRendererProgress = *opaque;
export @symbol("gtk_cell_renderer_progress_new") fn cell_renderer_progress_new() *CellRenderer;
export type CellRendererSpin = *opaque;
export @symbol("gtk_cell_renderer_spin_new") fn cell_renderer_spin_new() *CellRenderer;
export type CellRendererSpinner = *opaque;
export @symbol("gtk_cell_renderer_spinner_new") fn cell_renderer_spinner_new() *CellRenderer;
export type CellRendererText = struct {
	parent: CellRenderer,
};
export @symbol("gtk_cell_renderer_text_new") fn cell_renderer_text_new() *CellRenderer;
export @symbol("gtk_cell_renderer_text_set_fixed_height_from_font") fn cell_renderer_text_set_fixed_height_from_font(renderer: *CellRendererText, number_of_rows: int) void;
export fn cell_renderer_text_connect_edited(
	instance: *CellRendererText,
	handler: *fn(instance: *CellRendererText, path: *c::char, new_text: *c::char, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"edited\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export type CellRendererToggle = *opaque;
export @symbol("gtk_cell_renderer_toggle_new") fn cell_renderer_toggle_new() *CellRenderer;
export @symbol("gtk_cell_renderer_toggle_get_activatable") fn cell_renderer_toggle_get_activatable(toggle: *CellRendererToggle) glib::boolean;
export @symbol("gtk_cell_renderer_toggle_get_active") fn cell_renderer_toggle_get_active(toggle: *CellRendererToggle) glib::boolean;
export @symbol("gtk_cell_renderer_toggle_get_radio") fn cell_renderer_toggle_get_radio(toggle: *CellRendererToggle) glib::boolean;
export @symbol("gtk_cell_renderer_toggle_set_activatable") fn cell_renderer_toggle_set_activatable(toggle: *CellRendererToggle, setting: glib::boolean) void;
export @symbol("gtk_cell_renderer_toggle_set_active") fn cell_renderer_toggle_set_active(toggle: *CellRendererToggle, setting: glib::boolean) void;
export @symbol("gtk_cell_renderer_toggle_set_radio") fn cell_renderer_toggle_set_radio(toggle: *CellRendererToggle, radio: glib::boolean) void;
export fn cell_renderer_toggle_connect_toggled(
	instance: *CellRendererToggle,
	handler: *fn(instance: *CellRendererToggle, path: *c::char, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"toggled\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export type CellView = *opaque;
export @symbol("gtk_cell_view_new") fn cell_view_new() *Widget;
export @symbol("gtk_cell_view_new_with_context") fn cell_view_new_with_context(area: *CellArea, context: *CellAreaContext) *Widget;
export @symbol("gtk_cell_view_new_with_markup") fn cell_view_new_with_markup(markup: *c::char) *Widget;
export @symbol("gtk_cell_view_new_with_text") fn cell_view_new_with_text(text: *c::char) *Widget;
export @symbol("gtk_cell_view_new_with_texture") fn cell_view_new_with_texture(texture: *gdk4::Texture) *Widget;
export @symbol("gtk_cell_view_get_displayed_row") fn cell_view_get_displayed_row(cell_view: *CellView) *TreePath;
export @symbol("gtk_cell_view_get_draw_sensitive") fn cell_view_get_draw_sensitive(cell_view: *CellView) glib::boolean;
export @symbol("gtk_cell_view_get_fit_model") fn cell_view_get_fit_model(cell_view: *CellView) glib::boolean;
export @symbol("gtk_cell_view_get_model") fn cell_view_get_model(cell_view: *CellView) *TreeModel;
export @symbol("gtk_cell_view_set_displayed_row") fn cell_view_set_displayed_row(cell_view: *CellView, path: *TreePath) void;
export @symbol("gtk_cell_view_set_draw_sensitive") fn cell_view_set_draw_sensitive(cell_view: *CellView, draw_sensitive: glib::boolean) void;
export @symbol("gtk_cell_view_set_fit_model") fn cell_view_set_fit_model(cell_view: *CellView, fit_model: glib::boolean) void;
export @symbol("gtk_cell_view_set_model") fn cell_view_set_model(cell_view: *CellView, model: *TreeModel) void;
export type CenterBox = *opaque;
export @symbol("gtk_center_box_new") fn center_box_new() *Widget;
export @symbol("gtk_center_box_get_baseline_position") fn center_box_get_baseline_position(self: *CenterBox) BaselinePosition;
export @symbol("gtk_center_box_get_center_widget") fn center_box_get_center_widget(self: *CenterBox) *Widget;
export @symbol("gtk_center_box_get_end_widget") fn center_box_get_end_widget(self: *CenterBox) *Widget;
export @symbol("gtk_center_box_get_shrink_center_last") fn center_box_get_shrink_center_last(self: *CenterBox) glib::boolean;
export @symbol("gtk_center_box_get_start_widget") fn center_box_get_start_widget(self: *CenterBox) *Widget;
export @symbol("gtk_center_box_set_baseline_position") fn center_box_set_baseline_position(self: *CenterBox, position: BaselinePosition) void;
export @symbol("gtk_center_box_set_center_widget") fn center_box_set_center_widget(self: *CenterBox, child: *Widget) void;
export @symbol("gtk_center_box_set_end_widget") fn center_box_set_end_widget(self: *CenterBox, child: *Widget) void;
export @symbol("gtk_center_box_set_shrink_center_last") fn center_box_set_shrink_center_last(self: *CenterBox, shrink_center_last: glib::boolean) void;
export @symbol("gtk_center_box_set_start_widget") fn center_box_set_start_widget(self: *CenterBox, child: *Widget) void;
export type CenterLayout = *opaque;
export @symbol("gtk_center_layout_new") fn center_layout_new() *LayoutManager;
export @symbol("gtk_center_layout_get_baseline_position") fn center_layout_get_baseline_position(self: *CenterLayout) BaselinePosition;
export @symbol("gtk_center_layout_get_center_widget") fn center_layout_get_center_widget(self: *CenterLayout) *Widget;
export @symbol("gtk_center_layout_get_end_widget") fn center_layout_get_end_widget(self: *CenterLayout) *Widget;
export @symbol("gtk_center_layout_get_orientation") fn center_layout_get_orientation(self: *CenterLayout) Orientation;
export @symbol("gtk_center_layout_get_shrink_center_last") fn center_layout_get_shrink_center_last(self: *CenterLayout) glib::boolean;
export @symbol("gtk_center_layout_get_start_widget") fn center_layout_get_start_widget(self: *CenterLayout) *Widget;
export @symbol("gtk_center_layout_set_baseline_position") fn center_layout_set_baseline_position(self: *CenterLayout, baseline_position: BaselinePosition) void;
export @symbol("gtk_center_layout_set_center_widget") fn center_layout_set_center_widget(self: *CenterLayout, widget: *Widget) void;
export @symbol("gtk_center_layout_set_end_widget") fn center_layout_set_end_widget(self: *CenterLayout, widget: *Widget) void;
export @symbol("gtk_center_layout_set_orientation") fn center_layout_set_orientation(self: *CenterLayout, orientation: Orientation) void;
export @symbol("gtk_center_layout_set_shrink_center_last") fn center_layout_set_shrink_center_last(self: *CenterLayout, shrink_center_last: glib::boolean) void;
export @symbol("gtk_center_layout_set_start_widget") fn center_layout_set_start_widget(self: *CenterLayout, widget: *Widget) void;
export type CheckButton = struct {
	parent_instance: Widget,
};
export @symbol("gtk_check_button_new") fn check_button_new() *Widget;
export @symbol("gtk_check_button_new_with_label") fn check_button_new_with_label(label: *c::char) *Widget;
export @symbol("gtk_check_button_new_with_mnemonic") fn check_button_new_with_mnemonic(label: *c::char) *Widget;
export @symbol("gtk_check_button_get_active") fn check_button_get_active(self: *CheckButton) glib::boolean;
export @symbol("gtk_check_button_get_child") fn check_button_get_child(button: *CheckButton) *Widget;
export @symbol("gtk_check_button_get_inconsistent") fn check_button_get_inconsistent(check_button: *CheckButton) glib::boolean;
export @symbol("gtk_check_button_get_label") fn check_button_get_label(self: *CheckButton) *c::char;
export @symbol("gtk_check_button_get_use_underline") fn check_button_get_use_underline(self: *CheckButton) glib::boolean;
export @symbol("gtk_check_button_set_active") fn check_button_set_active(self: *CheckButton, setting: glib::boolean) void;
export @symbol("gtk_check_button_set_child") fn check_button_set_child(button: *CheckButton, child: *Widget) void;
export @symbol("gtk_check_button_set_group") fn check_button_set_group(self: *CheckButton, group: *CheckButton) void;
export @symbol("gtk_check_button_set_inconsistent") fn check_button_set_inconsistent(check_button: *CheckButton, inconsistent: glib::boolean) void;
export @symbol("gtk_check_button_set_label") fn check_button_set_label(self: *CheckButton, label: *c::char) void;
export @symbol("gtk_check_button_set_use_underline") fn check_button_set_use_underline(self: *CheckButton, setting: glib::boolean) void;
export fn check_button_connect_activate(
	instance: *CheckButton,
	handler: *fn(instance: *CheckButton, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"activate\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn check_button_connect_toggled(
	instance: *CheckButton,
	handler: *fn(instance: *CheckButton, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"toggled\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export type ClosureExpression = *opaque;
export @symbol("gtk_closure_expression_new") fn closure_expression_new(value_type: glib::Type, closure: *gobject::Closure, n_params: uint, params: **Expression) *Expression;
export type ColorButton = *opaque;
export @symbol("gtk_color_button_new") fn color_button_new() *Widget;
export @symbol("gtk_color_button_new_with_rgba") fn color_button_new_with_rgba(rgba: *gdk4::RGBA) *Widget;
export @symbol("gtk_color_button_get_modal") fn color_button_get_modal(button: *ColorButton) glib::boolean;
export @symbol("gtk_color_button_get_title") fn color_button_get_title(button: *ColorButton) *c::char;
export @symbol("gtk_color_button_set_modal") fn color_button_set_modal(button: *ColorButton, modal: glib::boolean) void;
export @symbol("gtk_color_button_set_title") fn color_button_set_title(button: *ColorButton, title: *c::char) void;
export fn color_button_connect_activate(
	instance: *ColorButton,
	handler: *fn(instance: *ColorButton, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"activate\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn color_button_connect_color_set(
	instance: *ColorButton,
	handler: *fn(instance: *ColorButton, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"color-set\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export type ColorChooserDialog = *opaque;
export @symbol("gtk_color_chooser_dialog_new") fn color_chooser_dialog_new(title: *c::char, parent: *Window) *Widget;
export type ColorChooserWidget = *opaque;
export @symbol("gtk_color_chooser_widget_new") fn color_chooser_widget_new() *Widget;
export type ColorDialog = *opaque;
export @symbol("gtk_color_dialog_new") fn color_dialog_new() *ColorDialog;
export @symbol("gtk_color_dialog_choose_rgba") fn color_dialog_choose_rgba(self: *ColorDialog, parent: *Window, initial_color: *gdk4::RGBA, cancellable: *gio::Cancellable, callback: gio::AsyncReadyCallback, user_data: *opaque) void;
export @symbol("gtk_color_dialog_choose_rgba_finish") fn color_dialog_choose_rgba_finish(self: *ColorDialog, result: *gio::AsyncResult, error: nullable **glib::Error) *gdk4::RGBA;
export @symbol("gtk_color_dialog_get_modal") fn color_dialog_get_modal(self: *ColorDialog) glib::boolean;
export @symbol("gtk_color_dialog_get_title") fn color_dialog_get_title(self: *ColorDialog) *c::char;
export @symbol("gtk_color_dialog_get_with_alpha") fn color_dialog_get_with_alpha(self: *ColorDialog) glib::boolean;
export @symbol("gtk_color_dialog_set_modal") fn color_dialog_set_modal(self: *ColorDialog, modal: glib::boolean) void;
export @symbol("gtk_color_dialog_set_title") fn color_dialog_set_title(self: *ColorDialog, title: *c::char) void;
export @symbol("gtk_color_dialog_set_with_alpha") fn color_dialog_set_with_alpha(self: *ColorDialog, with_alpha: glib::boolean) void;
export type ColorDialogButton = *opaque;
export @symbol("gtk_color_dialog_button_new") fn color_dialog_button_new(dialog: *ColorDialog) *Widget;
export @symbol("gtk_color_dialog_button_get_dialog") fn color_dialog_button_get_dialog(self: *ColorDialogButton) *ColorDialog;
export @symbol("gtk_color_dialog_button_get_rgba") fn color_dialog_button_get_rgba(self: *ColorDialogButton) *gdk4::RGBA;
export @symbol("gtk_color_dialog_button_set_dialog") fn color_dialog_button_set_dialog(self: *ColorDialogButton, dialog: *ColorDialog) void;
export @symbol("gtk_color_dialog_button_set_rgba") fn color_dialog_button_set_rgba(self: *ColorDialogButton, color: *gdk4::RGBA) void;
export fn color_dialog_button_connect_activate(
	instance: *ColorDialogButton,
	handler: *fn(instance: *ColorDialogButton, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"activate\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export type ColumnView = *opaque;
export @symbol("gtk_column_view_new") fn column_view_new(model: *SelectionModel) *Widget;
export @symbol("gtk_column_view_append_column") fn column_view_append_column(self: *ColumnView, column: *ColumnViewColumn) void;
export @symbol("gtk_column_view_get_columns") fn column_view_get_columns(self: *ColumnView) *gio::ListModel;
export @symbol("gtk_column_view_get_enable_rubberband") fn column_view_get_enable_rubberband(self: *ColumnView) glib::boolean;
export @symbol("gtk_column_view_get_header_factory") fn column_view_get_header_factory(self: *ColumnView) *ListItemFactory;
export @symbol("gtk_column_view_get_model") fn column_view_get_model(self: *ColumnView) *SelectionModel;
export @symbol("gtk_column_view_get_reorderable") fn column_view_get_reorderable(self: *ColumnView) glib::boolean;
export @symbol("gtk_column_view_get_row_factory") fn column_view_get_row_factory(self: *ColumnView) *ListItemFactory;
export @symbol("gtk_column_view_get_show_column_separators") fn column_view_get_show_column_separators(self: *ColumnView) glib::boolean;
export @symbol("gtk_column_view_get_show_row_separators") fn column_view_get_show_row_separators(self: *ColumnView) glib::boolean;
export @symbol("gtk_column_view_get_single_click_activate") fn column_view_get_single_click_activate(self: *ColumnView) glib::boolean;
export @symbol("gtk_column_view_get_sorter") fn column_view_get_sorter(self: *ColumnView) *Sorter;
export @symbol("gtk_column_view_get_tab_behavior") fn column_view_get_tab_behavior(self: *ColumnView) ListTabBehavior;
export @symbol("gtk_column_view_insert_column") fn column_view_insert_column(self: *ColumnView, position: uint, column: *ColumnViewColumn) void;
export @symbol("gtk_column_view_remove_column") fn column_view_remove_column(self: *ColumnView, column: *ColumnViewColumn) void;
export @symbol("gtk_column_view_scroll_to") fn column_view_scroll_to(self: *ColumnView, pos: uint, column: *ColumnViewColumn, flags: ListScrollFlags, scroll: *ScrollInfo) void;
export @symbol("gtk_column_view_set_enable_rubberband") fn column_view_set_enable_rubberband(self: *ColumnView, enable_rubberband: glib::boolean) void;
export @symbol("gtk_column_view_set_header_factory") fn column_view_set_header_factory(self: *ColumnView, factory: *ListItemFactory) void;
export @symbol("gtk_column_view_set_model") fn column_view_set_model(self: *ColumnView, model: *SelectionModel) void;
export @symbol("gtk_column_view_set_reorderable") fn column_view_set_reorderable(self: *ColumnView, reorderable: glib::boolean) void;
export @symbol("gtk_column_view_set_row_factory") fn column_view_set_row_factory(self: *ColumnView, factory: *ListItemFactory) void;
export @symbol("gtk_column_view_set_show_column_separators") fn column_view_set_show_column_separators(self: *ColumnView, show_column_separators: glib::boolean) void;
export @symbol("gtk_column_view_set_show_row_separators") fn column_view_set_show_row_separators(self: *ColumnView, show_row_separators: glib::boolean) void;
export @symbol("gtk_column_view_set_single_click_activate") fn column_view_set_single_click_activate(self: *ColumnView, single_click_activate: glib::boolean) void;
export @symbol("gtk_column_view_set_tab_behavior") fn column_view_set_tab_behavior(self: *ColumnView, tab_behavior: ListTabBehavior) void;
export @symbol("gtk_column_view_sort_by_column") fn column_view_sort_by_column(self: *ColumnView, column: *ColumnViewColumn, direction: SortType) void;
export fn column_view_connect_activate(
	instance: *ColumnView,
	handler: *fn(instance: *ColumnView, position: uint, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"activate\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export type ColumnViewCell = *opaque;
export @symbol("gtk_column_view_cell_get_child") fn column_view_cell_get_child(self: *ColumnViewCell) *Widget;
export @symbol("gtk_column_view_cell_get_focusable") fn column_view_cell_get_focusable(self: *ColumnViewCell) glib::boolean;
export @symbol("gtk_column_view_cell_get_item") fn column_view_cell_get_item(self: *ColumnViewCell) *opaque;
export @symbol("gtk_column_view_cell_get_position") fn column_view_cell_get_position(self: *ColumnViewCell) uint;
export @symbol("gtk_column_view_cell_get_selected") fn column_view_cell_get_selected(self: *ColumnViewCell) glib::boolean;
export @symbol("gtk_column_view_cell_set_child") fn column_view_cell_set_child(self: *ColumnViewCell, child: *Widget) void;
export @symbol("gtk_column_view_cell_set_focusable") fn column_view_cell_set_focusable(self: *ColumnViewCell, focusable: glib::boolean) void;
export type ColumnViewColumn = *opaque;
export @symbol("gtk_column_view_column_new") fn column_view_column_new(title: *c::char, factory: *ListItemFactory) *ColumnViewColumn;
export @symbol("gtk_column_view_column_get_column_view") fn column_view_column_get_column_view(self: *ColumnViewColumn) *ColumnView;
export @symbol("gtk_column_view_column_get_expand") fn column_view_column_get_expand(self: *ColumnViewColumn) glib::boolean;
export @symbol("gtk_column_view_column_get_factory") fn column_view_column_get_factory(self: *ColumnViewColumn) *ListItemFactory;
export @symbol("gtk_column_view_column_get_fixed_width") fn column_view_column_get_fixed_width(self: *ColumnViewColumn) int;
export @symbol("gtk_column_view_column_get_header_menu") fn column_view_column_get_header_menu(self: *ColumnViewColumn) *gio::MenuModel;
export @symbol("gtk_column_view_column_get_id") fn column_view_column_get_id(self: *ColumnViewColumn) *c::char;
export @symbol("gtk_column_view_column_get_resizable") fn column_view_column_get_resizable(self: *ColumnViewColumn) glib::boolean;
export @symbol("gtk_column_view_column_get_sorter") fn column_view_column_get_sorter(self: *ColumnViewColumn) *Sorter;
export @symbol("gtk_column_view_column_get_title") fn column_view_column_get_title(self: *ColumnViewColumn) *c::char;
export @symbol("gtk_column_view_column_get_visible") fn column_view_column_get_visible(self: *ColumnViewColumn) glib::boolean;
export @symbol("gtk_column_view_column_set_expand") fn column_view_column_set_expand(self: *ColumnViewColumn, expand: glib::boolean) void;
export @symbol("gtk_column_view_column_set_factory") fn column_view_column_set_factory(self: *ColumnViewColumn, factory: *ListItemFactory) void;
export @symbol("gtk_column_view_column_set_fixed_width") fn column_view_column_set_fixed_width(self: *ColumnViewColumn, fixed_width: int) void;
export @symbol("gtk_column_view_column_set_header_menu") fn column_view_column_set_header_menu(self: *ColumnViewColumn, menu: *gio::MenuModel) void;
export @symbol("gtk_column_view_column_set_id") fn column_view_column_set_id(self: *ColumnViewColumn, id: *c::char) void;
export @symbol("gtk_column_view_column_set_resizable") fn column_view_column_set_resizable(self: *ColumnViewColumn, resizable: glib::boolean) void;
export @symbol("gtk_column_view_column_set_sorter") fn column_view_column_set_sorter(self: *ColumnViewColumn, sorter: *Sorter) void;
export @symbol("gtk_column_view_column_set_title") fn column_view_column_set_title(self: *ColumnViewColumn, title: *c::char) void;
export @symbol("gtk_column_view_column_set_visible") fn column_view_column_set_visible(self: *ColumnViewColumn, visible: glib::boolean) void;
export type ColumnViewRow = *opaque;
export @symbol("gtk_column_view_row_get_accessible_description") fn column_view_row_get_accessible_description(self: *ColumnViewRow) *c::char;
export @symbol("gtk_column_view_row_get_accessible_label") fn column_view_row_get_accessible_label(self: *ColumnViewRow) *c::char;
export @symbol("gtk_column_view_row_get_activatable") fn column_view_row_get_activatable(self: *ColumnViewRow) glib::boolean;
export @symbol("gtk_column_view_row_get_focusable") fn column_view_row_get_focusable(self: *ColumnViewRow) glib::boolean;
export @symbol("gtk_column_view_row_get_item") fn column_view_row_get_item(self: *ColumnViewRow) *opaque;
export @symbol("gtk_column_view_row_get_position") fn column_view_row_get_position(self: *ColumnViewRow) uint;
export @symbol("gtk_column_view_row_get_selectable") fn column_view_row_get_selectable(self: *ColumnViewRow) glib::boolean;
export @symbol("gtk_column_view_row_get_selected") fn column_view_row_get_selected(self: *ColumnViewRow) glib::boolean;
export @symbol("gtk_column_view_row_set_accessible_description") fn column_view_row_set_accessible_description(self: *ColumnViewRow, description: *c::char) void;
export @symbol("gtk_column_view_row_set_accessible_label") fn column_view_row_set_accessible_label(self: *ColumnViewRow, label: *c::char) void;
export @symbol("gtk_column_view_row_set_activatable") fn column_view_row_set_activatable(self: *ColumnViewRow, activatable: glib::boolean) void;
export @symbol("gtk_column_view_row_set_focusable") fn column_view_row_set_focusable(self: *ColumnViewRow, focusable: glib::boolean) void;
export @symbol("gtk_column_view_row_set_selectable") fn column_view_row_set_selectable(self: *ColumnViewRow, selectable: glib::boolean) void;
export type ColumnViewSorter = *opaque;
export @symbol("gtk_column_view_sorter_get_n_sort_columns") fn column_view_sorter_get_n_sort_columns(self: *ColumnViewSorter) uint;
export @symbol("gtk_column_view_sorter_get_nth_sort_column") fn column_view_sorter_get_nth_sort_column(self: *ColumnViewSorter, position: uint, sort_order: *SortType) *ColumnViewColumn;
export @symbol("gtk_column_view_sorter_get_primary_sort_column") fn column_view_sorter_get_primary_sort_column(self: *ColumnViewSorter) *ColumnViewColumn;
export @symbol("gtk_column_view_sorter_get_primary_sort_order") fn column_view_sorter_get_primary_sort_order(self: *ColumnViewSorter) SortType;
export type ComboBox = struct {
	parent_instance: Widget,
};
export @symbol("gtk_combo_box_new") fn combo_box_new() *Widget;
export @symbol("gtk_combo_box_new_with_entry") fn combo_box_new_with_entry() *Widget;
export @symbol("gtk_combo_box_new_with_model") fn combo_box_new_with_model(model: *TreeModel) *Widget;
export @symbol("gtk_combo_box_new_with_model_and_entry") fn combo_box_new_with_model_and_entry(model: *TreeModel) *Widget;
export @symbol("gtk_combo_box_get_active") fn combo_box_get_active(combo_box: *ComboBox) int;
export @symbol("gtk_combo_box_get_active_id") fn combo_box_get_active_id(combo_box: *ComboBox) *c::char;
export @symbol("gtk_combo_box_get_active_iter") fn combo_box_get_active_iter(combo_box: *ComboBox, iter: *TreeIter) glib::boolean;
export @symbol("gtk_combo_box_get_button_sensitivity") fn combo_box_get_button_sensitivity(combo_box: *ComboBox) SensitivityType;
export @symbol("gtk_combo_box_get_child") fn combo_box_get_child(combo_box: *ComboBox) *Widget;
export @symbol("gtk_combo_box_get_entry_text_column") fn combo_box_get_entry_text_column(combo_box: *ComboBox) int;
export @symbol("gtk_combo_box_get_has_entry") fn combo_box_get_has_entry(combo_box: *ComboBox) glib::boolean;
export @symbol("gtk_combo_box_get_id_column") fn combo_box_get_id_column(combo_box: *ComboBox) int;
export @symbol("gtk_combo_box_get_model") fn combo_box_get_model(combo_box: *ComboBox) *TreeModel;
export @symbol("gtk_combo_box_get_popup_fixed_width") fn combo_box_get_popup_fixed_width(combo_box: *ComboBox) glib::boolean;
export @symbol("gtk_combo_box_get_row_separator_func") fn combo_box_get_row_separator_func(combo_box: *ComboBox) TreeViewRowSeparatorFunc;
export @symbol("gtk_combo_box_popdown") fn combo_box_popdown(combo_box: *ComboBox) void;
export @symbol("gtk_combo_box_popup") fn combo_box_popup(combo_box: *ComboBox) void;
export @symbol("gtk_combo_box_popup_for_device") fn combo_box_popup_for_device(combo_box: *ComboBox, device: *gdk4::Device) void;
export @symbol("gtk_combo_box_set_active") fn combo_box_set_active(combo_box: *ComboBox, index_: int) void;
export @symbol("gtk_combo_box_set_active_id") fn combo_box_set_active_id(combo_box: *ComboBox, active_id: *c::char) glib::boolean;
export @symbol("gtk_combo_box_set_active_iter") fn combo_box_set_active_iter(combo_box: *ComboBox, iter: *TreeIter) void;
export @symbol("gtk_combo_box_set_button_sensitivity") fn combo_box_set_button_sensitivity(combo_box: *ComboBox, sensitivity: SensitivityType) void;
export @symbol("gtk_combo_box_set_child") fn combo_box_set_child(combo_box: *ComboBox, child: *Widget) void;
export @symbol("gtk_combo_box_set_entry_text_column") fn combo_box_set_entry_text_column(combo_box: *ComboBox, text_column: int) void;
export @symbol("gtk_combo_box_set_id_column") fn combo_box_set_id_column(combo_box: *ComboBox, id_column: int) void;
export @symbol("gtk_combo_box_set_model") fn combo_box_set_model(combo_box: *ComboBox, model: *TreeModel) void;
export @symbol("gtk_combo_box_set_popup_fixed_width") fn combo_box_set_popup_fixed_width(combo_box: *ComboBox, fixed: glib::boolean) void;
export @symbol("gtk_combo_box_set_row_separator_func") fn combo_box_set_row_separator_func(combo_box: *ComboBox, func: TreeViewRowSeparatorFunc, data: *opaque, destroy: glib::DestroyNotify) void;
export fn combo_box_connect_activate(
	instance: *ComboBox,
	handler: *fn(instance: *ComboBox, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"activate\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn combo_box_connect_changed(
	instance: *ComboBox,
	handler: *fn(instance: *ComboBox, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"changed\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn combo_box_connect_format_entry_text(
	instance: *ComboBox,
	handler: *fn(instance: *ComboBox, path: *c::char, data: *opaque) *c::char,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"format-entry-text\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn combo_box_connect_move_active(
	instance: *ComboBox,
	handler: *fn(instance: *ComboBox, scroll_type: atk::ScrollType, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"move-active\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn combo_box_connect_popdown(
	instance: *ComboBox,
	handler: *fn(instance: *ComboBox, data: *opaque) glib::boolean,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"popdown\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn combo_box_connect_popup(
	instance: *ComboBox,
	handler: *fn(instance: *ComboBox, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"popup\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export type ComboBoxText = *opaque;
export @symbol("gtk_combo_box_text_new") fn combo_box_text_new() *Widget;
export @symbol("gtk_combo_box_text_new_with_entry") fn combo_box_text_new_with_entry() *Widget;
export @symbol("gtk_combo_box_text_append") fn combo_box_text_append(combo_box: *ComboBoxText, id: *c::char, text: *c::char) void;
export @symbol("gtk_combo_box_text_append_text") fn combo_box_text_append_text(combo_box: *ComboBoxText, text: *c::char) void;
export @symbol("gtk_combo_box_text_get_active_text") fn combo_box_text_get_active_text(combo_box: *ComboBoxText) *c::char;
export @symbol("gtk_combo_box_text_insert") fn combo_box_text_insert(combo_box: *ComboBoxText, position: int, id: *c::char, text: *c::char) void;
export @symbol("gtk_combo_box_text_insert_text") fn combo_box_text_insert_text(combo_box: *ComboBoxText, position: int, text: *c::char) void;
export @symbol("gtk_combo_box_text_prepend") fn combo_box_text_prepend(combo_box: *ComboBoxText, id: *c::char, text: *c::char) void;
export @symbol("gtk_combo_box_text_prepend_text") fn combo_box_text_prepend_text(combo_box: *ComboBoxText, text: *c::char) void;
export @symbol("gtk_combo_box_text_remove") fn combo_box_text_remove(combo_box: *ComboBoxText, position: int) void;
export @symbol("gtk_combo_box_text_remove_all") fn combo_box_text_remove_all(combo_box: *ComboBoxText) void;
export type ConstantExpression = *opaque;
export @symbol("gtk_constant_expression_new") fn constant_expression_new(value_type: glib::Type, ...) *Expression;
export @symbol("gtk_constant_expression_new_for_value") fn constant_expression_new_for_value(value: *gobject::Value) *Expression;
export @symbol("gtk_constant_expression_get_value") fn constant_expression_get_value(expression: *Expression) *gobject::Value;
export type Constraint = *opaque;
export @symbol("gtk_constraint_new") fn constraint_new(target: *opaque, target_attribute: ConstraintAttribute, relation: ConstraintRelation, source: *opaque, source_attribute: ConstraintAttribute, multiplier: f64, constant: f64, strength: int) *Constraint;
export @symbol("gtk_constraint_new_constant") fn constraint_new_constant(target: *opaque, target_attribute: ConstraintAttribute, relation: ConstraintRelation, constant: f64, strength: int) *Constraint;
export @symbol("gtk_constraint_get_constant") fn constraint_get_constant(constraint: *Constraint) f64;
export @symbol("gtk_constraint_get_multiplier") fn constraint_get_multiplier(constraint: *Constraint) f64;
export @symbol("gtk_constraint_get_relation") fn constraint_get_relation(constraint: *Constraint) ConstraintRelation;
export @symbol("gtk_constraint_get_source") fn constraint_get_source(constraint: *Constraint) *ConstraintTarget;
export @symbol("gtk_constraint_get_source_attribute") fn constraint_get_source_attribute(constraint: *Constraint) ConstraintAttribute;
export @symbol("gtk_constraint_get_strength") fn constraint_get_strength(constraint: *Constraint) int;
export @symbol("gtk_constraint_get_target") fn constraint_get_target(constraint: *Constraint) *ConstraintTarget;
export @symbol("gtk_constraint_get_target_attribute") fn constraint_get_target_attribute(constraint: *Constraint) ConstraintAttribute;
export @symbol("gtk_constraint_is_attached") fn constraint_is_attached(constraint: *Constraint) glib::boolean;
export @symbol("gtk_constraint_is_constant") fn constraint_is_constant(constraint: *Constraint) glib::boolean;
export @symbol("gtk_constraint_is_required") fn constraint_is_required(constraint: *Constraint) glib::boolean;
export type ConstraintGuide = *opaque;
export @symbol("gtk_constraint_guide_new") fn constraint_guide_new() *ConstraintGuide;
export @symbol("gtk_constraint_guide_get_max_size") fn constraint_guide_get_max_size(guide: *ConstraintGuide, width: *int, height: *int) void;
export @symbol("gtk_constraint_guide_get_min_size") fn constraint_guide_get_min_size(guide: *ConstraintGuide, width: *int, height: *int) void;
export @symbol("gtk_constraint_guide_get_name") fn constraint_guide_get_name(guide: *ConstraintGuide) *c::char;
export @symbol("gtk_constraint_guide_get_nat_size") fn constraint_guide_get_nat_size(guide: *ConstraintGuide, width: *int, height: *int) void;
export @symbol("gtk_constraint_guide_get_strength") fn constraint_guide_get_strength(guide: *ConstraintGuide) ConstraintStrength;
export @symbol("gtk_constraint_guide_set_max_size") fn constraint_guide_set_max_size(guide: *ConstraintGuide, width: int, height: int) void;
export @symbol("gtk_constraint_guide_set_min_size") fn constraint_guide_set_min_size(guide: *ConstraintGuide, width: int, height: int) void;
export @symbol("gtk_constraint_guide_set_name") fn constraint_guide_set_name(guide: *ConstraintGuide, name: *c::char) void;
export @symbol("gtk_constraint_guide_set_nat_size") fn constraint_guide_set_nat_size(guide: *ConstraintGuide, width: int, height: int) void;
export @symbol("gtk_constraint_guide_set_strength") fn constraint_guide_set_strength(guide: *ConstraintGuide, strength: ConstraintStrength) void;
export type ConstraintLayout = *opaque;
export @symbol("gtk_constraint_layout_new") fn constraint_layout_new() *LayoutManager;
export @symbol("gtk_constraint_layout_add_constraint") fn constraint_layout_add_constraint(layout: *ConstraintLayout, constraint: *Constraint) void;
export @symbol("gtk_constraint_layout_add_constraints_from_description") fn constraint_layout_add_constraints_from_description(layout: *ConstraintLayout, lines: **c::char, n_lines: size, hspacing: int, vspacing: int, error: **glib::Error, first_view: *c::char, ...) *glib::List;
export @symbol("gtk_constraint_layout_add_constraints_from_descriptionv") fn constraint_layout_add_constraints_from_descriptionv(layout: *ConstraintLayout, lines: **c::char, n_lines: size, hspacing: int, vspacing: int, views: *glib::HashTable, error: nullable **glib::Error) *glib::List;
export @symbol("gtk_constraint_layout_add_guide") fn constraint_layout_add_guide(layout: *ConstraintLayout, guide: *ConstraintGuide) void;
export @symbol("gtk_constraint_layout_observe_constraints") fn constraint_layout_observe_constraints(layout: *ConstraintLayout) *gio::ListModel;
export @symbol("gtk_constraint_layout_observe_guides") fn constraint_layout_observe_guides(layout: *ConstraintLayout) *gio::ListModel;
export @symbol("gtk_constraint_layout_remove_all_constraints") fn constraint_layout_remove_all_constraints(layout: *ConstraintLayout) void;
export @symbol("gtk_constraint_layout_remove_constraint") fn constraint_layout_remove_constraint(layout: *ConstraintLayout, constraint: *Constraint) void;
export @symbol("gtk_constraint_layout_remove_guide") fn constraint_layout_remove_guide(layout: *ConstraintLayout, guide: *ConstraintGuide) void;
export type ConstraintLayoutChild = *opaque;
export type CssProvider = struct {
	parent_instance: gobject::Object,
};
export @symbol("gtk_css_provider_new") fn css_provider_new() *CssProvider;
export @symbol("gtk_css_provider_load_from_bytes") fn css_provider_load_from_bytes(css_provider: *CssProvider, data: *glib::Bytes) void;
export @symbol("gtk_css_provider_load_from_data") fn css_provider_load_from_data(css_provider: *CssProvider, data: *c::char, length: c::ssize) void;
export @symbol("gtk_css_provider_load_from_file") fn css_provider_load_from_file(css_provider: *CssProvider, file: *gio::File) void;
export @symbol("gtk_css_provider_load_from_path") fn css_provider_load_from_path(css_provider: *CssProvider, path: *c::char) void;
export @symbol("gtk_css_provider_load_from_resource") fn css_provider_load_from_resource(css_provider: *CssProvider, resource_path: *c::char) void;
export @symbol("gtk_css_provider_load_from_string") fn css_provider_load_from_string(css_provider: *CssProvider, string: *c::char) void;
export @symbol("gtk_css_provider_load_named") fn css_provider_load_named(provider: *CssProvider, name: *c::char, variant: *c::char) void;
export @symbol("gtk_css_provider_to_string") fn css_provider_to_string(provider: *CssProvider) *c::char;
export fn css_provider_connect_parsing_error(
	instance: *CssProvider,
	handler: *fn(instance: *CssProvider, section: *CssSection, error: glib::Error, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"parsing-error\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export type CustomFilter = *opaque;
export @symbol("gtk_custom_filter_new") fn custom_filter_new(match_func: CustomFilterFunc, user_data: *opaque, user_destroy: glib::DestroyNotify) *CustomFilter;
export @symbol("gtk_custom_filter_set_filter_func") fn custom_filter_set_filter_func(self: *CustomFilter, match_func: CustomFilterFunc, user_data: *opaque, user_destroy: glib::DestroyNotify) void;
export type CustomLayout = *opaque;
export @symbol("gtk_custom_layout_new") fn custom_layout_new(request_mode: CustomRequestModeFunc, measure: CustomMeasureFunc, allocate: CustomAllocateFunc) *LayoutManager;
export type CustomSorter = *opaque;
export @symbol("gtk_custom_sorter_new") fn custom_sorter_new(sort_func: glib::CompareDataFunc, user_data: *opaque, user_destroy: glib::DestroyNotify) *CustomSorter;
export @symbol("gtk_custom_sorter_set_sort_func") fn custom_sorter_set_sort_func(self: *CustomSorter, sort_func: glib::CompareDataFunc, user_data: *opaque, user_destroy: glib::DestroyNotify) void;
export type Dialog = struct {
	parent_instance: Window,
};
export @symbol("gtk_dialog_new") fn dialog_new() *Widget;
export @symbol("gtk_dialog_new_with_buttons") fn dialog_new_with_buttons(title: *c::char, parent: *Window, flags: DialogFlags, first_button_text: *c::char, ...) *Widget;
export @symbol("gtk_dialog_add_action_widget") fn dialog_add_action_widget(dialog: *Dialog, child: *Widget, response_id: int) void;
export @symbol("gtk_dialog_add_button") fn dialog_add_button(dialog: *Dialog, button_text: *c::char, response_id: int) *Widget;
export @symbol("gtk_dialog_add_buttons") fn dialog_add_buttons(dialog: *Dialog, first_button_text: *c::char, ...) void;
export @symbol("gtk_dialog_get_content_area") fn dialog_get_content_area(dialog: *Dialog) *Widget;
export @symbol("gtk_dialog_get_header_bar") fn dialog_get_header_bar(dialog: *Dialog) *Widget;
export @symbol("gtk_dialog_get_response_for_widget") fn dialog_get_response_for_widget(dialog: *Dialog, widget: *Widget) int;
export @symbol("gtk_dialog_get_widget_for_response") fn dialog_get_widget_for_response(dialog: *Dialog, response_id: int) *Widget;
export @symbol("gtk_dialog_response") fn dialog_response(dialog: *Dialog, response_id: int) void;
export @symbol("gtk_dialog_set_default_response") fn dialog_set_default_response(dialog: *Dialog, response_id: int) void;
export @symbol("gtk_dialog_set_response_sensitive") fn dialog_set_response_sensitive(dialog: *Dialog, response_id: int, setting: glib::boolean) void;
export fn dialog_connect_close(
	instance: *Dialog,
	handler: *fn(instance: *Dialog, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"close\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn dialog_connect_response(
	instance: *Dialog,
	handler: *fn(instance: *Dialog, response_id: int, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"response\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export type DirectoryList = *opaque;
export @symbol("gtk_directory_list_new") fn directory_list_new(attributes: *c::char, file: *gio::File) *DirectoryList;
export @symbol("gtk_directory_list_get_attributes") fn directory_list_get_attributes(self: *DirectoryList) *c::char;
export @symbol("gtk_directory_list_get_error") fn directory_list_get_error(self: *DirectoryList) *glib::Error;
export @symbol("gtk_directory_list_get_file") fn directory_list_get_file(self: *DirectoryList) *gio::File;
export @symbol("gtk_directory_list_get_io_priority") fn directory_list_get_io_priority(self: *DirectoryList) int;
export @symbol("gtk_directory_list_get_monitored") fn directory_list_get_monitored(self: *DirectoryList) glib::boolean;
export @symbol("gtk_directory_list_is_loading") fn directory_list_is_loading(self: *DirectoryList) glib::boolean;
export @symbol("gtk_directory_list_set_attributes") fn directory_list_set_attributes(self: *DirectoryList, attributes: *c::char) void;
export @symbol("gtk_directory_list_set_file") fn directory_list_set_file(self: *DirectoryList, file: *gio::File) void;
export @symbol("gtk_directory_list_set_io_priority") fn directory_list_set_io_priority(self: *DirectoryList, io_priority: int) void;
export @symbol("gtk_directory_list_set_monitored") fn directory_list_set_monitored(self: *DirectoryList, monitored: glib::boolean) void;
export type DragIcon = *opaque;
export @symbol("gtk_drag_icon_get_child") fn drag_icon_get_child(self: *DragIcon) *Widget;
export @symbol("gtk_drag_icon_set_child") fn drag_icon_set_child(self: *DragIcon, child: *Widget) void;
export @symbol("gtk_drag_icon_create_widget_for_value") fn drag_icon_create_widget_for_value(value: *gobject::Value) *Widget;
export @symbol("gtk_drag_icon_get_for_drag") fn drag_icon_get_for_drag(drag: *gdk4::Drag) *Widget;
export @symbol("gtk_drag_icon_set_from_paintable") fn drag_icon_set_from_paintable(drag: *gdk4::Drag, paintable: *gdk4::Paintable, hot_x: int, hot_y: int) void;
export type DragSource = *opaque;
export @symbol("gtk_drag_source_new") fn drag_source_new() *DragSource;
export @symbol("gtk_drag_source_drag_cancel") fn drag_source_drag_cancel(source: *DragSource) void;
export @symbol("gtk_drag_source_get_actions") fn drag_source_get_actions(source: *DragSource) gdk4::DragAction;
export @symbol("gtk_drag_source_get_content") fn drag_source_get_content(source: *DragSource) *gdk4::ContentProvider;
export @symbol("gtk_drag_source_get_drag") fn drag_source_get_drag(source: *DragSource) *gdk4::Drag;
export @symbol("gtk_drag_source_set_actions") fn drag_source_set_actions(source: *DragSource, actions: gdk4::DragAction) void;
export @symbol("gtk_drag_source_set_content") fn drag_source_set_content(source: *DragSource, content: *gdk4::ContentProvider) void;
export @symbol("gtk_drag_source_set_icon") fn drag_source_set_icon(source: *DragSource, paintable: *gdk4::Paintable, hot_x: int, hot_y: int) void;
export fn drag_source_connect_drag_begin(
	instance: *DragSource,
	handler: *fn(instance: *DragSource, drag: gdk4::Drag, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"drag-begin\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn drag_source_connect_drag_cancel(
	instance: *DragSource,
	handler: *fn(instance: *DragSource, drag: gdk4::Drag, reason: gdk4::DragCancelReason, data: *opaque) glib::boolean,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"drag-cancel\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn drag_source_connect_drag_end(
	instance: *DragSource,
	handler: *fn(instance: *DragSource, drag: gdk4::Drag, delete_data: glib::boolean, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"drag-end\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn drag_source_connect_prepare(
	instance: *DragSource,
	handler: *fn(instance: *DragSource, x: f64, y: f64, data: *opaque) gdk4::ContentProvider,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"prepare\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export type DrawingArea = struct {
	widget: Widget,
};
export @symbol("gtk_drawing_area_new") fn drawing_area_new() *Widget;
export @symbol("gtk_drawing_area_get_content_height") fn drawing_area_get_content_height(self: *DrawingArea) int;
export @symbol("gtk_drawing_area_get_content_width") fn drawing_area_get_content_width(self: *DrawingArea) int;
export @symbol("gtk_drawing_area_set_content_height") fn drawing_area_set_content_height(self: *DrawingArea, height: int) void;
export @symbol("gtk_drawing_area_set_content_width") fn drawing_area_set_content_width(self: *DrawingArea, width: int) void;
export @symbol("gtk_drawing_area_set_draw_func") fn drawing_area_set_draw_func(self: *DrawingArea, draw_func: DrawingAreaDrawFunc, user_data: *opaque, destroy: glib::DestroyNotify) void;
export fn drawing_area_connect_resize(
	instance: *DrawingArea,
	handler: *fn(instance: *DrawingArea, width: int, height: int, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"resize\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export type DropControllerMotion = *opaque;
export @symbol("gtk_drop_controller_motion_new") fn drop_controller_motion_new() *EventController;
export @symbol("gtk_drop_controller_motion_contains_pointer") fn drop_controller_motion_contains_pointer(self: *DropControllerMotion) glib::boolean;
export @symbol("gtk_drop_controller_motion_get_drop") fn drop_controller_motion_get_drop(self: *DropControllerMotion) *gdk4::Drop;
export @symbol("gtk_drop_controller_motion_is_pointer") fn drop_controller_motion_is_pointer(self: *DropControllerMotion) glib::boolean;
export fn drop_controller_motion_connect_enter(
	instance: *DropControllerMotion,
	handler: *fn(instance: *DropControllerMotion, x: f64, y: f64, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"enter\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn drop_controller_motion_connect_leave(
	instance: *DropControllerMotion,
	handler: *fn(instance: *DropControllerMotion, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"leave\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn drop_controller_motion_connect_motion(
	instance: *DropControllerMotion,
	handler: *fn(instance: *DropControllerMotion, x: f64, y: f64, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"motion\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export type DropDown = *opaque;
export @symbol("gtk_drop_down_new") fn drop_down_new(model: *gio::ListModel, expression: *Expression) *Widget;
export @symbol("gtk_drop_down_new_from_strings") fn drop_down_new_from_strings(strings: **c::char) *Widget;
export @symbol("gtk_drop_down_get_enable_search") fn drop_down_get_enable_search(self: *DropDown) glib::boolean;
export @symbol("gtk_drop_down_get_expression") fn drop_down_get_expression(self: *DropDown) *Expression;
export @symbol("gtk_drop_down_get_factory") fn drop_down_get_factory(self: *DropDown) *ListItemFactory;
export @symbol("gtk_drop_down_get_header_factory") fn drop_down_get_header_factory(self: *DropDown) *ListItemFactory;
export @symbol("gtk_drop_down_get_list_factory") fn drop_down_get_list_factory(self: *DropDown) *ListItemFactory;
export @symbol("gtk_drop_down_get_model") fn drop_down_get_model(self: *DropDown) *gio::ListModel;
export @symbol("gtk_drop_down_get_search_match_mode") fn drop_down_get_search_match_mode(self: *DropDown) StringFilterMatchMode;
export @symbol("gtk_drop_down_get_selected") fn drop_down_get_selected(self: *DropDown) uint;
export @symbol("gtk_drop_down_get_selected_item") fn drop_down_get_selected_item(self: *DropDown) *opaque;
export @symbol("gtk_drop_down_get_show_arrow") fn drop_down_get_show_arrow(self: *DropDown) glib::boolean;
export @symbol("gtk_drop_down_set_enable_search") fn drop_down_set_enable_search(self: *DropDown, enable_search: glib::boolean) void;
export @symbol("gtk_drop_down_set_expression") fn drop_down_set_expression(self: *DropDown, expression: *Expression) void;
export @symbol("gtk_drop_down_set_factory") fn drop_down_set_factory(self: *DropDown, factory: *ListItemFactory) void;
export @symbol("gtk_drop_down_set_header_factory") fn drop_down_set_header_factory(self: *DropDown, factory: *ListItemFactory) void;
export @symbol("gtk_drop_down_set_list_factory") fn drop_down_set_list_factory(self: *DropDown, factory: *ListItemFactory) void;
export @symbol("gtk_drop_down_set_model") fn drop_down_set_model(self: *DropDown, model: *gio::ListModel) void;
export @symbol("gtk_drop_down_set_search_match_mode") fn drop_down_set_search_match_mode(self: *DropDown, search_match_mode: StringFilterMatchMode) void;
export @symbol("gtk_drop_down_set_selected") fn drop_down_set_selected(self: *DropDown, position: uint) void;
export @symbol("gtk_drop_down_set_show_arrow") fn drop_down_set_show_arrow(self: *DropDown, show_arrow: glib::boolean) void;
export fn drop_down_connect_activate(
	instance: *DropDown,
	handler: *fn(instance: *DropDown, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"activate\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export type DropTarget = *opaque;
export @symbol("gtk_drop_target_new") fn drop_target_new(type_: glib::Type, actions: gdk4::DragAction) *DropTarget;
export @symbol("gtk_drop_target_get_actions") fn drop_target_get_actions(self: *DropTarget) gdk4::DragAction;
export @symbol("gtk_drop_target_get_current_drop") fn drop_target_get_current_drop(self: *DropTarget) *gdk4::Drop;
export @symbol("gtk_drop_target_get_drop") fn drop_target_get_drop(self: *DropTarget) *gdk4::Drop;
export @symbol("gtk_drop_target_get_formats") fn drop_target_get_formats(self: *DropTarget) *gdk4::ContentFormats;
export @symbol("gtk_drop_target_get_gtypes") fn drop_target_get_gtypes(self: *DropTarget, n_types: *size) *glib::Type;
export @symbol("gtk_drop_target_get_preload") fn drop_target_get_preload(self: *DropTarget) glib::boolean;
export @symbol("gtk_drop_target_get_value") fn drop_target_get_value(self: *DropTarget) *gobject::Value;
export @symbol("gtk_drop_target_reject") fn drop_target_reject(self: *DropTarget) void;
export @symbol("gtk_drop_target_set_actions") fn drop_target_set_actions(self: *DropTarget, actions: gdk4::DragAction) void;
export @symbol("gtk_drop_target_set_gtypes") fn drop_target_set_gtypes(self: *DropTarget, types: *glib::Type, n_types: size) void;
export @symbol("gtk_drop_target_set_preload") fn drop_target_set_preload(self: *DropTarget, preload: glib::boolean) void;
export fn drop_target_connect_accept(
	instance: *DropTarget,
	handler: *fn(instance: *DropTarget, drop: gdk4::Drop, data: *opaque) glib::boolean,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"accept\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn drop_target_connect_drop(
	instance: *DropTarget,
	handler: *fn(instance: *DropTarget, value: gobject::Value, x: f64, y: f64, data: *opaque) glib::boolean,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"drop\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn drop_target_connect_enter(
	instance: *DropTarget,
	handler: *fn(instance: *DropTarget, x: f64, y: f64, data: *opaque) gdk4::DragAction,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"enter\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn drop_target_connect_leave(
	instance: *DropTarget,
	handler: *fn(instance: *DropTarget, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"leave\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn drop_target_connect_motion(
	instance: *DropTarget,
	handler: *fn(instance: *DropTarget, x: f64, y: f64, data: *opaque) gdk4::DragAction,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"motion\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export type DropTargetAsync = *opaque;
export @symbol("gtk_drop_target_async_new") fn drop_target_async_new(formats: *gdk4::ContentFormats, actions: gdk4::DragAction) *DropTargetAsync;
export @symbol("gtk_drop_target_async_get_actions") fn drop_target_async_get_actions(self: *DropTargetAsync) gdk4::DragAction;
export @symbol("gtk_drop_target_async_get_formats") fn drop_target_async_get_formats(self: *DropTargetAsync) *gdk4::ContentFormats;
export @symbol("gtk_drop_target_async_reject_drop") fn drop_target_async_reject_drop(self: *DropTargetAsync, drop: *gdk4::Drop) void;
export @symbol("gtk_drop_target_async_set_actions") fn drop_target_async_set_actions(self: *DropTargetAsync, actions: gdk4::DragAction) void;
export @symbol("gtk_drop_target_async_set_formats") fn drop_target_async_set_formats(self: *DropTargetAsync, formats: *gdk4::ContentFormats) void;
export fn drop_target_async_connect_accept(
	instance: *DropTargetAsync,
	handler: *fn(instance: *DropTargetAsync, drop: gdk4::Drop, data: *opaque) glib::boolean,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"accept\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn drop_target_async_connect_drag_enter(
	instance: *DropTargetAsync,
	handler: *fn(instance: *DropTargetAsync, drop: gdk4::Drop, x: f64, y: f64, data: *opaque) gdk4::DragAction,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"drag-enter\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn drop_target_async_connect_drag_leave(
	instance: *DropTargetAsync,
	handler: *fn(instance: *DropTargetAsync, drop: gdk4::Drop, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"drag-leave\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn drop_target_async_connect_drag_motion(
	instance: *DropTargetAsync,
	handler: *fn(instance: *DropTargetAsync, drop: gdk4::Drop, x: f64, y: f64, data: *opaque) gdk4::DragAction,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"drag-motion\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn drop_target_async_connect_drop(
	instance: *DropTargetAsync,
	handler: *fn(instance: *DropTargetAsync, drop: gdk4::Drop, x: f64, y: f64, data: *opaque) glib::boolean,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"drop\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export type EditableLabel = *opaque;
export @symbol("gtk_editable_label_new") fn editable_label_new(str_: *c::char) *Widget;
export @symbol("gtk_editable_label_get_editing") fn editable_label_get_editing(self: *EditableLabel) glib::boolean;
export @symbol("gtk_editable_label_start_editing") fn editable_label_start_editing(self: *EditableLabel) void;
export @symbol("gtk_editable_label_stop_editing") fn editable_label_stop_editing(self: *EditableLabel, commit: glib::boolean) void;
export type EmojiChooser = *opaque;
export @symbol("gtk_emoji_chooser_new") fn emoji_chooser_new() *Widget;
export fn emoji_chooser_connect_emoji_picked(
	instance: *EmojiChooser,
	handler: *fn(instance: *EmojiChooser, text: *c::char, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"emoji-picked\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export type Entry = struct {
	parent_instance: Widget,
};
export @symbol("gtk_entry_new") fn entry_new() *Widget;
export @symbol("gtk_entry_new_with_buffer") fn entry_new_with_buffer(buffer: *EntryBuffer) *Widget;
export @symbol("gtk_entry_get_activates_default") fn entry_get_activates_default(entry: *Entry) glib::boolean;
export @symbol("gtk_entry_get_alignment") fn entry_get_alignment(entry: *Entry) f32;
export @symbol("gtk_entry_get_attributes") fn entry_get_attributes(entry: *Entry) *pango::AttrList;
export @symbol("gtk_entry_get_buffer") fn entry_get_buffer(entry: *Entry) *EntryBuffer;
export @symbol("gtk_entry_get_completion") fn entry_get_completion(entry: *Entry) *EntryCompletion;
export @symbol("gtk_entry_get_current_icon_drag_source") fn entry_get_current_icon_drag_source(entry: *Entry) int;
export @symbol("gtk_entry_get_extra_menu") fn entry_get_extra_menu(entry: *Entry) *gio::MenuModel;
export @symbol("gtk_entry_get_has_frame") fn entry_get_has_frame(entry: *Entry) glib::boolean;
export @symbol("gtk_entry_get_icon_activatable") fn entry_get_icon_activatable(entry: *Entry, icon_pos: EntryIconPosition) glib::boolean;
export @symbol("gtk_entry_get_icon_area") fn entry_get_icon_area(entry: *Entry, icon_pos: EntryIconPosition, icon_area: *gdk4::Rectangle) void;
export @symbol("gtk_entry_get_icon_at_pos") fn entry_get_icon_at_pos(entry: *Entry, x: int, y: int) int;
export @symbol("gtk_entry_get_icon_gicon") fn entry_get_icon_gicon(entry: *Entry, icon_pos: EntryIconPosition) *gio::Icon;
export @symbol("gtk_entry_get_icon_name") fn entry_get_icon_name(entry: *Entry, icon_pos: EntryIconPosition) *c::char;
export @symbol("gtk_entry_get_icon_paintable") fn entry_get_icon_paintable(entry: *Entry, icon_pos: EntryIconPosition) *gdk4::Paintable;
export @symbol("gtk_entry_get_icon_sensitive") fn entry_get_icon_sensitive(entry: *Entry, icon_pos: EntryIconPosition) glib::boolean;
export @symbol("gtk_entry_get_icon_storage_type") fn entry_get_icon_storage_type(entry: *Entry, icon_pos: EntryIconPosition) ImageType;
export @symbol("gtk_entry_get_icon_tooltip_markup") fn entry_get_icon_tooltip_markup(entry: *Entry, icon_pos: EntryIconPosition) *c::char;
export @symbol("gtk_entry_get_icon_tooltip_text") fn entry_get_icon_tooltip_text(entry: *Entry, icon_pos: EntryIconPosition) *c::char;
export @symbol("gtk_entry_get_input_hints") fn entry_get_input_hints(entry: *Entry) InputHints;
export @symbol("gtk_entry_get_input_purpose") fn entry_get_input_purpose(entry: *Entry) InputPurpose;
export @symbol("gtk_entry_get_invisible_char") fn entry_get_invisible_char(entry: *Entry) rune;
export @symbol("gtk_entry_get_max_length") fn entry_get_max_length(entry: *Entry) int;
export @symbol("gtk_entry_get_overwrite_mode") fn entry_get_overwrite_mode(entry: *Entry) glib::boolean;
export @symbol("gtk_entry_get_placeholder_text") fn entry_get_placeholder_text(entry: *Entry) *c::char;
export @symbol("gtk_entry_get_progress_fraction") fn entry_get_progress_fraction(entry: *Entry) f64;
export @symbol("gtk_entry_get_progress_pulse_step") fn entry_get_progress_pulse_step(entry: *Entry) f64;
export @symbol("gtk_entry_get_tabs") fn entry_get_tabs(entry: *Entry) *pango::TabArray;
export @symbol("gtk_entry_get_text_length") fn entry_get_text_length(entry: *Entry) u16;
export @symbol("gtk_entry_get_visibility") fn entry_get_visibility(entry: *Entry) glib::boolean;
export @symbol("gtk_entry_grab_focus_without_selecting") fn entry_grab_focus_without_selecting(entry: *Entry) glib::boolean;
export @symbol("gtk_entry_progress_pulse") fn entry_progress_pulse(entry: *Entry) void;
export @symbol("gtk_entry_reset_im_context") fn entry_reset_im_context(entry: *Entry) void;
export @symbol("gtk_entry_set_activates_default") fn entry_set_activates_default(entry: *Entry, setting: glib::boolean) void;
export @symbol("gtk_entry_set_alignment") fn entry_set_alignment(entry: *Entry, xalign: f32) void;
export @symbol("gtk_entry_set_attributes") fn entry_set_attributes(entry: *Entry, attrs: *pango::AttrList) void;
export @symbol("gtk_entry_set_buffer") fn entry_set_buffer(entry: *Entry, buffer: *EntryBuffer) void;
export @symbol("gtk_entry_set_completion") fn entry_set_completion(entry: *Entry, completion: *EntryCompletion) void;
export @symbol("gtk_entry_set_extra_menu") fn entry_set_extra_menu(entry: *Entry, model: *gio::MenuModel) void;
export @symbol("gtk_entry_set_has_frame") fn entry_set_has_frame(entry: *Entry, setting: glib::boolean) void;
export @symbol("gtk_entry_set_icon_activatable") fn entry_set_icon_activatable(entry: *Entry, icon_pos: EntryIconPosition, activatable: glib::boolean) void;
export @symbol("gtk_entry_set_icon_drag_source") fn entry_set_icon_drag_source(entry: *Entry, icon_pos: EntryIconPosition, provider: *gdk4::ContentProvider, actions: gdk4::DragAction) void;
export @symbol("gtk_entry_set_icon_from_gicon") fn entry_set_icon_from_gicon(entry: *Entry, icon_pos: EntryIconPosition, icon: *gio::Icon) void;
export @symbol("gtk_entry_set_icon_from_icon_name") fn entry_set_icon_from_icon_name(entry: *Entry, icon_pos: EntryIconPosition, icon_name: *c::char) void;
export @symbol("gtk_entry_set_icon_from_paintable") fn entry_set_icon_from_paintable(entry: *Entry, icon_pos: EntryIconPosition, paintable: *gdk4::Paintable) void;
export @symbol("gtk_entry_set_icon_sensitive") fn entry_set_icon_sensitive(entry: *Entry, icon_pos: EntryIconPosition, sensitive: glib::boolean) void;
export @symbol("gtk_entry_set_icon_tooltip_markup") fn entry_set_icon_tooltip_markup(entry: *Entry, icon_pos: EntryIconPosition, tooltip: *c::char) void;
export @symbol("gtk_entry_set_icon_tooltip_text") fn entry_set_icon_tooltip_text(entry: *Entry, icon_pos: EntryIconPosition, tooltip: *c::char) void;
export @symbol("gtk_entry_set_input_hints") fn entry_set_input_hints(entry: *Entry, hints: InputHints) void;
export @symbol("gtk_entry_set_input_purpose") fn entry_set_input_purpose(entry: *Entry, purpose: InputPurpose) void;
export @symbol("gtk_entry_set_invisible_char") fn entry_set_invisible_char(entry: *Entry, ch: rune) void;
export @symbol("gtk_entry_set_max_length") fn entry_set_max_length(entry: *Entry, max: int) void;
export @symbol("gtk_entry_set_overwrite_mode") fn entry_set_overwrite_mode(entry: *Entry, overwrite: glib::boolean) void;
export @symbol("gtk_entry_set_placeholder_text") fn entry_set_placeholder_text(entry: *Entry, text: *c::char) void;
export @symbol("gtk_entry_set_progress_fraction") fn entry_set_progress_fraction(entry: *Entry, fraction: f64) void;
export @symbol("gtk_entry_set_progress_pulse_step") fn entry_set_progress_pulse_step(entry: *Entry, fraction: f64) void;
export @symbol("gtk_entry_set_tabs") fn entry_set_tabs(entry: *Entry, tabs: *pango::TabArray) void;
export @symbol("gtk_entry_set_visibility") fn entry_set_visibility(entry: *Entry, visible: glib::boolean) void;
export @symbol("gtk_entry_unset_invisible_char") fn entry_unset_invisible_char(entry: *Entry) void;
export fn entry_connect_activate(
	instance: *Entry,
	handler: *fn(instance: *Entry, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"activate\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn entry_connect_icon_press(
	instance: *Entry,
	handler: *fn(instance: *Entry, icon_pos: EntryIconPosition, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"icon-press\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn entry_connect_icon_release(
	instance: *Entry,
	handler: *fn(instance: *Entry, icon_pos: EntryIconPosition, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"icon-release\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export type EntryBuffer = struct {
	parent_instance: gobject::Object,
};
export @symbol("gtk_entry_buffer_new") fn entry_buffer_new(initial_chars: *c::char, n_initial_chars: int) *EntryBuffer;
export @symbol("gtk_entry_buffer_delete_text") fn entry_buffer_delete_text(buffer: *EntryBuffer, position: uint, n_chars: int) uint;
export @symbol("gtk_entry_buffer_emit_deleted_text") fn entry_buffer_emit_deleted_text(buffer: *EntryBuffer, position: uint, n_chars: uint) void;
export @symbol("gtk_entry_buffer_emit_inserted_text") fn entry_buffer_emit_inserted_text(buffer: *EntryBuffer, position: uint, chars: *c::char, n_chars: uint) void;
export @symbol("gtk_entry_buffer_get_bytes") fn entry_buffer_get_bytes(buffer: *EntryBuffer) size;
export @symbol("gtk_entry_buffer_get_length") fn entry_buffer_get_length(buffer: *EntryBuffer) uint;
export @symbol("gtk_entry_buffer_get_max_length") fn entry_buffer_get_max_length(buffer: *EntryBuffer) int;
export @symbol("gtk_entry_buffer_get_text") fn entry_buffer_get_text(buffer: *EntryBuffer) *c::char;
export @symbol("gtk_entry_buffer_insert_text") fn entry_buffer_insert_text(buffer: *EntryBuffer, position: uint, chars: *c::char, n_chars: int) uint;
export @symbol("gtk_entry_buffer_set_max_length") fn entry_buffer_set_max_length(buffer: *EntryBuffer, max_length: int) void;
export @symbol("gtk_entry_buffer_set_text") fn entry_buffer_set_text(buffer: *EntryBuffer, chars: *c::char, n_chars: int) void;
export fn entry_buffer_connect_deleted_text(
	instance: *EntryBuffer,
	handler: *fn(instance: *EntryBuffer, position: uint, n_chars: uint, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"deleted-text\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn entry_buffer_connect_inserted_text(
	instance: *EntryBuffer,
	handler: *fn(instance: *EntryBuffer, position: uint, chars: *c::char, n_chars: uint, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"inserted-text\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export type EntryCompletion = *opaque;
export @symbol("gtk_entry_completion_new") fn entry_completion_new() *EntryCompletion;
export @symbol("gtk_entry_completion_new_with_area") fn entry_completion_new_with_area(area: *CellArea) *EntryCompletion;
export @symbol("gtk_entry_completion_complete") fn entry_completion_complete(completion: *EntryCompletion) void;
export @symbol("gtk_entry_completion_compute_prefix") fn entry_completion_compute_prefix(completion: *EntryCompletion, key: *c::char) *c::char;
export @symbol("gtk_entry_completion_get_completion_prefix") fn entry_completion_get_completion_prefix(completion: *EntryCompletion) *c::char;
export @symbol("gtk_entry_completion_get_entry") fn entry_completion_get_entry(completion: *EntryCompletion) *Widget;
export @symbol("gtk_entry_completion_get_inline_completion") fn entry_completion_get_inline_completion(completion: *EntryCompletion) glib::boolean;
export @symbol("gtk_entry_completion_get_inline_selection") fn entry_completion_get_inline_selection(completion: *EntryCompletion) glib::boolean;
export @symbol("gtk_entry_completion_get_minimum_key_length") fn entry_completion_get_minimum_key_length(completion: *EntryCompletion) int;
export @symbol("gtk_entry_completion_get_model") fn entry_completion_get_model(completion: *EntryCompletion) *TreeModel;
export @symbol("gtk_entry_completion_get_popup_completion") fn entry_completion_get_popup_completion(completion: *EntryCompletion) glib::boolean;
export @symbol("gtk_entry_completion_get_popup_set_width") fn entry_completion_get_popup_set_width(completion: *EntryCompletion) glib::boolean;
export @symbol("gtk_entry_completion_get_popup_single_match") fn entry_completion_get_popup_single_match(completion: *EntryCompletion) glib::boolean;
export @symbol("gtk_entry_completion_get_text_column") fn entry_completion_get_text_column(completion: *EntryCompletion) int;
export @symbol("gtk_entry_completion_insert_prefix") fn entry_completion_insert_prefix(completion: *EntryCompletion) void;
export @symbol("gtk_entry_completion_set_inline_completion") fn entry_completion_set_inline_completion(completion: *EntryCompletion, inline_completion: glib::boolean) void;
export @symbol("gtk_entry_completion_set_inline_selection") fn entry_completion_set_inline_selection(completion: *EntryCompletion, inline_selection: glib::boolean) void;
export @symbol("gtk_entry_completion_set_match_func") fn entry_completion_set_match_func(completion: *EntryCompletion, func: EntryCompletionMatchFunc, func_data: *opaque, func_notify: glib::DestroyNotify) void;
export @symbol("gtk_entry_completion_set_minimum_key_length") fn entry_completion_set_minimum_key_length(completion: *EntryCompletion, length: int) void;
export @symbol("gtk_entry_completion_set_model") fn entry_completion_set_model(completion: *EntryCompletion, model: *TreeModel) void;
export @symbol("gtk_entry_completion_set_popup_completion") fn entry_completion_set_popup_completion(completion: *EntryCompletion, popup_completion: glib::boolean) void;
export @symbol("gtk_entry_completion_set_popup_set_width") fn entry_completion_set_popup_set_width(completion: *EntryCompletion, popup_set_width: glib::boolean) void;
export @symbol("gtk_entry_completion_set_popup_single_match") fn entry_completion_set_popup_single_match(completion: *EntryCompletion, popup_single_match: glib::boolean) void;
export @symbol("gtk_entry_completion_set_text_column") fn entry_completion_set_text_column(completion: *EntryCompletion, column: int) void;
export fn entry_completion_connect_cursor_on_match(
	instance: *EntryCompletion,
	handler: *fn(instance: *EntryCompletion, model: *TreeModel, iter: *TreeIter, data: *opaque) glib::boolean,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"cursor-on-match\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn entry_completion_connect_insert_prefix(
	instance: *EntryCompletion,
	handler: *fn(instance: *EntryCompletion, prefix: *c::char, data: *opaque) glib::boolean,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"insert-prefix\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn entry_completion_connect_match_selected(
	instance: *EntryCompletion,
	handler: *fn(instance: *EntryCompletion, model: *TreeModel, iter: *TreeIter, data: *opaque) glib::boolean,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"match-selected\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn entry_completion_connect_no_matches(
	instance: *EntryCompletion,
	handler: *fn(instance: *EntryCompletion, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"no-matches\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export type EventController = *opaque;
export @symbol("gtk_event_controller_get_current_event") fn event_controller_get_current_event(controller: *EventController) *gdk4::Event;
export @symbol("gtk_event_controller_get_current_event_device") fn event_controller_get_current_event_device(controller: *EventController) *gdk4::Device;
export @symbol("gtk_event_controller_get_current_event_state") fn event_controller_get_current_event_state(controller: *EventController) gdk4::ModifierType;
export @symbol("gtk_event_controller_get_current_event_time") fn event_controller_get_current_event_time(controller: *EventController) u32;
export @symbol("gtk_event_controller_get_name") fn event_controller_get_name(controller: *EventController) *c::char;
export @symbol("gtk_event_controller_get_propagation_limit") fn event_controller_get_propagation_limit(controller: *EventController) PropagationLimit;
export @symbol("gtk_event_controller_get_propagation_phase") fn event_controller_get_propagation_phase(controller: *EventController) PropagationPhase;
export @symbol("gtk_event_controller_get_widget") fn event_controller_get_widget(controller: *EventController) *Widget;
export @symbol("gtk_event_controller_reset") fn event_controller_reset(controller: *EventController) void;
export @symbol("gtk_event_controller_set_name") fn event_controller_set_name(controller: *EventController, name: *c::char) void;
export @symbol("gtk_event_controller_set_propagation_limit") fn event_controller_set_propagation_limit(controller: *EventController, limit: PropagationLimit) void;
export @symbol("gtk_event_controller_set_propagation_phase") fn event_controller_set_propagation_phase(controller: *EventController, phase: PropagationPhase) void;
export @symbol("gtk_event_controller_set_static_name") fn event_controller_set_static_name(controller: *EventController, name: *c::char) void;
export type EventControllerFocus = *opaque;
export @symbol("gtk_event_controller_focus_new") fn event_controller_focus_new() *EventController;
export @symbol("gtk_event_controller_focus_contains_focus") fn event_controller_focus_contains_focus(self: *EventControllerFocus) glib::boolean;
export @symbol("gtk_event_controller_focus_is_focus") fn event_controller_focus_is_focus(self: *EventControllerFocus) glib::boolean;
export fn event_controller_focus_connect_enter(
	instance: *EventControllerFocus,
	handler: *fn(instance: *EventControllerFocus, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"enter\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn event_controller_focus_connect_leave(
	instance: *EventControllerFocus,
	handler: *fn(instance: *EventControllerFocus, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"leave\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export type EventControllerKey = *opaque;
export @symbol("gtk_event_controller_key_new") fn event_controller_key_new() *EventController;
export @symbol("gtk_event_controller_key_forward") fn event_controller_key_forward(controller: *EventControllerKey, widget: *Widget) glib::boolean;
export @symbol("gtk_event_controller_key_get_group") fn event_controller_key_get_group(controller: *EventControllerKey) uint;
export @symbol("gtk_event_controller_key_get_im_context") fn event_controller_key_get_im_context(controller: *EventControllerKey) *IMContext;
export @symbol("gtk_event_controller_key_set_im_context") fn event_controller_key_set_im_context(controller: *EventControllerKey, im_context: *IMContext) void;
export fn event_controller_key_connect_im_update(
	instance: *EventControllerKey,
	handler: *fn(instance: *EventControllerKey, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"im-update\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn event_controller_key_connect_key_pressed(
	instance: *EventControllerKey,
	handler: *fn(instance: *EventControllerKey, keyval: uint, keycode: uint, state: gdk4::ModifierType, data: *opaque) glib::boolean,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"key-pressed\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn event_controller_key_connect_key_released(
	instance: *EventControllerKey,
	handler: *fn(instance: *EventControllerKey, keyval: uint, keycode: uint, state: gdk4::ModifierType, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"key-released\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn event_controller_key_connect_modifiers(
	instance: *EventControllerKey,
	handler: *fn(instance: *EventControllerKey, state: gdk4::ModifierType, data: *opaque) glib::boolean,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"modifiers\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export type EventControllerLegacy = *opaque;
export @symbol("gtk_event_controller_legacy_new") fn event_controller_legacy_new() *EventController;
export fn event_controller_legacy_connect_event(
	instance: *EventControllerLegacy,
	handler: *fn(instance: *EventControllerLegacy, event: gdk4::Event, data: *opaque) glib::boolean,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"event\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export type EventControllerMotion = *opaque;
export @symbol("gtk_event_controller_motion_new") fn event_controller_motion_new() *EventController;
export @symbol("gtk_event_controller_motion_contains_pointer") fn event_controller_motion_contains_pointer(self: *EventControllerMotion) glib::boolean;
export @symbol("gtk_event_controller_motion_is_pointer") fn event_controller_motion_is_pointer(self: *EventControllerMotion) glib::boolean;
export fn event_controller_motion_connect_enter(
	instance: *EventControllerMotion,
	handler: *fn(instance: *EventControllerMotion, x: f64, y: f64, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"enter\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn event_controller_motion_connect_leave(
	instance: *EventControllerMotion,
	handler: *fn(instance: *EventControllerMotion, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"leave\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn event_controller_motion_connect_motion(
	instance: *EventControllerMotion,
	handler: *fn(instance: *EventControllerMotion, x: f64, y: f64, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"motion\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export type EventControllerScroll = *opaque;
export @symbol("gtk_event_controller_scroll_new") fn event_controller_scroll_new(flags: EventControllerScrollFlags) *EventController;
export @symbol("gtk_event_controller_scroll_get_flags") fn event_controller_scroll_get_flags(scroll: *EventControllerScroll) EventControllerScrollFlags;
export @symbol("gtk_event_controller_scroll_get_unit") fn event_controller_scroll_get_unit(scroll: *EventControllerScroll) gdk4::ScrollUnit;
export @symbol("gtk_event_controller_scroll_set_flags") fn event_controller_scroll_set_flags(scroll: *EventControllerScroll, flags: EventControllerScrollFlags) void;
export fn event_controller_scroll_connect_decelerate(
	instance: *EventControllerScroll,
	handler: *fn(instance: *EventControllerScroll, vel_x: f64, vel_y: f64, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"decelerate\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn event_controller_scroll_connect_scroll(
	instance: *EventControllerScroll,
	handler: *fn(instance: *EventControllerScroll, dx: f64, dy: f64, data: *opaque) glib::boolean,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"scroll\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn event_controller_scroll_connect_scroll_begin(
	instance: *EventControllerScroll,
	handler: *fn(instance: *EventControllerScroll, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"scroll-begin\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn event_controller_scroll_connect_scroll_end(
	instance: *EventControllerScroll,
	handler: *fn(instance: *EventControllerScroll, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"scroll-end\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export type EveryFilter = *opaque;
export @symbol("gtk_every_filter_new") fn every_filter_new() *EveryFilter;
export type Expander = *opaque;
export @symbol("gtk_expander_new") fn expander_new(label: *c::char) *Widget;
export @symbol("gtk_expander_new_with_mnemonic") fn expander_new_with_mnemonic(label: *c::char) *Widget;
export @symbol("gtk_expander_get_child") fn expander_get_child(expander: *Expander) *Widget;
export @symbol("gtk_expander_get_expanded") fn expander_get_expanded(expander: *Expander) glib::boolean;
export @symbol("gtk_expander_get_label") fn expander_get_label(expander: *Expander) *c::char;
export @symbol("gtk_expander_get_label_widget") fn expander_get_label_widget(expander: *Expander) *Widget;
export @symbol("gtk_expander_get_resize_toplevel") fn expander_get_resize_toplevel(expander: *Expander) glib::boolean;
export @symbol("gtk_expander_get_use_markup") fn expander_get_use_markup(expander: *Expander) glib::boolean;
export @symbol("gtk_expander_get_use_underline") fn expander_get_use_underline(expander: *Expander) glib::boolean;
export @symbol("gtk_expander_set_child") fn expander_set_child(expander: *Expander, child: *Widget) void;
export @symbol("gtk_expander_set_expanded") fn expander_set_expanded(expander: *Expander, expanded: glib::boolean) void;
export @symbol("gtk_expander_set_label") fn expander_set_label(expander: *Expander, label: *c::char) void;
export @symbol("gtk_expander_set_label_widget") fn expander_set_label_widget(expander: *Expander, label_widget: *Widget) void;
export @symbol("gtk_expander_set_resize_toplevel") fn expander_set_resize_toplevel(expander: *Expander, resize_toplevel: glib::boolean) void;
export @symbol("gtk_expander_set_use_markup") fn expander_set_use_markup(expander: *Expander, use_markup: glib::boolean) void;
export @symbol("gtk_expander_set_use_underline") fn expander_set_use_underline(expander: *Expander, use_underline: glib::boolean) void;
export fn expander_connect_activate(
	instance: *Expander,
	handler: *fn(instance: *Expander, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"activate\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export type Expression = *opaque;
export @symbol("gtk_expression_bind") fn expression_bind(self: *Expression, target: *opaque, property: *c::char, this_: *opaque) *ExpressionWatch;
export @symbol("gtk_expression_evaluate") fn expression_evaluate(self: *Expression, this_: *opaque, value: *gobject::Value) glib::boolean;
export @symbol("gtk_expression_get_value_type") fn expression_get_value_type(self: *Expression) glib::Type;
export @symbol("gtk_expression_is_static") fn expression_is_static(self: *Expression) glib::boolean;
export @symbol("gtk_expression_ref") fn expression_ref(self: *Expression) *Expression;
export @symbol("gtk_expression_unref") fn expression_unref(self: *Expression) void;
export @symbol("gtk_expression_watch") fn expression_watch(self: *Expression, this_: *opaque, notify: ExpressionNotify, user_data: *opaque, user_destroy: glib::DestroyNotify) *ExpressionWatch;
export type FileChooserDialog = *opaque;
export @symbol("gtk_file_chooser_dialog_new") fn file_chooser_dialog_new(title: *c::char, parent: *Window, action: FileChooserAction, first_button_text: *c::char, ...) *Widget;
export type FileChooserNative = *opaque;
export @symbol("gtk_file_chooser_native_new") fn file_chooser_native_new(title: *c::char, parent: *Window, action: FileChooserAction, accept_label: *c::char, cancel_label: *c::char) *FileChooserNative;
export @symbol("gtk_file_chooser_native_get_accept_label") fn file_chooser_native_get_accept_label(self: *FileChooserNative) *c::char;
export @symbol("gtk_file_chooser_native_get_cancel_label") fn file_chooser_native_get_cancel_label(self: *FileChooserNative) *c::char;
export @symbol("gtk_file_chooser_native_set_accept_label") fn file_chooser_native_set_accept_label(self: *FileChooserNative, accept_label: *c::char) void;
export @symbol("gtk_file_chooser_native_set_cancel_label") fn file_chooser_native_set_cancel_label(self: *FileChooserNative, cancel_label: *c::char) void;
export type FileChooserWidget = *opaque;
export @symbol("gtk_file_chooser_widget_new") fn file_chooser_widget_new(action: FileChooserAction) *Widget;
export fn file_chooser_widget_connect_desktop_folder(
	instance: *FileChooserWidget,
	handler: *fn(instance: *FileChooserWidget, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"desktop-folder\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn file_chooser_widget_connect_down_folder(
	instance: *FileChooserWidget,
	handler: *fn(instance: *FileChooserWidget, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"down-folder\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn file_chooser_widget_connect_home_folder(
	instance: *FileChooserWidget,
	handler: *fn(instance: *FileChooserWidget, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"home-folder\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn file_chooser_widget_connect_location_popup(
	instance: *FileChooserWidget,
	handler: *fn(instance: *FileChooserWidget, path: *c::char, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"location-popup\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn file_chooser_widget_connect_location_popup_on_paste(
	instance: *FileChooserWidget,
	handler: *fn(instance: *FileChooserWidget, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"location-popup-on-paste\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn file_chooser_widget_connect_location_toggle_popup(
	instance: *FileChooserWidget,
	handler: *fn(instance: *FileChooserWidget, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"location-toggle-popup\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn file_chooser_widget_connect_places_shortcut(
	instance: *FileChooserWidget,
	handler: *fn(instance: *FileChooserWidget, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"places-shortcut\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn file_chooser_widget_connect_quick_bookmark(
	instance: *FileChooserWidget,
	handler: *fn(instance: *FileChooserWidget, bookmark_index: int, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"quick-bookmark\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn file_chooser_widget_connect_recent_shortcut(
	instance: *FileChooserWidget,
	handler: *fn(instance: *FileChooserWidget, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"recent-shortcut\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn file_chooser_widget_connect_search_shortcut(
	instance: *FileChooserWidget,
	handler: *fn(instance: *FileChooserWidget, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"search-shortcut\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn file_chooser_widget_connect_show_hidden(
	instance: *FileChooserWidget,
	handler: *fn(instance: *FileChooserWidget, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"show-hidden\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn file_chooser_widget_connect_up_folder(
	instance: *FileChooserWidget,
	handler: *fn(instance: *FileChooserWidget, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"up-folder\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export type FileDialog = *opaque;
export @symbol("gtk_file_dialog_new") fn file_dialog_new() *FileDialog;
export @symbol("gtk_file_dialog_get_accept_label") fn file_dialog_get_accept_label(self: *FileDialog) *c::char;
export @symbol("gtk_file_dialog_get_default_filter") fn file_dialog_get_default_filter(self: *FileDialog) *FileFilter;
export @symbol("gtk_file_dialog_get_filters") fn file_dialog_get_filters(self: *FileDialog) *gio::ListModel;
export @symbol("gtk_file_dialog_get_initial_file") fn file_dialog_get_initial_file(self: *FileDialog) *gio::File;
export @symbol("gtk_file_dialog_get_initial_folder") fn file_dialog_get_initial_folder(self: *FileDialog) *gio::File;
export @symbol("gtk_file_dialog_get_initial_name") fn file_dialog_get_initial_name(self: *FileDialog) *c::char;
export @symbol("gtk_file_dialog_get_modal") fn file_dialog_get_modal(self: *FileDialog) glib::boolean;
export @symbol("gtk_file_dialog_get_title") fn file_dialog_get_title(self: *FileDialog) *c::char;
export @symbol("gtk_file_dialog_open") fn file_dialog_open(self: *FileDialog, parent: *Window, cancellable: *gio::Cancellable, callback: gio::AsyncReadyCallback, user_data: *opaque) void;
export @symbol("gtk_file_dialog_open_finish") fn file_dialog_open_finish(self: *FileDialog, result: *gio::AsyncResult, error: nullable **glib::Error) *gio::File;
export @symbol("gtk_file_dialog_open_multiple") fn file_dialog_open_multiple(self: *FileDialog, parent: *Window, cancellable: *gio::Cancellable, callback: gio::AsyncReadyCallback, user_data: *opaque) void;
export @symbol("gtk_file_dialog_open_multiple_finish") fn file_dialog_open_multiple_finish(self: *FileDialog, result: *gio::AsyncResult, error: nullable **glib::Error) *gio::ListModel;
export @symbol("gtk_file_dialog_save") fn file_dialog_save(self: *FileDialog, parent: *Window, cancellable: *gio::Cancellable, callback: gio::AsyncReadyCallback, user_data: *opaque) void;
export @symbol("gtk_file_dialog_save_finish") fn file_dialog_save_finish(self: *FileDialog, result: *gio::AsyncResult, error: nullable **glib::Error) *gio::File;
export @symbol("gtk_file_dialog_select_folder") fn file_dialog_select_folder(self: *FileDialog, parent: *Window, cancellable: *gio::Cancellable, callback: gio::AsyncReadyCallback, user_data: *opaque) void;
export @symbol("gtk_file_dialog_select_folder_finish") fn file_dialog_select_folder_finish(self: *FileDialog, result: *gio::AsyncResult, error: nullable **glib::Error) *gio::File;
export @symbol("gtk_file_dialog_select_multiple_folders") fn file_dialog_select_multiple_folders(self: *FileDialog, parent: *Window, cancellable: *gio::Cancellable, callback: gio::AsyncReadyCallback, user_data: *opaque) void;
export @symbol("gtk_file_dialog_select_multiple_folders_finish") fn file_dialog_select_multiple_folders_finish(self: *FileDialog, result: *gio::AsyncResult, error: nullable **glib::Error) *gio::ListModel;
export @symbol("gtk_file_dialog_set_accept_label") fn file_dialog_set_accept_label(self: *FileDialog, accept_label: *c::char) void;
export @symbol("gtk_file_dialog_set_default_filter") fn file_dialog_set_default_filter(self: *FileDialog, filter: *FileFilter) void;
export @symbol("gtk_file_dialog_set_filters") fn file_dialog_set_filters(self: *FileDialog, filters: *gio::ListModel) void;
export @symbol("gtk_file_dialog_set_initial_file") fn file_dialog_set_initial_file(self: *FileDialog, file: *gio::File) void;
export @symbol("gtk_file_dialog_set_initial_folder") fn file_dialog_set_initial_folder(self: *FileDialog, folder: *gio::File) void;
export @symbol("gtk_file_dialog_set_initial_name") fn file_dialog_set_initial_name(self: *FileDialog, name: *c::char) void;
export @symbol("gtk_file_dialog_set_modal") fn file_dialog_set_modal(self: *FileDialog, modal: glib::boolean) void;
export @symbol("gtk_file_dialog_set_title") fn file_dialog_set_title(self: *FileDialog, title: *c::char) void;
export type FileFilter = *opaque;
export @symbol("gtk_file_filter_new") fn file_filter_new() *FileFilter;
export @symbol("gtk_file_filter_new_from_gvariant") fn file_filter_new_from_gvariant(variant: *glib::Variant) *FileFilter;
export @symbol("gtk_file_filter_add_mime_type") fn file_filter_add_mime_type(filter: *FileFilter, mime_type: *c::char) void;
export @symbol("gtk_file_filter_add_pattern") fn file_filter_add_pattern(filter: *FileFilter, pattern: *c::char) void;
export @symbol("gtk_file_filter_add_pixbuf_formats") fn file_filter_add_pixbuf_formats(filter: *FileFilter) void;
export @symbol("gtk_file_filter_add_suffix") fn file_filter_add_suffix(filter: *FileFilter, suffix: *c::char) void;
export @symbol("gtk_file_filter_get_attributes") fn file_filter_get_attributes(filter: *FileFilter) **c::char;
export @symbol("gtk_file_filter_get_name") fn file_filter_get_name(filter: *FileFilter) *c::char;
export @symbol("gtk_file_filter_set_name") fn file_filter_set_name(filter: *FileFilter, name: *c::char) void;
export @symbol("gtk_file_filter_to_gvariant") fn file_filter_to_gvariant(filter: *FileFilter) *glib::Variant;
export type FileLauncher = *opaque;
export @symbol("gtk_file_launcher_new") fn file_launcher_new(file: *gio::File) *FileLauncher;
export @symbol("gtk_file_launcher_get_always_ask") fn file_launcher_get_always_ask(self: *FileLauncher) glib::boolean;
export @symbol("gtk_file_launcher_get_file") fn file_launcher_get_file(self: *FileLauncher) *gio::File;
export @symbol("gtk_file_launcher_launch") fn file_launcher_launch(self: *FileLauncher, parent: *Window, cancellable: *gio::Cancellable, callback: gio::AsyncReadyCallback, user_data: *opaque) void;
export @symbol("gtk_file_launcher_launch_finish") fn file_launcher_launch_finish(self: *FileLauncher, result: *gio::AsyncResult, error: nullable **glib::Error) glib::boolean;
export @symbol("gtk_file_launcher_open_containing_folder") fn file_launcher_open_containing_folder(self: *FileLauncher, parent: *Window, cancellable: *gio::Cancellable, callback: gio::AsyncReadyCallback, user_data: *opaque) void;
export @symbol("gtk_file_launcher_open_containing_folder_finish") fn file_launcher_open_containing_folder_finish(self: *FileLauncher, result: *gio::AsyncResult, error: nullable **glib::Error) glib::boolean;
export @symbol("gtk_file_launcher_set_always_ask") fn file_launcher_set_always_ask(self: *FileLauncher, always_ask: glib::boolean) void;
export @symbol("gtk_file_launcher_set_file") fn file_launcher_set_file(self: *FileLauncher, file: *gio::File) void;
export type Filter = struct {
	parent_instance: gobject::Object,
};
export @symbol("gtk_filter_changed") fn filter_changed(self: *Filter, change: FilterChange) void;
export @symbol("gtk_filter_get_strictness") fn filter_get_strictness(self: *Filter) FilterMatch;
export @symbol("gtk_filter_match") fn filter_match(self: *Filter, item: *opaque) glib::boolean;
export fn filter_connect_changed(
	instance: *Filter,
	handler: *fn(instance: *Filter, change: FilterChange, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"changed\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export type FilterListModel = *opaque;
export @symbol("gtk_filter_list_model_new") fn filter_list_model_new(model: *gio::ListModel, filter: *Filter) *FilterListModel;
export @symbol("gtk_filter_list_model_get_filter") fn filter_list_model_get_filter(self: *FilterListModel) *Filter;
export @symbol("gtk_filter_list_model_get_incremental") fn filter_list_model_get_incremental(self: *FilterListModel) glib::boolean;
export @symbol("gtk_filter_list_model_get_model") fn filter_list_model_get_model(self: *FilterListModel) *gio::ListModel;
export @symbol("gtk_filter_list_model_get_pending") fn filter_list_model_get_pending(self: *FilterListModel) uint;
export @symbol("gtk_filter_list_model_set_filter") fn filter_list_model_set_filter(self: *FilterListModel, filter: *Filter) void;
export @symbol("gtk_filter_list_model_set_incremental") fn filter_list_model_set_incremental(self: *FilterListModel, incremental: glib::boolean) void;
export @symbol("gtk_filter_list_model_set_model") fn filter_list_model_set_model(self: *FilterListModel, model: *gio::ListModel) void;
export type Fixed = struct {
	parent_instance: Widget,
};
export @symbol("gtk_fixed_new") fn fixed_new() *Widget;
export @symbol("gtk_fixed_get_child_position") fn fixed_get_child_position(fixed: *Fixed, widget: *Widget, x: *f64, y: *f64) void;
export @symbol("gtk_fixed_get_child_transform") fn fixed_get_child_transform(fixed: *Fixed, widget: *Widget) *gsk::Transform;
export @symbol("gtk_fixed_move") fn fixed_move(fixed: *Fixed, widget: *Widget, x: f64, y: f64) void;
export @symbol("gtk_fixed_put") fn fixed_put(fixed: *Fixed, widget: *Widget, x: f64, y: f64) void;
export @symbol("gtk_fixed_remove") fn fixed_remove(fixed: *Fixed, widget: *Widget) void;
export @symbol("gtk_fixed_set_child_transform") fn fixed_set_child_transform(fixed: *Fixed, widget: *Widget, transform: *gsk::Transform) void;
export type FixedLayout = *opaque;
export @symbol("gtk_fixed_layout_new") fn fixed_layout_new() *LayoutManager;
export type FixedLayoutChild = *opaque;
export @symbol("gtk_fixed_layout_child_get_transform") fn fixed_layout_child_get_transform(child: *FixedLayoutChild) *gsk::Transform;
export @symbol("gtk_fixed_layout_child_set_transform") fn fixed_layout_child_set_transform(child: *FixedLayoutChild, transform: *gsk::Transform) void;
export type FlattenListModel = *opaque;
export @symbol("gtk_flatten_list_model_new") fn flatten_list_model_new(model: *gio::ListModel) *FlattenListModel;
export @symbol("gtk_flatten_list_model_get_model") fn flatten_list_model_get_model(self: *FlattenListModel) *gio::ListModel;
export @symbol("gtk_flatten_list_model_get_model_for_item") fn flatten_list_model_get_model_for_item(self: *FlattenListModel, position: uint) *gio::ListModel;
export @symbol("gtk_flatten_list_model_set_model") fn flatten_list_model_set_model(self: *FlattenListModel, model: *gio::ListModel) void;
export type FlowBox = *opaque;
export @symbol("gtk_flow_box_new") fn flow_box_new() *Widget;
export @symbol("gtk_flow_box_append") fn flow_box_append(self: *FlowBox, child: *Widget) void;
export @symbol("gtk_flow_box_bind_model") fn flow_box_bind_model(box: *FlowBox, model: *gio::ListModel, create_widget_func: FlowBoxCreateWidgetFunc, user_data: *opaque, user_data_free_func: glib::DestroyNotify) void;
export @symbol("gtk_flow_box_get_activate_on_single_click") fn flow_box_get_activate_on_single_click(box: *FlowBox) glib::boolean;
export @symbol("gtk_flow_box_get_child_at_index") fn flow_box_get_child_at_index(box: *FlowBox, idx: int) *FlowBoxChild;
export @symbol("gtk_flow_box_get_child_at_pos") fn flow_box_get_child_at_pos(box: *FlowBox, x: int, y: int) *FlowBoxChild;
export @symbol("gtk_flow_box_get_column_spacing") fn flow_box_get_column_spacing(box: *FlowBox) uint;
export @symbol("gtk_flow_box_get_homogeneous") fn flow_box_get_homogeneous(box: *FlowBox) glib::boolean;
export @symbol("gtk_flow_box_get_max_children_per_line") fn flow_box_get_max_children_per_line(box: *FlowBox) uint;
export @symbol("gtk_flow_box_get_min_children_per_line") fn flow_box_get_min_children_per_line(box: *FlowBox) uint;
export @symbol("gtk_flow_box_get_row_spacing") fn flow_box_get_row_spacing(box: *FlowBox) uint;
export @symbol("gtk_flow_box_get_selected_children") fn flow_box_get_selected_children(box: *FlowBox) *glib::List;
export @symbol("gtk_flow_box_get_selection_mode") fn flow_box_get_selection_mode(box: *FlowBox) SelectionMode;
export @symbol("gtk_flow_box_insert") fn flow_box_insert(box: *FlowBox, widget: *Widget, position: int) void;
export @symbol("gtk_flow_box_invalidate_filter") fn flow_box_invalidate_filter(box: *FlowBox) void;
export @symbol("gtk_flow_box_invalidate_sort") fn flow_box_invalidate_sort(box: *FlowBox) void;
export @symbol("gtk_flow_box_prepend") fn flow_box_prepend(self: *FlowBox, child: *Widget) void;
export @symbol("gtk_flow_box_remove") fn flow_box_remove(box: *FlowBox, widget: *Widget) void;
export @symbol("gtk_flow_box_remove_all") fn flow_box_remove_all(box: *FlowBox) void;
export @symbol("gtk_flow_box_select_all") fn flow_box_select_all(box: *FlowBox) void;
export @symbol("gtk_flow_box_select_child") fn flow_box_select_child(box: *FlowBox, child: *FlowBoxChild) void;
export @symbol("gtk_flow_box_selected_foreach") fn flow_box_selected_foreach(box: *FlowBox, func: FlowBoxForeachFunc, data: *opaque) void;
export @symbol("gtk_flow_box_set_activate_on_single_click") fn flow_box_set_activate_on_single_click(box: *FlowBox, single: glib::boolean) void;
export @symbol("gtk_flow_box_set_column_spacing") fn flow_box_set_column_spacing(box: *FlowBox, spacing: uint) void;
export @symbol("gtk_flow_box_set_filter_func") fn flow_box_set_filter_func(box: *FlowBox, filter_func: FlowBoxFilterFunc, user_data: *opaque, destroy: glib::DestroyNotify) void;
export @symbol("gtk_flow_box_set_hadjustment") fn flow_box_set_hadjustment(box: *FlowBox, adjustment: *Adjustment) void;
export @symbol("gtk_flow_box_set_homogeneous") fn flow_box_set_homogeneous(box: *FlowBox, homogeneous: glib::boolean) void;
export @symbol("gtk_flow_box_set_max_children_per_line") fn flow_box_set_max_children_per_line(box: *FlowBox, n_children: uint) void;
export @symbol("gtk_flow_box_set_min_children_per_line") fn flow_box_set_min_children_per_line(box: *FlowBox, n_children: uint) void;
export @symbol("gtk_flow_box_set_row_spacing") fn flow_box_set_row_spacing(box: *FlowBox, spacing: uint) void;
export @symbol("gtk_flow_box_set_selection_mode") fn flow_box_set_selection_mode(box: *FlowBox, mode: SelectionMode) void;
export @symbol("gtk_flow_box_set_sort_func") fn flow_box_set_sort_func(box: *FlowBox, sort_func: FlowBoxSortFunc, user_data: *opaque, destroy: glib::DestroyNotify) void;
export @symbol("gtk_flow_box_set_vadjustment") fn flow_box_set_vadjustment(box: *FlowBox, adjustment: *Adjustment) void;
export @symbol("gtk_flow_box_unselect_all") fn flow_box_unselect_all(box: *FlowBox) void;
export @symbol("gtk_flow_box_unselect_child") fn flow_box_unselect_child(box: *FlowBox, child: *FlowBoxChild) void;
export fn flow_box_connect_activate_cursor_child(
	instance: *FlowBox,
	handler: *fn(instance: *FlowBox, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"activate-cursor-child\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn flow_box_connect_child_activated(
	instance: *FlowBox,
	handler: *fn(instance: *FlowBox, child: *FlowBoxChild, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"child-activated\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn flow_box_connect_move_cursor(
	instance: *FlowBox,
	handler: *fn(instance: *FlowBox, step: MovementStep, count: int, extend: glib::boolean, modify: glib::boolean, data: *opaque) glib::boolean,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"move-cursor\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn flow_box_connect_select_all(
	instance: *FlowBox,
	handler: *fn(instance: *FlowBox, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"select-all\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn flow_box_connect_selected_children_changed(
	instance: *FlowBox,
	handler: *fn(instance: *FlowBox, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"selected-children-changed\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn flow_box_connect_toggle_cursor_child(
	instance: *FlowBox,
	handler: *fn(instance: *FlowBox, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"toggle-cursor-child\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn flow_box_connect_unselect_all(
	instance: *FlowBox,
	handler: *fn(instance: *FlowBox, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"unselect-all\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export type FlowBoxChild = struct {
	parent_instance: Widget,
};
export @symbol("gtk_flow_box_child_new") fn flow_box_child_new() *Widget;
export @symbol("gtk_flow_box_child_changed") fn flow_box_child_changed(child: *FlowBoxChild) void;
export @symbol("gtk_flow_box_child_get_child") fn flow_box_child_get_child(self: *FlowBoxChild) *Widget;
export @symbol("gtk_flow_box_child_get_index") fn flow_box_child_get_index(child: *FlowBoxChild) int;
export @symbol("gtk_flow_box_child_is_selected") fn flow_box_child_is_selected(child: *FlowBoxChild) glib::boolean;
export @symbol("gtk_flow_box_child_set_child") fn flow_box_child_set_child(self: *FlowBoxChild, child: *Widget) void;
export fn flow_box_child_connect_activate(
	instance: *FlowBoxChild,
	handler: *fn(instance: *FlowBoxChild, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"activate\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export type FontButton = *opaque;
export @symbol("gtk_font_button_new") fn font_button_new() *Widget;
export @symbol("gtk_font_button_new_with_font") fn font_button_new_with_font(fontname: *c::char) *Widget;
export @symbol("gtk_font_button_get_modal") fn font_button_get_modal(font_button: *FontButton) glib::boolean;
export @symbol("gtk_font_button_get_title") fn font_button_get_title(font_button: *FontButton) *c::char;
export @symbol("gtk_font_button_get_use_font") fn font_button_get_use_font(font_button: *FontButton) glib::boolean;
export @symbol("gtk_font_button_get_use_size") fn font_button_get_use_size(font_button: *FontButton) glib::boolean;
export @symbol("gtk_font_button_set_modal") fn font_button_set_modal(font_button: *FontButton, modal: glib::boolean) void;
export @symbol("gtk_font_button_set_title") fn font_button_set_title(font_button: *FontButton, title: *c::char) void;
export @symbol("gtk_font_button_set_use_font") fn font_button_set_use_font(font_button: *FontButton, use_font: glib::boolean) void;
export @symbol("gtk_font_button_set_use_size") fn font_button_set_use_size(font_button: *FontButton, use_size: glib::boolean) void;
export fn font_button_connect_activate(
	instance: *FontButton,
	handler: *fn(instance: *FontButton, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"activate\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn font_button_connect_font_set(
	instance: *FontButton,
	handler: *fn(instance: *FontButton, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"font-set\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export type FontChooserDialog = *opaque;
export @symbol("gtk_font_chooser_dialog_new") fn font_chooser_dialog_new(title: *c::char, parent: *Window) *Widget;
export type FontChooserWidget = *opaque;
export @symbol("gtk_font_chooser_widget_new") fn font_chooser_widget_new() *Widget;
export type FontDialog = *opaque;
export @symbol("gtk_font_dialog_new") fn font_dialog_new() *FontDialog;
export @symbol("gtk_font_dialog_choose_face") fn font_dialog_choose_face(self: *FontDialog, parent: *Window, initial_value: *pango::FontFace, cancellable: *gio::Cancellable, callback: gio::AsyncReadyCallback, user_data: *opaque) void;
export @symbol("gtk_font_dialog_choose_face_finish") fn font_dialog_choose_face_finish(self: *FontDialog, result: *gio::AsyncResult, error: nullable **glib::Error) *pango::FontFace;
export @symbol("gtk_font_dialog_choose_family") fn font_dialog_choose_family(self: *FontDialog, parent: *Window, initial_value: *pango::FontFamily, cancellable: *gio::Cancellable, callback: gio::AsyncReadyCallback, user_data: *opaque) void;
export @symbol("gtk_font_dialog_choose_family_finish") fn font_dialog_choose_family_finish(self: *FontDialog, result: *gio::AsyncResult, error: nullable **glib::Error) *pango::FontFamily;
export @symbol("gtk_font_dialog_choose_font") fn font_dialog_choose_font(self: *FontDialog, parent: *Window, initial_value: *pango::FontDescription, cancellable: *gio::Cancellable, callback: gio::AsyncReadyCallback, user_data: *opaque) void;
export @symbol("gtk_font_dialog_choose_font_and_features") fn font_dialog_choose_font_and_features(self: *FontDialog, parent: *Window, initial_value: *pango::FontDescription, cancellable: *gio::Cancellable, callback: gio::AsyncReadyCallback, user_data: *opaque) void;
export @symbol("gtk_font_dialog_choose_font_and_features_finish") fn font_dialog_choose_font_and_features_finish(self: *FontDialog, result: *gio::AsyncResult, font_desc: **pango::FontDescription, font_features: **c::char, language: **pango::Language, error: nullable **glib::Error) glib::boolean;
export @symbol("gtk_font_dialog_choose_font_finish") fn font_dialog_choose_font_finish(self: *FontDialog, result: *gio::AsyncResult, error: nullable **glib::Error) *pango::FontDescription;
export @symbol("gtk_font_dialog_get_filter") fn font_dialog_get_filter(self: *FontDialog) *Filter;
export @symbol("gtk_font_dialog_get_font_map") fn font_dialog_get_font_map(self: *FontDialog) *pango::FontMap;
export @symbol("gtk_font_dialog_get_language") fn font_dialog_get_language(self: *FontDialog) *pango::Language;
export @symbol("gtk_font_dialog_get_modal") fn font_dialog_get_modal(self: *FontDialog) glib::boolean;
export @symbol("gtk_font_dialog_get_title") fn font_dialog_get_title(self: *FontDialog) *c::char;
export @symbol("gtk_font_dialog_set_filter") fn font_dialog_set_filter(self: *FontDialog, filter: *Filter) void;
export @symbol("gtk_font_dialog_set_font_map") fn font_dialog_set_font_map(self: *FontDialog, fontmap: *pango::FontMap) void;
export @symbol("gtk_font_dialog_set_language") fn font_dialog_set_language(self: *FontDialog, language: *pango::Language) void;
export @symbol("gtk_font_dialog_set_modal") fn font_dialog_set_modal(self: *FontDialog, modal: glib::boolean) void;
export @symbol("gtk_font_dialog_set_title") fn font_dialog_set_title(self: *FontDialog, title: *c::char) void;
export type FontDialogButton = *opaque;
export @symbol("gtk_font_dialog_button_new") fn font_dialog_button_new(dialog: *FontDialog) *Widget;
export @symbol("gtk_font_dialog_button_get_dialog") fn font_dialog_button_get_dialog(self: *FontDialogButton) *FontDialog;
export @symbol("gtk_font_dialog_button_get_font_desc") fn font_dialog_button_get_font_desc(self: *FontDialogButton) *pango::FontDescription;
export @symbol("gtk_font_dialog_button_get_font_features") fn font_dialog_button_get_font_features(self: *FontDialogButton) *c::char;
export @symbol("gtk_font_dialog_button_get_language") fn font_dialog_button_get_language(self: *FontDialogButton) *pango::Language;
export @symbol("gtk_font_dialog_button_get_level") fn font_dialog_button_get_level(self: *FontDialogButton) FontLevel;
export @symbol("gtk_font_dialog_button_get_use_font") fn font_dialog_button_get_use_font(self: *FontDialogButton) glib::boolean;
export @symbol("gtk_font_dialog_button_get_use_size") fn font_dialog_button_get_use_size(self: *FontDialogButton) glib::boolean;
export @symbol("gtk_font_dialog_button_set_dialog") fn font_dialog_button_set_dialog(self: *FontDialogButton, dialog: *FontDialog) void;
export @symbol("gtk_font_dialog_button_set_font_desc") fn font_dialog_button_set_font_desc(self: *FontDialogButton, font_desc: *pango::FontDescription) void;
export @symbol("gtk_font_dialog_button_set_font_features") fn font_dialog_button_set_font_features(self: *FontDialogButton, font_features: *c::char) void;
export @symbol("gtk_font_dialog_button_set_language") fn font_dialog_button_set_language(self: *FontDialogButton, language: *pango::Language) void;
export @symbol("gtk_font_dialog_button_set_level") fn font_dialog_button_set_level(self: *FontDialogButton, level: FontLevel) void;
export @symbol("gtk_font_dialog_button_set_use_font") fn font_dialog_button_set_use_font(self: *FontDialogButton, use_font: glib::boolean) void;
export @symbol("gtk_font_dialog_button_set_use_size") fn font_dialog_button_set_use_size(self: *FontDialogButton, use_size: glib::boolean) void;
export fn font_dialog_button_connect_activate(
	instance: *FontDialogButton,
	handler: *fn(instance: *FontDialogButton, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"activate\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export type Frame = struct {
	parent_instance: Widget,
};
export @symbol("gtk_frame_new") fn frame_new(label: *c::char) *Widget;
export @symbol("gtk_frame_get_child") fn frame_get_child(frame: *Frame) *Widget;
export @symbol("gtk_frame_get_label") fn frame_get_label(frame: *Frame) *c::char;
export @symbol("gtk_frame_get_label_align") fn frame_get_label_align(frame: *Frame) f32;
export @symbol("gtk_frame_get_label_widget") fn frame_get_label_widget(frame: *Frame) *Widget;
export @symbol("gtk_frame_set_child") fn frame_set_child(frame: *Frame, child: *Widget) void;
export @symbol("gtk_frame_set_label") fn frame_set_label(frame: *Frame, label: *c::char) void;
export @symbol("gtk_frame_set_label_align") fn frame_set_label_align(frame: *Frame, xalign: f32) void;
export @symbol("gtk_frame_set_label_widget") fn frame_set_label_widget(frame: *Frame, label_widget: *Widget) void;
export type GLArea = struct {
	parent_instance: Widget,
};
export @symbol("gtk_gl_area_new") fn glarea_new() *Widget;
export @symbol("gtk_gl_area_attach_buffers") fn glarea_attach_buffers(area: *GLArea) void;
export @symbol("gtk_gl_area_get_allowed_apis") fn glarea_get_allowed_apis(area: *GLArea) gdk4::GLAPI;
export @symbol("gtk_gl_area_get_api") fn glarea_get_api(area: *GLArea) gdk4::GLAPI;
export @symbol("gtk_gl_area_get_auto_render") fn glarea_get_auto_render(area: *GLArea) glib::boolean;
export @symbol("gtk_gl_area_get_context") fn glarea_get_context(area: *GLArea) *gdk4::GLContext;
export @symbol("gtk_gl_area_get_error") fn glarea_get_error(area: *GLArea) *glib::Error;
export @symbol("gtk_gl_area_get_has_depth_buffer") fn glarea_get_has_depth_buffer(area: *GLArea) glib::boolean;
export @symbol("gtk_gl_area_get_has_stencil_buffer") fn glarea_get_has_stencil_buffer(area: *GLArea) glib::boolean;
export @symbol("gtk_gl_area_get_required_version") fn glarea_get_required_version(area: *GLArea, major: *int, minor: *int) void;
export @symbol("gtk_gl_area_get_use_es") fn glarea_get_use_es(area: *GLArea) glib::boolean;
export @symbol("gtk_gl_area_make_current") fn glarea_make_current(area: *GLArea) void;
export @symbol("gtk_gl_area_queue_render") fn glarea_queue_render(area: *GLArea) void;
export @symbol("gtk_gl_area_set_allowed_apis") fn glarea_set_allowed_apis(area: *GLArea, apis: gdk4::GLAPI) void;
export @symbol("gtk_gl_area_set_auto_render") fn glarea_set_auto_render(area: *GLArea, auto_render: glib::boolean) void;
export @symbol("gtk_gl_area_set_error") fn glarea_set_error(area: *GLArea, error: *glib::Error) void;
export @symbol("gtk_gl_area_set_has_depth_buffer") fn glarea_set_has_depth_buffer(area: *GLArea, has_depth_buffer: glib::boolean) void;
export @symbol("gtk_gl_area_set_has_stencil_buffer") fn glarea_set_has_stencil_buffer(area: *GLArea, has_stencil_buffer: glib::boolean) void;
export @symbol("gtk_gl_area_set_required_version") fn glarea_set_required_version(area: *GLArea, major: int, minor: int) void;
export @symbol("gtk_gl_area_set_use_es") fn glarea_set_use_es(area: *GLArea, use_es: glib::boolean) void;
export fn glarea_connect_create_context(
	instance: *GLArea,
	handler: *fn(instance: *GLArea, data: *opaque) gdk4::GLContext,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"create-context\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn glarea_connect_render(
	instance: *GLArea,
	handler: *fn(instance: *GLArea, context: gdk4::GLContext, data: *opaque) glib::boolean,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"render\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn glarea_connect_resize(
	instance: *GLArea,
	handler: *fn(instance: *GLArea, width: int, height: int, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"resize\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export type Gesture = *opaque;
export @symbol("gtk_gesture_get_bounding_box") fn gesture_get_bounding_box(gesture: *Gesture, rect: *gdk4::Rectangle) glib::boolean;
export @symbol("gtk_gesture_get_bounding_box_center") fn gesture_get_bounding_box_center(gesture: *Gesture, x: *f64, y: *f64) glib::boolean;
export @symbol("gtk_gesture_get_device") fn gesture_get_device(gesture: *Gesture) *gdk4::Device;
export @symbol("gtk_gesture_get_group") fn gesture_get_group(gesture: *Gesture) *glib::List;
export @symbol("gtk_gesture_get_last_event") fn gesture_get_last_event(gesture: *Gesture, sequence: *gdk4::EventSequence) *gdk4::Event;
export @symbol("gtk_gesture_get_last_updated_sequence") fn gesture_get_last_updated_sequence(gesture: *Gesture) *gdk4::EventSequence;
export @symbol("gtk_gesture_get_point") fn gesture_get_point(gesture: *Gesture, sequence: *gdk4::EventSequence, x: *f64, y: *f64) glib::boolean;
export @symbol("gtk_gesture_get_sequence_state") fn gesture_get_sequence_state(gesture: *Gesture, sequence: *gdk4::EventSequence) EventSequenceState;
export @symbol("gtk_gesture_get_sequences") fn gesture_get_sequences(gesture: *Gesture) *glib::List;
export @symbol("gtk_gesture_group") fn gesture_group(group_gesture: *Gesture, gesture: *Gesture) void;
export @symbol("gtk_gesture_handles_sequence") fn gesture_handles_sequence(gesture: *Gesture, sequence: *gdk4::EventSequence) glib::boolean;
export @symbol("gtk_gesture_is_active") fn gesture_is_active(gesture: *Gesture) glib::boolean;
export @symbol("gtk_gesture_is_grouped_with") fn gesture_is_grouped_with(gesture: *Gesture, other: *Gesture) glib::boolean;
export @symbol("gtk_gesture_is_recognized") fn gesture_is_recognized(gesture: *Gesture) glib::boolean;
export @symbol("gtk_gesture_set_sequence_state") fn gesture_set_sequence_state(gesture: *Gesture, sequence: *gdk4::EventSequence, state: EventSequenceState) glib::boolean;
export @symbol("gtk_gesture_set_state") fn gesture_set_state(gesture: *Gesture, state: EventSequenceState) glib::boolean;
export @symbol("gtk_gesture_ungroup") fn gesture_ungroup(gesture: *Gesture) void;
export fn gesture_connect_begin(
	instance: *Gesture,
	handler: *fn(instance: *Gesture, sequence: gdk4::EventSequence, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"begin\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn gesture_connect_cancel(
	instance: *Gesture,
	handler: *fn(instance: *Gesture, sequence: gdk4::EventSequence, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"cancel\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn gesture_connect_end(
	instance: *Gesture,
	handler: *fn(instance: *Gesture, sequence: gdk4::EventSequence, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"end\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn gesture_connect_sequence_state_changed(
	instance: *Gesture,
	handler: *fn(instance: *Gesture, sequence: gdk4::EventSequence, state: EventSequenceState, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"sequence-state-changed\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn gesture_connect_update(
	instance: *Gesture,
	handler: *fn(instance: *Gesture, sequence: gdk4::EventSequence, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"update\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export type GestureClick = *opaque;
export @symbol("gtk_gesture_click_new") fn gesture_click_new() *Gesture;
export fn gesture_click_connect_pressed(
	instance: *GestureClick,
	handler: *fn(instance: *GestureClick, n_press: int, x: f64, y: f64, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"pressed\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn gesture_click_connect_released(
	instance: *GestureClick,
	handler: *fn(instance: *GestureClick, n_press: int, x: f64, y: f64, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"released\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn gesture_click_connect_stopped(
	instance: *GestureClick,
	handler: *fn(instance: *GestureClick, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"stopped\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn gesture_click_connect_unpaired_release(
	instance: *GestureClick,
	handler: *fn(instance: *GestureClick, x: f64, y: f64, button: uint, sequence: gdk4::EventSequence, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"unpaired-release\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export type GestureDrag = *opaque;
export @symbol("gtk_gesture_drag_new") fn gesture_drag_new() *Gesture;
export @symbol("gtk_gesture_drag_get_offset") fn gesture_drag_get_offset(gesture: *GestureDrag, x: *f64, y: *f64) glib::boolean;
export @symbol("gtk_gesture_drag_get_start_point") fn gesture_drag_get_start_point(gesture: *GestureDrag, x: *f64, y: *f64) glib::boolean;
export fn gesture_drag_connect_drag_begin(
	instance: *GestureDrag,
	handler: *fn(instance: *GestureDrag, start_x: f64, start_y: f64, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"drag-begin\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn gesture_drag_connect_drag_end(
	instance: *GestureDrag,
	handler: *fn(instance: *GestureDrag, offset_x: f64, offset_y: f64, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"drag-end\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn gesture_drag_connect_drag_update(
	instance: *GestureDrag,
	handler: *fn(instance: *GestureDrag, offset_x: f64, offset_y: f64, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"drag-update\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export type GestureLongPress = *opaque;
export @symbol("gtk_gesture_long_press_new") fn gesture_long_press_new() *Gesture;
export @symbol("gtk_gesture_long_press_get_delay_factor") fn gesture_long_press_get_delay_factor(gesture: *GestureLongPress) f64;
export @symbol("gtk_gesture_long_press_set_delay_factor") fn gesture_long_press_set_delay_factor(gesture: *GestureLongPress, delay_factor: f64) void;
export fn gesture_long_press_connect_cancelled(
	instance: *GestureLongPress,
	handler: *fn(instance: *GestureLongPress, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"cancelled\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn gesture_long_press_connect_pressed(
	instance: *GestureLongPress,
	handler: *fn(instance: *GestureLongPress, x: f64, y: f64, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"pressed\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export type GesturePan = *opaque;
export @symbol("gtk_gesture_pan_new") fn gesture_pan_new(orientation: Orientation) *Gesture;
export @symbol("gtk_gesture_pan_get_orientation") fn gesture_pan_get_orientation(gesture: *GesturePan) Orientation;
export @symbol("gtk_gesture_pan_set_orientation") fn gesture_pan_set_orientation(gesture: *GesturePan, orientation: Orientation) void;
export fn gesture_pan_connect_pan(
	instance: *GesturePan,
	handler: *fn(instance: *GesturePan, direction: PanDirection, offset_: f64, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"pan\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export type GestureRotate = *opaque;
export @symbol("gtk_gesture_rotate_new") fn gesture_rotate_new() *Gesture;
export @symbol("gtk_gesture_rotate_get_angle_delta") fn gesture_rotate_get_angle_delta(gesture: *GestureRotate) f64;
export fn gesture_rotate_connect_angle_changed(
	instance: *GestureRotate,
	handler: *fn(instance: *GestureRotate, angle: f64, angle_delta: f64, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"angle-changed\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export type GestureSingle = *opaque;
export @symbol("gtk_gesture_single_get_button") fn gesture_single_get_button(gesture: *GestureSingle) uint;
export @symbol("gtk_gesture_single_get_current_button") fn gesture_single_get_current_button(gesture: *GestureSingle) uint;
export @symbol("gtk_gesture_single_get_current_sequence") fn gesture_single_get_current_sequence(gesture: *GestureSingle) *gdk4::EventSequence;
export @symbol("gtk_gesture_single_get_exclusive") fn gesture_single_get_exclusive(gesture: *GestureSingle) glib::boolean;
export @symbol("gtk_gesture_single_get_touch_only") fn gesture_single_get_touch_only(gesture: *GestureSingle) glib::boolean;
export @symbol("gtk_gesture_single_set_button") fn gesture_single_set_button(gesture: *GestureSingle, button: uint) void;
export @symbol("gtk_gesture_single_set_exclusive") fn gesture_single_set_exclusive(gesture: *GestureSingle, exclusive: glib::boolean) void;
export @symbol("gtk_gesture_single_set_touch_only") fn gesture_single_set_touch_only(gesture: *GestureSingle, touch_only: glib::boolean) void;
export type GestureStylus = *opaque;
export @symbol("gtk_gesture_stylus_new") fn gesture_stylus_new() *Gesture;
export @symbol("gtk_gesture_stylus_get_axes") fn gesture_stylus_get_axes(gesture: *GestureStylus, axes: *gdk4::AxisUse, values: **f64) glib::boolean;
export @symbol("gtk_gesture_stylus_get_axis") fn gesture_stylus_get_axis(gesture: *GestureStylus, axis: gdk4::AxisUse, value: *f64) glib::boolean;
export @symbol("gtk_gesture_stylus_get_backlog") fn gesture_stylus_get_backlog(gesture: *GestureStylus, backlog: **gdk4::TimeCoord, n_elems: *uint) glib::boolean;
export @symbol("gtk_gesture_stylus_get_device_tool") fn gesture_stylus_get_device_tool(gesture: *GestureStylus) *gdk4::DeviceTool;
export @symbol("gtk_gesture_stylus_get_stylus_only") fn gesture_stylus_get_stylus_only(gesture: *GestureStylus) glib::boolean;
export @symbol("gtk_gesture_stylus_set_stylus_only") fn gesture_stylus_set_stylus_only(gesture: *GestureStylus, stylus_only: glib::boolean) void;
export fn gesture_stylus_connect_down(
	instance: *GestureStylus,
	handler: *fn(instance: *GestureStylus, x: f64, y: f64, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"down\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn gesture_stylus_connect_motion(
	instance: *GestureStylus,
	handler: *fn(instance: *GestureStylus, x: f64, y: f64, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"motion\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn gesture_stylus_connect_proximity(
	instance: *GestureStylus,
	handler: *fn(instance: *GestureStylus, x: f64, y: f64, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"proximity\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn gesture_stylus_connect_up(
	instance: *GestureStylus,
	handler: *fn(instance: *GestureStylus, x: f64, y: f64, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"up\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export type GestureSwipe = *opaque;
export @symbol("gtk_gesture_swipe_new") fn gesture_swipe_new() *Gesture;
export @symbol("gtk_gesture_swipe_get_velocity") fn gesture_swipe_get_velocity(gesture: *GestureSwipe, velocity_x: *f64, velocity_y: *f64) glib::boolean;
export fn gesture_swipe_connect_swipe(
	instance: *GestureSwipe,
	handler: *fn(instance: *GestureSwipe, velocity_x: f64, velocity_y: f64, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"swipe\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export type GestureZoom = *opaque;
export @symbol("gtk_gesture_zoom_new") fn gesture_zoom_new() *Gesture;
export @symbol("gtk_gesture_zoom_get_scale_delta") fn gesture_zoom_get_scale_delta(gesture: *GestureZoom) f64;
export fn gesture_zoom_connect_scale_changed(
	instance: *GestureZoom,
	handler: *fn(instance: *GestureZoom, scale: f64, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"scale-changed\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export type Grid = struct {
	parent_instance: Widget,
};
export @symbol("gtk_grid_new") fn grid_new() *Widget;
export @symbol("gtk_grid_attach") fn grid_attach(grid: *Grid, child: *Widget, column: int, row: int, width: int, height: int) void;
export @symbol("gtk_grid_attach_next_to") fn grid_attach_next_to(grid: *Grid, child: *Widget, sibling: *Widget, side: PositionType, width: int, height: int) void;
export @symbol("gtk_grid_get_baseline_row") fn grid_get_baseline_row(grid: *Grid) int;
export @symbol("gtk_grid_get_child_at") fn grid_get_child_at(grid: *Grid, column: int, row: int) *Widget;
export @symbol("gtk_grid_get_column_homogeneous") fn grid_get_column_homogeneous(grid: *Grid) glib::boolean;
export @symbol("gtk_grid_get_column_spacing") fn grid_get_column_spacing(grid: *Grid) uint;
export @symbol("gtk_grid_get_row_baseline_position") fn grid_get_row_baseline_position(grid: *Grid, row: int) BaselinePosition;
export @symbol("gtk_grid_get_row_homogeneous") fn grid_get_row_homogeneous(grid: *Grid) glib::boolean;
export @symbol("gtk_grid_get_row_spacing") fn grid_get_row_spacing(grid: *Grid) uint;
export @symbol("gtk_grid_insert_column") fn grid_insert_column(grid: *Grid, position: int) void;
export @symbol("gtk_grid_insert_next_to") fn grid_insert_next_to(grid: *Grid, sibling: *Widget, side: PositionType) void;
export @symbol("gtk_grid_insert_row") fn grid_insert_row(grid: *Grid, position: int) void;
export @symbol("gtk_grid_query_child") fn grid_query_child(grid: *Grid, child: *Widget, column: *int, row: *int, width: *int, height: *int) void;
export @symbol("gtk_grid_remove") fn grid_remove(grid: *Grid, child: *Widget) void;
export @symbol("gtk_grid_remove_column") fn grid_remove_column(grid: *Grid, position: int) void;
export @symbol("gtk_grid_remove_row") fn grid_remove_row(grid: *Grid, position: int) void;
export @symbol("gtk_grid_set_baseline_row") fn grid_set_baseline_row(grid: *Grid, row: int) void;
export @symbol("gtk_grid_set_column_homogeneous") fn grid_set_column_homogeneous(grid: *Grid, homogeneous: glib::boolean) void;
export @symbol("gtk_grid_set_column_spacing") fn grid_set_column_spacing(grid: *Grid, spacing: uint) void;
export @symbol("gtk_grid_set_row_baseline_position") fn grid_set_row_baseline_position(grid: *Grid, row: int, pos: BaselinePosition) void;
export @symbol("gtk_grid_set_row_homogeneous") fn grid_set_row_homogeneous(grid: *Grid, homogeneous: glib::boolean) void;
export @symbol("gtk_grid_set_row_spacing") fn grid_set_row_spacing(grid: *Grid, spacing: uint) void;
export type GridLayout = *opaque;
export @symbol("gtk_grid_layout_new") fn grid_layout_new() *LayoutManager;
export @symbol("gtk_grid_layout_get_baseline_row") fn grid_layout_get_baseline_row(grid: *GridLayout) int;
export @symbol("gtk_grid_layout_get_column_homogeneous") fn grid_layout_get_column_homogeneous(grid: *GridLayout) glib::boolean;
export @symbol("gtk_grid_layout_get_column_spacing") fn grid_layout_get_column_spacing(grid: *GridLayout) uint;
export @symbol("gtk_grid_layout_get_row_baseline_position") fn grid_layout_get_row_baseline_position(grid: *GridLayout, row: int) BaselinePosition;
export @symbol("gtk_grid_layout_get_row_homogeneous") fn grid_layout_get_row_homogeneous(grid: *GridLayout) glib::boolean;
export @symbol("gtk_grid_layout_get_row_spacing") fn grid_layout_get_row_spacing(grid: *GridLayout) uint;
export @symbol("gtk_grid_layout_set_baseline_row") fn grid_layout_set_baseline_row(grid: *GridLayout, row: int) void;
export @symbol("gtk_grid_layout_set_column_homogeneous") fn grid_layout_set_column_homogeneous(grid: *GridLayout, homogeneous: glib::boolean) void;
export @symbol("gtk_grid_layout_set_column_spacing") fn grid_layout_set_column_spacing(grid: *GridLayout, spacing: uint) void;
export @symbol("gtk_grid_layout_set_row_baseline_position") fn grid_layout_set_row_baseline_position(grid: *GridLayout, row: int, pos: BaselinePosition) void;
export @symbol("gtk_grid_layout_set_row_homogeneous") fn grid_layout_set_row_homogeneous(grid: *GridLayout, homogeneous: glib::boolean) void;
export @symbol("gtk_grid_layout_set_row_spacing") fn grid_layout_set_row_spacing(grid: *GridLayout, spacing: uint) void;
export type GridLayoutChild = *opaque;
export @symbol("gtk_grid_layout_child_get_column") fn grid_layout_child_get_column(child: *GridLayoutChild) int;
export @symbol("gtk_grid_layout_child_get_column_span") fn grid_layout_child_get_column_span(child: *GridLayoutChild) int;
export @symbol("gtk_grid_layout_child_get_row") fn grid_layout_child_get_row(child: *GridLayoutChild) int;
export @symbol("gtk_grid_layout_child_get_row_span") fn grid_layout_child_get_row_span(child: *GridLayoutChild) int;
export @symbol("gtk_grid_layout_child_set_column") fn grid_layout_child_set_column(child: *GridLayoutChild, column: int) void;
export @symbol("gtk_grid_layout_child_set_column_span") fn grid_layout_child_set_column_span(child: *GridLayoutChild, span: int) void;
export @symbol("gtk_grid_layout_child_set_row") fn grid_layout_child_set_row(child: *GridLayoutChild, row: int) void;
export @symbol("gtk_grid_layout_child_set_row_span") fn grid_layout_child_set_row_span(child: *GridLayoutChild, span: int) void;
export type GridView = *opaque;
export @symbol("gtk_grid_view_new") fn grid_view_new(model: *SelectionModel, factory: *ListItemFactory) *Widget;
export @symbol("gtk_grid_view_get_enable_rubberband") fn grid_view_get_enable_rubberband(self: *GridView) glib::boolean;
export @symbol("gtk_grid_view_get_factory") fn grid_view_get_factory(self: *GridView) *ListItemFactory;
export @symbol("gtk_grid_view_get_max_columns") fn grid_view_get_max_columns(self: *GridView) uint;
export @symbol("gtk_grid_view_get_min_columns") fn grid_view_get_min_columns(self: *GridView) uint;
export @symbol("gtk_grid_view_get_model") fn grid_view_get_model(self: *GridView) *SelectionModel;
export @symbol("gtk_grid_view_get_single_click_activate") fn grid_view_get_single_click_activate(self: *GridView) glib::boolean;
export @symbol("gtk_grid_view_get_tab_behavior") fn grid_view_get_tab_behavior(self: *GridView) ListTabBehavior;
export @symbol("gtk_grid_view_scroll_to") fn grid_view_scroll_to(self: *GridView, pos: uint, flags: ListScrollFlags, scroll: *ScrollInfo) void;
export @symbol("gtk_grid_view_set_enable_rubberband") fn grid_view_set_enable_rubberband(self: *GridView, enable_rubberband: glib::boolean) void;
export @symbol("gtk_grid_view_set_factory") fn grid_view_set_factory(self: *GridView, factory: *ListItemFactory) void;
export @symbol("gtk_grid_view_set_max_columns") fn grid_view_set_max_columns(self: *GridView, max_columns: uint) void;
export @symbol("gtk_grid_view_set_min_columns") fn grid_view_set_min_columns(self: *GridView, min_columns: uint) void;
export @symbol("gtk_grid_view_set_model") fn grid_view_set_model(self: *GridView, model: *SelectionModel) void;
export @symbol("gtk_grid_view_set_single_click_activate") fn grid_view_set_single_click_activate(self: *GridView, single_click_activate: glib::boolean) void;
export @symbol("gtk_grid_view_set_tab_behavior") fn grid_view_set_tab_behavior(self: *GridView, tab_behavior: ListTabBehavior) void;
export fn grid_view_connect_activate(
	instance: *GridView,
	handler: *fn(instance: *GridView, position: uint, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"activate\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export type HeaderBar = *opaque;
export @symbol("gtk_header_bar_new") fn header_bar_new() *Widget;
export @symbol("gtk_header_bar_get_decoration_layout") fn header_bar_get_decoration_layout(bar: *HeaderBar) *c::char;
export @symbol("gtk_header_bar_get_show_title_buttons") fn header_bar_get_show_title_buttons(bar: *HeaderBar) glib::boolean;
export @symbol("gtk_header_bar_get_title_widget") fn header_bar_get_title_widget(bar: *HeaderBar) *Widget;
export @symbol("gtk_header_bar_pack_end") fn header_bar_pack_end(bar: *HeaderBar, child: *Widget) void;
export @symbol("gtk_header_bar_pack_start") fn header_bar_pack_start(bar: *HeaderBar, child: *Widget) void;
export @symbol("gtk_header_bar_remove") fn header_bar_remove(bar: *HeaderBar, child: *Widget) void;
export @symbol("gtk_header_bar_set_decoration_layout") fn header_bar_set_decoration_layout(bar: *HeaderBar, layout: *c::char) void;
export @symbol("gtk_header_bar_set_show_title_buttons") fn header_bar_set_show_title_buttons(bar: *HeaderBar, setting: glib::boolean) void;
export @symbol("gtk_header_bar_set_title_widget") fn header_bar_set_title_widget(bar: *HeaderBar, title_widget: *Widget) void;
export type IMContext = struct {
	parent_instance: gobject::Object,
};
export @symbol("gtk_im_context_delete_surrounding") fn imcontext_delete_surrounding(context: *IMContext, offset_: int, n_chars: int) glib::boolean;
export @symbol("gtk_im_context_filter_key") fn imcontext_filter_key(context: *IMContext, press: glib::boolean, surface: *gdk4::Surface, device: *gdk4::Device, time: u32, keycode: uint, state: gdk4::ModifierType, group: int) glib::boolean;
export @symbol("gtk_im_context_filter_keypress") fn imcontext_filter_keypress(context: *IMContext, event: *gdk4::Event) glib::boolean;
export @symbol("gtk_im_context_focus_in") fn imcontext_focus_in(context: *IMContext) void;
export @symbol("gtk_im_context_focus_out") fn imcontext_focus_out(context: *IMContext) void;
export @symbol("gtk_im_context_get_preedit_string") fn imcontext_get_preedit_string(context: *IMContext, str_: **c::char, attrs: **pango::AttrList, cursor_pos: *int) void;
export @symbol("gtk_im_context_get_surrounding") fn imcontext_get_surrounding(context: *IMContext, text: **c::char, cursor_index: *int) glib::boolean;
export @symbol("gtk_im_context_get_surrounding_with_selection") fn imcontext_get_surrounding_with_selection(context: *IMContext, text: **c::char, cursor_index: *int, anchor_index: *int) glib::boolean;
export @symbol("gtk_im_context_reset") fn imcontext_reset(context: *IMContext) void;
export @symbol("gtk_im_context_set_client_widget") fn imcontext_set_client_widget(context: *IMContext, widget: *Widget) void;
export @symbol("gtk_im_context_set_cursor_location") fn imcontext_set_cursor_location(context: *IMContext, area: *gdk4::Rectangle) void;
export @symbol("gtk_im_context_set_surrounding") fn imcontext_set_surrounding(context: *IMContext, text: *c::char, len_: int, cursor_index: int) void;
export @symbol("gtk_im_context_set_surrounding_with_selection") fn imcontext_set_surrounding_with_selection(context: *IMContext, text: *c::char, len_: int, cursor_index: int, anchor_index: int) void;
export @symbol("gtk_im_context_set_use_preedit") fn imcontext_set_use_preedit(context: *IMContext, use_preedit: glib::boolean) void;
export fn imcontext_connect_commit(
	instance: *IMContext,
	handler: *fn(instance: *IMContext, str_: *c::char, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"commit\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn imcontext_connect_delete_surrounding(
	instance: *IMContext,
	handler: *fn(instance: *IMContext, offset_: int, n_chars: int, data: *opaque) glib::boolean,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"delete-surrounding\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn imcontext_connect_preedit_changed(
	instance: *IMContext,
	handler: *fn(instance: *IMContext, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"preedit-changed\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn imcontext_connect_preedit_end(
	instance: *IMContext,
	handler: *fn(instance: *IMContext, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"preedit-end\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn imcontext_connect_preedit_start(
	instance: *IMContext,
	handler: *fn(instance: *IMContext, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"preedit-start\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn imcontext_connect_retrieve_surrounding(
	instance: *IMContext,
	handler: *fn(instance: *IMContext, data: *opaque) glib::boolean,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"retrieve-surrounding\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export type IMContextSimple = struct {
	object: IMContext,
	priv: *IMContextSimplePrivate,
};
export @symbol("gtk_im_context_simple_new") fn imcontext_simple_new() *IMContext;
export @symbol("gtk_im_context_simple_add_compose_file") fn imcontext_simple_add_compose_file(context_simple: *IMContextSimple, compose_file: *c::char) void;
export @symbol("gtk_im_context_simple_add_table") fn imcontext_simple_add_table(context_simple: *IMContextSimple, data: *u16, max_seq_len: int, n_seqs: int) void;
export type IMMulticontext = struct {
	object: IMContext,
	priv: *IMMulticontextPrivate,
};
export @symbol("gtk_im_multicontext_new") fn immulticontext_new() *IMContext;
export @symbol("gtk_im_multicontext_get_context_id") fn immulticontext_get_context_id(context: *IMMulticontext) *c::char;
export @symbol("gtk_im_multicontext_set_context_id") fn immulticontext_set_context_id(context: *IMMulticontext, context_id: *c::char) void;
export type IconPaintable = *opaque;
export @symbol("gtk_icon_paintable_new_for_file") fn icon_paintable_new_for_file(file: *gio::File, size_: int, scale: int) *IconPaintable;
export @symbol("gtk_icon_paintable_get_file") fn icon_paintable_get_file(self: *IconPaintable) *gio::File;
export @symbol("gtk_icon_paintable_get_icon_name") fn icon_paintable_get_icon_name(self: *IconPaintable) *c::char;
export @symbol("gtk_icon_paintable_is_symbolic") fn icon_paintable_is_symbolic(self: *IconPaintable) glib::boolean;
export type IconTheme = *opaque;
export @symbol("gtk_icon_theme_new") fn icon_theme_new() *IconTheme;
export @symbol("gtk_icon_theme_add_resource_path") fn icon_theme_add_resource_path(self: *IconTheme, path: *c::char) void;
export @symbol("gtk_icon_theme_add_search_path") fn icon_theme_add_search_path(self: *IconTheme, path: *c::char) void;
export @symbol("gtk_icon_theme_get_display") fn icon_theme_get_display(self: *IconTheme) *gdk4::Display;
export @symbol("gtk_icon_theme_get_icon_names") fn icon_theme_get_icon_names(self: *IconTheme) **c::char;
export @symbol("gtk_icon_theme_get_icon_sizes") fn icon_theme_get_icon_sizes(self: *IconTheme, icon_name: *c::char) *int;
export @symbol("gtk_icon_theme_get_resource_path") fn icon_theme_get_resource_path(self: *IconTheme) **c::char;
export @symbol("gtk_icon_theme_get_search_path") fn icon_theme_get_search_path(self: *IconTheme) **c::char;
export @symbol("gtk_icon_theme_get_theme_name") fn icon_theme_get_theme_name(self: *IconTheme) *c::char;
export @symbol("gtk_icon_theme_has_gicon") fn icon_theme_has_gicon(self: *IconTheme, gicon: *gio::Icon) glib::boolean;
export @symbol("gtk_icon_theme_has_icon") fn icon_theme_has_icon(self: *IconTheme, icon_name: *c::char) glib::boolean;
export @symbol("gtk_icon_theme_lookup_by_gicon") fn icon_theme_lookup_by_gicon(self: *IconTheme, icon: *gio::Icon, size_: int, scale: int, direction: TextDirection, flags: IconLookupFlags) *IconPaintable;
export @symbol("gtk_icon_theme_lookup_icon") fn icon_theme_lookup_icon(self: *IconTheme, icon_name: *c::char, fallbacks: **c::char, size_: int, scale: int, direction: TextDirection, flags: IconLookupFlags) *IconPaintable;
export @symbol("gtk_icon_theme_set_resource_path") fn icon_theme_set_resource_path(self: *IconTheme, path: **c::char) void;
export @symbol("gtk_icon_theme_set_search_path") fn icon_theme_set_search_path(self: *IconTheme, path: **c::char) void;
export @symbol("gtk_icon_theme_set_theme_name") fn icon_theme_set_theme_name(self: *IconTheme, theme_name: *c::char) void;
export @symbol("gtk_icon_theme_get_for_display") fn icon_theme_get_for_display(display: *gdk4::Display) *IconTheme;
export fn icon_theme_connect_changed(
	instance: *IconTheme,
	handler: *fn(instance: *IconTheme, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"changed\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export type IconView = *opaque;
export @symbol("gtk_icon_view_new") fn icon_view_new() *Widget;
export @symbol("gtk_icon_view_new_with_area") fn icon_view_new_with_area(area: *CellArea) *Widget;
export @symbol("gtk_icon_view_new_with_model") fn icon_view_new_with_model(model: *TreeModel) *Widget;
export @symbol("gtk_icon_view_create_drag_icon") fn icon_view_create_drag_icon(icon_view: *IconView, path: *TreePath) *gdk4::Paintable;
export @symbol("gtk_icon_view_enable_model_drag_dest") fn icon_view_enable_model_drag_dest(icon_view: *IconView, formats: *gdk4::ContentFormats, actions: gdk4::DragAction) void;
export @symbol("gtk_icon_view_enable_model_drag_source") fn icon_view_enable_model_drag_source(icon_view: *IconView, start_button_mask: gdk4::ModifierType, formats: *gdk4::ContentFormats, actions: gdk4::DragAction) void;
export @symbol("gtk_icon_view_get_activate_on_single_click") fn icon_view_get_activate_on_single_click(icon_view: *IconView) glib::boolean;
export @symbol("gtk_icon_view_get_cell_rect") fn icon_view_get_cell_rect(icon_view: *IconView, path: *TreePath, cell: *CellRenderer, rect: *gdk4::Rectangle) glib::boolean;
export @symbol("gtk_icon_view_get_column_spacing") fn icon_view_get_column_spacing(icon_view: *IconView) int;
export @symbol("gtk_icon_view_get_columns") fn icon_view_get_columns(icon_view: *IconView) int;
export @symbol("gtk_icon_view_get_cursor") fn icon_view_get_cursor(icon_view: *IconView, path: **TreePath, cell: **CellRenderer) glib::boolean;
export @symbol("gtk_icon_view_get_dest_item_at_pos") fn icon_view_get_dest_item_at_pos(icon_view: *IconView, drag_x: int, drag_y: int, path: **TreePath, pos: *IconViewDropPosition) glib::boolean;
export @symbol("gtk_icon_view_get_drag_dest_item") fn icon_view_get_drag_dest_item(icon_view: *IconView, path: **TreePath, pos: *IconViewDropPosition) void;
export @symbol("gtk_icon_view_get_item_at_pos") fn icon_view_get_item_at_pos(icon_view: *IconView, x: int, y: int, path: **TreePath, cell: **CellRenderer) glib::boolean;
export @symbol("gtk_icon_view_get_item_column") fn icon_view_get_item_column(icon_view: *IconView, path: *TreePath) int;
export @symbol("gtk_icon_view_get_item_orientation") fn icon_view_get_item_orientation(icon_view: *IconView) Orientation;
export @symbol("gtk_icon_view_get_item_padding") fn icon_view_get_item_padding(icon_view: *IconView) int;
export @symbol("gtk_icon_view_get_item_row") fn icon_view_get_item_row(icon_view: *IconView, path: *TreePath) int;
export @symbol("gtk_icon_view_get_item_width") fn icon_view_get_item_width(icon_view: *IconView) int;
export @symbol("gtk_icon_view_get_margin") fn icon_view_get_margin(icon_view: *IconView) int;
export @symbol("gtk_icon_view_get_markup_column") fn icon_view_get_markup_column(icon_view: *IconView) int;
export @symbol("gtk_icon_view_get_model") fn icon_view_get_model(icon_view: *IconView) *TreeModel;
export @symbol("gtk_icon_view_get_path_at_pos") fn icon_view_get_path_at_pos(icon_view: *IconView, x: int, y: int) *TreePath;
export @symbol("gtk_icon_view_get_pixbuf_column") fn icon_view_get_pixbuf_column(icon_view: *IconView) int;
export @symbol("gtk_icon_view_get_reorderable") fn icon_view_get_reorderable(icon_view: *IconView) glib::boolean;
export @symbol("gtk_icon_view_get_row_spacing") fn icon_view_get_row_spacing(icon_view: *IconView) int;
export @symbol("gtk_icon_view_get_selected_items") fn icon_view_get_selected_items(icon_view: *IconView) *glib::List;
export @symbol("gtk_icon_view_get_selection_mode") fn icon_view_get_selection_mode(icon_view: *IconView) SelectionMode;
export @symbol("gtk_icon_view_get_spacing") fn icon_view_get_spacing(icon_view: *IconView) int;
export @symbol("gtk_icon_view_get_text_column") fn icon_view_get_text_column(icon_view: *IconView) int;
export @symbol("gtk_icon_view_get_tooltip_column") fn icon_view_get_tooltip_column(icon_view: *IconView) int;
export @symbol("gtk_icon_view_get_tooltip_context") fn icon_view_get_tooltip_context(icon_view: *IconView, x: int, y: int, keyboard_tip: glib::boolean, model: **TreeModel, path: **TreePath, iter: *TreeIter) glib::boolean;
export @symbol("gtk_icon_view_get_visible_range") fn icon_view_get_visible_range(icon_view: *IconView, start_path: **TreePath, end_path: **TreePath) glib::boolean;
export @symbol("gtk_icon_view_item_activated") fn icon_view_item_activated(icon_view: *IconView, path: *TreePath) void;
export @symbol("gtk_icon_view_path_is_selected") fn icon_view_path_is_selected(icon_view: *IconView, path: *TreePath) glib::boolean;
export @symbol("gtk_icon_view_scroll_to_path") fn icon_view_scroll_to_path(icon_view: *IconView, path: *TreePath, use_align: glib::boolean, row_align: f32, col_align: f32) void;
export @symbol("gtk_icon_view_select_all") fn icon_view_select_all(icon_view: *IconView) void;
export @symbol("gtk_icon_view_select_path") fn icon_view_select_path(icon_view: *IconView, path: *TreePath) void;
export @symbol("gtk_icon_view_selected_foreach") fn icon_view_selected_foreach(icon_view: *IconView, func: IconViewForeachFunc, data: *opaque) void;
export @symbol("gtk_icon_view_set_activate_on_single_click") fn icon_view_set_activate_on_single_click(icon_view: *IconView, single: glib::boolean) void;
export @symbol("gtk_icon_view_set_column_spacing") fn icon_view_set_column_spacing(icon_view: *IconView, column_spacing: int) void;
export @symbol("gtk_icon_view_set_columns") fn icon_view_set_columns(icon_view: *IconView, columns: int) void;
export @symbol("gtk_icon_view_set_cursor") fn icon_view_set_cursor(icon_view: *IconView, path: *TreePath, cell: *CellRenderer, start_editing: glib::boolean) void;
export @symbol("gtk_icon_view_set_drag_dest_item") fn icon_view_set_drag_dest_item(icon_view: *IconView, path: *TreePath, pos: IconViewDropPosition) void;
export @symbol("gtk_icon_view_set_item_orientation") fn icon_view_set_item_orientation(icon_view: *IconView, orientation: Orientation) void;
export @symbol("gtk_icon_view_set_item_padding") fn icon_view_set_item_padding(icon_view: *IconView, item_padding: int) void;
export @symbol("gtk_icon_view_set_item_width") fn icon_view_set_item_width(icon_view: *IconView, item_width: int) void;
export @symbol("gtk_icon_view_set_margin") fn icon_view_set_margin(icon_view: *IconView, margin: int) void;
export @symbol("gtk_icon_view_set_markup_column") fn icon_view_set_markup_column(icon_view: *IconView, column: int) void;
export @symbol("gtk_icon_view_set_model") fn icon_view_set_model(icon_view: *IconView, model: *TreeModel) void;
export @symbol("gtk_icon_view_set_pixbuf_column") fn icon_view_set_pixbuf_column(icon_view: *IconView, column: int) void;
export @symbol("gtk_icon_view_set_reorderable") fn icon_view_set_reorderable(icon_view: *IconView, reorderable: glib::boolean) void;
export @symbol("gtk_icon_view_set_row_spacing") fn icon_view_set_row_spacing(icon_view: *IconView, row_spacing: int) void;
export @symbol("gtk_icon_view_set_selection_mode") fn icon_view_set_selection_mode(icon_view: *IconView, mode: SelectionMode) void;
export @symbol("gtk_icon_view_set_spacing") fn icon_view_set_spacing(icon_view: *IconView, spacing: int) void;
export @symbol("gtk_icon_view_set_text_column") fn icon_view_set_text_column(icon_view: *IconView, column: int) void;
export @symbol("gtk_icon_view_set_tooltip_cell") fn icon_view_set_tooltip_cell(icon_view: *IconView, tooltip: *Tooltip, path: *TreePath, cell: *CellRenderer) void;
export @symbol("gtk_icon_view_set_tooltip_column") fn icon_view_set_tooltip_column(icon_view: *IconView, column: int) void;
export @symbol("gtk_icon_view_set_tooltip_item") fn icon_view_set_tooltip_item(icon_view: *IconView, tooltip: *Tooltip, path: *TreePath) void;
export @symbol("gtk_icon_view_unselect_all") fn icon_view_unselect_all(icon_view: *IconView) void;
export @symbol("gtk_icon_view_unselect_path") fn icon_view_unselect_path(icon_view: *IconView, path: *TreePath) void;
export @symbol("gtk_icon_view_unset_model_drag_dest") fn icon_view_unset_model_drag_dest(icon_view: *IconView) void;
export @symbol("gtk_icon_view_unset_model_drag_source") fn icon_view_unset_model_drag_source(icon_view: *IconView) void;
export fn icon_view_connect_activate_cursor_item(
	instance: *IconView,
	handler: *fn(instance: *IconView, data: *opaque) glib::boolean,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"activate-cursor-item\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn icon_view_connect_item_activated(
	instance: *IconView,
	handler: *fn(instance: *IconView, path: *TreePath, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"item-activated\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn icon_view_connect_move_cursor(
	instance: *IconView,
	handler: *fn(instance: *IconView, step: MovementStep, count: int, extend: glib::boolean, modify: glib::boolean, data: *opaque) glib::boolean,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"move-cursor\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn icon_view_connect_select_all(
	instance: *IconView,
	handler: *fn(instance: *IconView, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"select-all\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn icon_view_connect_select_cursor_item(
	instance: *IconView,
	handler: *fn(instance: *IconView, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"select-cursor-item\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn icon_view_connect_selection_changed(
	instance: *IconView,
	handler: *fn(instance: *IconView, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"selection-changed\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn icon_view_connect_toggle_cursor_item(
	instance: *IconView,
	handler: *fn(instance: *IconView, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"toggle-cursor-item\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn icon_view_connect_unselect_all(
	instance: *IconView,
	handler: *fn(instance: *IconView, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"unselect-all\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export type Image = *opaque;
export @symbol("gtk_image_new") fn image_new() *Widget;
export @symbol("gtk_image_new_from_file") fn image_new_from_file(filename: *c::char) *Widget;
export @symbol("gtk_image_new_from_gicon") fn image_new_from_gicon(icon: *gio::Icon) *Widget;
export @symbol("gtk_image_new_from_icon_name") fn image_new_from_icon_name(icon_name: *c::char) *Widget;
export @symbol("gtk_image_new_from_paintable") fn image_new_from_paintable(paintable: *gdk4::Paintable) *Widget;
export @symbol("gtk_image_new_from_pixbuf") fn image_new_from_pixbuf(pixbuf: *gdkpixbuf::Pixbuf) *Widget;
export @symbol("gtk_image_new_from_resource") fn image_new_from_resource(resource_path: *c::char) *Widget;
export @symbol("gtk_image_clear") fn image_clear(image: *Image) void;
export @symbol("gtk_image_get_gicon") fn image_get_gicon(image: *Image) *gio::Icon;
export @symbol("gtk_image_get_icon_name") fn image_get_icon_name(image: *Image) *c::char;
export @symbol("gtk_image_get_icon_size") fn image_get_icon_size(image: *Image) IconSize;
export @symbol("gtk_image_get_paintable") fn image_get_paintable(image: *Image) *gdk4::Paintable;
export @symbol("gtk_image_get_pixel_size") fn image_get_pixel_size(image: *Image) int;
export @symbol("gtk_image_get_storage_type") fn image_get_storage_type(image: *Image) ImageType;
export @symbol("gtk_image_set_from_file") fn image_set_from_file(image: *Image, filename: *c::char) void;
export @symbol("gtk_image_set_from_gicon") fn image_set_from_gicon(image: *Image, icon: *gio::Icon) void;
export @symbol("gtk_image_set_from_icon_name") fn image_set_from_icon_name(image: *Image, icon_name: *c::char) void;
export @symbol("gtk_image_set_from_paintable") fn image_set_from_paintable(image: *Image, paintable: *gdk4::Paintable) void;
export @symbol("gtk_image_set_from_pixbuf") fn image_set_from_pixbuf(image: *Image, pixbuf: *gdkpixbuf::Pixbuf) void;
export @symbol("gtk_image_set_from_resource") fn image_set_from_resource(image: *Image, resource_path: *c::char) void;
export @symbol("gtk_image_set_icon_size") fn image_set_icon_size(image: *Image, icon_size: IconSize) void;
export @symbol("gtk_image_set_pixel_size") fn image_set_pixel_size(image: *Image, pixel_size: int) void;
export type InfoBar = *opaque;
export @symbol("gtk_info_bar_new") fn info_bar_new() *Widget;
export @symbol("gtk_info_bar_new_with_buttons") fn info_bar_new_with_buttons(first_button_text: *c::char, ...) *Widget;
export @symbol("gtk_info_bar_add_action_widget") fn info_bar_add_action_widget(info_bar: *InfoBar, child: *Widget, response_id: int) void;
export @symbol("gtk_info_bar_add_button") fn info_bar_add_button(info_bar: *InfoBar, button_text: *c::char, response_id: int) *Widget;
export @symbol("gtk_info_bar_add_buttons") fn info_bar_add_buttons(info_bar: *InfoBar, first_button_text: *c::char, ...) void;
export @symbol("gtk_info_bar_add_child") fn info_bar_add_child(info_bar: *InfoBar, widget: *Widget) void;
export @symbol("gtk_info_bar_get_message_type") fn info_bar_get_message_type(info_bar: *InfoBar) MessageType;
export @symbol("gtk_info_bar_get_revealed") fn info_bar_get_revealed(info_bar: *InfoBar) glib::boolean;
export @symbol("gtk_info_bar_get_show_close_button") fn info_bar_get_show_close_button(info_bar: *InfoBar) glib::boolean;
export @symbol("gtk_info_bar_remove_action_widget") fn info_bar_remove_action_widget(info_bar: *InfoBar, widget: *Widget) void;
export @symbol("gtk_info_bar_remove_child") fn info_bar_remove_child(info_bar: *InfoBar, widget: *Widget) void;
export @symbol("gtk_info_bar_response") fn info_bar_response(info_bar: *InfoBar, response_id: int) void;
export @symbol("gtk_info_bar_set_default_response") fn info_bar_set_default_response(info_bar: *InfoBar, response_id: int) void;
export @symbol("gtk_info_bar_set_message_type") fn info_bar_set_message_type(info_bar: *InfoBar, message_type: MessageType) void;
export @symbol("gtk_info_bar_set_response_sensitive") fn info_bar_set_response_sensitive(info_bar: *InfoBar, response_id: int, setting: glib::boolean) void;
export @symbol("gtk_info_bar_set_revealed") fn info_bar_set_revealed(info_bar: *InfoBar, revealed: glib::boolean) void;
export @symbol("gtk_info_bar_set_show_close_button") fn info_bar_set_show_close_button(info_bar: *InfoBar, setting: glib::boolean) void;
export fn info_bar_connect_close(
	instance: *InfoBar,
	handler: *fn(instance: *InfoBar, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"close\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn info_bar_connect_response(
	instance: *InfoBar,
	handler: *fn(instance: *InfoBar, response_id: int, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"response\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export type Inscription = *opaque;
export @symbol("gtk_inscription_new") fn inscription_new(text: *c::char) *Widget;
export @symbol("gtk_inscription_get_attributes") fn inscription_get_attributes(self: *Inscription) *pango::AttrList;
export @symbol("gtk_inscription_get_min_chars") fn inscription_get_min_chars(self: *Inscription) uint;
export @symbol("gtk_inscription_get_min_lines") fn inscription_get_min_lines(self: *Inscription) uint;
export @symbol("gtk_inscription_get_nat_chars") fn inscription_get_nat_chars(self: *Inscription) uint;
export @symbol("gtk_inscription_get_nat_lines") fn inscription_get_nat_lines(self: *Inscription) uint;
export @symbol("gtk_inscription_get_text") fn inscription_get_text(self: *Inscription) *c::char;
export @symbol("gtk_inscription_get_text_overflow") fn inscription_get_text_overflow(self: *Inscription) InscriptionOverflow;
export @symbol("gtk_inscription_get_wrap_mode") fn inscription_get_wrap_mode(self: *Inscription) pango::WrapMode;
export @symbol("gtk_inscription_get_xalign") fn inscription_get_xalign(self: *Inscription) f32;
export @symbol("gtk_inscription_get_yalign") fn inscription_get_yalign(self: *Inscription) f32;
export @symbol("gtk_inscription_set_attributes") fn inscription_set_attributes(self: *Inscription, attrs: *pango::AttrList) void;
export @symbol("gtk_inscription_set_markup") fn inscription_set_markup(self: *Inscription, markup: *c::char) void;
export @symbol("gtk_inscription_set_min_chars") fn inscription_set_min_chars(self: *Inscription, min_chars: uint) void;
export @symbol("gtk_inscription_set_min_lines") fn inscription_set_min_lines(self: *Inscription, min_lines: uint) void;
export @symbol("gtk_inscription_set_nat_chars") fn inscription_set_nat_chars(self: *Inscription, nat_chars: uint) void;
export @symbol("gtk_inscription_set_nat_lines") fn inscription_set_nat_lines(self: *Inscription, nat_lines: uint) void;
export @symbol("gtk_inscription_set_text") fn inscription_set_text(self: *Inscription, text: *c::char) void;
export @symbol("gtk_inscription_set_text_overflow") fn inscription_set_text_overflow(self: *Inscription, overflow: InscriptionOverflow) void;
export @symbol("gtk_inscription_set_wrap_mode") fn inscription_set_wrap_mode(self: *Inscription, wrap_mode: pango::WrapMode) void;
export @symbol("gtk_inscription_set_xalign") fn inscription_set_xalign(self: *Inscription, xalign: f32) void;
export @symbol("gtk_inscription_set_yalign") fn inscription_set_yalign(self: *Inscription, yalign: f32) void;
export type KeyvalTrigger = *opaque;
export @symbol("gtk_keyval_trigger_new") fn keyval_trigger_new(keyval: uint, modifiers: gdk4::ModifierType) *ShortcutTrigger;
export @symbol("gtk_keyval_trigger_get_keyval") fn keyval_trigger_get_keyval(self: *KeyvalTrigger) uint;
export @symbol("gtk_keyval_trigger_get_modifiers") fn keyval_trigger_get_modifiers(self: *KeyvalTrigger) gdk4::ModifierType;
export type Label = *opaque;
export @symbol("gtk_label_new") fn label_new(str_: *c::char) *Widget;
export @symbol("gtk_label_new_with_mnemonic") fn label_new_with_mnemonic(str_: *c::char) *Widget;
export @symbol("gtk_label_get_attributes") fn label_get_attributes(self: *Label) *pango::AttrList;
export @symbol("gtk_label_get_current_uri") fn label_get_current_uri(self: *Label) *c::char;
export @symbol("gtk_label_get_ellipsize") fn label_get_ellipsize(self: *Label) pango::EllipsizeMode;
export @symbol("gtk_label_get_extra_menu") fn label_get_extra_menu(self: *Label) *gio::MenuModel;
export @symbol("gtk_label_get_justify") fn label_get_justify(self: *Label) Justification;
export @symbol("gtk_label_get_label") fn label_get_label(self: *Label) *c::char;
export @symbol("gtk_label_get_layout") fn label_get_layout(self: *Label) *pango::Layout;
export @symbol("gtk_label_get_layout_offsets") fn label_get_layout_offsets(self: *Label, x: *int, y: *int) void;
export @symbol("gtk_label_get_lines") fn label_get_lines(self: *Label) int;
export @symbol("gtk_label_get_max_width_chars") fn label_get_max_width_chars(self: *Label) int;
export @symbol("gtk_label_get_mnemonic_keyval") fn label_get_mnemonic_keyval(self: *Label) uint;
export @symbol("gtk_label_get_mnemonic_widget") fn label_get_mnemonic_widget(self: *Label) *Widget;
export @symbol("gtk_label_get_natural_wrap_mode") fn label_get_natural_wrap_mode(self: *Label) NaturalWrapMode;
export @symbol("gtk_label_get_selectable") fn label_get_selectable(self: *Label) glib::boolean;
export @symbol("gtk_label_get_selection_bounds") fn label_get_selection_bounds(self: *Label, start: *int, end: *int) glib::boolean;
export @symbol("gtk_label_get_single_line_mode") fn label_get_single_line_mode(self: *Label) glib::boolean;
export @symbol("gtk_label_get_tabs") fn label_get_tabs(self: *Label) *pango::TabArray;
export @symbol("gtk_label_get_text") fn label_get_text(self: *Label) *c::char;
export @symbol("gtk_label_get_use_markup") fn label_get_use_markup(self: *Label) glib::boolean;
export @symbol("gtk_label_get_use_underline") fn label_get_use_underline(self: *Label) glib::boolean;
export @symbol("gtk_label_get_width_chars") fn label_get_width_chars(self: *Label) int;
export @symbol("gtk_label_get_wrap") fn label_get_wrap(self: *Label) glib::boolean;
export @symbol("gtk_label_get_wrap_mode") fn label_get_wrap_mode(self: *Label) pango::WrapMode;
export @symbol("gtk_label_get_xalign") fn label_get_xalign(self: *Label) f32;
export @symbol("gtk_label_get_yalign") fn label_get_yalign(self: *Label) f32;
export @symbol("gtk_label_select_region") fn label_select_region(self: *Label, start_offset: int, end_offset: int) void;
export @symbol("gtk_label_set_attributes") fn label_set_attributes(self: *Label, attrs: *pango::AttrList) void;
export @symbol("gtk_label_set_ellipsize") fn label_set_ellipsize(self: *Label, mode: pango::EllipsizeMode) void;
export @symbol("gtk_label_set_extra_menu") fn label_set_extra_menu(self: *Label, model: *gio::MenuModel) void;
export @symbol("gtk_label_set_justify") fn label_set_justify(self: *Label, jtype: Justification) void;
export @symbol("gtk_label_set_label") fn label_set_label(self: *Label, str_: *c::char) void;
export @symbol("gtk_label_set_lines") fn label_set_lines(self: *Label, lines: int) void;
export @symbol("gtk_label_set_markup") fn label_set_markup(self: *Label, str_: *c::char) void;
export @symbol("gtk_label_set_markup_with_mnemonic") fn label_set_markup_with_mnemonic(self: *Label, str_: *c::char) void;
export @symbol("gtk_label_set_max_width_chars") fn label_set_max_width_chars(self: *Label, n_chars: int) void;
export @symbol("gtk_label_set_mnemonic_widget") fn label_set_mnemonic_widget(self: *Label, widget: *Widget) void;
export @symbol("gtk_label_set_natural_wrap_mode") fn label_set_natural_wrap_mode(self: *Label, wrap_mode: NaturalWrapMode) void;
export @symbol("gtk_label_set_selectable") fn label_set_selectable(self: *Label, setting: glib::boolean) void;
export @symbol("gtk_label_set_single_line_mode") fn label_set_single_line_mode(self: *Label, single_line_mode: glib::boolean) void;
export @symbol("gtk_label_set_tabs") fn label_set_tabs(self: *Label, tabs: *pango::TabArray) void;
export @symbol("gtk_label_set_text") fn label_set_text(self: *Label, str_: *c::char) void;
export @symbol("gtk_label_set_text_with_mnemonic") fn label_set_text_with_mnemonic(self: *Label, str_: *c::char) void;
export @symbol("gtk_label_set_use_markup") fn label_set_use_markup(self: *Label, setting: glib::boolean) void;
export @symbol("gtk_label_set_use_underline") fn label_set_use_underline(self: *Label, setting: glib::boolean) void;
export @symbol("gtk_label_set_width_chars") fn label_set_width_chars(self: *Label, n_chars: int) void;
export @symbol("gtk_label_set_wrap") fn label_set_wrap(self: *Label, wrap: glib::boolean) void;
export @symbol("gtk_label_set_wrap_mode") fn label_set_wrap_mode(self: *Label, wrap_mode: pango::WrapMode) void;
export @symbol("gtk_label_set_xalign") fn label_set_xalign(self: *Label, xalign: f32) void;
export @symbol("gtk_label_set_yalign") fn label_set_yalign(self: *Label, yalign: f32) void;
export fn label_connect_activate_current_link(
	instance: *Label,
	handler: *fn(instance: *Label, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"activate-current-link\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn label_connect_activate_link(
	instance: *Label,
	handler: *fn(instance: *Label, uri: *c::char, data: *opaque) glib::boolean,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"activate-link\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn label_connect_copy_clipboard(
	instance: *Label,
	handler: *fn(instance: *Label, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"copy-clipboard\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn label_connect_move_cursor(
	instance: *Label,
	handler: *fn(instance: *Label, step: MovementStep, count: int, extend_selection: glib::boolean, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"move-cursor\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export type LayoutChild = struct {
	parent_instance: gobject::Object,
};
export @symbol("gtk_layout_child_get_child_widget") fn layout_child_get_child_widget(layout_child: *LayoutChild) *Widget;
export @symbol("gtk_layout_child_get_layout_manager") fn layout_child_get_layout_manager(layout_child: *LayoutChild) *LayoutManager;
export type LayoutManager = struct {
	parent_instance: gobject::Object,
};
export @symbol("gtk_layout_manager_allocate") fn layout_manager_allocate(manager: *LayoutManager, widget: *Widget, width: int, height: int, baseline: int) void;
export @symbol("gtk_layout_manager_get_layout_child") fn layout_manager_get_layout_child(manager: *LayoutManager, child: *Widget) *LayoutChild;
export @symbol("gtk_layout_manager_get_request_mode") fn layout_manager_get_request_mode(manager: *LayoutManager) SizeRequestMode;
export @symbol("gtk_layout_manager_get_widget") fn layout_manager_get_widget(manager: *LayoutManager) *Widget;
export @symbol("gtk_layout_manager_layout_changed") fn layout_manager_layout_changed(manager: *LayoutManager) void;
export @symbol("gtk_layout_manager_measure") fn layout_manager_measure(manager: *LayoutManager, widget: *Widget, orientation: Orientation, for_size: int, minimum: *int, natural: *int, minimum_baseline: *int, natural_baseline: *int) void;
export type LevelBar = *opaque;
export @symbol("gtk_level_bar_new") fn level_bar_new() *Widget;
export @symbol("gtk_level_bar_new_for_interval") fn level_bar_new_for_interval(min_value: f64, max_value: f64) *Widget;
export @symbol("gtk_level_bar_add_offset_value") fn level_bar_add_offset_value(self: *LevelBar, name: *c::char, value: f64) void;
export @symbol("gtk_level_bar_get_inverted") fn level_bar_get_inverted(self: *LevelBar) glib::boolean;
export @symbol("gtk_level_bar_get_max_value") fn level_bar_get_max_value(self: *LevelBar) f64;
export @symbol("gtk_level_bar_get_min_value") fn level_bar_get_min_value(self: *LevelBar) f64;
export @symbol("gtk_level_bar_get_mode") fn level_bar_get_mode(self: *LevelBar) LevelBarMode;
export @symbol("gtk_level_bar_get_offset_value") fn level_bar_get_offset_value(self: *LevelBar, name: *c::char, value: *f64) glib::boolean;
export @symbol("gtk_level_bar_get_value") fn level_bar_get_value(self: *LevelBar) f64;
export @symbol("gtk_level_bar_remove_offset_value") fn level_bar_remove_offset_value(self: *LevelBar, name: *c::char) void;
export @symbol("gtk_level_bar_set_inverted") fn level_bar_set_inverted(self: *LevelBar, inverted: glib::boolean) void;
export @symbol("gtk_level_bar_set_max_value") fn level_bar_set_max_value(self: *LevelBar, value: f64) void;
export @symbol("gtk_level_bar_set_min_value") fn level_bar_set_min_value(self: *LevelBar, value: f64) void;
export @symbol("gtk_level_bar_set_mode") fn level_bar_set_mode(self: *LevelBar, mode: LevelBarMode) void;
export @symbol("gtk_level_bar_set_value") fn level_bar_set_value(self: *LevelBar, value: f64) void;
export fn level_bar_connect_offset_changed(
	instance: *LevelBar,
	handler: *fn(instance: *LevelBar, name: *c::char, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"offset-changed\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export type LinkButton = *opaque;
export @symbol("gtk_link_button_new") fn link_button_new(uri: *c::char) *Widget;
export @symbol("gtk_link_button_new_with_label") fn link_button_new_with_label(uri: *c::char, label: *c::char) *Widget;
export @symbol("gtk_link_button_get_uri") fn link_button_get_uri(link_button: *LinkButton) *c::char;
export @symbol("gtk_link_button_get_visited") fn link_button_get_visited(link_button: *LinkButton) glib::boolean;
export @symbol("gtk_link_button_set_uri") fn link_button_set_uri(link_button: *LinkButton, uri: *c::char) void;
export @symbol("gtk_link_button_set_visited") fn link_button_set_visited(link_button: *LinkButton, visited: glib::boolean) void;
export fn link_button_connect_activate_link(
	instance: *LinkButton,
	handler: *fn(instance: *LinkButton, data: *opaque) glib::boolean,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"activate-link\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export type ListBase = *opaque;
export type ListBox = *opaque;
export @symbol("gtk_list_box_new") fn list_box_new() *Widget;
export @symbol("gtk_list_box_append") fn list_box_append(box: *ListBox, child: *Widget) void;
export @symbol("gtk_list_box_bind_model") fn list_box_bind_model(box: *ListBox, model: *gio::ListModel, create_widget_func: ListBoxCreateWidgetFunc, user_data: *opaque, user_data_free_func: glib::DestroyNotify) void;
export @symbol("gtk_list_box_drag_highlight_row") fn list_box_drag_highlight_row(box: *ListBox, row: *ListBoxRow) void;
export @symbol("gtk_list_box_drag_unhighlight_row") fn list_box_drag_unhighlight_row(box: *ListBox) void;
export @symbol("gtk_list_box_get_activate_on_single_click") fn list_box_get_activate_on_single_click(box: *ListBox) glib::boolean;
export @symbol("gtk_list_box_get_adjustment") fn list_box_get_adjustment(box: *ListBox) *Adjustment;
export @symbol("gtk_list_box_get_row_at_index") fn list_box_get_row_at_index(box: *ListBox, index_: int) *ListBoxRow;
export @symbol("gtk_list_box_get_row_at_y") fn list_box_get_row_at_y(box: *ListBox, y: int) *ListBoxRow;
export @symbol("gtk_list_box_get_selected_row") fn list_box_get_selected_row(box: *ListBox) *ListBoxRow;
export @symbol("gtk_list_box_get_selected_rows") fn list_box_get_selected_rows(box: *ListBox) *glib::List;
export @symbol("gtk_list_box_get_selection_mode") fn list_box_get_selection_mode(box: *ListBox) SelectionMode;
export @symbol("gtk_list_box_get_show_separators") fn list_box_get_show_separators(box: *ListBox) glib::boolean;
export @symbol("gtk_list_box_insert") fn list_box_insert(box: *ListBox, child: *Widget, position: int) void;
export @symbol("gtk_list_box_invalidate_filter") fn list_box_invalidate_filter(box: *ListBox) void;
export @symbol("gtk_list_box_invalidate_headers") fn list_box_invalidate_headers(box: *ListBox) void;
export @symbol("gtk_list_box_invalidate_sort") fn list_box_invalidate_sort(box: *ListBox) void;
export @symbol("gtk_list_box_prepend") fn list_box_prepend(box: *ListBox, child: *Widget) void;
export @symbol("gtk_list_box_remove") fn list_box_remove(box: *ListBox, child: *Widget) void;
export @symbol("gtk_list_box_remove_all") fn list_box_remove_all(box: *ListBox) void;
export @symbol("gtk_list_box_select_all") fn list_box_select_all(box: *ListBox) void;
export @symbol("gtk_list_box_select_row") fn list_box_select_row(box: *ListBox, row: *ListBoxRow) void;
export @symbol("gtk_list_box_selected_foreach") fn list_box_selected_foreach(box: *ListBox, func: ListBoxForeachFunc, data: *opaque) void;
export @symbol("gtk_list_box_set_activate_on_single_click") fn list_box_set_activate_on_single_click(box: *ListBox, single: glib::boolean) void;
export @symbol("gtk_list_box_set_adjustment") fn list_box_set_adjustment(box: *ListBox, adjustment: *Adjustment) void;
export @symbol("gtk_list_box_set_filter_func") fn list_box_set_filter_func(box: *ListBox, filter_func: ListBoxFilterFunc, user_data: *opaque, destroy: glib::DestroyNotify) void;
export @symbol("gtk_list_box_set_header_func") fn list_box_set_header_func(box: *ListBox, update_header: ListBoxUpdateHeaderFunc, user_data: *opaque, destroy: glib::DestroyNotify) void;
export @symbol("gtk_list_box_set_placeholder") fn list_box_set_placeholder(box: *ListBox, placeholder: *Widget) void;
export @symbol("gtk_list_box_set_selection_mode") fn list_box_set_selection_mode(box: *ListBox, mode: SelectionMode) void;
export @symbol("gtk_list_box_set_show_separators") fn list_box_set_show_separators(box: *ListBox, show_separators: glib::boolean) void;
export @symbol("gtk_list_box_set_sort_func") fn list_box_set_sort_func(box: *ListBox, sort_func: ListBoxSortFunc, user_data: *opaque, destroy: glib::DestroyNotify) void;
export @symbol("gtk_list_box_unselect_all") fn list_box_unselect_all(box: *ListBox) void;
export @symbol("gtk_list_box_unselect_row") fn list_box_unselect_row(box: *ListBox, row: *ListBoxRow) void;
export fn list_box_connect_activate_cursor_row(
	instance: *ListBox,
	handler: *fn(instance: *ListBox, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"activate-cursor-row\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn list_box_connect_move_cursor(
	instance: *ListBox,
	handler: *fn(instance: *ListBox, object: MovementStep, p0: int, p1: glib::boolean, p2: glib::boolean, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"move-cursor\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn list_box_connect_row_activated(
	instance: *ListBox,
	handler: *fn(instance: *ListBox, row: *ListBoxRow, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"row-activated\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn list_box_connect_row_selected(
	instance: *ListBox,
	handler: *fn(instance: *ListBox, row: *ListBoxRow, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"row-selected\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn list_box_connect_select_all(
	instance: *ListBox,
	handler: *fn(instance: *ListBox, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"select-all\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn list_box_connect_selected_rows_changed(
	instance: *ListBox,
	handler: *fn(instance: *ListBox, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"selected-rows-changed\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn list_box_connect_toggle_cursor_row(
	instance: *ListBox,
	handler: *fn(instance: *ListBox, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"toggle-cursor-row\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn list_box_connect_unselect_all(
	instance: *ListBox,
	handler: *fn(instance: *ListBox, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"unselect-all\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export type ListBoxRow = struct {
	parent_instance: Widget,
};
export @symbol("gtk_list_box_row_new") fn list_box_row_new() *Widget;
export @symbol("gtk_list_box_row_changed") fn list_box_row_changed(row: *ListBoxRow) void;
export @symbol("gtk_list_box_row_get_activatable") fn list_box_row_get_activatable(row: *ListBoxRow) glib::boolean;
export @symbol("gtk_list_box_row_get_child") fn list_box_row_get_child(row: *ListBoxRow) *Widget;
export @symbol("gtk_list_box_row_get_header") fn list_box_row_get_header(row: *ListBoxRow) *Widget;
export @symbol("gtk_list_box_row_get_index") fn list_box_row_get_index(row: *ListBoxRow) int;
export @symbol("gtk_list_box_row_get_selectable") fn list_box_row_get_selectable(row: *ListBoxRow) glib::boolean;
export @symbol("gtk_list_box_row_is_selected") fn list_box_row_is_selected(row: *ListBoxRow) glib::boolean;
export @symbol("gtk_list_box_row_set_activatable") fn list_box_row_set_activatable(row: *ListBoxRow, activatable: glib::boolean) void;
export @symbol("gtk_list_box_row_set_child") fn list_box_row_set_child(row: *ListBoxRow, child: *Widget) void;
export @symbol("gtk_list_box_row_set_header") fn list_box_row_set_header(row: *ListBoxRow, header: *Widget) void;
export @symbol("gtk_list_box_row_set_selectable") fn list_box_row_set_selectable(row: *ListBoxRow, selectable: glib::boolean) void;
export fn list_box_row_connect_activate(
	instance: *ListBoxRow,
	handler: *fn(instance: *ListBoxRow, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"activate\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export type ListHeader = *opaque;
export @symbol("gtk_list_header_get_child") fn list_header_get_child(self: *ListHeader) *Widget;
export @symbol("gtk_list_header_get_end") fn list_header_get_end(self: *ListHeader) uint;
export @symbol("gtk_list_header_get_item") fn list_header_get_item(self: *ListHeader) *opaque;
export @symbol("gtk_list_header_get_n_items") fn list_header_get_n_items(self: *ListHeader) uint;
export @symbol("gtk_list_header_get_start") fn list_header_get_start(self: *ListHeader) uint;
export @symbol("gtk_list_header_set_child") fn list_header_set_child(self: *ListHeader, child: *Widget) void;
export type ListItem = *opaque;
export @symbol("gtk_list_item_get_accessible_description") fn list_item_get_accessible_description(self: *ListItem) *c::char;
export @symbol("gtk_list_item_get_accessible_label") fn list_item_get_accessible_label(self: *ListItem) *c::char;
export @symbol("gtk_list_item_get_activatable") fn list_item_get_activatable(self: *ListItem) glib::boolean;
export @symbol("gtk_list_item_get_child") fn list_item_get_child(self: *ListItem) *Widget;
export @symbol("gtk_list_item_get_focusable") fn list_item_get_focusable(self: *ListItem) glib::boolean;
export @symbol("gtk_list_item_get_item") fn list_item_get_item(self: *ListItem) *opaque;
export @symbol("gtk_list_item_get_position") fn list_item_get_position(self: *ListItem) uint;
export @symbol("gtk_list_item_get_selectable") fn list_item_get_selectable(self: *ListItem) glib::boolean;
export @symbol("gtk_list_item_get_selected") fn list_item_get_selected(self: *ListItem) glib::boolean;
export @symbol("gtk_list_item_set_accessible_description") fn list_item_set_accessible_description(self: *ListItem, description: *c::char) void;
export @symbol("gtk_list_item_set_accessible_label") fn list_item_set_accessible_label(self: *ListItem, label: *c::char) void;
export @symbol("gtk_list_item_set_activatable") fn list_item_set_activatable(self: *ListItem, activatable: glib::boolean) void;
export @symbol("gtk_list_item_set_child") fn list_item_set_child(self: *ListItem, child: *Widget) void;
export @symbol("gtk_list_item_set_focusable") fn list_item_set_focusable(self: *ListItem, focusable: glib::boolean) void;
export @symbol("gtk_list_item_set_selectable") fn list_item_set_selectable(self: *ListItem, selectable: glib::boolean) void;
export type ListItemFactory = *opaque;
export type ListStore = struct {
	parent: gobject::Object,
	priv: *ListStorePrivate,
};
export @symbol("gtk_list_store_new") fn list_store_new(n_columns: int, ...) *ListStore;
export @symbol("gtk_list_store_newv") fn list_store_newv(n_columns: int, types: *glib::Type) *ListStore;
export @symbol("gtk_list_store_append") fn list_store_append(list_store: *ListStore, iter: *TreeIter) void;
export @symbol("gtk_list_store_clear") fn list_store_clear(list_store: *ListStore) void;
export @symbol("gtk_list_store_insert") fn list_store_insert(list_store: *ListStore, iter: *TreeIter, position: int) void;
export @symbol("gtk_list_store_insert_after") fn list_store_insert_after(list_store: *ListStore, iter: *TreeIter, sibling: *TreeIter) void;
export @symbol("gtk_list_store_insert_before") fn list_store_insert_before(list_store: *ListStore, iter: *TreeIter, sibling: *TreeIter) void;
export @symbol("gtk_list_store_insert_with_values") fn list_store_insert_with_values(list_store: *ListStore, iter: *TreeIter, position: int, ...) void;
export @symbol("gtk_list_store_insert_with_valuesv") fn list_store_insert_with_valuesv(list_store: *ListStore, iter: *TreeIter, position: int, columns: *int, values: *gobject::Value, n_values: int) void;
export @symbol("gtk_list_store_iter_is_valid") fn list_store_iter_is_valid(list_store: *ListStore, iter: *TreeIter) glib::boolean;
export @symbol("gtk_list_store_move_after") fn list_store_move_after(store: *ListStore, iter: *TreeIter, position: *TreeIter) void;
export @symbol("gtk_list_store_move_before") fn list_store_move_before(store: *ListStore, iter: *TreeIter, position: *TreeIter) void;
export @symbol("gtk_list_store_prepend") fn list_store_prepend(list_store: *ListStore, iter: *TreeIter) void;
export @symbol("gtk_list_store_remove") fn list_store_remove(list_store: *ListStore, iter: *TreeIter) glib::boolean;
export @symbol("gtk_list_store_reorder") fn list_store_reorder(store: *ListStore, new_order: *int) void;
export @symbol("gtk_list_store_set") fn list_store_set(list_store: *ListStore, iter: *TreeIter, ...) void;
export @symbol("gtk_list_store_set_column_types") fn list_store_set_column_types(list_store: *ListStore, n_columns: int, types: *glib::Type) void;
export @symbol("gtk_list_store_set_valist") fn list_store_set_valist(list_store: *ListStore, iter: *TreeIter, var_args: valist) void;
export @symbol("gtk_list_store_set_value") fn list_store_set_value(list_store: *ListStore, iter: *TreeIter, column: int, value: *gobject::Value) void;
export @symbol("gtk_list_store_set_valuesv") fn list_store_set_valuesv(list_store: *ListStore, iter: *TreeIter, columns: *int, values: *gobject::Value, n_values: int) void;
export @symbol("gtk_list_store_swap") fn list_store_swap(store: *ListStore, a: *TreeIter, b: *TreeIter) void;
export type ListView = *opaque;
export @symbol("gtk_list_view_new") fn list_view_new(model: *SelectionModel, factory: *ListItemFactory) *Widget;
export @symbol("gtk_list_view_get_enable_rubberband") fn list_view_get_enable_rubberband(self: *ListView) glib::boolean;
export @symbol("gtk_list_view_get_factory") fn list_view_get_factory(self: *ListView) *ListItemFactory;
export @symbol("gtk_list_view_get_header_factory") fn list_view_get_header_factory(self: *ListView) *ListItemFactory;
export @symbol("gtk_list_view_get_model") fn list_view_get_model(self: *ListView) *SelectionModel;
export @symbol("gtk_list_view_get_show_separators") fn list_view_get_show_separators(self: *ListView) glib::boolean;
export @symbol("gtk_list_view_get_single_click_activate") fn list_view_get_single_click_activate(self: *ListView) glib::boolean;
export @symbol("gtk_list_view_get_tab_behavior") fn list_view_get_tab_behavior(self: *ListView) ListTabBehavior;
export @symbol("gtk_list_view_scroll_to") fn list_view_scroll_to(self: *ListView, pos: uint, flags: ListScrollFlags, scroll: *ScrollInfo) void;
export @symbol("gtk_list_view_set_enable_rubberband") fn list_view_set_enable_rubberband(self: *ListView, enable_rubberband: glib::boolean) void;
export @symbol("gtk_list_view_set_factory") fn list_view_set_factory(self: *ListView, factory: *ListItemFactory) void;
export @symbol("gtk_list_view_set_header_factory") fn list_view_set_header_factory(self: *ListView, factory: *ListItemFactory) void;
export @symbol("gtk_list_view_set_model") fn list_view_set_model(self: *ListView, model: *SelectionModel) void;
export @symbol("gtk_list_view_set_show_separators") fn list_view_set_show_separators(self: *ListView, show_separators: glib::boolean) void;
export @symbol("gtk_list_view_set_single_click_activate") fn list_view_set_single_click_activate(self: *ListView, single_click_activate: glib::boolean) void;
export @symbol("gtk_list_view_set_tab_behavior") fn list_view_set_tab_behavior(self: *ListView, tab_behavior: ListTabBehavior) void;
export fn list_view_connect_activate(
	instance: *ListView,
	handler: *fn(instance: *ListView, position: uint, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"activate\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export type LockButton = *opaque;
export @symbol("gtk_lock_button_new") fn lock_button_new(permission: *gio::Permission) *Widget;
export @symbol("gtk_lock_button_get_permission") fn lock_button_get_permission(button: *LockButton) *gio::Permission;
export @symbol("gtk_lock_button_set_permission") fn lock_button_set_permission(button: *LockButton, permission: *gio::Permission) void;
export type MapListModel = *opaque;
export @symbol("gtk_map_list_model_new") fn map_list_model_new(model: *gio::ListModel, map_func: MapListModelMapFunc, user_data: *opaque, user_destroy: glib::DestroyNotify) *MapListModel;
export @symbol("gtk_map_list_model_get_model") fn map_list_model_get_model(self: *MapListModel) *gio::ListModel;
export @symbol("gtk_map_list_model_has_map") fn map_list_model_has_map(self: *MapListModel) glib::boolean;
export @symbol("gtk_map_list_model_set_map_func") fn map_list_model_set_map_func(self: *MapListModel, map_func: MapListModelMapFunc, user_data: *opaque, user_destroy: glib::DestroyNotify) void;
export @symbol("gtk_map_list_model_set_model") fn map_list_model_set_model(self: *MapListModel, model: *gio::ListModel) void;
export type MediaControls = *opaque;
export @symbol("gtk_media_controls_new") fn media_controls_new(stream: *MediaStream) *Widget;
export @symbol("gtk_media_controls_get_media_stream") fn media_controls_get_media_stream(controls: *MediaControls) *MediaStream;
export @symbol("gtk_media_controls_set_media_stream") fn media_controls_set_media_stream(controls: *MediaControls, stream: *MediaStream) void;
export type MediaFile = struct {
	parent_instance: MediaStream,
};
export @symbol("gtk_media_file_new") fn media_file_new() *MediaStream;
export @symbol("gtk_media_file_new_for_file") fn media_file_new_for_file(file: *gio::File) *MediaStream;
export @symbol("gtk_media_file_new_for_filename") fn media_file_new_for_filename(filename: *c::char) *MediaStream;
export @symbol("gtk_media_file_new_for_input_stream") fn media_file_new_for_input_stream(stream: *gio::InputStream) *MediaStream;
export @symbol("gtk_media_file_new_for_resource") fn media_file_new_for_resource(resource_path: *c::char) *MediaStream;
export @symbol("gtk_media_file_clear") fn media_file_clear(self: *MediaFile) void;
export @symbol("gtk_media_file_get_file") fn media_file_get_file(self: *MediaFile) *gio::File;
export @symbol("gtk_media_file_get_input_stream") fn media_file_get_input_stream(self: *MediaFile) *gio::InputStream;
export @symbol("gtk_media_file_set_file") fn media_file_set_file(self: *MediaFile, file: *gio::File) void;
export @symbol("gtk_media_file_set_filename") fn media_file_set_filename(self: *MediaFile, filename: *c::char) void;
export @symbol("gtk_media_file_set_input_stream") fn media_file_set_input_stream(self: *MediaFile, stream: *gio::InputStream) void;
export @symbol("gtk_media_file_set_resource") fn media_file_set_resource(self: *MediaFile, resource_path: *c::char) void;
export type MediaStream = struct {
	parent_instance: gobject::Object,
};
export @symbol("gtk_media_stream_ended") fn media_stream_ended(self: *MediaStream) void;
export @symbol("gtk_media_stream_error") fn media_stream_error(self: *MediaStream, domain: glib::Quark, code: int, format: *c::char, ...) void;
export @symbol("gtk_media_stream_error_valist") fn media_stream_error_valist(self: *MediaStream, domain: glib::Quark, code: int, format: *c::char, args: valist) void;
export @symbol("gtk_media_stream_gerror") fn media_stream_gerror(self: *MediaStream, error: *glib::Error) void;
export @symbol("gtk_media_stream_get_duration") fn media_stream_get_duration(self: *MediaStream) i64;
export @symbol("gtk_media_stream_get_ended") fn media_stream_get_ended(self: *MediaStream) glib::boolean;
export @symbol("gtk_media_stream_get_error") fn media_stream_get_error(self: *MediaStream) *glib::Error;
export @symbol("gtk_media_stream_get_loop") fn media_stream_get_loop(self: *MediaStream) glib::boolean;
export @symbol("gtk_media_stream_get_muted") fn media_stream_get_muted(self: *MediaStream) glib::boolean;
export @symbol("gtk_media_stream_get_playing") fn media_stream_get_playing(self: *MediaStream) glib::boolean;
export @symbol("gtk_media_stream_get_timestamp") fn media_stream_get_timestamp(self: *MediaStream) i64;
export @symbol("gtk_media_stream_get_volume") fn media_stream_get_volume(self: *MediaStream) f64;
export @symbol("gtk_media_stream_has_audio") fn media_stream_has_audio(self: *MediaStream) glib::boolean;
export @symbol("gtk_media_stream_has_video") fn media_stream_has_video(self: *MediaStream) glib::boolean;
export @symbol("gtk_media_stream_is_prepared") fn media_stream_is_prepared(self: *MediaStream) glib::boolean;
export @symbol("gtk_media_stream_is_seekable") fn media_stream_is_seekable(self: *MediaStream) glib::boolean;
export @symbol("gtk_media_stream_is_seeking") fn media_stream_is_seeking(self: *MediaStream) glib::boolean;
export @symbol("gtk_media_stream_pause") fn media_stream_pause(self: *MediaStream) void;
export @symbol("gtk_media_stream_play") fn media_stream_play(self: *MediaStream) void;
export @symbol("gtk_media_stream_prepared") fn media_stream_prepared(self: *MediaStream, has_audio: glib::boolean, has_video: glib::boolean, seekable: glib::boolean, duration: i64) void;
export @symbol("gtk_media_stream_realize") fn media_stream_realize(self: *MediaStream, surface: *gdk4::Surface) void;
export @symbol("gtk_media_stream_seek") fn media_stream_seek(self: *MediaStream, timestamp: i64) void;
export @symbol("gtk_media_stream_seek_failed") fn media_stream_seek_failed(self: *MediaStream) void;
export @symbol("gtk_media_stream_seek_success") fn media_stream_seek_success(self: *MediaStream) void;
export @symbol("gtk_media_stream_set_loop") fn media_stream_set_loop(self: *MediaStream, loop: glib::boolean) void;
export @symbol("gtk_media_stream_set_muted") fn media_stream_set_muted(self: *MediaStream, muted: glib::boolean) void;
export @symbol("gtk_media_stream_set_playing") fn media_stream_set_playing(self: *MediaStream, playing: glib::boolean) void;
export @symbol("gtk_media_stream_set_volume") fn media_stream_set_volume(self: *MediaStream, volume: f64) void;
export @symbol("gtk_media_stream_stream_ended") fn media_stream_stream_ended(self: *MediaStream) void;
export @symbol("gtk_media_stream_stream_prepared") fn media_stream_stream_prepared(self: *MediaStream, has_audio: glib::boolean, has_video: glib::boolean, seekable: glib::boolean, duration: i64) void;
export @symbol("gtk_media_stream_stream_unprepared") fn media_stream_stream_unprepared(self: *MediaStream) void;
export @symbol("gtk_media_stream_unprepared") fn media_stream_unprepared(self: *MediaStream) void;
export @symbol("gtk_media_stream_unrealize") fn media_stream_unrealize(self: *MediaStream, surface: *gdk4::Surface) void;
export @symbol("gtk_media_stream_update") fn media_stream_update(self: *MediaStream, timestamp: i64) void;
export type MenuButton = *opaque;
export @symbol("gtk_menu_button_new") fn menu_button_new() *Widget;
export @symbol("gtk_menu_button_get_active") fn menu_button_get_active(menu_button: *MenuButton) glib::boolean;
export @symbol("gtk_menu_button_get_always_show_arrow") fn menu_button_get_always_show_arrow(menu_button: *MenuButton) glib::boolean;
export @symbol("gtk_menu_button_get_can_shrink") fn menu_button_get_can_shrink(menu_button: *MenuButton) glib::boolean;
export @symbol("gtk_menu_button_get_child") fn menu_button_get_child(menu_button: *MenuButton) *Widget;
export @symbol("gtk_menu_button_get_direction") fn menu_button_get_direction(menu_button: *MenuButton) ArrowType;
export @symbol("gtk_menu_button_get_has_frame") fn menu_button_get_has_frame(menu_button: *MenuButton) glib::boolean;
export @symbol("gtk_menu_button_get_icon_name") fn menu_button_get_icon_name(menu_button: *MenuButton) *c::char;
export @symbol("gtk_menu_button_get_label") fn menu_button_get_label(menu_button: *MenuButton) *c::char;
export @symbol("gtk_menu_button_get_menu_model") fn menu_button_get_menu_model(menu_button: *MenuButton) *gio::MenuModel;
export @symbol("gtk_menu_button_get_popover") fn menu_button_get_popover(menu_button: *MenuButton) *Popover;
export @symbol("gtk_menu_button_get_primary") fn menu_button_get_primary(menu_button: *MenuButton) glib::boolean;
export @symbol("gtk_menu_button_get_use_underline") fn menu_button_get_use_underline(menu_button: *MenuButton) glib::boolean;
export @symbol("gtk_menu_button_popdown") fn menu_button_popdown(menu_button: *MenuButton) void;
export @symbol("gtk_menu_button_popup") fn menu_button_popup(menu_button: *MenuButton) void;
export @symbol("gtk_menu_button_set_active") fn menu_button_set_active(menu_button: *MenuButton, active: glib::boolean) void;
export @symbol("gtk_menu_button_set_always_show_arrow") fn menu_button_set_always_show_arrow(menu_button: *MenuButton, always_show_arrow: glib::boolean) void;
export @symbol("gtk_menu_button_set_can_shrink") fn menu_button_set_can_shrink(menu_button: *MenuButton, can_shrink: glib::boolean) void;
export @symbol("gtk_menu_button_set_child") fn menu_button_set_child(menu_button: *MenuButton, child: *Widget) void;
export @symbol("gtk_menu_button_set_create_popup_func") fn menu_button_set_create_popup_func(menu_button: *MenuButton, func: MenuButtonCreatePopupFunc, user_data: *opaque, destroy_notify: glib::DestroyNotify) void;
export @symbol("gtk_menu_button_set_direction") fn menu_button_set_direction(menu_button: *MenuButton, direction: ArrowType) void;
export @symbol("gtk_menu_button_set_has_frame") fn menu_button_set_has_frame(menu_button: *MenuButton, has_frame: glib::boolean) void;
export @symbol("gtk_menu_button_set_icon_name") fn menu_button_set_icon_name(menu_button: *MenuButton, icon_name: *c::char) void;
export @symbol("gtk_menu_button_set_label") fn menu_button_set_label(menu_button: *MenuButton, label: *c::char) void;
export @symbol("gtk_menu_button_set_menu_model") fn menu_button_set_menu_model(menu_button: *MenuButton, menu_model: *gio::MenuModel) void;
export @symbol("gtk_menu_button_set_popover") fn menu_button_set_popover(menu_button: *MenuButton, popover: *Widget) void;
export @symbol("gtk_menu_button_set_primary") fn menu_button_set_primary(menu_button: *MenuButton, primary: glib::boolean) void;
export @symbol("gtk_menu_button_set_use_underline") fn menu_button_set_use_underline(menu_button: *MenuButton, use_underline: glib::boolean) void;
export fn menu_button_connect_activate(
	instance: *MenuButton,
	handler: *fn(instance: *MenuButton, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"activate\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export type MessageDialog = struct {
	parent_instance: Dialog,
};
export @symbol("gtk_message_dialog_new") fn message_dialog_new(parent: *Window, flags: DialogFlags, type_: MessageType, buttons: ButtonsType, message_format: *c::char, ...) *Widget;
export @symbol("gtk_message_dialog_new_with_markup") fn message_dialog_new_with_markup(parent: *Window, flags: DialogFlags, type_: MessageType, buttons: ButtonsType, message_format: *c::char, ...) *Widget;
export @symbol("gtk_message_dialog_format_secondary_markup") fn message_dialog_format_secondary_markup(message_dialog: *MessageDialog, message_format: *c::char, ...) void;
export @symbol("gtk_message_dialog_format_secondary_text") fn message_dialog_format_secondary_text(message_dialog: *MessageDialog, message_format: *c::char, ...) void;
export @symbol("gtk_message_dialog_get_message_area") fn message_dialog_get_message_area(message_dialog: *MessageDialog) *Widget;
export @symbol("gtk_message_dialog_set_markup") fn message_dialog_set_markup(message_dialog: *MessageDialog, str_: *c::char) void;
export type MnemonicAction = *opaque;
export @symbol("gtk_mnemonic_action_get") fn mnemonic_action_get() *ShortcutAction;
export type MnemonicTrigger = *opaque;
export @symbol("gtk_mnemonic_trigger_new") fn mnemonic_trigger_new(keyval: uint) *ShortcutTrigger;
export @symbol("gtk_mnemonic_trigger_get_keyval") fn mnemonic_trigger_get_keyval(self: *MnemonicTrigger) uint;
export type MountOperation = struct {
	parent_instance: gio::MountOperation,
	priv: *MountOperationPrivate,
};
export @symbol("gtk_mount_operation_new") fn mount_operation_new(parent: *Window) *gio::MountOperation;
export @symbol("gtk_mount_operation_get_display") fn mount_operation_get_display(op: *MountOperation) *gdk4::Display;
export @symbol("gtk_mount_operation_get_parent") fn mount_operation_get_parent(op: *MountOperation) *Window;
export @symbol("gtk_mount_operation_is_showing") fn mount_operation_is_showing(op: *MountOperation) glib::boolean;
export @symbol("gtk_mount_operation_set_display") fn mount_operation_set_display(op: *MountOperation, display: *gdk4::Display) void;
export @symbol("gtk_mount_operation_set_parent") fn mount_operation_set_parent(op: *MountOperation, parent: *Window) void;
export type MultiFilter = *opaque;
export @symbol("gtk_multi_filter_append") fn multi_filter_append(self: *MultiFilter, filter: *Filter) void;
export @symbol("gtk_multi_filter_remove") fn multi_filter_remove(self: *MultiFilter, position: uint) void;
export type MultiSelection = *opaque;
export @symbol("gtk_multi_selection_new") fn multi_selection_new(model: *gio::ListModel) *MultiSelection;
export @symbol("gtk_multi_selection_get_model") fn multi_selection_get_model(self: *MultiSelection) *gio::ListModel;
export @symbol("gtk_multi_selection_set_model") fn multi_selection_set_model(self: *MultiSelection, model: *gio::ListModel) void;
export type MultiSorter = *opaque;
export @symbol("gtk_multi_sorter_new") fn multi_sorter_new() *MultiSorter;
export @symbol("gtk_multi_sorter_append") fn multi_sorter_append(self: *MultiSorter, sorter: *Sorter) void;
export @symbol("gtk_multi_sorter_remove") fn multi_sorter_remove(self: *MultiSorter, position: uint) void;
export type NamedAction = *opaque;
export @symbol("gtk_named_action_new") fn named_action_new(name: *c::char) *ShortcutAction;
export @symbol("gtk_named_action_get_action_name") fn named_action_get_action_name(self: *NamedAction) *c::char;
export type NativeDialog = struct {
	parent_instance: gobject::Object,
};
export @symbol("gtk_native_dialog_destroy") fn native_dialog_destroy(self: *NativeDialog) void;
export @symbol("gtk_native_dialog_get_modal") fn native_dialog_get_modal(self: *NativeDialog) glib::boolean;
export @symbol("gtk_native_dialog_get_title") fn native_dialog_get_title(self: *NativeDialog) *c::char;
export @symbol("gtk_native_dialog_get_transient_for") fn native_dialog_get_transient_for(self: *NativeDialog) *Window;
export @symbol("gtk_native_dialog_get_visible") fn native_dialog_get_visible(self: *NativeDialog) glib::boolean;
export @symbol("gtk_native_dialog_hide") fn native_dialog_hide(self: *NativeDialog) void;
export @symbol("gtk_native_dialog_set_modal") fn native_dialog_set_modal(self: *NativeDialog, modal: glib::boolean) void;
export @symbol("gtk_native_dialog_set_title") fn native_dialog_set_title(self: *NativeDialog, title: *c::char) void;
export @symbol("gtk_native_dialog_set_transient_for") fn native_dialog_set_transient_for(self: *NativeDialog, parent: *Window) void;
export @symbol("gtk_native_dialog_show") fn native_dialog_show(self: *NativeDialog) void;
export fn native_dialog_connect_response(
	instance: *NativeDialog,
	handler: *fn(instance: *NativeDialog, response_id: int, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"response\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export type NeverTrigger = *opaque;
export @symbol("gtk_never_trigger_get") fn never_trigger_get() *ShortcutTrigger;
export type NoSelection = *opaque;
export @symbol("gtk_no_selection_new") fn no_selection_new(model: *gio::ListModel) *NoSelection;
export @symbol("gtk_no_selection_get_model") fn no_selection_get_model(self: *NoSelection) *gio::ListModel;
export @symbol("gtk_no_selection_set_model") fn no_selection_set_model(self: *NoSelection, model: *gio::ListModel) void;
export type Notebook = *opaque;
export @symbol("gtk_notebook_new") fn notebook_new() *Widget;
export @symbol("gtk_notebook_append_page") fn notebook_append_page(notebook: *Notebook, child: *Widget, tab_label: *Widget) int;
export @symbol("gtk_notebook_append_page_menu") fn notebook_append_page_menu(notebook: *Notebook, child: *Widget, tab_label: *Widget, menu_label: *Widget) int;
export @symbol("gtk_notebook_detach_tab") fn notebook_detach_tab(notebook: *Notebook, child: *Widget) void;
export @symbol("gtk_notebook_get_action_widget") fn notebook_get_action_widget(notebook: *Notebook, pack_type: PackType) *Widget;
export @symbol("gtk_notebook_get_current_page") fn notebook_get_current_page(notebook: *Notebook) int;
export @symbol("gtk_notebook_get_group_name") fn notebook_get_group_name(notebook: *Notebook) *c::char;
export @symbol("gtk_notebook_get_menu_label") fn notebook_get_menu_label(notebook: *Notebook, child: *Widget) *Widget;
export @symbol("gtk_notebook_get_menu_label_text") fn notebook_get_menu_label_text(notebook: *Notebook, child: *Widget) *c::char;
export @symbol("gtk_notebook_get_n_pages") fn notebook_get_n_pages(notebook: *Notebook) int;
export @symbol("gtk_notebook_get_nth_page") fn notebook_get_nth_page(notebook: *Notebook, page_num: int) *Widget;
export @symbol("gtk_notebook_get_page") fn notebook_get_page(notebook: *Notebook, child: *Widget) *NotebookPage;
export @symbol("gtk_notebook_get_pages") fn notebook_get_pages(notebook: *Notebook) *gio::ListModel;
export @symbol("gtk_notebook_get_scrollable") fn notebook_get_scrollable(notebook: *Notebook) glib::boolean;
export @symbol("gtk_notebook_get_show_border") fn notebook_get_show_border(notebook: *Notebook) glib::boolean;
export @symbol("gtk_notebook_get_show_tabs") fn notebook_get_show_tabs(notebook: *Notebook) glib::boolean;
export @symbol("gtk_notebook_get_tab_detachable") fn notebook_get_tab_detachable(notebook: *Notebook, child: *Widget) glib::boolean;
export @symbol("gtk_notebook_get_tab_label") fn notebook_get_tab_label(notebook: *Notebook, child: *Widget) *Widget;
export @symbol("gtk_notebook_get_tab_label_text") fn notebook_get_tab_label_text(notebook: *Notebook, child: *Widget) *c::char;
export @symbol("gtk_notebook_get_tab_pos") fn notebook_get_tab_pos(notebook: *Notebook) PositionType;
export @symbol("gtk_notebook_get_tab_reorderable") fn notebook_get_tab_reorderable(notebook: *Notebook, child: *Widget) glib::boolean;
export @symbol("gtk_notebook_insert_page") fn notebook_insert_page(notebook: *Notebook, child: *Widget, tab_label: *Widget, position: int) int;
export @symbol("gtk_notebook_insert_page_menu") fn notebook_insert_page_menu(notebook: *Notebook, child: *Widget, tab_label: *Widget, menu_label: *Widget, position: int) int;
export @symbol("gtk_notebook_next_page") fn notebook_next_page(notebook: *Notebook) void;
export @symbol("gtk_notebook_page_num") fn notebook_page_num(notebook: *Notebook, child: *Widget) int;
export @symbol("gtk_notebook_popup_disable") fn notebook_popup_disable(notebook: *Notebook) void;
export @symbol("gtk_notebook_popup_enable") fn notebook_popup_enable(notebook: *Notebook) void;
export @symbol("gtk_notebook_prepend_page") fn notebook_prepend_page(notebook: *Notebook, child: *Widget, tab_label: *Widget) int;
export @symbol("gtk_notebook_prepend_page_menu") fn notebook_prepend_page_menu(notebook: *Notebook, child: *Widget, tab_label: *Widget, menu_label: *Widget) int;
export @symbol("gtk_notebook_prev_page") fn notebook_prev_page(notebook: *Notebook) void;
export @symbol("gtk_notebook_remove_page") fn notebook_remove_page(notebook: *Notebook, page_num: int) void;
export @symbol("gtk_notebook_reorder_child") fn notebook_reorder_child(notebook: *Notebook, child: *Widget, position: int) void;
export @symbol("gtk_notebook_set_action_widget") fn notebook_set_action_widget(notebook: *Notebook, widget: *Widget, pack_type: PackType) void;
export @symbol("gtk_notebook_set_current_page") fn notebook_set_current_page(notebook: *Notebook, page_num: int) void;
export @symbol("gtk_notebook_set_group_name") fn notebook_set_group_name(notebook: *Notebook, group_name: *c::char) void;
export @symbol("gtk_notebook_set_menu_label") fn notebook_set_menu_label(notebook: *Notebook, child: *Widget, menu_label: *Widget) void;
export @symbol("gtk_notebook_set_menu_label_text") fn notebook_set_menu_label_text(notebook: *Notebook, child: *Widget, menu_text: *c::char) void;
export @symbol("gtk_notebook_set_scrollable") fn notebook_set_scrollable(notebook: *Notebook, scrollable: glib::boolean) void;
export @symbol("gtk_notebook_set_show_border") fn notebook_set_show_border(notebook: *Notebook, show_border: glib::boolean) void;
export @symbol("gtk_notebook_set_show_tabs") fn notebook_set_show_tabs(notebook: *Notebook, show_tabs: glib::boolean) void;
export @symbol("gtk_notebook_set_tab_detachable") fn notebook_set_tab_detachable(notebook: *Notebook, child: *Widget, detachable: glib::boolean) void;
export @symbol("gtk_notebook_set_tab_label") fn notebook_set_tab_label(notebook: *Notebook, child: *Widget, tab_label: *Widget) void;
export @symbol("gtk_notebook_set_tab_label_text") fn notebook_set_tab_label_text(notebook: *Notebook, child: *Widget, tab_text: *c::char) void;
export @symbol("gtk_notebook_set_tab_pos") fn notebook_set_tab_pos(notebook: *Notebook, pos: PositionType) void;
export @symbol("gtk_notebook_set_tab_reorderable") fn notebook_set_tab_reorderable(notebook: *Notebook, child: *Widget, reorderable: glib::boolean) void;
export fn notebook_connect_change_current_page(
	instance: *Notebook,
	handler: *fn(instance: *Notebook, object: int, data: *opaque) glib::boolean,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"change-current-page\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn notebook_connect_create_window(
	instance: *Notebook,
	handler: *fn(instance: *Notebook, page: *Widget, data: *opaque) *Notebook,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"create-window\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn notebook_connect_focus_tab(
	instance: *Notebook,
	handler: *fn(instance: *Notebook, object: NotebookTab, data: *opaque) glib::boolean,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"focus-tab\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn notebook_connect_move_focus_out(
	instance: *Notebook,
	handler: *fn(instance: *Notebook, object: DirectionType, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"move-focus-out\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn notebook_connect_page_added(
	instance: *Notebook,
	handler: *fn(instance: *Notebook, child: *Widget, page_num: uint, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"page-added\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn notebook_connect_page_removed(
	instance: *Notebook,
	handler: *fn(instance: *Notebook, child: *Widget, page_num: uint, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"page-removed\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn notebook_connect_page_reordered(
	instance: *Notebook,
	handler: *fn(instance: *Notebook, child: *Widget, page_num: uint, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"page-reordered\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn notebook_connect_reorder_tab(
	instance: *Notebook,
	handler: *fn(instance: *Notebook, object: DirectionType, p0: glib::boolean, data: *opaque) glib::boolean,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"reorder-tab\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn notebook_connect_select_page(
	instance: *Notebook,
	handler: *fn(instance: *Notebook, object: glib::boolean, data: *opaque) glib::boolean,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"select-page\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn notebook_connect_switch_page(
	instance: *Notebook,
	handler: *fn(instance: *Notebook, page: *Widget, page_num: uint, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"switch-page\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export type NotebookPage = *opaque;
export @symbol("gtk_notebook_page_get_child") fn notebook_page_get_child(page: *NotebookPage) *Widget;
export type NothingAction = *opaque;
export @symbol("gtk_nothing_action_get") fn nothing_action_get() *ShortcutAction;
export type NumericSorter = *opaque;
export @symbol("gtk_numeric_sorter_new") fn numeric_sorter_new(expression: *Expression) *NumericSorter;
export @symbol("gtk_numeric_sorter_get_expression") fn numeric_sorter_get_expression(self: *NumericSorter) *Expression;
export @symbol("gtk_numeric_sorter_get_sort_order") fn numeric_sorter_get_sort_order(self: *NumericSorter) SortType;
export @symbol("gtk_numeric_sorter_set_expression") fn numeric_sorter_set_expression(self: *NumericSorter, expression: *Expression) void;
export @symbol("gtk_numeric_sorter_set_sort_order") fn numeric_sorter_set_sort_order(self: *NumericSorter, sort_order: SortType) void;
export type ObjectExpression = *opaque;
export @symbol("gtk_object_expression_new") fn object_expression_new(object: *gobject::Object) *Expression;
export @symbol("gtk_object_expression_get_object") fn object_expression_get_object(expression: *Expression) *gobject::Object;
export type Overlay = *opaque;
export @symbol("gtk_overlay_new") fn overlay_new() *Widget;
export @symbol("gtk_overlay_add_overlay") fn overlay_add_overlay(overlay: *Overlay, widget: *Widget) void;
export @symbol("gtk_overlay_get_child") fn overlay_get_child(overlay: *Overlay) *Widget;
export @symbol("gtk_overlay_get_clip_overlay") fn overlay_get_clip_overlay(overlay: *Overlay, widget: *Widget) glib::boolean;
export @symbol("gtk_overlay_get_measure_overlay") fn overlay_get_measure_overlay(overlay: *Overlay, widget: *Widget) glib::boolean;
export @symbol("gtk_overlay_remove_overlay") fn overlay_remove_overlay(overlay: *Overlay, widget: *Widget) void;
export @symbol("gtk_overlay_set_child") fn overlay_set_child(overlay: *Overlay, child: *Widget) void;
export @symbol("gtk_overlay_set_clip_overlay") fn overlay_set_clip_overlay(overlay: *Overlay, widget: *Widget, clip_overlay: glib::boolean) void;
export @symbol("gtk_overlay_set_measure_overlay") fn overlay_set_measure_overlay(overlay: *Overlay, widget: *Widget, measure: glib::boolean) void;
export fn overlay_connect_get_child_position(
	instance: *Overlay,
	handler: *fn(instance: *Overlay, widget: *Widget, allocation: gdk4::Rectangle, data: *opaque) glib::boolean,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"get-child-position\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export type OverlayLayout = *opaque;
export @symbol("gtk_overlay_layout_new") fn overlay_layout_new() *LayoutManager;
export type OverlayLayoutChild = *opaque;
export @symbol("gtk_overlay_layout_child_get_clip_overlay") fn overlay_layout_child_get_clip_overlay(child: *OverlayLayoutChild) glib::boolean;
export @symbol("gtk_overlay_layout_child_get_measure") fn overlay_layout_child_get_measure(child: *OverlayLayoutChild) glib::boolean;
export @symbol("gtk_overlay_layout_child_set_clip_overlay") fn overlay_layout_child_set_clip_overlay(child: *OverlayLayoutChild, clip_overlay: glib::boolean) void;
export @symbol("gtk_overlay_layout_child_set_measure") fn overlay_layout_child_set_measure(child: *OverlayLayoutChild, measure: glib::boolean) void;
export type PadController = *opaque;
export @symbol("gtk_pad_controller_new") fn pad_controller_new(group: *gio::ActionGroup, pad: *gdk4::Device) *PadController;
export @symbol("gtk_pad_controller_set_action") fn pad_controller_set_action(controller: *PadController, type_: PadActionType, index: int, mode: int, label: *c::char, action_name: *c::char) void;
export @symbol("gtk_pad_controller_set_action_entries") fn pad_controller_set_action_entries(controller: *PadController, entries: *PadActionEntry, n_entries: int) void;
export type PageSetup = *opaque;
export @symbol("gtk_page_setup_new") fn page_setup_new() *PageSetup;
export @symbol("gtk_page_setup_new_from_file") fn page_setup_new_from_file(file_name: *c::char, error: nullable **glib::Error) *PageSetup;
export @symbol("gtk_page_setup_new_from_gvariant") fn page_setup_new_from_gvariant(variant: *glib::Variant) *PageSetup;
export @symbol("gtk_page_setup_new_from_key_file") fn page_setup_new_from_key_file(key_file: *glib::KeyFile, group_name: *c::char, error: nullable **glib::Error) *PageSetup;
export @symbol("gtk_page_setup_copy") fn page_setup_copy(other: *PageSetup) *PageSetup;
export @symbol("gtk_page_setup_get_bottom_margin") fn page_setup_get_bottom_margin(setup: *PageSetup, unit: Unit) f64;
export @symbol("gtk_page_setup_get_left_margin") fn page_setup_get_left_margin(setup: *PageSetup, unit: Unit) f64;
export @symbol("gtk_page_setup_get_orientation") fn page_setup_get_orientation(setup: *PageSetup) PageOrientation;
export @symbol("gtk_page_setup_get_page_height") fn page_setup_get_page_height(setup: *PageSetup, unit: Unit) f64;
export @symbol("gtk_page_setup_get_page_width") fn page_setup_get_page_width(setup: *PageSetup, unit: Unit) f64;
export @symbol("gtk_page_setup_get_paper_height") fn page_setup_get_paper_height(setup: *PageSetup, unit: Unit) f64;
export @symbol("gtk_page_setup_get_paper_size") fn page_setup_get_paper_size(setup: *PageSetup) *PaperSize;
export @symbol("gtk_page_setup_get_paper_width") fn page_setup_get_paper_width(setup: *PageSetup, unit: Unit) f64;
export @symbol("gtk_page_setup_get_right_margin") fn page_setup_get_right_margin(setup: *PageSetup, unit: Unit) f64;
export @symbol("gtk_page_setup_get_top_margin") fn page_setup_get_top_margin(setup: *PageSetup, unit: Unit) f64;
export @symbol("gtk_page_setup_load_file") fn page_setup_load_file(setup: *PageSetup, file_name: *c::char, error: nullable **glib::Error) glib::boolean;
export @symbol("gtk_page_setup_load_key_file") fn page_setup_load_key_file(setup: *PageSetup, key_file: *glib::KeyFile, group_name: *c::char, error: nullable **glib::Error) glib::boolean;
export @symbol("gtk_page_setup_set_bottom_margin") fn page_setup_set_bottom_margin(setup: *PageSetup, margin: f64, unit: Unit) void;
export @symbol("gtk_page_setup_set_left_margin") fn page_setup_set_left_margin(setup: *PageSetup, margin: f64, unit: Unit) void;
export @symbol("gtk_page_setup_set_orientation") fn page_setup_set_orientation(setup: *PageSetup, orientation: PageOrientation) void;
export @symbol("gtk_page_setup_set_paper_size") fn page_setup_set_paper_size(setup: *PageSetup, size_: *PaperSize) void;
export @symbol("gtk_page_setup_set_paper_size_and_default_margins") fn page_setup_set_paper_size_and_default_margins(setup: *PageSetup, size_: *PaperSize) void;
export @symbol("gtk_page_setup_set_right_margin") fn page_setup_set_right_margin(setup: *PageSetup, margin: f64, unit: Unit) void;
export @symbol("gtk_page_setup_set_top_margin") fn page_setup_set_top_margin(setup: *PageSetup, margin: f64, unit: Unit) void;
export @symbol("gtk_page_setup_to_file") fn page_setup_to_file(setup: *PageSetup, file_name: *c::char, error: nullable **glib::Error) glib::boolean;
export @symbol("gtk_page_setup_to_gvariant") fn page_setup_to_gvariant(setup: *PageSetup) *glib::Variant;
export @symbol("gtk_page_setup_to_key_file") fn page_setup_to_key_file(setup: *PageSetup, key_file: *glib::KeyFile, group_name: *c::char) void;
export type PageSetupUnixDialog = *opaque;
export @symbol("gtk_page_setup_unix_dialog_new") fn page_setup_unix_dialog_new(title: *c::char, parent: *Window) *Widget;
export @symbol("gtk_page_setup_unix_dialog_get_page_setup") fn page_setup_unix_dialog_get_page_setup(dialog: *PageSetupUnixDialog) *PageSetup;
export @symbol("gtk_page_setup_unix_dialog_get_print_settings") fn page_setup_unix_dialog_get_print_settings(dialog: *PageSetupUnixDialog) *PrintSettings;
export @symbol("gtk_page_setup_unix_dialog_set_page_setup") fn page_setup_unix_dialog_set_page_setup(dialog: *PageSetupUnixDialog, page_setup: *PageSetup) void;
export @symbol("gtk_page_setup_unix_dialog_set_print_settings") fn page_setup_unix_dialog_set_print_settings(dialog: *PageSetupUnixDialog, print_settings: *PrintSettings) void;
export type Paned = *opaque;
export @symbol("gtk_paned_new") fn paned_new(orientation: Orientation) *Widget;
export @symbol("gtk_paned_get_end_child") fn paned_get_end_child(paned: *Paned) *Widget;
export @symbol("gtk_paned_get_position") fn paned_get_position(paned: *Paned) int;
export @symbol("gtk_paned_get_resize_end_child") fn paned_get_resize_end_child(paned: *Paned) glib::boolean;
export @symbol("gtk_paned_get_resize_start_child") fn paned_get_resize_start_child(paned: *Paned) glib::boolean;
export @symbol("gtk_paned_get_shrink_end_child") fn paned_get_shrink_end_child(paned: *Paned) glib::boolean;
export @symbol("gtk_paned_get_shrink_start_child") fn paned_get_shrink_start_child(paned: *Paned) glib::boolean;
export @symbol("gtk_paned_get_start_child") fn paned_get_start_child(paned: *Paned) *Widget;
export @symbol("gtk_paned_get_wide_handle") fn paned_get_wide_handle(paned: *Paned) glib::boolean;
export @symbol("gtk_paned_set_end_child") fn paned_set_end_child(paned: *Paned, child: *Widget) void;
export @symbol("gtk_paned_set_position") fn paned_set_position(paned: *Paned, position: int) void;
export @symbol("gtk_paned_set_resize_end_child") fn paned_set_resize_end_child(paned: *Paned, resize: glib::boolean) void;
export @symbol("gtk_paned_set_resize_start_child") fn paned_set_resize_start_child(paned: *Paned, resize: glib::boolean) void;
export @symbol("gtk_paned_set_shrink_end_child") fn paned_set_shrink_end_child(paned: *Paned, resize: glib::boolean) void;
export @symbol("gtk_paned_set_shrink_start_child") fn paned_set_shrink_start_child(paned: *Paned, resize: glib::boolean) void;
export @symbol("gtk_paned_set_start_child") fn paned_set_start_child(paned: *Paned, child: *Widget) void;
export @symbol("gtk_paned_set_wide_handle") fn paned_set_wide_handle(paned: *Paned, wide: glib::boolean) void;
export fn paned_connect_accept_position(
	instance: *Paned,
	handler: *fn(instance: *Paned, data: *opaque) glib::boolean,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"accept-position\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn paned_connect_cancel_position(
	instance: *Paned,
	handler: *fn(instance: *Paned, data: *opaque) glib::boolean,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"cancel-position\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn paned_connect_cycle_child_focus(
	instance: *Paned,
	handler: *fn(instance: *Paned, reversed: glib::boolean, data: *opaque) glib::boolean,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"cycle-child-focus\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn paned_connect_cycle_handle_focus(
	instance: *Paned,
	handler: *fn(instance: *Paned, reversed: glib::boolean, data: *opaque) glib::boolean,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"cycle-handle-focus\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn paned_connect_move_handle(
	instance: *Paned,
	handler: *fn(instance: *Paned, scroll_type: atk::ScrollType, data: *opaque) glib::boolean,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"move-handle\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn paned_connect_toggle_handle_focus(
	instance: *Paned,
	handler: *fn(instance: *Paned, data: *opaque) glib::boolean,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"toggle-handle-focus\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export type ParamSpecExpression = struct {
	parent_instance: gobject::ParamSpec,
};
export type PasswordEntry = *opaque;
export @symbol("gtk_password_entry_new") fn password_entry_new() *Widget;
export @symbol("gtk_password_entry_get_extra_menu") fn password_entry_get_extra_menu(entry: *PasswordEntry) *gio::MenuModel;
export @symbol("gtk_password_entry_get_show_peek_icon") fn password_entry_get_show_peek_icon(entry: *PasswordEntry) glib::boolean;
export @symbol("gtk_password_entry_set_extra_menu") fn password_entry_set_extra_menu(entry: *PasswordEntry, model: *gio::MenuModel) void;
export @symbol("gtk_password_entry_set_show_peek_icon") fn password_entry_set_show_peek_icon(entry: *PasswordEntry, show_peek_icon: glib::boolean) void;
export fn password_entry_connect_activate(
	instance: *PasswordEntry,
	handler: *fn(instance: *PasswordEntry, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"activate\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export type PasswordEntryBuffer = *opaque;
export @symbol("gtk_password_entry_buffer_new") fn password_entry_buffer_new() *EntryBuffer;
export type Picture = *opaque;
export @symbol("gtk_picture_new") fn picture_new() *Widget;
export @symbol("gtk_picture_new_for_file") fn picture_new_for_file(file: *gio::File) *Widget;
export @symbol("gtk_picture_new_for_filename") fn picture_new_for_filename(filename: *c::char) *Widget;
export @symbol("gtk_picture_new_for_paintable") fn picture_new_for_paintable(paintable: *gdk4::Paintable) *Widget;
export @symbol("gtk_picture_new_for_pixbuf") fn picture_new_for_pixbuf(pixbuf: *gdkpixbuf::Pixbuf) *Widget;
export @symbol("gtk_picture_new_for_resource") fn picture_new_for_resource(resource_path: *c::char) *Widget;
export @symbol("gtk_picture_get_alternative_text") fn picture_get_alternative_text(self: *Picture) *c::char;
export @symbol("gtk_picture_get_can_shrink") fn picture_get_can_shrink(self: *Picture) glib::boolean;
export @symbol("gtk_picture_get_content_fit") fn picture_get_content_fit(self: *Picture) ContentFit;
export @symbol("gtk_picture_get_file") fn picture_get_file(self: *Picture) *gio::File;
export @symbol("gtk_picture_get_keep_aspect_ratio") fn picture_get_keep_aspect_ratio(self: *Picture) glib::boolean;
export @symbol("gtk_picture_get_paintable") fn picture_get_paintable(self: *Picture) *gdk4::Paintable;
export @symbol("gtk_picture_set_alternative_text") fn picture_set_alternative_text(self: *Picture, alternative_text: *c::char) void;
export @symbol("gtk_picture_set_can_shrink") fn picture_set_can_shrink(self: *Picture, can_shrink: glib::boolean) void;
export @symbol("gtk_picture_set_content_fit") fn picture_set_content_fit(self: *Picture, content_fit: ContentFit) void;
export @symbol("gtk_picture_set_file") fn picture_set_file(self: *Picture, file: *gio::File) void;
export @symbol("gtk_picture_set_filename") fn picture_set_filename(self: *Picture, filename: *c::char) void;
export @symbol("gtk_picture_set_keep_aspect_ratio") fn picture_set_keep_aspect_ratio(self: *Picture, keep_aspect_ratio: glib::boolean) void;
export @symbol("gtk_picture_set_paintable") fn picture_set_paintable(self: *Picture, paintable: *gdk4::Paintable) void;
export @symbol("gtk_picture_set_pixbuf") fn picture_set_pixbuf(self: *Picture, pixbuf: *gdkpixbuf::Pixbuf) void;
export @symbol("gtk_picture_set_resource") fn picture_set_resource(self: *Picture, resource_path: *c::char) void;
export type Popover = struct {
	parent: Widget,
};
export @symbol("gtk_popover_new") fn popover_new() *Widget;
export @symbol("gtk_popover_get_autohide") fn popover_get_autohide(popover: *Popover) glib::boolean;
export @symbol("gtk_popover_get_cascade_popdown") fn popover_get_cascade_popdown(popover: *Popover) glib::boolean;
export @symbol("gtk_popover_get_child") fn popover_get_child(popover: *Popover) *Widget;
export @symbol("gtk_popover_get_has_arrow") fn popover_get_has_arrow(popover: *Popover) glib::boolean;
export @symbol("gtk_popover_get_mnemonics_visible") fn popover_get_mnemonics_visible(popover: *Popover) glib::boolean;
export @symbol("gtk_popover_get_offset") fn popover_get_offset(popover: *Popover, x_offset: *int, y_offset: *int) void;
export @symbol("gtk_popover_get_pointing_to") fn popover_get_pointing_to(popover: *Popover, rect: *gdk4::Rectangle) glib::boolean;
export @symbol("gtk_popover_get_position") fn popover_get_position(popover: *Popover) PositionType;
export @symbol("gtk_popover_popdown") fn popover_popdown(popover: *Popover) void;
export @symbol("gtk_popover_popup") fn popover_popup(popover: *Popover) void;
export @symbol("gtk_popover_present") fn popover_present(popover: *Popover) void;
export @symbol("gtk_popover_set_autohide") fn popover_set_autohide(popover: *Popover, autohide: glib::boolean) void;
export @symbol("gtk_popover_set_cascade_popdown") fn popover_set_cascade_popdown(popover: *Popover, cascade_popdown: glib::boolean) void;
export @symbol("gtk_popover_set_child") fn popover_set_child(popover: *Popover, child: *Widget) void;
export @symbol("gtk_popover_set_default_widget") fn popover_set_default_widget(popover: *Popover, widget: *Widget) void;
export @symbol("gtk_popover_set_has_arrow") fn popover_set_has_arrow(popover: *Popover, has_arrow: glib::boolean) void;
export @symbol("gtk_popover_set_mnemonics_visible") fn popover_set_mnemonics_visible(popover: *Popover, mnemonics_visible: glib::boolean) void;
export @symbol("gtk_popover_set_offset") fn popover_set_offset(popover: *Popover, x_offset: int, y_offset: int) void;
export @symbol("gtk_popover_set_pointing_to") fn popover_set_pointing_to(popover: *Popover, rect: *gdk4::Rectangle) void;
export @symbol("gtk_popover_set_position") fn popover_set_position(popover: *Popover, position: PositionType) void;
export fn popover_connect_activate_default(
	instance: *Popover,
	handler: *fn(instance: *Popover, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"activate-default\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn popover_connect_closed(
	instance: *Popover,
	handler: *fn(instance: *Popover, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"closed\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export type PopoverMenu = *opaque;
export @symbol("gtk_popover_menu_new_from_model") fn popover_menu_new_from_model(model: *gio::MenuModel) *Widget;
export @symbol("gtk_popover_menu_new_from_model_full") fn popover_menu_new_from_model_full(model: *gio::MenuModel, flags: PopoverMenuFlags) *Widget;
export @symbol("gtk_popover_menu_add_child") fn popover_menu_add_child(popover: *PopoverMenu, child: *Widget, id: *c::char) glib::boolean;
export @symbol("gtk_popover_menu_get_menu_model") fn popover_menu_get_menu_model(popover: *PopoverMenu) *gio::MenuModel;
export @symbol("gtk_popover_menu_remove_child") fn popover_menu_remove_child(popover: *PopoverMenu, child: *Widget) glib::boolean;
export @symbol("gtk_popover_menu_set_menu_model") fn popover_menu_set_menu_model(popover: *PopoverMenu, model: *gio::MenuModel) void;
export type PopoverMenuBar = *opaque;
export @symbol("gtk_popover_menu_bar_new_from_model") fn popover_menu_bar_new_from_model(model: *gio::MenuModel) *Widget;
export @symbol("gtk_popover_menu_bar_add_child") fn popover_menu_bar_add_child(bar: *PopoverMenuBar, child: *Widget, id: *c::char) glib::boolean;
export @symbol("gtk_popover_menu_bar_get_menu_model") fn popover_menu_bar_get_menu_model(bar: *PopoverMenuBar) *gio::MenuModel;
export @symbol("gtk_popover_menu_bar_remove_child") fn popover_menu_bar_remove_child(bar: *PopoverMenuBar, child: *Widget) glib::boolean;
export @symbol("gtk_popover_menu_bar_set_menu_model") fn popover_menu_bar_set_menu_model(bar: *PopoverMenuBar, model: *gio::MenuModel) void;
export type PrintContext = *opaque;
export @symbol("gtk_print_context_create_pango_context") fn print_context_create_pango_context(context: *PrintContext) *pango::Context;
export @symbol("gtk_print_context_create_pango_layout") fn print_context_create_pango_layout(context: *PrintContext) *pango::Layout;
export @symbol("gtk_print_context_get_cairo_context") fn print_context_get_cairo_context(context: *PrintContext) *cairo::Context;
export @symbol("gtk_print_context_get_dpi_x") fn print_context_get_dpi_x(context: *PrintContext) f64;
export @symbol("gtk_print_context_get_dpi_y") fn print_context_get_dpi_y(context: *PrintContext) f64;
export @symbol("gtk_print_context_get_hard_margins") fn print_context_get_hard_margins(context: *PrintContext, top: *f64, bottom: *f64, left: *f64, right: *f64) glib::boolean;
export @symbol("gtk_print_context_get_height") fn print_context_get_height(context: *PrintContext) f64;
export @symbol("gtk_print_context_get_page_setup") fn print_context_get_page_setup(context: *PrintContext) *PageSetup;
export @symbol("gtk_print_context_get_pango_fontmap") fn print_context_get_pango_fontmap(context: *PrintContext) *pango::FontMap;
export @symbol("gtk_print_context_get_width") fn print_context_get_width(context: *PrintContext) f64;
export @symbol("gtk_print_context_set_cairo_context") fn print_context_set_cairo_context(context: *PrintContext, cr: *cairo::Context, dpi_x: f64, dpi_y: f64) void;
export type PrintJob = *opaque;
export @symbol("gtk_print_job_new") fn print_job_new(title: *c::char, printer: *Printer, settings: *PrintSettings, page_setup: *PageSetup) *PrintJob;
export @symbol("gtk_print_job_get_collate") fn print_job_get_collate(job: *PrintJob) glib::boolean;
export @symbol("gtk_print_job_get_n_up") fn print_job_get_n_up(job: *PrintJob) uint;
export @symbol("gtk_print_job_get_n_up_layout") fn print_job_get_n_up_layout(job: *PrintJob) NumberUpLayout;
export @symbol("gtk_print_job_get_num_copies") fn print_job_get_num_copies(job: *PrintJob) int;
export @symbol("gtk_print_job_get_page_ranges") fn print_job_get_page_ranges(job: *PrintJob, n_ranges: *int) *PageRange;
export @symbol("gtk_print_job_get_page_set") fn print_job_get_page_set(job: *PrintJob) PageSet;
export @symbol("gtk_print_job_get_pages") fn print_job_get_pages(job: *PrintJob) PrintPages;
export @symbol("gtk_print_job_get_printer") fn print_job_get_printer(job: *PrintJob) *Printer;
export @symbol("gtk_print_job_get_reverse") fn print_job_get_reverse(job: *PrintJob) glib::boolean;
export @symbol("gtk_print_job_get_rotate") fn print_job_get_rotate(job: *PrintJob) glib::boolean;
export @symbol("gtk_print_job_get_scale") fn print_job_get_scale(job: *PrintJob) f64;
export @symbol("gtk_print_job_get_settings") fn print_job_get_settings(job: *PrintJob) *PrintSettings;
export @symbol("gtk_print_job_get_status") fn print_job_get_status(job: *PrintJob) PrintStatus;
export @symbol("gtk_print_job_get_surface") fn print_job_get_surface(job: *PrintJob, error: nullable **glib::Error) *cairo::Surface;
export @symbol("gtk_print_job_get_title") fn print_job_get_title(job: *PrintJob) *c::char;
export @symbol("gtk_print_job_get_track_print_status") fn print_job_get_track_print_status(job: *PrintJob) glib::boolean;
export @symbol("gtk_print_job_send") fn print_job_send(job: *PrintJob, callback: PrintJobCompleteFunc, user_data: *opaque, dnotify: glib::DestroyNotify) void;
export @symbol("gtk_print_job_set_collate") fn print_job_set_collate(job: *PrintJob, collate: glib::boolean) void;
export @symbol("gtk_print_job_set_n_up") fn print_job_set_n_up(job: *PrintJob, n_up: uint) void;
export @symbol("gtk_print_job_set_n_up_layout") fn print_job_set_n_up_layout(job: *PrintJob, layout: NumberUpLayout) void;
export @symbol("gtk_print_job_set_num_copies") fn print_job_set_num_copies(job: *PrintJob, num_copies: int) void;
export @symbol("gtk_print_job_set_page_ranges") fn print_job_set_page_ranges(job: *PrintJob, ranges: *PageRange, n_ranges: int) void;
export @symbol("gtk_print_job_set_page_set") fn print_job_set_page_set(job: *PrintJob, page_set: PageSet) void;
export @symbol("gtk_print_job_set_pages") fn print_job_set_pages(job: *PrintJob, pages: PrintPages) void;
export @symbol("gtk_print_job_set_reverse") fn print_job_set_reverse(job: *PrintJob, reverse: glib::boolean) void;
export @symbol("gtk_print_job_set_rotate") fn print_job_set_rotate(job: *PrintJob, rotate: glib::boolean) void;
export @symbol("gtk_print_job_set_scale") fn print_job_set_scale(job: *PrintJob, scale: f64) void;
export @symbol("gtk_print_job_set_source_fd") fn print_job_set_source_fd(job: *PrintJob, fd: int, error: nullable **glib::Error) glib::boolean;
export @symbol("gtk_print_job_set_source_file") fn print_job_set_source_file(job: *PrintJob, filename: *c::char, error: nullable **glib::Error) glib::boolean;
export @symbol("gtk_print_job_set_track_print_status") fn print_job_set_track_print_status(job: *PrintJob, track_status: glib::boolean) void;
export fn print_job_connect_status_changed(
	instance: *PrintJob,
	handler: *fn(instance: *PrintJob, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"status-changed\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export type PrintOperation = struct {
	parent_instance: gobject::Object,
	priv: *PrintOperationPrivate,
};
export @symbol("gtk_print_operation_new") fn print_operation_new() *PrintOperation;
export @symbol("gtk_print_operation_cancel") fn print_operation_cancel(op: *PrintOperation) void;
export @symbol("gtk_print_operation_draw_page_finish") fn print_operation_draw_page_finish(op: *PrintOperation) void;
export @symbol("gtk_print_operation_get_default_page_setup") fn print_operation_get_default_page_setup(op: *PrintOperation) *PageSetup;
export @symbol("gtk_print_operation_get_embed_page_setup") fn print_operation_get_embed_page_setup(op: *PrintOperation) glib::boolean;
export @symbol("gtk_print_operation_get_error") fn print_operation_get_error(op: *PrintOperation, error: nullable **glib::Error) void;
export @symbol("gtk_print_operation_get_has_selection") fn print_operation_get_has_selection(op: *PrintOperation) glib::boolean;
export @symbol("gtk_print_operation_get_n_pages_to_print") fn print_operation_get_n_pages_to_print(op: *PrintOperation) int;
export @symbol("gtk_print_operation_get_print_settings") fn print_operation_get_print_settings(op: *PrintOperation) *PrintSettings;
export @symbol("gtk_print_operation_get_status") fn print_operation_get_status(op: *PrintOperation) PrintStatus;
export @symbol("gtk_print_operation_get_status_string") fn print_operation_get_status_string(op: *PrintOperation) *c::char;
export @symbol("gtk_print_operation_get_support_selection") fn print_operation_get_support_selection(op: *PrintOperation) glib::boolean;
export @symbol("gtk_print_operation_is_finished") fn print_operation_is_finished(op: *PrintOperation) glib::boolean;
export @symbol("gtk_print_operation_run") fn print_operation_run(op: *PrintOperation, action: PrintOperationAction, parent: *Window, error: nullable **glib::Error) PrintOperationResult;
export @symbol("gtk_print_operation_set_allow_async") fn print_operation_set_allow_async(op: *PrintOperation, allow_async: glib::boolean) void;
export @symbol("gtk_print_operation_set_current_page") fn print_operation_set_current_page(op: *PrintOperation, current_page: int) void;
export @symbol("gtk_print_operation_set_custom_tab_label") fn print_operation_set_custom_tab_label(op: *PrintOperation, label: *c::char) void;
export @symbol("gtk_print_operation_set_default_page_setup") fn print_operation_set_default_page_setup(op: *PrintOperation, default_page_setup: *PageSetup) void;
export @symbol("gtk_print_operation_set_defer_drawing") fn print_operation_set_defer_drawing(op: *PrintOperation) void;
export @symbol("gtk_print_operation_set_embed_page_setup") fn print_operation_set_embed_page_setup(op: *PrintOperation, embed: glib::boolean) void;
export @symbol("gtk_print_operation_set_export_filename") fn print_operation_set_export_filename(op: *PrintOperation, filename: *c::char) void;
export @symbol("gtk_print_operation_set_has_selection") fn print_operation_set_has_selection(op: *PrintOperation, has_selection: glib::boolean) void;
export @symbol("gtk_print_operation_set_job_name") fn print_operation_set_job_name(op: *PrintOperation, job_name: *c::char) void;
export @symbol("gtk_print_operation_set_n_pages") fn print_operation_set_n_pages(op: *PrintOperation, n_pages: int) void;
export @symbol("gtk_print_operation_set_print_settings") fn print_operation_set_print_settings(op: *PrintOperation, print_settings: *PrintSettings) void;
export @symbol("gtk_print_operation_set_show_progress") fn print_operation_set_show_progress(op: *PrintOperation, show_progress: glib::boolean) void;
export @symbol("gtk_print_operation_set_support_selection") fn print_operation_set_support_selection(op: *PrintOperation, support_selection: glib::boolean) void;
export @symbol("gtk_print_operation_set_track_print_status") fn print_operation_set_track_print_status(op: *PrintOperation, track_status: glib::boolean) void;
export @symbol("gtk_print_operation_set_unit") fn print_operation_set_unit(op: *PrintOperation, unit: Unit) void;
export @symbol("gtk_print_operation_set_use_full_page") fn print_operation_set_use_full_page(op: *PrintOperation, full_page: glib::boolean) void;
export fn print_operation_connect_begin_print(
	instance: *PrintOperation,
	handler: *fn(instance: *PrintOperation, context: *PrintContext, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"begin-print\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn print_operation_connect_create_custom_widget(
	instance: *PrintOperation,
	handler: *fn(instance: *PrintOperation, data: *opaque) gobject::Object,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"create-custom-widget\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn print_operation_connect_custom_widget_apply(
	instance: *PrintOperation,
	handler: *fn(instance: *PrintOperation, widget: *Widget, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"custom-widget-apply\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn print_operation_connect_done(
	instance: *PrintOperation,
	handler: *fn(instance: *PrintOperation, result: PrintOperationResult, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"done\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn print_operation_connect_draw_page(
	instance: *PrintOperation,
	handler: *fn(instance: *PrintOperation, context: *PrintContext, page_nr: int, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"draw-page\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn print_operation_connect_end_print(
	instance: *PrintOperation,
	handler: *fn(instance: *PrintOperation, context: *PrintContext, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"end-print\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn print_operation_connect_paginate(
	instance: *PrintOperation,
	handler: *fn(instance: *PrintOperation, context: *PrintContext, data: *opaque) glib::boolean,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"paginate\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn print_operation_connect_preview(
	instance: *PrintOperation,
	handler: *fn(instance: *PrintOperation, preview: *PrintOperationPreview, context: *PrintContext, parent: *atk::Window, data: *opaque) glib::boolean,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"preview\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn print_operation_connect_request_page_setup(
	instance: *PrintOperation,
	handler: *fn(instance: *PrintOperation, context: *PrintContext, page_nr: int, setup: *PageSetup, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"request-page-setup\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn print_operation_connect_status_changed(
	instance: *PrintOperation,
	handler: *fn(instance: *PrintOperation, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"status-changed\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn print_operation_connect_update_custom_widget(
	instance: *PrintOperation,
	handler: *fn(instance: *PrintOperation, widget: *Widget, setup: *PageSetup, settings: *PrintSettings, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"update-custom-widget\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export type PrintSettings = *opaque;
export @symbol("gtk_print_settings_new") fn print_settings_new() *PrintSettings;
export @symbol("gtk_print_settings_new_from_file") fn print_settings_new_from_file(file_name: *c::char, error: nullable **glib::Error) *PrintSettings;
export @symbol("gtk_print_settings_new_from_gvariant") fn print_settings_new_from_gvariant(variant: *glib::Variant) *PrintSettings;
export @symbol("gtk_print_settings_new_from_key_file") fn print_settings_new_from_key_file(key_file: *glib::KeyFile, group_name: *c::char, error: nullable **glib::Error) *PrintSettings;
export @symbol("gtk_print_settings_copy") fn print_settings_copy(other: *PrintSettings) *PrintSettings;
export @symbol("gtk_print_settings_foreach") fn print_settings_foreach(settings: *PrintSettings, func: PrintSettingsFunc, user_data: *opaque) void;
export @symbol("gtk_print_settings_get") fn print_settings_get(settings: *PrintSettings, key: *c::char) *c::char;
export @symbol("gtk_print_settings_get_bool") fn print_settings_get_bool(settings: *PrintSettings, key: *c::char) glib::boolean;
export @symbol("gtk_print_settings_get_collate") fn print_settings_get_collate(settings: *PrintSettings) glib::boolean;
export @symbol("gtk_print_settings_get_default_source") fn print_settings_get_default_source(settings: *PrintSettings) *c::char;
export @symbol("gtk_print_settings_get_dither") fn print_settings_get_dither(settings: *PrintSettings) *c::char;
export @symbol("gtk_print_settings_get_double") fn print_settings_get_double(settings: *PrintSettings, key: *c::char) f64;
export @symbol("gtk_print_settings_get_double_with_default") fn print_settings_get_double_with_default(settings: *PrintSettings, key: *c::char, def_: f64) f64;
export @symbol("gtk_print_settings_get_duplex") fn print_settings_get_duplex(settings: *PrintSettings) PrintDuplex;
export @symbol("gtk_print_settings_get_finishings") fn print_settings_get_finishings(settings: *PrintSettings) *c::char;
export @symbol("gtk_print_settings_get_int") fn print_settings_get_int(settings: *PrintSettings, key: *c::char) int;
export @symbol("gtk_print_settings_get_int_with_default") fn print_settings_get_int_with_default(settings: *PrintSettings, key: *c::char, def_: int) int;
export @symbol("gtk_print_settings_get_length") fn print_settings_get_length(settings: *PrintSettings, key: *c::char, unit: Unit) f64;
export @symbol("gtk_print_settings_get_media_type") fn print_settings_get_media_type(settings: *PrintSettings) *c::char;
export @symbol("gtk_print_settings_get_n_copies") fn print_settings_get_n_copies(settings: *PrintSettings) int;
export @symbol("gtk_print_settings_get_number_up") fn print_settings_get_number_up(settings: *PrintSettings) int;
export @symbol("gtk_print_settings_get_number_up_layout") fn print_settings_get_number_up_layout(settings: *PrintSettings) NumberUpLayout;
export @symbol("gtk_print_settings_get_orientation") fn print_settings_get_orientation(settings: *PrintSettings) PageOrientation;
export @symbol("gtk_print_settings_get_output_bin") fn print_settings_get_output_bin(settings: *PrintSettings) *c::char;
export @symbol("gtk_print_settings_get_page_ranges") fn print_settings_get_page_ranges(settings: *PrintSettings, num_ranges: *int) *PageRange;
export @symbol("gtk_print_settings_get_page_set") fn print_settings_get_page_set(settings: *PrintSettings) PageSet;
export @symbol("gtk_print_settings_get_paper_height") fn print_settings_get_paper_height(settings: *PrintSettings, unit: Unit) f64;
export @symbol("gtk_print_settings_get_paper_size") fn print_settings_get_paper_size(settings: *PrintSettings) *PaperSize;
export @symbol("gtk_print_settings_get_paper_width") fn print_settings_get_paper_width(settings: *PrintSettings, unit: Unit) f64;
export @symbol("gtk_print_settings_get_print_pages") fn print_settings_get_print_pages(settings: *PrintSettings) PrintPages;
export @symbol("gtk_print_settings_get_printer") fn print_settings_get_printer(settings: *PrintSettings) *c::char;
export @symbol("gtk_print_settings_get_printer_lpi") fn print_settings_get_printer_lpi(settings: *PrintSettings) f64;
export @symbol("gtk_print_settings_get_quality") fn print_settings_get_quality(settings: *PrintSettings) PrintQuality;
export @symbol("gtk_print_settings_get_resolution") fn print_settings_get_resolution(settings: *PrintSettings) int;
export @symbol("gtk_print_settings_get_resolution_x") fn print_settings_get_resolution_x(settings: *PrintSettings) int;
export @symbol("gtk_print_settings_get_resolution_y") fn print_settings_get_resolution_y(settings: *PrintSettings) int;
export @symbol("gtk_print_settings_get_reverse") fn print_settings_get_reverse(settings: *PrintSettings) glib::boolean;
export @symbol("gtk_print_settings_get_scale") fn print_settings_get_scale(settings: *PrintSettings) f64;
export @symbol("gtk_print_settings_get_use_color") fn print_settings_get_use_color(settings: *PrintSettings) glib::boolean;
export @symbol("gtk_print_settings_has_key") fn print_settings_has_key(settings: *PrintSettings, key: *c::char) glib::boolean;
export @symbol("gtk_print_settings_load_file") fn print_settings_load_file(settings: *PrintSettings, file_name: *c::char, error: nullable **glib::Error) glib::boolean;
export @symbol("gtk_print_settings_load_key_file") fn print_settings_load_key_file(settings: *PrintSettings, key_file: *glib::KeyFile, group_name: *c::char, error: nullable **glib::Error) glib::boolean;
export @symbol("gtk_print_settings_set") fn print_settings_set(settings: *PrintSettings, key: *c::char, value: *c::char) void;
export @symbol("gtk_print_settings_set_bool") fn print_settings_set_bool(settings: *PrintSettings, key: *c::char, value: glib::boolean) void;
export @symbol("gtk_print_settings_set_collate") fn print_settings_set_collate(settings: *PrintSettings, collate: glib::boolean) void;
export @symbol("gtk_print_settings_set_default_source") fn print_settings_set_default_source(settings: *PrintSettings, default_source: *c::char) void;
export @symbol("gtk_print_settings_set_dither") fn print_settings_set_dither(settings: *PrintSettings, dither: *c::char) void;
export @symbol("gtk_print_settings_set_double") fn print_settings_set_double(settings: *PrintSettings, key: *c::char, value: f64) void;
export @symbol("gtk_print_settings_set_duplex") fn print_settings_set_duplex(settings: *PrintSettings, duplex: PrintDuplex) void;
export @symbol("gtk_print_settings_set_finishings") fn print_settings_set_finishings(settings: *PrintSettings, finishings: *c::char) void;
export @symbol("gtk_print_settings_set_int") fn print_settings_set_int(settings: *PrintSettings, key: *c::char, value: int) void;
export @symbol("gtk_print_settings_set_length") fn print_settings_set_length(settings: *PrintSettings, key: *c::char, value: f64, unit: Unit) void;
export @symbol("gtk_print_settings_set_media_type") fn print_settings_set_media_type(settings: *PrintSettings, media_type: *c::char) void;
export @symbol("gtk_print_settings_set_n_copies") fn print_settings_set_n_copies(settings: *PrintSettings, num_copies: int) void;
export @symbol("gtk_print_settings_set_number_up") fn print_settings_set_number_up(settings: *PrintSettings, number_up: int) void;
export @symbol("gtk_print_settings_set_number_up_layout") fn print_settings_set_number_up_layout(settings: *PrintSettings, number_up_layout: NumberUpLayout) void;
export @symbol("gtk_print_settings_set_orientation") fn print_settings_set_orientation(settings: *PrintSettings, orientation: PageOrientation) void;
export @symbol("gtk_print_settings_set_output_bin") fn print_settings_set_output_bin(settings: *PrintSettings, output_bin: *c::char) void;
export @symbol("gtk_print_settings_set_page_ranges") fn print_settings_set_page_ranges(settings: *PrintSettings, page_ranges: *PageRange, num_ranges: int) void;
export @symbol("gtk_print_settings_set_page_set") fn print_settings_set_page_set(settings: *PrintSettings, page_set: PageSet) void;
export @symbol("gtk_print_settings_set_paper_height") fn print_settings_set_paper_height(settings: *PrintSettings, height: f64, unit: Unit) void;
export @symbol("gtk_print_settings_set_paper_size") fn print_settings_set_paper_size(settings: *PrintSettings, paper_size: *PaperSize) void;
export @symbol("gtk_print_settings_set_paper_width") fn print_settings_set_paper_width(settings: *PrintSettings, width: f64, unit: Unit) void;
export @symbol("gtk_print_settings_set_print_pages") fn print_settings_set_print_pages(settings: *PrintSettings, pages: PrintPages) void;
export @symbol("gtk_print_settings_set_printer") fn print_settings_set_printer(settings: *PrintSettings, printer: *c::char) void;
export @symbol("gtk_print_settings_set_printer_lpi") fn print_settings_set_printer_lpi(settings: *PrintSettings, lpi: f64) void;
export @symbol("gtk_print_settings_set_quality") fn print_settings_set_quality(settings: *PrintSettings, quality: PrintQuality) void;
export @symbol("gtk_print_settings_set_resolution") fn print_settings_set_resolution(settings: *PrintSettings, resolution: int) void;
export @symbol("gtk_print_settings_set_resolution_xy") fn print_settings_set_resolution_xy(settings: *PrintSettings, resolution_x: int, resolution_y: int) void;
export @symbol("gtk_print_settings_set_reverse") fn print_settings_set_reverse(settings: *PrintSettings, reverse: glib::boolean) void;
export @symbol("gtk_print_settings_set_scale") fn print_settings_set_scale(settings: *PrintSettings, scale: f64) void;
export @symbol("gtk_print_settings_set_use_color") fn print_settings_set_use_color(settings: *PrintSettings, use_color: glib::boolean) void;
export @symbol("gtk_print_settings_to_file") fn print_settings_to_file(settings: *PrintSettings, file_name: *c::char, error: nullable **glib::Error) glib::boolean;
export @symbol("gtk_print_settings_to_gvariant") fn print_settings_to_gvariant(settings: *PrintSettings) *glib::Variant;
export @symbol("gtk_print_settings_to_key_file") fn print_settings_to_key_file(settings: *PrintSettings, key_file: *glib::KeyFile, group_name: *c::char) void;
export @symbol("gtk_print_settings_unset") fn print_settings_unset(settings: *PrintSettings, key: *c::char) void;
export type PrintUnixDialog = *opaque;
export @symbol("gtk_print_unix_dialog_new") fn print_unix_dialog_new(title: *c::char, parent: *Window) *Widget;
export @symbol("gtk_print_unix_dialog_add_custom_tab") fn print_unix_dialog_add_custom_tab(dialog: *PrintUnixDialog, child: *Widget, tab_label: *Widget) void;
export @symbol("gtk_print_unix_dialog_get_current_page") fn print_unix_dialog_get_current_page(dialog: *PrintUnixDialog) int;
export @symbol("gtk_print_unix_dialog_get_embed_page_setup") fn print_unix_dialog_get_embed_page_setup(dialog: *PrintUnixDialog) glib::boolean;
export @symbol("gtk_print_unix_dialog_get_has_selection") fn print_unix_dialog_get_has_selection(dialog: *PrintUnixDialog) glib::boolean;
export @symbol("gtk_print_unix_dialog_get_manual_capabilities") fn print_unix_dialog_get_manual_capabilities(dialog: *PrintUnixDialog) PrintCapabilities;
export @symbol("gtk_print_unix_dialog_get_page_setup") fn print_unix_dialog_get_page_setup(dialog: *PrintUnixDialog) *PageSetup;
export @symbol("gtk_print_unix_dialog_get_page_setup_set") fn print_unix_dialog_get_page_setup_set(dialog: *PrintUnixDialog) glib::boolean;
export @symbol("gtk_print_unix_dialog_get_selected_printer") fn print_unix_dialog_get_selected_printer(dialog: *PrintUnixDialog) *Printer;
export @symbol("gtk_print_unix_dialog_get_settings") fn print_unix_dialog_get_settings(dialog: *PrintUnixDialog) *PrintSettings;
export @symbol("gtk_print_unix_dialog_get_support_selection") fn print_unix_dialog_get_support_selection(dialog: *PrintUnixDialog) glib::boolean;
export @symbol("gtk_print_unix_dialog_set_current_page") fn print_unix_dialog_set_current_page(dialog: *PrintUnixDialog, current_page: int) void;
export @symbol("gtk_print_unix_dialog_set_embed_page_setup") fn print_unix_dialog_set_embed_page_setup(dialog: *PrintUnixDialog, embed: glib::boolean) void;
export @symbol("gtk_print_unix_dialog_set_has_selection") fn print_unix_dialog_set_has_selection(dialog: *PrintUnixDialog, has_selection: glib::boolean) void;
export @symbol("gtk_print_unix_dialog_set_manual_capabilities") fn print_unix_dialog_set_manual_capabilities(dialog: *PrintUnixDialog, capabilities: PrintCapabilities) void;
export @symbol("gtk_print_unix_dialog_set_page_setup") fn print_unix_dialog_set_page_setup(dialog: *PrintUnixDialog, page_setup: *PageSetup) void;
export @symbol("gtk_print_unix_dialog_set_settings") fn print_unix_dialog_set_settings(dialog: *PrintUnixDialog, settings: *PrintSettings) void;
export @symbol("gtk_print_unix_dialog_set_support_selection") fn print_unix_dialog_set_support_selection(dialog: *PrintUnixDialog, support_selection: glib::boolean) void;
export type Printer = *opaque;
export @symbol("gtk_printer_new") fn printer_new(name: *c::char, backend: *PrintBackend, virtual_: glib::boolean) *Printer;
export @symbol("gtk_printer_accepts_pdf") fn printer_accepts_pdf(printer: *Printer) glib::boolean;
export @symbol("gtk_printer_accepts_ps") fn printer_accepts_ps(printer: *Printer) glib::boolean;
export @symbol("gtk_printer_compare") fn printer_compare(a: *Printer, b: *Printer) int;
export @symbol("gtk_printer_get_backend") fn printer_get_backend(printer: *Printer) *PrintBackend;
export @symbol("gtk_printer_get_capabilities") fn printer_get_capabilities(printer: *Printer) PrintCapabilities;
export @symbol("gtk_printer_get_default_page_size") fn printer_get_default_page_size(printer: *Printer) *PageSetup;
export @symbol("gtk_printer_get_description") fn printer_get_description(printer: *Printer) *c::char;
export @symbol("gtk_printer_get_hard_margins") fn printer_get_hard_margins(printer: *Printer, top: *f64, bottom: *f64, left: *f64, right: *f64) glib::boolean;
export @symbol("gtk_printer_get_hard_margins_for_paper_size") fn printer_get_hard_margins_for_paper_size(printer: *Printer, paper_size: *PaperSize, top: *f64, bottom: *f64, left: *f64, right: *f64) glib::boolean;
export @symbol("gtk_printer_get_icon_name") fn printer_get_icon_name(printer: *Printer) *c::char;
export @symbol("gtk_printer_get_job_count") fn printer_get_job_count(printer: *Printer) int;
export @symbol("gtk_printer_get_location") fn printer_get_location(printer: *Printer) *c::char;
export @symbol("gtk_printer_get_name") fn printer_get_name(printer: *Printer) *c::char;
export @symbol("gtk_printer_get_state_message") fn printer_get_state_message(printer: *Printer) *c::char;
export @symbol("gtk_printer_has_details") fn printer_has_details(printer: *Printer) glib::boolean;
export @symbol("gtk_printer_is_accepting_jobs") fn printer_is_accepting_jobs(printer: *Printer) glib::boolean;
export @symbol("gtk_printer_is_active") fn printer_is_active(printer: *Printer) glib::boolean;
export @symbol("gtk_printer_is_default") fn printer_is_default(printer: *Printer) glib::boolean;
export @symbol("gtk_printer_is_paused") fn printer_is_paused(printer: *Printer) glib::boolean;
export @symbol("gtk_printer_is_virtual") fn printer_is_virtual(printer: *Printer) glib::boolean;
export @symbol("gtk_printer_list_papers") fn printer_list_papers(printer: *Printer) *glib::List;
export @symbol("gtk_printer_request_details") fn printer_request_details(printer: *Printer) void;
export fn printer_connect_details_acquired(
	instance: *Printer,
	handler: *fn(instance: *Printer, success: glib::boolean, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"details-acquired\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export type ProgressBar = *opaque;
export @symbol("gtk_progress_bar_new") fn progress_bar_new() *Widget;
export @symbol("gtk_progress_bar_get_ellipsize") fn progress_bar_get_ellipsize(pbar: *ProgressBar) pango::EllipsizeMode;
export @symbol("gtk_progress_bar_get_fraction") fn progress_bar_get_fraction(pbar: *ProgressBar) f64;
export @symbol("gtk_progress_bar_get_inverted") fn progress_bar_get_inverted(pbar: *ProgressBar) glib::boolean;
export @symbol("gtk_progress_bar_get_pulse_step") fn progress_bar_get_pulse_step(pbar: *ProgressBar) f64;
export @symbol("gtk_progress_bar_get_show_text") fn progress_bar_get_show_text(pbar: *ProgressBar) glib::boolean;
export @symbol("gtk_progress_bar_get_text") fn progress_bar_get_text(pbar: *ProgressBar) *c::char;
export @symbol("gtk_progress_bar_pulse") fn progress_bar_pulse(pbar: *ProgressBar) void;
export @symbol("gtk_progress_bar_set_ellipsize") fn progress_bar_set_ellipsize(pbar: *ProgressBar, mode: pango::EllipsizeMode) void;
export @symbol("gtk_progress_bar_set_fraction") fn progress_bar_set_fraction(pbar: *ProgressBar, fraction: f64) void;
export @symbol("gtk_progress_bar_set_inverted") fn progress_bar_set_inverted(pbar: *ProgressBar, inverted: glib::boolean) void;
export @symbol("gtk_progress_bar_set_pulse_step") fn progress_bar_set_pulse_step(pbar: *ProgressBar, fraction: f64) void;
export @symbol("gtk_progress_bar_set_show_text") fn progress_bar_set_show_text(pbar: *ProgressBar, show_text: glib::boolean) void;
export @symbol("gtk_progress_bar_set_text") fn progress_bar_set_text(pbar: *ProgressBar, text: *c::char) void;
export type PropertyExpression = *opaque;
export @symbol("gtk_property_expression_new") fn property_expression_new(this_type: glib::Type, expression: *Expression, property_name: *c::char) *Expression;
export @symbol("gtk_property_expression_new_for_pspec") fn property_expression_new_for_pspec(expression: *Expression, pspec: *gobject::ParamSpec) *Expression;
export @symbol("gtk_property_expression_get_expression") fn property_expression_get_expression(expression: *Expression) *Expression;
export @symbol("gtk_property_expression_get_pspec") fn property_expression_get_pspec(expression: *Expression) *gobject::ParamSpec;
export type Range = struct {
	parent_instance: Widget,
};
export @symbol("gtk_range_get_adjustment") fn range_get_adjustment(range: *Range) *Adjustment;
export @symbol("gtk_range_get_fill_level") fn range_get_fill_level(range: *Range) f64;
export @symbol("gtk_range_get_flippable") fn range_get_flippable(range: *Range) glib::boolean;
export @symbol("gtk_range_get_inverted") fn range_get_inverted(range: *Range) glib::boolean;
export @symbol("gtk_range_get_range_rect") fn range_get_range_rect(range: *Range, range_rect: *gdk4::Rectangle) void;
export @symbol("gtk_range_get_restrict_to_fill_level") fn range_get_restrict_to_fill_level(range: *Range) glib::boolean;
export @symbol("gtk_range_get_round_digits") fn range_get_round_digits(range: *Range) int;
export @symbol("gtk_range_get_show_fill_level") fn range_get_show_fill_level(range: *Range) glib::boolean;
export @symbol("gtk_range_get_slider_range") fn range_get_slider_range(range: *Range, slider_start: *int, slider_end: *int) void;
export @symbol("gtk_range_get_slider_size_fixed") fn range_get_slider_size_fixed(range: *Range) glib::boolean;
export @symbol("gtk_range_get_value") fn range_get_value(range: *Range) f64;
export @symbol("gtk_range_set_adjustment") fn range_set_adjustment(range: *Range, adjustment: *Adjustment) void;
export @symbol("gtk_range_set_fill_level") fn range_set_fill_level(range: *Range, fill_level: f64) void;
export @symbol("gtk_range_set_flippable") fn range_set_flippable(range: *Range, flippable: glib::boolean) void;
export @symbol("gtk_range_set_increments") fn range_set_increments(range: *Range, step: f64, page: f64) void;
export @symbol("gtk_range_set_inverted") fn range_set_inverted(range: *Range, setting: glib::boolean) void;
export @symbol("gtk_range_set_range") fn range_set_range(range: *Range, min: f64, max: f64) void;
export @symbol("gtk_range_set_restrict_to_fill_level") fn range_set_restrict_to_fill_level(range: *Range, restrict_to_fill_level: glib::boolean) void;
export @symbol("gtk_range_set_round_digits") fn range_set_round_digits(range: *Range, round_digits: int) void;
export @symbol("gtk_range_set_show_fill_level") fn range_set_show_fill_level(range: *Range, show_fill_level: glib::boolean) void;
export @symbol("gtk_range_set_slider_size_fixed") fn range_set_slider_size_fixed(range: *Range, size_fixed: glib::boolean) void;
export @symbol("gtk_range_set_value") fn range_set_value(range: *Range, value: f64) void;
export fn range_connect_adjust_bounds(
	instance: *Range,
	handler: *fn(instance: *Range, value: f64, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"adjust-bounds\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn range_connect_change_value(
	instance: *Range,
	handler: *fn(instance: *Range, scroll: atk::ScrollType, value: f64, data: *opaque) glib::boolean,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"change-value\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn range_connect_move_slider(
	instance: *Range,
	handler: *fn(instance: *Range, step: atk::ScrollType, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"move-slider\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn range_connect_value_changed(
	instance: *Range,
	handler: *fn(instance: *Range, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"value-changed\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export type RecentManager = struct {
	parent_instance: gobject::Object,
	priv: *RecentManagerPrivate,
};
export @symbol("gtk_recent_manager_new") fn recent_manager_new() *RecentManager;
export @symbol("gtk_recent_manager_add_full") fn recent_manager_add_full(manager: *RecentManager, uri: *c::char, recent_data: *RecentData) glib::boolean;
export @symbol("gtk_recent_manager_add_item") fn recent_manager_add_item(manager: *RecentManager, uri: *c::char) glib::boolean;
export @symbol("gtk_recent_manager_get_items") fn recent_manager_get_items(manager: *RecentManager) *glib::List;
export @symbol("gtk_recent_manager_has_item") fn recent_manager_has_item(manager: *RecentManager, uri: *c::char) glib::boolean;
export @symbol("gtk_recent_manager_lookup_item") fn recent_manager_lookup_item(manager: *RecentManager, uri: *c::char, error: nullable **glib::Error) *RecentInfo;
export @symbol("gtk_recent_manager_move_item") fn recent_manager_move_item(manager: *RecentManager, uri: *c::char, new_uri: *c::char, error: nullable **glib::Error) glib::boolean;
export @symbol("gtk_recent_manager_purge_items") fn recent_manager_purge_items(manager: *RecentManager, error: nullable **glib::Error) int;
export @symbol("gtk_recent_manager_remove_item") fn recent_manager_remove_item(manager: *RecentManager, uri: *c::char, error: nullable **glib::Error) glib::boolean;
export @symbol("gtk_recent_manager_get_default") fn recent_manager_get_default() *RecentManager;
export fn recent_manager_connect_changed(
	instance: *RecentManager,
	handler: *fn(instance: *RecentManager, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"changed\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export type Revealer = *opaque;
export @symbol("gtk_revealer_new") fn revealer_new() *Widget;
export @symbol("gtk_revealer_get_child") fn revealer_get_child(revealer: *Revealer) *Widget;
export @symbol("gtk_revealer_get_child_revealed") fn revealer_get_child_revealed(revealer: *Revealer) glib::boolean;
export @symbol("gtk_revealer_get_reveal_child") fn revealer_get_reveal_child(revealer: *Revealer) glib::boolean;
export @symbol("gtk_revealer_get_transition_duration") fn revealer_get_transition_duration(revealer: *Revealer) uint;
export @symbol("gtk_revealer_get_transition_type") fn revealer_get_transition_type(revealer: *Revealer) RevealerTransitionType;
export @symbol("gtk_revealer_set_child") fn revealer_set_child(revealer: *Revealer, child: *Widget) void;
export @symbol("gtk_revealer_set_reveal_child") fn revealer_set_reveal_child(revealer: *Revealer, reveal_child: glib::boolean) void;
export @symbol("gtk_revealer_set_transition_duration") fn revealer_set_transition_duration(revealer: *Revealer, duration: uint) void;
export @symbol("gtk_revealer_set_transition_type") fn revealer_set_transition_type(revealer: *Revealer, transition: RevealerTransitionType) void;
export type Scale = struct {
	parent_instance: Range,
};
export @symbol("gtk_scale_new") fn scale_new(orientation: Orientation, adjustment: *Adjustment) *Widget;
export @symbol("gtk_scale_new_with_range") fn scale_new_with_range(orientation: Orientation, min: f64, max: f64, step: f64) *Widget;
export @symbol("gtk_scale_add_mark") fn scale_add_mark(scale: *Scale, value: f64, position: PositionType, markup: *c::char) void;
export @symbol("gtk_scale_clear_marks") fn scale_clear_marks(scale: *Scale) void;
export @symbol("gtk_scale_get_digits") fn scale_get_digits(scale: *Scale) int;
export @symbol("gtk_scale_get_draw_value") fn scale_get_draw_value(scale: *Scale) glib::boolean;
export @symbol("gtk_scale_get_has_origin") fn scale_get_has_origin(scale: *Scale) glib::boolean;
export @symbol("gtk_scale_get_layout") fn scale_get_layout(scale: *Scale) *pango::Layout;
export @symbol("gtk_scale_get_layout_offsets") fn scale_get_layout_offsets(scale: *Scale, x: *int, y: *int) void;
export @symbol("gtk_scale_get_value_pos") fn scale_get_value_pos(scale: *Scale) PositionType;
export @symbol("gtk_scale_set_digits") fn scale_set_digits(scale: *Scale, digits: int) void;
export @symbol("gtk_scale_set_draw_value") fn scale_set_draw_value(scale: *Scale, draw_value: glib::boolean) void;
export @symbol("gtk_scale_set_format_value_func") fn scale_set_format_value_func(scale: *Scale, func: ScaleFormatValueFunc, user_data: *opaque, destroy_notify: glib::DestroyNotify) void;
export @symbol("gtk_scale_set_has_origin") fn scale_set_has_origin(scale: *Scale, has_origin: glib::boolean) void;
export @symbol("gtk_scale_set_value_pos") fn scale_set_value_pos(scale: *Scale, pos: PositionType) void;
export type ScaleButton = struct {
	parent_instance: Widget,
};
export @symbol("gtk_scale_button_new") fn scale_button_new(min: f64, max: f64, step: f64, icons: **c::char) *Widget;
export @symbol("gtk_scale_button_get_active") fn scale_button_get_active(button: *ScaleButton) glib::boolean;
export @symbol("gtk_scale_button_get_adjustment") fn scale_button_get_adjustment(button: *ScaleButton) *Adjustment;
export @symbol("gtk_scale_button_get_minus_button") fn scale_button_get_minus_button(button: *ScaleButton) *Widget;
export @symbol("gtk_scale_button_get_plus_button") fn scale_button_get_plus_button(button: *ScaleButton) *Widget;
export @symbol("gtk_scale_button_get_popup") fn scale_button_get_popup(button: *ScaleButton) *Widget;
export @symbol("gtk_scale_button_get_value") fn scale_button_get_value(button: *ScaleButton) f64;
export @symbol("gtk_scale_button_set_adjustment") fn scale_button_set_adjustment(button: *ScaleButton, adjustment: *Adjustment) void;
export @symbol("gtk_scale_button_set_icons") fn scale_button_set_icons(button: *ScaleButton, icons: **c::char) void;
export @symbol("gtk_scale_button_set_value") fn scale_button_set_value(button: *ScaleButton, value: f64) void;
export fn scale_button_connect_popdown(
	instance: *ScaleButton,
	handler: *fn(instance: *ScaleButton, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"popdown\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn scale_button_connect_popup(
	instance: *ScaleButton,
	handler: *fn(instance: *ScaleButton, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"popup\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn scale_button_connect_value_changed(
	instance: *ScaleButton,
	handler: *fn(instance: *ScaleButton, value: f64, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"value-changed\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export type Scrollbar = *opaque;
export @symbol("gtk_scrollbar_new") fn scrollbar_new(orientation: Orientation, adjustment: *Adjustment) *Widget;
export @symbol("gtk_scrollbar_get_adjustment") fn scrollbar_get_adjustment(self: *Scrollbar) *Adjustment;
export @symbol("gtk_scrollbar_set_adjustment") fn scrollbar_set_adjustment(self: *Scrollbar, adjustment: *Adjustment) void;
export type ScrolledWindow = *opaque;
export @symbol("gtk_scrolled_window_new") fn scrolled_window_new() *Widget;
export @symbol("gtk_scrolled_window_get_child") fn scrolled_window_get_child(scrolled_window: *ScrolledWindow) *Widget;
export @symbol("gtk_scrolled_window_get_hadjustment") fn scrolled_window_get_hadjustment(scrolled_window: *ScrolledWindow) *Adjustment;
export @symbol("gtk_scrolled_window_get_has_frame") fn scrolled_window_get_has_frame(scrolled_window: *ScrolledWindow) glib::boolean;
export @symbol("gtk_scrolled_window_get_hscrollbar") fn scrolled_window_get_hscrollbar(scrolled_window: *ScrolledWindow) *Widget;
export @symbol("gtk_scrolled_window_get_kinetic_scrolling") fn scrolled_window_get_kinetic_scrolling(scrolled_window: *ScrolledWindow) glib::boolean;
export @symbol("gtk_scrolled_window_get_max_content_height") fn scrolled_window_get_max_content_height(scrolled_window: *ScrolledWindow) int;
export @symbol("gtk_scrolled_window_get_max_content_width") fn scrolled_window_get_max_content_width(scrolled_window: *ScrolledWindow) int;
export @symbol("gtk_scrolled_window_get_min_content_height") fn scrolled_window_get_min_content_height(scrolled_window: *ScrolledWindow) int;
export @symbol("gtk_scrolled_window_get_min_content_width") fn scrolled_window_get_min_content_width(scrolled_window: *ScrolledWindow) int;
export @symbol("gtk_scrolled_window_get_overlay_scrolling") fn scrolled_window_get_overlay_scrolling(scrolled_window: *ScrolledWindow) glib::boolean;
export @symbol("gtk_scrolled_window_get_placement") fn scrolled_window_get_placement(scrolled_window: *ScrolledWindow) CornerType;
export @symbol("gtk_scrolled_window_get_policy") fn scrolled_window_get_policy(scrolled_window: *ScrolledWindow, hscrollbar_policy: *PolicyType, vscrollbar_policy: *PolicyType) void;
export @symbol("gtk_scrolled_window_get_propagate_natural_height") fn scrolled_window_get_propagate_natural_height(scrolled_window: *ScrolledWindow) glib::boolean;
export @symbol("gtk_scrolled_window_get_propagate_natural_width") fn scrolled_window_get_propagate_natural_width(scrolled_window: *ScrolledWindow) glib::boolean;
export @symbol("gtk_scrolled_window_get_vadjustment") fn scrolled_window_get_vadjustment(scrolled_window: *ScrolledWindow) *Adjustment;
export @symbol("gtk_scrolled_window_get_vscrollbar") fn scrolled_window_get_vscrollbar(scrolled_window: *ScrolledWindow) *Widget;
export @symbol("gtk_scrolled_window_set_child") fn scrolled_window_set_child(scrolled_window: *ScrolledWindow, child: *Widget) void;
export @symbol("gtk_scrolled_window_set_hadjustment") fn scrolled_window_set_hadjustment(scrolled_window: *ScrolledWindow, hadjustment: *Adjustment) void;
export @symbol("gtk_scrolled_window_set_has_frame") fn scrolled_window_set_has_frame(scrolled_window: *ScrolledWindow, has_frame: glib::boolean) void;
export @symbol("gtk_scrolled_window_set_kinetic_scrolling") fn scrolled_window_set_kinetic_scrolling(scrolled_window: *ScrolledWindow, kinetic_scrolling: glib::boolean) void;
export @symbol("gtk_scrolled_window_set_max_content_height") fn scrolled_window_set_max_content_height(scrolled_window: *ScrolledWindow, height: int) void;
export @symbol("gtk_scrolled_window_set_max_content_width") fn scrolled_window_set_max_content_width(scrolled_window: *ScrolledWindow, width: int) void;
export @symbol("gtk_scrolled_window_set_min_content_height") fn scrolled_window_set_min_content_height(scrolled_window: *ScrolledWindow, height: int) void;
export @symbol("gtk_scrolled_window_set_min_content_width") fn scrolled_window_set_min_content_width(scrolled_window: *ScrolledWindow, width: int) void;
export @symbol("gtk_scrolled_window_set_overlay_scrolling") fn scrolled_window_set_overlay_scrolling(scrolled_window: *ScrolledWindow, overlay_scrolling: glib::boolean) void;
export @symbol("gtk_scrolled_window_set_placement") fn scrolled_window_set_placement(scrolled_window: *ScrolledWindow, window_placement: CornerType) void;
export @symbol("gtk_scrolled_window_set_policy") fn scrolled_window_set_policy(scrolled_window: *ScrolledWindow, hscrollbar_policy: PolicyType, vscrollbar_policy: PolicyType) void;
export @symbol("gtk_scrolled_window_set_propagate_natural_height") fn scrolled_window_set_propagate_natural_height(scrolled_window: *ScrolledWindow, propagate: glib::boolean) void;
export @symbol("gtk_scrolled_window_set_propagate_natural_width") fn scrolled_window_set_propagate_natural_width(scrolled_window: *ScrolledWindow, propagate: glib::boolean) void;
export @symbol("gtk_scrolled_window_set_vadjustment") fn scrolled_window_set_vadjustment(scrolled_window: *ScrolledWindow, vadjustment: *Adjustment) void;
export @symbol("gtk_scrolled_window_unset_placement") fn scrolled_window_unset_placement(scrolled_window: *ScrolledWindow) void;
export fn scrolled_window_connect_edge_overshot(
	instance: *ScrolledWindow,
	handler: *fn(instance: *ScrolledWindow, pos: PositionType, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"edge-overshot\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn scrolled_window_connect_edge_reached(
	instance: *ScrolledWindow,
	handler: *fn(instance: *ScrolledWindow, pos: PositionType, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"edge-reached\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn scrolled_window_connect_move_focus_out(
	instance: *ScrolledWindow,
	handler: *fn(instance: *ScrolledWindow, direction_type: DirectionType, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"move-focus-out\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn scrolled_window_connect_scroll_child(
	instance: *ScrolledWindow,
	handler: *fn(instance: *ScrolledWindow, scroll: atk::ScrollType, horizontal: glib::boolean, data: *opaque) glib::boolean,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"scroll-child\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export type SearchBar = *opaque;
export @symbol("gtk_search_bar_new") fn search_bar_new() *Widget;
export @symbol("gtk_search_bar_connect_entry") fn search_bar_connect_entry(bar: *SearchBar, entry: *Editable) void;
export @symbol("gtk_search_bar_get_child") fn search_bar_get_child(bar: *SearchBar) *Widget;
export @symbol("gtk_search_bar_get_key_capture_widget") fn search_bar_get_key_capture_widget(bar: *SearchBar) *Widget;
export @symbol("gtk_search_bar_get_search_mode") fn search_bar_get_search_mode(bar: *SearchBar) glib::boolean;
export @symbol("gtk_search_bar_get_show_close_button") fn search_bar_get_show_close_button(bar: *SearchBar) glib::boolean;
export @symbol("gtk_search_bar_set_child") fn search_bar_set_child(bar: *SearchBar, child: *Widget) void;
export @symbol("gtk_search_bar_set_key_capture_widget") fn search_bar_set_key_capture_widget(bar: *SearchBar, widget: *Widget) void;
export @symbol("gtk_search_bar_set_search_mode") fn search_bar_set_search_mode(bar: *SearchBar, search_mode: glib::boolean) void;
export @symbol("gtk_search_bar_set_show_close_button") fn search_bar_set_show_close_button(bar: *SearchBar, visible: glib::boolean) void;
export type SearchEntry = *opaque;
export @symbol("gtk_search_entry_new") fn search_entry_new() *Widget;
export @symbol("gtk_search_entry_get_key_capture_widget") fn search_entry_get_key_capture_widget(entry: *SearchEntry) *Widget;
export @symbol("gtk_search_entry_get_placeholder_text") fn search_entry_get_placeholder_text(entry: *SearchEntry) *c::char;
export @symbol("gtk_search_entry_get_search_delay") fn search_entry_get_search_delay(entry: *SearchEntry) uint;
export @symbol("gtk_search_entry_set_key_capture_widget") fn search_entry_set_key_capture_widget(entry: *SearchEntry, widget: *Widget) void;
export @symbol("gtk_search_entry_set_placeholder_text") fn search_entry_set_placeholder_text(entry: *SearchEntry, text: *c::char) void;
export @symbol("gtk_search_entry_set_search_delay") fn search_entry_set_search_delay(entry: *SearchEntry, delay: uint) void;
export fn search_entry_connect_activate(
	instance: *SearchEntry,
	handler: *fn(instance: *SearchEntry, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"activate\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn search_entry_connect_next_match(
	instance: *SearchEntry,
	handler: *fn(instance: *SearchEntry, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"next-match\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn search_entry_connect_previous_match(
	instance: *SearchEntry,
	handler: *fn(instance: *SearchEntry, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"previous-match\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn search_entry_connect_search_changed(
	instance: *SearchEntry,
	handler: *fn(instance: *SearchEntry, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"search-changed\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn search_entry_connect_search_started(
	instance: *SearchEntry,
	handler: *fn(instance: *SearchEntry, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"search-started\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn search_entry_connect_stop_search(
	instance: *SearchEntry,
	handler: *fn(instance: *SearchEntry, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"stop-search\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export type SelectionFilterModel = *opaque;
export @symbol("gtk_selection_filter_model_new") fn selection_filter_model_new(model: *SelectionModel) *SelectionFilterModel;
export @symbol("gtk_selection_filter_model_get_model") fn selection_filter_model_get_model(self: *SelectionFilterModel) *SelectionModel;
export @symbol("gtk_selection_filter_model_set_model") fn selection_filter_model_set_model(self: *SelectionFilterModel, model: *SelectionModel) void;
export type Separator = *opaque;
export @symbol("gtk_separator_new") fn separator_new(orientation: Orientation) *Widget;
export type Settings = *opaque;
export @symbol("gtk_settings_reset_property") fn settings_reset_property(settings: *Settings, name: *c::char) void;
export @symbol("gtk_settings_get_default") fn settings_get_default() *Settings;
export @symbol("gtk_settings_get_for_display") fn settings_get_for_display(display: *gdk4::Display) *Settings;
export type Shortcut = *opaque;
export @symbol("gtk_shortcut_new") fn shortcut_new(trigger: *ShortcutTrigger, action: *ShortcutAction) *Shortcut;
export @symbol("gtk_shortcut_new_with_arguments") fn shortcut_new_with_arguments(trigger: *ShortcutTrigger, action: *ShortcutAction, format_string: *c::char, ...) *Shortcut;
export @symbol("gtk_shortcut_get_action") fn shortcut_get_action(self: *Shortcut) *ShortcutAction;
export @symbol("gtk_shortcut_get_arguments") fn shortcut_get_arguments(self: *Shortcut) *glib::Variant;
export @symbol("gtk_shortcut_get_trigger") fn shortcut_get_trigger(self: *Shortcut) *ShortcutTrigger;
export @symbol("gtk_shortcut_set_action") fn shortcut_set_action(self: *Shortcut, action: *ShortcutAction) void;
export @symbol("gtk_shortcut_set_arguments") fn shortcut_set_arguments(self: *Shortcut, args: *glib::Variant) void;
export @symbol("gtk_shortcut_set_trigger") fn shortcut_set_trigger(self: *Shortcut, trigger: *ShortcutTrigger) void;
export type ShortcutAction = *opaque;
export @symbol("gtk_shortcut_action_parse_string") fn shortcut_action_parse_string(string: *c::char) *ShortcutAction;
export @symbol("gtk_shortcut_action_activate") fn shortcut_action_activate(self: *ShortcutAction, flags: ShortcutActionFlags, widget: *Widget, args: *glib::Variant) glib::boolean;
export @symbol("gtk_shortcut_action_print") fn shortcut_action_print(self: *ShortcutAction, string: *glib::String) void;
export @symbol("gtk_shortcut_action_to_string") fn shortcut_action_to_string(self: *ShortcutAction) *c::char;
export type ShortcutController = *opaque;
export @symbol("gtk_shortcut_controller_new") fn shortcut_controller_new() *EventController;
export @symbol("gtk_shortcut_controller_new_for_model") fn shortcut_controller_new_for_model(model: *gio::ListModel) *EventController;
export @symbol("gtk_shortcut_controller_add_shortcut") fn shortcut_controller_add_shortcut(self: *ShortcutController, shortcut: *Shortcut) void;
export @symbol("gtk_shortcut_controller_get_mnemonics_modifiers") fn shortcut_controller_get_mnemonics_modifiers(self: *ShortcutController) gdk4::ModifierType;
export @symbol("gtk_shortcut_controller_get_scope") fn shortcut_controller_get_scope(self: *ShortcutController) ShortcutScope;
export @symbol("gtk_shortcut_controller_remove_shortcut") fn shortcut_controller_remove_shortcut(self: *ShortcutController, shortcut: *Shortcut) void;
export @symbol("gtk_shortcut_controller_set_mnemonics_modifiers") fn shortcut_controller_set_mnemonics_modifiers(self: *ShortcutController, modifiers: gdk4::ModifierType) void;
export @symbol("gtk_shortcut_controller_set_scope") fn shortcut_controller_set_scope(self: *ShortcutController, scope: ShortcutScope) void;
export type ShortcutLabel = *opaque;
export @symbol("gtk_shortcut_label_new") fn shortcut_label_new(accelerator: *c::char) *Widget;
export @symbol("gtk_shortcut_label_get_accelerator") fn shortcut_label_get_accelerator(self: *ShortcutLabel) *c::char;
export @symbol("gtk_shortcut_label_get_disabled_text") fn shortcut_label_get_disabled_text(self: *ShortcutLabel) *c::char;
export @symbol("gtk_shortcut_label_set_accelerator") fn shortcut_label_set_accelerator(self: *ShortcutLabel, accelerator: *c::char) void;
export @symbol("gtk_shortcut_label_set_disabled_text") fn shortcut_label_set_disabled_text(self: *ShortcutLabel, disabled_text: *c::char) void;
export type ShortcutTrigger = *opaque;
export @symbol("gtk_shortcut_trigger_parse_string") fn shortcut_trigger_parse_string(string: *c::char) *ShortcutTrigger;
export @symbol("gtk_shortcut_trigger_compare") fn shortcut_trigger_compare(trigger1: *opaque, trigger2: *opaque) int;
export @symbol("gtk_shortcut_trigger_equal") fn shortcut_trigger_equal(trigger1: *opaque, trigger2: *opaque) glib::boolean;
export @symbol("gtk_shortcut_trigger_hash") fn shortcut_trigger_hash(trigger: *opaque) uint;
export @symbol("gtk_shortcut_trigger_print") fn shortcut_trigger_print(self: *ShortcutTrigger, string: *glib::String) void;
export @symbol("gtk_shortcut_trigger_print_label") fn shortcut_trigger_print_label(self: *ShortcutTrigger, display: *gdk4::Display, string: *glib::String) glib::boolean;
export @symbol("gtk_shortcut_trigger_to_label") fn shortcut_trigger_to_label(self: *ShortcutTrigger, display: *gdk4::Display) *c::char;
export @symbol("gtk_shortcut_trigger_to_string") fn shortcut_trigger_to_string(self: *ShortcutTrigger) *c::char;
export @symbol("gtk_shortcut_trigger_trigger") fn shortcut_trigger_trigger(self: *ShortcutTrigger, event: *gdk4::Event, enable_mnemonics: glib::boolean) gdk4::KeyMatch;
export type ShortcutsGroup = *opaque;
export type ShortcutsSection = *opaque;
export fn shortcuts_section_connect_change_current_page(
	instance: *ShortcutsSection,
	handler: *fn(instance: *ShortcutsSection, object: int, data: *opaque) glib::boolean,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"change-current-page\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export type ShortcutsShortcut = *opaque;
export type ShortcutsWindow = *opaque;
export fn shortcuts_window_connect_close(
	instance: *ShortcutsWindow,
	handler: *fn(instance: *ShortcutsWindow, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"close\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn shortcuts_window_connect_search(
	instance: *ShortcutsWindow,
	handler: *fn(instance: *ShortcutsWindow, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"search\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export type SignalAction = *opaque;
export @symbol("gtk_signal_action_new") fn signal_action_new(signal_name: *c::char) *ShortcutAction;
export @symbol("gtk_signal_action_get_signal_name") fn signal_action_get_signal_name(self: *SignalAction) *c::char;
export type SignalListItemFactory = *opaque;
export @symbol("gtk_signal_list_item_factory_new") fn signal_list_item_factory_new() *ListItemFactory;
export fn signal_list_item_factory_connect_bind(
	instance: *SignalListItemFactory,
	handler: *fn(instance: *SignalListItemFactory, object: gobject::Object, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"bind\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn signal_list_item_factory_connect_setup(
	instance: *SignalListItemFactory,
	handler: *fn(instance: *SignalListItemFactory, object: gobject::Object, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"setup\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn signal_list_item_factory_connect_teardown(
	instance: *SignalListItemFactory,
	handler: *fn(instance: *SignalListItemFactory, object: gobject::Object, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"teardown\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn signal_list_item_factory_connect_unbind(
	instance: *SignalListItemFactory,
	handler: *fn(instance: *SignalListItemFactory, object: gobject::Object, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"unbind\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export type SingleSelection = *opaque;
export @symbol("gtk_single_selection_new") fn single_selection_new(model: *gio::ListModel) *SingleSelection;
export @symbol("gtk_single_selection_get_autoselect") fn single_selection_get_autoselect(self: *SingleSelection) glib::boolean;
export @symbol("gtk_single_selection_get_can_unselect") fn single_selection_get_can_unselect(self: *SingleSelection) glib::boolean;
export @symbol("gtk_single_selection_get_model") fn single_selection_get_model(self: *SingleSelection) *gio::ListModel;
export @symbol("gtk_single_selection_get_selected") fn single_selection_get_selected(self: *SingleSelection) uint;
export @symbol("gtk_single_selection_get_selected_item") fn single_selection_get_selected_item(self: *SingleSelection) *opaque;
export @symbol("gtk_single_selection_set_autoselect") fn single_selection_set_autoselect(self: *SingleSelection, autoselect: glib::boolean) void;
export @symbol("gtk_single_selection_set_can_unselect") fn single_selection_set_can_unselect(self: *SingleSelection, can_unselect: glib::boolean) void;
export @symbol("gtk_single_selection_set_model") fn single_selection_set_model(self: *SingleSelection, model: *gio::ListModel) void;
export @symbol("gtk_single_selection_set_selected") fn single_selection_set_selected(self: *SingleSelection, position: uint) void;
export type SizeGroup = struct {
	parent_instance: gobject::Object,
};
export @symbol("gtk_size_group_new") fn size_group_new(mode: SizeGroupMode) *SizeGroup;
export @symbol("gtk_size_group_add_widget") fn size_group_add_widget(size_group: *SizeGroup, widget: *Widget) void;
export @symbol("gtk_size_group_get_mode") fn size_group_get_mode(size_group: *SizeGroup) SizeGroupMode;
export @symbol("gtk_size_group_get_widgets") fn size_group_get_widgets(size_group: *SizeGroup) *glib::SList;
export @symbol("gtk_size_group_remove_widget") fn size_group_remove_widget(size_group: *SizeGroup, widget: *Widget) void;
export @symbol("gtk_size_group_set_mode") fn size_group_set_mode(size_group: *SizeGroup, mode: SizeGroupMode) void;
export type SliceListModel = *opaque;
export @symbol("gtk_slice_list_model_new") fn slice_list_model_new(model: *gio::ListModel, offset_: uint, size_: uint) *SliceListModel;
export @symbol("gtk_slice_list_model_get_model") fn slice_list_model_get_model(self: *SliceListModel) *gio::ListModel;
export @symbol("gtk_slice_list_model_get_offset") fn slice_list_model_get_offset(self: *SliceListModel) uint;
export @symbol("gtk_slice_list_model_get_size") fn slice_list_model_get_size(self: *SliceListModel) uint;
export @symbol("gtk_slice_list_model_set_model") fn slice_list_model_set_model(self: *SliceListModel, model: *gio::ListModel) void;
export @symbol("gtk_slice_list_model_set_offset") fn slice_list_model_set_offset(self: *SliceListModel, offset_: uint) void;
export @symbol("gtk_slice_list_model_set_size") fn slice_list_model_set_size(self: *SliceListModel, size_: uint) void;
export type Snapshot = *opaque;
export @symbol("gtk_snapshot_new") fn snapshot_new() *Snapshot;
export @symbol("gtk_snapshot_append_border") fn snapshot_append_border(snapshot: *Snapshot, outline: *gsk::RoundedRect, border_width: [4]f32, border_color: [4]gdk4::RGBA) void;
export @symbol("gtk_snapshot_append_cairo") fn snapshot_append_cairo(snapshot: *Snapshot, bounds: *graphene::Rect) *cairo::Context;
export @symbol("gtk_snapshot_append_color") fn snapshot_append_color(snapshot: *Snapshot, color: *gdk4::RGBA, bounds: *graphene::Rect) void;
export @symbol("gtk_snapshot_append_conic_gradient") fn snapshot_append_conic_gradient(snapshot: *Snapshot, bounds: *graphene::Rect, center: *graphene::Point, rotation: f32, stops: *gsk::ColorStop, n_stops: size) void;
export @symbol("gtk_snapshot_append_inset_shadow") fn snapshot_append_inset_shadow(snapshot: *Snapshot, outline: *gsk::RoundedRect, color: *gdk4::RGBA, dx: f32, dy: f32, spread: f32, blur_radius: f32) void;
export @symbol("gtk_snapshot_append_layout") fn snapshot_append_layout(snapshot: *Snapshot, layout: *pango::Layout, color: *gdk4::RGBA) void;
export @symbol("gtk_snapshot_append_linear_gradient") fn snapshot_append_linear_gradient(snapshot: *Snapshot, bounds: *graphene::Rect, start_point: *graphene::Point, end_point: *graphene::Point, stops: *gsk::ColorStop, n_stops: size) void;
export @symbol("gtk_snapshot_append_node") fn snapshot_append_node(snapshot: *Snapshot, node: *gsk::RenderNode) void;
export @symbol("gtk_snapshot_append_outset_shadow") fn snapshot_append_outset_shadow(snapshot: *Snapshot, outline: *gsk::RoundedRect, color: *gdk4::RGBA, dx: f32, dy: f32, spread: f32, blur_radius: f32) void;
export @symbol("gtk_snapshot_append_radial_gradient") fn snapshot_append_radial_gradient(snapshot: *Snapshot, bounds: *graphene::Rect, center: *graphene::Point, hradius: f32, vradius: f32, start: f32, end: f32, stops: *gsk::ColorStop, n_stops: size) void;
export @symbol("gtk_snapshot_append_repeating_linear_gradient") fn snapshot_append_repeating_linear_gradient(snapshot: *Snapshot, bounds: *graphene::Rect, start_point: *graphene::Point, end_point: *graphene::Point, stops: *gsk::ColorStop, n_stops: size) void;
export @symbol("gtk_snapshot_append_repeating_radial_gradient") fn snapshot_append_repeating_radial_gradient(snapshot: *Snapshot, bounds: *graphene::Rect, center: *graphene::Point, hradius: f32, vradius: f32, start: f32, end: f32, stops: *gsk::ColorStop, n_stops: size) void;
export @symbol("gtk_snapshot_append_scaled_texture") fn snapshot_append_scaled_texture(snapshot: *Snapshot, texture: *gdk4::Texture, filter: gsk::ScalingFilter, bounds: *graphene::Rect) void;
export @symbol("gtk_snapshot_append_texture") fn snapshot_append_texture(snapshot: *Snapshot, texture: *gdk4::Texture, bounds: *graphene::Rect) void;
export @symbol("gtk_snapshot_free_to_node") fn snapshot_free_to_node(snapshot: *Snapshot) *gsk::RenderNode;
export @symbol("gtk_snapshot_free_to_paintable") fn snapshot_free_to_paintable(snapshot: *Snapshot, size_: *graphene::Size) *gdk4::Paintable;
export @symbol("gtk_snapshot_gl_shader_pop_texture") fn snapshot_gl_shader_pop_texture(snapshot: *Snapshot) void;
export @symbol("gtk_snapshot_perspective") fn snapshot_perspective(snapshot: *Snapshot, depth: f32) void;
export @symbol("gtk_snapshot_pop") fn snapshot_pop(snapshot: *Snapshot) void;
export @symbol("gtk_snapshot_push_blend") fn snapshot_push_blend(snapshot: *Snapshot, blend_mode: gsk::BlendMode) void;
export @symbol("gtk_snapshot_push_blur") fn snapshot_push_blur(snapshot: *Snapshot, radius: f64) void;
export @symbol("gtk_snapshot_push_clip") fn snapshot_push_clip(snapshot: *Snapshot, bounds: *graphene::Rect) void;
export @symbol("gtk_snapshot_push_color_matrix") fn snapshot_push_color_matrix(snapshot: *Snapshot, color_matrix: *graphene::Matrix, color_offset: *graphene::Vec4) void;
export @symbol("gtk_snapshot_push_cross_fade") fn snapshot_push_cross_fade(snapshot: *Snapshot, progress: f64) void;
export @symbol("gtk_snapshot_push_debug") fn snapshot_push_debug(snapshot: *Snapshot, message: *c::char, ...) void;
export @symbol("gtk_snapshot_push_gl_shader") fn snapshot_push_gl_shader(snapshot: *Snapshot, shader: *gsk::GLShader, bounds: *graphene::Rect, take_args: *glib::Bytes) void;
export @symbol("gtk_snapshot_push_mask") fn snapshot_push_mask(snapshot: *Snapshot, mask_mode: gsk::MaskMode) void;
export @symbol("gtk_snapshot_push_opacity") fn snapshot_push_opacity(snapshot: *Snapshot, opacity: f64) void;
export @symbol("gtk_snapshot_push_repeat") fn snapshot_push_repeat(snapshot: *Snapshot, bounds: *graphene::Rect, child_bounds: *graphene::Rect) void;
export @symbol("gtk_snapshot_push_rounded_clip") fn snapshot_push_rounded_clip(snapshot: *Snapshot, bounds: *gsk::RoundedRect) void;
export @symbol("gtk_snapshot_push_shadow") fn snapshot_push_shadow(snapshot: *Snapshot, shadow: *gsk::Shadow, n_shadows: size) void;
export @symbol("gtk_snapshot_render_background") fn snapshot_render_background(snapshot: *Snapshot, context: *StyleContext, x: f64, y: f64, width: f64, height: f64) void;
export @symbol("gtk_snapshot_render_focus") fn snapshot_render_focus(snapshot: *Snapshot, context: *StyleContext, x: f64, y: f64, width: f64, height: f64) void;
export @symbol("gtk_snapshot_render_frame") fn snapshot_render_frame(snapshot: *Snapshot, context: *StyleContext, x: f64, y: f64, width: f64, height: f64) void;
export @symbol("gtk_snapshot_render_insertion_cursor") fn snapshot_render_insertion_cursor(snapshot: *Snapshot, context: *StyleContext, x: f64, y: f64, layout: *pango::Layout, index: int, direction: pango::Direction) void;
export @symbol("gtk_snapshot_render_layout") fn snapshot_render_layout(snapshot: *Snapshot, context: *StyleContext, x: f64, y: f64, layout: *pango::Layout) void;
export @symbol("gtk_snapshot_restore") fn snapshot_restore(snapshot: *Snapshot) void;
export @symbol("gtk_snapshot_rotate") fn snapshot_rotate(snapshot: *Snapshot, angle: f32) void;
export @symbol("gtk_snapshot_rotate_3d") fn snapshot_rotate_3d(snapshot: *Snapshot, angle: f32, axis: *graphene::Vec3) void;
export @symbol("gtk_snapshot_save") fn snapshot_save(snapshot: *Snapshot) void;
export @symbol("gtk_snapshot_scale") fn snapshot_scale(snapshot: *Snapshot, factor_x: f32, factor_y: f32) void;
export @symbol("gtk_snapshot_scale_3d") fn snapshot_scale_3d(snapshot: *Snapshot, factor_x: f32, factor_y: f32, factor_z: f32) void;
export @symbol("gtk_snapshot_to_node") fn snapshot_to_node(snapshot: *Snapshot) *gsk::RenderNode;
export @symbol("gtk_snapshot_to_paintable") fn snapshot_to_paintable(snapshot: *Snapshot, size_: *graphene::Size) *gdk4::Paintable;
export @symbol("gtk_snapshot_transform") fn snapshot_transform(snapshot: *Snapshot, transform: *gsk::Transform) void;
export @symbol("gtk_snapshot_transform_matrix") fn snapshot_transform_matrix(snapshot: *Snapshot, matrix: *graphene::Matrix) void;
export @symbol("gtk_snapshot_translate") fn snapshot_translate(snapshot: *Snapshot, point: *graphene::Point) void;
export @symbol("gtk_snapshot_translate_3d") fn snapshot_translate_3d(snapshot: *Snapshot, point: *graphene::Point3D) void;
export type SortListModel = *opaque;
export @symbol("gtk_sort_list_model_new") fn sort_list_model_new(model: *gio::ListModel, sorter: *Sorter) *SortListModel;
export @symbol("gtk_sort_list_model_get_incremental") fn sort_list_model_get_incremental(self: *SortListModel) glib::boolean;
export @symbol("gtk_sort_list_model_get_model") fn sort_list_model_get_model(self: *SortListModel) *gio::ListModel;
export @symbol("gtk_sort_list_model_get_pending") fn sort_list_model_get_pending(self: *SortListModel) uint;
export @symbol("gtk_sort_list_model_get_section_sorter") fn sort_list_model_get_section_sorter(self: *SortListModel) *Sorter;
export @symbol("gtk_sort_list_model_get_sorter") fn sort_list_model_get_sorter(self: *SortListModel) *Sorter;
export @symbol("gtk_sort_list_model_set_incremental") fn sort_list_model_set_incremental(self: *SortListModel, incremental: glib::boolean) void;
export @symbol("gtk_sort_list_model_set_model") fn sort_list_model_set_model(self: *SortListModel, model: *gio::ListModel) void;
export @symbol("gtk_sort_list_model_set_section_sorter") fn sort_list_model_set_section_sorter(self: *SortListModel, sorter: *Sorter) void;
export @symbol("gtk_sort_list_model_set_sorter") fn sort_list_model_set_sorter(self: *SortListModel, sorter: *Sorter) void;
export type Sorter = struct {
	parent_instance: gobject::Object,
};
export @symbol("gtk_sorter_changed") fn sorter_changed(self: *Sorter, change: SorterChange) void;
export @symbol("gtk_sorter_compare") fn sorter_compare(self: *Sorter, item1: *opaque, item2: *opaque) Ordering;
export @symbol("gtk_sorter_get_order") fn sorter_get_order(self: *Sorter) SorterOrder;
export fn sorter_connect_changed(
	instance: *Sorter,
	handler: *fn(instance: *Sorter, change: SorterChange, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"changed\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export type SpinButton = *opaque;
export @symbol("gtk_spin_button_new") fn spin_button_new(adjustment: *Adjustment, climb_rate: f64, digits: uint) *Widget;
export @symbol("gtk_spin_button_new_with_range") fn spin_button_new_with_range(min: f64, max: f64, step: f64) *Widget;
export @symbol("gtk_spin_button_configure") fn spin_button_configure(spin_button: *SpinButton, adjustment: *Adjustment, climb_rate: f64, digits: uint) void;
export @symbol("gtk_spin_button_get_adjustment") fn spin_button_get_adjustment(spin_button: *SpinButton) *Adjustment;
export @symbol("gtk_spin_button_get_climb_rate") fn spin_button_get_climb_rate(spin_button: *SpinButton) f64;
export @symbol("gtk_spin_button_get_digits") fn spin_button_get_digits(spin_button: *SpinButton) uint;
export @symbol("gtk_spin_button_get_increments") fn spin_button_get_increments(spin_button: *SpinButton, step: *f64, page: *f64) void;
export @symbol("gtk_spin_button_get_numeric") fn spin_button_get_numeric(spin_button: *SpinButton) glib::boolean;
export @symbol("gtk_spin_button_get_range") fn spin_button_get_range(spin_button: *SpinButton, min: *f64, max: *f64) void;
export @symbol("gtk_spin_button_get_snap_to_ticks") fn spin_button_get_snap_to_ticks(spin_button: *SpinButton) glib::boolean;
export @symbol("gtk_spin_button_get_update_policy") fn spin_button_get_update_policy(spin_button: *SpinButton) SpinButtonUpdatePolicy;
export @symbol("gtk_spin_button_get_value") fn spin_button_get_value(spin_button: *SpinButton) f64;
export @symbol("gtk_spin_button_get_value_as_int") fn spin_button_get_value_as_int(spin_button: *SpinButton) int;
export @symbol("gtk_spin_button_get_wrap") fn spin_button_get_wrap(spin_button: *SpinButton) glib::boolean;
export @symbol("gtk_spin_button_set_adjustment") fn spin_button_set_adjustment(spin_button: *SpinButton, adjustment: *Adjustment) void;
export @symbol("gtk_spin_button_set_climb_rate") fn spin_button_set_climb_rate(spin_button: *SpinButton, climb_rate: f64) void;
export @symbol("gtk_spin_button_set_digits") fn spin_button_set_digits(spin_button: *SpinButton, digits: uint) void;
export @symbol("gtk_spin_button_set_increments") fn spin_button_set_increments(spin_button: *SpinButton, step: f64, page: f64) void;
export @symbol("gtk_spin_button_set_numeric") fn spin_button_set_numeric(spin_button: *SpinButton, numeric: glib::boolean) void;
export @symbol("gtk_spin_button_set_range") fn spin_button_set_range(spin_button: *SpinButton, min: f64, max: f64) void;
export @symbol("gtk_spin_button_set_snap_to_ticks") fn spin_button_set_snap_to_ticks(spin_button: *SpinButton, snap_to_ticks: glib::boolean) void;
export @symbol("gtk_spin_button_set_update_policy") fn spin_button_set_update_policy(spin_button: *SpinButton, policy: SpinButtonUpdatePolicy) void;
export @symbol("gtk_spin_button_set_value") fn spin_button_set_value(spin_button: *SpinButton, value: f64) void;
export @symbol("gtk_spin_button_set_wrap") fn spin_button_set_wrap(spin_button: *SpinButton, wrap: glib::boolean) void;
export @symbol("gtk_spin_button_spin") fn spin_button_spin(spin_button: *SpinButton, direction: SpinType, increment: f64) void;
export @symbol("gtk_spin_button_update") fn spin_button_update(spin_button: *SpinButton) void;
export fn spin_button_connect_change_value(
	instance: *SpinButton,
	handler: *fn(instance: *SpinButton, scroll: atk::ScrollType, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"change-value\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn spin_button_connect_input(
	instance: *SpinButton,
	handler: *fn(instance: *SpinButton, new_value: *opaque, data: *opaque) int,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"input\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn spin_button_connect_output(
	instance: *SpinButton,
	handler: *fn(instance: *SpinButton, data: *opaque) glib::boolean,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"output\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn spin_button_connect_value_changed(
	instance: *SpinButton,
	handler: *fn(instance: *SpinButton, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"value-changed\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn spin_button_connect_wrapped(
	instance: *SpinButton,
	handler: *fn(instance: *SpinButton, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"wrapped\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export type Spinner = *opaque;
export @symbol("gtk_spinner_new") fn spinner_new() *Widget;
export @symbol("gtk_spinner_get_spinning") fn spinner_get_spinning(spinner: *Spinner) glib::boolean;
export @symbol("gtk_spinner_set_spinning") fn spinner_set_spinning(spinner: *Spinner, spinning: glib::boolean) void;
export @symbol("gtk_spinner_start") fn spinner_start(spinner: *Spinner) void;
export @symbol("gtk_spinner_stop") fn spinner_stop(spinner: *Spinner) void;
export type Stack = *opaque;
export @symbol("gtk_stack_new") fn stack_new() *Widget;
export @symbol("gtk_stack_add_child") fn stack_add_child(stack: *Stack, child: *Widget) *StackPage;
export @symbol("gtk_stack_add_named") fn stack_add_named(stack: *Stack, child: *Widget, name: *c::char) *StackPage;
export @symbol("gtk_stack_add_titled") fn stack_add_titled(stack: *Stack, child: *Widget, name: *c::char, title: *c::char) *StackPage;
export @symbol("gtk_stack_get_child_by_name") fn stack_get_child_by_name(stack: *Stack, name: *c::char) *Widget;
export @symbol("gtk_stack_get_hhomogeneous") fn stack_get_hhomogeneous(stack: *Stack) glib::boolean;
export @symbol("gtk_stack_get_interpolate_size") fn stack_get_interpolate_size(stack: *Stack) glib::boolean;
export @symbol("gtk_stack_get_page") fn stack_get_page(stack: *Stack, child: *Widget) *StackPage;
export @symbol("gtk_stack_get_pages") fn stack_get_pages(stack: *Stack) *SelectionModel;
export @symbol("gtk_stack_get_transition_duration") fn stack_get_transition_duration(stack: *Stack) uint;
export @symbol("gtk_stack_get_transition_running") fn stack_get_transition_running(stack: *Stack) glib::boolean;
export @symbol("gtk_stack_get_transition_type") fn stack_get_transition_type(stack: *Stack) StackTransitionType;
export @symbol("gtk_stack_get_vhomogeneous") fn stack_get_vhomogeneous(stack: *Stack) glib::boolean;
export @symbol("gtk_stack_get_visible_child") fn stack_get_visible_child(stack: *Stack) *Widget;
export @symbol("gtk_stack_get_visible_child_name") fn stack_get_visible_child_name(stack: *Stack) *c::char;
export @symbol("gtk_stack_remove") fn stack_remove(stack: *Stack, child: *Widget) void;
export @symbol("gtk_stack_set_hhomogeneous") fn stack_set_hhomogeneous(stack: *Stack, hhomogeneous: glib::boolean) void;
export @symbol("gtk_stack_set_interpolate_size") fn stack_set_interpolate_size(stack: *Stack, interpolate_size: glib::boolean) void;
export @symbol("gtk_stack_set_transition_duration") fn stack_set_transition_duration(stack: *Stack, duration: uint) void;
export @symbol("gtk_stack_set_transition_type") fn stack_set_transition_type(stack: *Stack, transition: StackTransitionType) void;
export @symbol("gtk_stack_set_vhomogeneous") fn stack_set_vhomogeneous(stack: *Stack, vhomogeneous: glib::boolean) void;
export @symbol("gtk_stack_set_visible_child") fn stack_set_visible_child(stack: *Stack, child: *Widget) void;
export @symbol("gtk_stack_set_visible_child_full") fn stack_set_visible_child_full(stack: *Stack, name: *c::char, transition: StackTransitionType) void;
export @symbol("gtk_stack_set_visible_child_name") fn stack_set_visible_child_name(stack: *Stack, name: *c::char) void;
export type StackPage = *opaque;
export @symbol("gtk_stack_page_get_child") fn stack_page_get_child(self: *StackPage) *Widget;
export @symbol("gtk_stack_page_get_icon_name") fn stack_page_get_icon_name(self: *StackPage) *c::char;
export @symbol("gtk_stack_page_get_name") fn stack_page_get_name(self: *StackPage) *c::char;
export @symbol("gtk_stack_page_get_needs_attention") fn stack_page_get_needs_attention(self: *StackPage) glib::boolean;
export @symbol("gtk_stack_page_get_title") fn stack_page_get_title(self: *StackPage) *c::char;
export @symbol("gtk_stack_page_get_use_underline") fn stack_page_get_use_underline(self: *StackPage) glib::boolean;
export @symbol("gtk_stack_page_get_visible") fn stack_page_get_visible(self: *StackPage) glib::boolean;
export @symbol("gtk_stack_page_set_icon_name") fn stack_page_set_icon_name(self: *StackPage, setting: *c::char) void;
export @symbol("gtk_stack_page_set_name") fn stack_page_set_name(self: *StackPage, setting: *c::char) void;
export @symbol("gtk_stack_page_set_needs_attention") fn stack_page_set_needs_attention(self: *StackPage, setting: glib::boolean) void;
export @symbol("gtk_stack_page_set_title") fn stack_page_set_title(self: *StackPage, setting: *c::char) void;
export @symbol("gtk_stack_page_set_use_underline") fn stack_page_set_use_underline(self: *StackPage, setting: glib::boolean) void;
export @symbol("gtk_stack_page_set_visible") fn stack_page_set_visible(self: *StackPage, visible: glib::boolean) void;
export type StackSidebar = *opaque;
export @symbol("gtk_stack_sidebar_new") fn stack_sidebar_new() *Widget;
export @symbol("gtk_stack_sidebar_get_stack") fn stack_sidebar_get_stack(self: *StackSidebar) *Stack;
export @symbol("gtk_stack_sidebar_set_stack") fn stack_sidebar_set_stack(self: *StackSidebar, stack: *Stack) void;
export type StackSwitcher = *opaque;
export @symbol("gtk_stack_switcher_new") fn stack_switcher_new() *Widget;
export @symbol("gtk_stack_switcher_get_stack") fn stack_switcher_get_stack(switcher: *StackSwitcher) *Stack;
export @symbol("gtk_stack_switcher_set_stack") fn stack_switcher_set_stack(switcher: *StackSwitcher, stack: *Stack) void;
export type Statusbar = *opaque;
export @symbol("gtk_statusbar_new") fn statusbar_new() *Widget;
export @symbol("gtk_statusbar_get_context_id") fn statusbar_get_context_id(statusbar: *Statusbar, context_description: *c::char) uint;
export @symbol("gtk_statusbar_pop") fn statusbar_pop(statusbar: *Statusbar, context_id: uint) void;
export @symbol("gtk_statusbar_push") fn statusbar_push(statusbar: *Statusbar, context_id: uint, text: *c::char) uint;
export @symbol("gtk_statusbar_remove") fn statusbar_remove(statusbar: *Statusbar, context_id: uint, message_id: uint) void;
export @symbol("gtk_statusbar_remove_all") fn statusbar_remove_all(statusbar: *Statusbar, context_id: uint) void;
export fn statusbar_connect_text_popped(
	instance: *Statusbar,
	handler: *fn(instance: *Statusbar, context_id: uint, text: *c::char, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"text-popped\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn statusbar_connect_text_pushed(
	instance: *Statusbar,
	handler: *fn(instance: *Statusbar, context_id: uint, text: *c::char, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"text-pushed\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export type StringFilter = *opaque;
export @symbol("gtk_string_filter_new") fn string_filter_new(expression: *Expression) *StringFilter;
export @symbol("gtk_string_filter_get_expression") fn string_filter_get_expression(self: *StringFilter) *Expression;
export @symbol("gtk_string_filter_get_ignore_case") fn string_filter_get_ignore_case(self: *StringFilter) glib::boolean;
export @symbol("gtk_string_filter_get_match_mode") fn string_filter_get_match_mode(self: *StringFilter) StringFilterMatchMode;
export @symbol("gtk_string_filter_get_search") fn string_filter_get_search(self: *StringFilter) *c::char;
export @symbol("gtk_string_filter_set_expression") fn string_filter_set_expression(self: *StringFilter, expression: *Expression) void;
export @symbol("gtk_string_filter_set_ignore_case") fn string_filter_set_ignore_case(self: *StringFilter, ignore_case: glib::boolean) void;
export @symbol("gtk_string_filter_set_match_mode") fn string_filter_set_match_mode(self: *StringFilter, mode: StringFilterMatchMode) void;
export @symbol("gtk_string_filter_set_search") fn string_filter_set_search(self: *StringFilter, search: *c::char) void;
export type StringList = *opaque;
export @symbol("gtk_string_list_new") fn string_list_new(strings: **c::char) *StringList;
export @symbol("gtk_string_list_append") fn string_list_append(self: *StringList, string: *c::char) void;
export @symbol("gtk_string_list_get_string") fn string_list_get_string(self: *StringList, position: uint) *c::char;
export @symbol("gtk_string_list_remove") fn string_list_remove(self: *StringList, position: uint) void;
export @symbol("gtk_string_list_splice") fn string_list_splice(self: *StringList, position: uint, n_removals: uint, additions: **c::char) void;
export @symbol("gtk_string_list_take") fn string_list_take(self: *StringList, string: *c::char) void;
export type StringObject = *opaque;
export @symbol("gtk_string_object_new") fn string_object_new(string: *c::char) *StringObject;
export @symbol("gtk_string_object_get_string") fn string_object_get_string(self: *StringObject) *c::char;
export type StringSorter = *opaque;
export @symbol("gtk_string_sorter_new") fn string_sorter_new(expression: *Expression) *StringSorter;
export @symbol("gtk_string_sorter_get_collation") fn string_sorter_get_collation(self: *StringSorter) Collation;
export @symbol("gtk_string_sorter_get_expression") fn string_sorter_get_expression(self: *StringSorter) *Expression;
export @symbol("gtk_string_sorter_get_ignore_case") fn string_sorter_get_ignore_case(self: *StringSorter) glib::boolean;
export @symbol("gtk_string_sorter_set_collation") fn string_sorter_set_collation(self: *StringSorter, collation: Collation) void;
export @symbol("gtk_string_sorter_set_expression") fn string_sorter_set_expression(self: *StringSorter, expression: *Expression) void;
export @symbol("gtk_string_sorter_set_ignore_case") fn string_sorter_set_ignore_case(self: *StringSorter, ignore_case: glib::boolean) void;
export type StyleContext = struct {
	parent_object: gobject::Object,
};
export @symbol("gtk_style_context_add_class") fn style_context_add_class(context: *StyleContext, class_name: *c::char) void;
export @symbol("gtk_style_context_add_provider") fn style_context_add_provider(context: *StyleContext, provider: *StyleProvider, priority: uint) void;
export @symbol("gtk_style_context_get_border") fn style_context_get_border(context: *StyleContext, border: *Border) void;
export @symbol("gtk_style_context_get_color") fn style_context_get_color(context: *StyleContext, color: *gdk4::RGBA) void;
export @symbol("gtk_style_context_get_display") fn style_context_get_display(context: *StyleContext) *gdk4::Display;
export @symbol("gtk_style_context_get_margin") fn style_context_get_margin(context: *StyleContext, margin: *Border) void;
export @symbol("gtk_style_context_get_padding") fn style_context_get_padding(context: *StyleContext, padding: *Border) void;
export @symbol("gtk_style_context_get_scale") fn style_context_get_scale(context: *StyleContext) int;
export @symbol("gtk_style_context_get_state") fn style_context_get_state(context: *StyleContext) StateFlags;
export @symbol("gtk_style_context_has_class") fn style_context_has_class(context: *StyleContext, class_name: *c::char) glib::boolean;
export @symbol("gtk_style_context_lookup_color") fn style_context_lookup_color(context: *StyleContext, color_name: *c::char, color: *gdk4::RGBA) glib::boolean;
export @symbol("gtk_style_context_remove_class") fn style_context_remove_class(context: *StyleContext, class_name: *c::char) void;
export @symbol("gtk_style_context_remove_provider") fn style_context_remove_provider(context: *StyleContext, provider: *StyleProvider) void;
export @symbol("gtk_style_context_restore") fn style_context_restore(context: *StyleContext) void;
export @symbol("gtk_style_context_save") fn style_context_save(context: *StyleContext) void;
export @symbol("gtk_style_context_set_display") fn style_context_set_display(context: *StyleContext, display: *gdk4::Display) void;
export @symbol("gtk_style_context_set_scale") fn style_context_set_scale(context: *StyleContext, scale: int) void;
export @symbol("gtk_style_context_set_state") fn style_context_set_state(context: *StyleContext, flags: StateFlags) void;
export @symbol("gtk_style_context_to_string") fn style_context_to_string(context: *StyleContext, flags: StyleContextPrintFlags) *c::char;
export @symbol("gtk_style_context_add_provider_for_display") fn style_context_add_provider_for_display(display: *gdk4::Display, provider: *StyleProvider, priority: uint) void;
export @symbol("gtk_style_context_remove_provider_for_display") fn style_context_remove_provider_for_display(display: *gdk4::Display, provider: *StyleProvider) void;
export type Switch = *opaque;
export @symbol("gtk_switch_new") fn switch_new() *Widget;
export @symbol("gtk_switch_get_active") fn switch_get_active(self: *Switch) glib::boolean;
export @symbol("gtk_switch_get_state") fn switch_get_state(self: *Switch) glib::boolean;
export @symbol("gtk_switch_set_active") fn switch_set_active(self: *Switch, is_active: glib::boolean) void;
export @symbol("gtk_switch_set_state") fn switch_set_state(self: *Switch, state: glib::boolean) void;
export fn switch_connect_activate(
	instance: *Switch,
	handler: *fn(instance: *Switch, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"activate\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn switch_connect_state_set(
	instance: *Switch,
	handler: *fn(instance: *Switch, state: glib::boolean, data: *opaque) glib::boolean,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"state-set\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export type Text = struct {
	parent_instance: Widget,
};
export @symbol("gtk_text_new") fn text_new() *Widget;
export @symbol("gtk_text_new_with_buffer") fn text_new_with_buffer(buffer: *EntryBuffer) *Widget;
export @symbol("gtk_text_compute_cursor_extents") fn text_compute_cursor_extents(self: *Text, position: size, strong: *graphene::Rect, weak: *graphene::Rect) void;
export @symbol("gtk_text_get_activates_default") fn text_get_activates_default(self: *Text) glib::boolean;
export @symbol("gtk_text_get_attributes") fn text_get_attributes(self: *Text) *pango::AttrList;
export @symbol("gtk_text_get_buffer") fn text_get_buffer(self: *Text) *EntryBuffer;
export @symbol("gtk_text_get_enable_emoji_completion") fn text_get_enable_emoji_completion(self: *Text) glib::boolean;
export @symbol("gtk_text_get_extra_menu") fn text_get_extra_menu(self: *Text) *gio::MenuModel;
export @symbol("gtk_text_get_input_hints") fn text_get_input_hints(self: *Text) InputHints;
export @symbol("gtk_text_get_input_purpose") fn text_get_input_purpose(self: *Text) InputPurpose;
export @symbol("gtk_text_get_invisible_char") fn text_get_invisible_char(self: *Text) rune;
export @symbol("gtk_text_get_max_length") fn text_get_max_length(self: *Text) int;
export @symbol("gtk_text_get_overwrite_mode") fn text_get_overwrite_mode(self: *Text) glib::boolean;
export @symbol("gtk_text_get_placeholder_text") fn text_get_placeholder_text(self: *Text) *c::char;
export @symbol("gtk_text_get_propagate_text_width") fn text_get_propagate_text_width(self: *Text) glib::boolean;
export @symbol("gtk_text_get_tabs") fn text_get_tabs(self: *Text) *pango::TabArray;
export @symbol("gtk_text_get_text_length") fn text_get_text_length(self: *Text) u16;
export @symbol("gtk_text_get_truncate_multiline") fn text_get_truncate_multiline(self: *Text) glib::boolean;
export @symbol("gtk_text_get_visibility") fn text_get_visibility(self: *Text) glib::boolean;
export @symbol("gtk_text_grab_focus_without_selecting") fn text_grab_focus_without_selecting(self: *Text) glib::boolean;
export @symbol("gtk_text_set_activates_default") fn text_set_activates_default(self: *Text, activates: glib::boolean) void;
export @symbol("gtk_text_set_attributes") fn text_set_attributes(self: *Text, attrs: *pango::AttrList) void;
export @symbol("gtk_text_set_buffer") fn text_set_buffer(self: *Text, buffer: *EntryBuffer) void;
export @symbol("gtk_text_set_enable_emoji_completion") fn text_set_enable_emoji_completion(self: *Text, enable_emoji_completion: glib::boolean) void;
export @symbol("gtk_text_set_extra_menu") fn text_set_extra_menu(self: *Text, model: *gio::MenuModel) void;
export @symbol("gtk_text_set_input_hints") fn text_set_input_hints(self: *Text, hints: InputHints) void;
export @symbol("gtk_text_set_input_purpose") fn text_set_input_purpose(self: *Text, purpose: InputPurpose) void;
export @symbol("gtk_text_set_invisible_char") fn text_set_invisible_char(self: *Text, ch: rune) void;
export @symbol("gtk_text_set_max_length") fn text_set_max_length(self: *Text, length: int) void;
export @symbol("gtk_text_set_overwrite_mode") fn text_set_overwrite_mode(self: *Text, overwrite: glib::boolean) void;
export @symbol("gtk_text_set_placeholder_text") fn text_set_placeholder_text(self: *Text, text: *c::char) void;
export @symbol("gtk_text_set_propagate_text_width") fn text_set_propagate_text_width(self: *Text, propagate_text_width: glib::boolean) void;
export @symbol("gtk_text_set_tabs") fn text_set_tabs(self: *Text, tabs: *pango::TabArray) void;
export @symbol("gtk_text_set_truncate_multiline") fn text_set_truncate_multiline(self: *Text, truncate_multiline: glib::boolean) void;
export @symbol("gtk_text_set_visibility") fn text_set_visibility(self: *Text, visible: glib::boolean) void;
export @symbol("gtk_text_unset_invisible_char") fn text_unset_invisible_char(self: *Text) void;
export fn text_connect_activate(
	instance: *Text,
	handler: *fn(instance: *Text, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"activate\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn text_connect_backspace(
	instance: *Text,
	handler: *fn(instance: *Text, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"backspace\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn text_connect_copy_clipboard(
	instance: *Text,
	handler: *fn(instance: *Text, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"copy-clipboard\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn text_connect_cut_clipboard(
	instance: *Text,
	handler: *fn(instance: *Text, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"cut-clipboard\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn text_connect_delete_from_cursor(
	instance: *Text,
	handler: *fn(instance: *Text, type_: DeleteType, count: int, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"delete-from-cursor\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn text_connect_insert_at_cursor(
	instance: *Text,
	handler: *fn(instance: *Text, string: *c::char, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"insert-at-cursor\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn text_connect_insert_emoji(
	instance: *Text,
	handler: *fn(instance: *Text, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"insert-emoji\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn text_connect_move_cursor(
	instance: *Text,
	handler: *fn(instance: *Text, step: MovementStep, count: int, extend: glib::boolean, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"move-cursor\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn text_connect_paste_clipboard(
	instance: *Text,
	handler: *fn(instance: *Text, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"paste-clipboard\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn text_connect_preedit_changed(
	instance: *Text,
	handler: *fn(instance: *Text, preedit: *c::char, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"preedit-changed\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn text_connect_toggle_overwrite(
	instance: *Text,
	handler: *fn(instance: *Text, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"toggle-overwrite\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export type TextBuffer = struct {
	parent_instance: gobject::Object,
	priv: *TextBufferPrivate,
};
export @symbol("gtk_text_buffer_new") fn text_buffer_new(table: *TextTagTable) *TextBuffer;
export @symbol("gtk_text_buffer_add_mark") fn text_buffer_add_mark(buffer: *TextBuffer, mark: *TextMark, where: *TextIter) void;
export @symbol("gtk_text_buffer_add_selection_clipboard") fn text_buffer_add_selection_clipboard(buffer: *TextBuffer, clipboard: *gdk4::Clipboard) void;
export @symbol("gtk_text_buffer_apply_tag") fn text_buffer_apply_tag(buffer: *TextBuffer, tag: *TextTag, start: *TextIter, end: *TextIter) void;
export @symbol("gtk_text_buffer_apply_tag_by_name") fn text_buffer_apply_tag_by_name(buffer: *TextBuffer, name: *c::char, start: *TextIter, end: *TextIter) void;
export @symbol("gtk_text_buffer_backspace") fn text_buffer_backspace(buffer: *TextBuffer, iter: *TextIter, interactive: glib::boolean, default_editable: glib::boolean) glib::boolean;
export @symbol("gtk_text_buffer_begin_irreversible_action") fn text_buffer_begin_irreversible_action(buffer: *TextBuffer) void;
export @symbol("gtk_text_buffer_begin_user_action") fn text_buffer_begin_user_action(buffer: *TextBuffer) void;
export @symbol("gtk_text_buffer_copy_clipboard") fn text_buffer_copy_clipboard(buffer: *TextBuffer, clipboard: *gdk4::Clipboard) void;
export @symbol("gtk_text_buffer_create_child_anchor") fn text_buffer_create_child_anchor(buffer: *TextBuffer, iter: *TextIter) *TextChildAnchor;
export @symbol("gtk_text_buffer_create_mark") fn text_buffer_create_mark(buffer: *TextBuffer, mark_name: *c::char, where: *TextIter, left_gravity: glib::boolean) *TextMark;
export @symbol("gtk_text_buffer_create_tag") fn text_buffer_create_tag(buffer: *TextBuffer, tag_name: *c::char, first_property_name: *c::char, ...) *TextTag;
export @symbol("gtk_text_buffer_cut_clipboard") fn text_buffer_cut_clipboard(buffer: *TextBuffer, clipboard: *gdk4::Clipboard, default_editable: glib::boolean) void;
export @symbol("gtk_text_buffer_delete") fn text_buffer_delete(buffer: *TextBuffer, start: *TextIter, end: *TextIter) void;
export @symbol("gtk_text_buffer_delete_interactive") fn text_buffer_delete_interactive(buffer: *TextBuffer, start_iter: *TextIter, end_iter: *TextIter, default_editable: glib::boolean) glib::boolean;
export @symbol("gtk_text_buffer_delete_mark") fn text_buffer_delete_mark(buffer: *TextBuffer, mark: *TextMark) void;
export @symbol("gtk_text_buffer_delete_mark_by_name") fn text_buffer_delete_mark_by_name(buffer: *TextBuffer, name: *c::char) void;
export @symbol("gtk_text_buffer_delete_selection") fn text_buffer_delete_selection(buffer: *TextBuffer, interactive: glib::boolean, default_editable: glib::boolean) glib::boolean;
export @symbol("gtk_text_buffer_end_irreversible_action") fn text_buffer_end_irreversible_action(buffer: *TextBuffer) void;
export @symbol("gtk_text_buffer_end_user_action") fn text_buffer_end_user_action(buffer: *TextBuffer) void;
export @symbol("gtk_text_buffer_get_bounds") fn text_buffer_get_bounds(buffer: *TextBuffer, start: *TextIter, end: *TextIter) void;
export @symbol("gtk_text_buffer_get_can_redo") fn text_buffer_get_can_redo(buffer: *TextBuffer) glib::boolean;
export @symbol("gtk_text_buffer_get_can_undo") fn text_buffer_get_can_undo(buffer: *TextBuffer) glib::boolean;
export @symbol("gtk_text_buffer_get_char_count") fn text_buffer_get_char_count(buffer: *TextBuffer) int;
export @symbol("gtk_text_buffer_get_enable_undo") fn text_buffer_get_enable_undo(buffer: *TextBuffer) glib::boolean;
export @symbol("gtk_text_buffer_get_end_iter") fn text_buffer_get_end_iter(buffer: *TextBuffer, iter: *TextIter) void;
export @symbol("gtk_text_buffer_get_has_selection") fn text_buffer_get_has_selection(buffer: *TextBuffer) glib::boolean;
export @symbol("gtk_text_buffer_get_insert") fn text_buffer_get_insert(buffer: *TextBuffer) *TextMark;
export @symbol("gtk_text_buffer_get_iter_at_child_anchor") fn text_buffer_get_iter_at_child_anchor(buffer: *TextBuffer, iter: *TextIter, anchor: *TextChildAnchor) void;
export @symbol("gtk_text_buffer_get_iter_at_line") fn text_buffer_get_iter_at_line(buffer: *TextBuffer, iter: *TextIter, line_number: int) glib::boolean;
export @symbol("gtk_text_buffer_get_iter_at_line_index") fn text_buffer_get_iter_at_line_index(buffer: *TextBuffer, iter: *TextIter, line_number: int, byte_index: int) glib::boolean;
export @symbol("gtk_text_buffer_get_iter_at_line_offset") fn text_buffer_get_iter_at_line_offset(buffer: *TextBuffer, iter: *TextIter, line_number: int, char_offset: int) glib::boolean;
export @symbol("gtk_text_buffer_get_iter_at_mark") fn text_buffer_get_iter_at_mark(buffer: *TextBuffer, iter: *TextIter, mark: *TextMark) void;
export @symbol("gtk_text_buffer_get_iter_at_offset") fn text_buffer_get_iter_at_offset(buffer: *TextBuffer, iter: *TextIter, char_offset: int) void;
export @symbol("gtk_text_buffer_get_line_count") fn text_buffer_get_line_count(buffer: *TextBuffer) int;
export @symbol("gtk_text_buffer_get_mark") fn text_buffer_get_mark(buffer: *TextBuffer, name: *c::char) *TextMark;
export @symbol("gtk_text_buffer_get_max_undo_levels") fn text_buffer_get_max_undo_levels(buffer: *TextBuffer) uint;
export @symbol("gtk_text_buffer_get_modified") fn text_buffer_get_modified(buffer: *TextBuffer) glib::boolean;
export @symbol("gtk_text_buffer_get_selection_bound") fn text_buffer_get_selection_bound(buffer: *TextBuffer) *TextMark;
export @symbol("gtk_text_buffer_get_selection_bounds") fn text_buffer_get_selection_bounds(buffer: *TextBuffer, start: *TextIter, end: *TextIter) glib::boolean;
export @symbol("gtk_text_buffer_get_selection_content") fn text_buffer_get_selection_content(buffer: *TextBuffer) *gdk4::ContentProvider;
export @symbol("gtk_text_buffer_get_slice") fn text_buffer_get_slice(buffer: *TextBuffer, start: *TextIter, end: *TextIter, include_hidden_chars: glib::boolean) *c::char;
export @symbol("gtk_text_buffer_get_start_iter") fn text_buffer_get_start_iter(buffer: *TextBuffer, iter: *TextIter) void;
export @symbol("gtk_text_buffer_get_tag_table") fn text_buffer_get_tag_table(buffer: *TextBuffer) *TextTagTable;
export @symbol("gtk_text_buffer_get_text") fn text_buffer_get_text(buffer: *TextBuffer, start: *TextIter, end: *TextIter, include_hidden_chars: glib::boolean) *c::char;
export @symbol("gtk_text_buffer_insert") fn text_buffer_insert(buffer: *TextBuffer, iter: *TextIter, text: *c::char, len_: int) void;
export @symbol("gtk_text_buffer_insert_at_cursor") fn text_buffer_insert_at_cursor(buffer: *TextBuffer, text: *c::char, len_: int) void;
export @symbol("gtk_text_buffer_insert_child_anchor") fn text_buffer_insert_child_anchor(buffer: *TextBuffer, iter: *TextIter, anchor: *TextChildAnchor) void;
export @symbol("gtk_text_buffer_insert_interactive") fn text_buffer_insert_interactive(buffer: *TextBuffer, iter: *TextIter, text: *c::char, len_: int, default_editable: glib::boolean) glib::boolean;
export @symbol("gtk_text_buffer_insert_interactive_at_cursor") fn text_buffer_insert_interactive_at_cursor(buffer: *TextBuffer, text: *c::char, len_: int, default_editable: glib::boolean) glib::boolean;
export @symbol("gtk_text_buffer_insert_markup") fn text_buffer_insert_markup(buffer: *TextBuffer, iter: *TextIter, markup: *c::char, len_: int) void;
export @symbol("gtk_text_buffer_insert_paintable") fn text_buffer_insert_paintable(buffer: *TextBuffer, iter: *TextIter, paintable: *gdk4::Paintable) void;
export @symbol("gtk_text_buffer_insert_range") fn text_buffer_insert_range(buffer: *TextBuffer, iter: *TextIter, start: *TextIter, end: *TextIter) void;
export @symbol("gtk_text_buffer_insert_range_interactive") fn text_buffer_insert_range_interactive(buffer: *TextBuffer, iter: *TextIter, start: *TextIter, end: *TextIter, default_editable: glib::boolean) glib::boolean;
export @symbol("gtk_text_buffer_insert_with_tags") fn text_buffer_insert_with_tags(buffer: *TextBuffer, iter: *TextIter, text: *c::char, len_: int, first_tag: *TextTag, ...) void;
export @symbol("gtk_text_buffer_insert_with_tags_by_name") fn text_buffer_insert_with_tags_by_name(buffer: *TextBuffer, iter: *TextIter, text: *c::char, len_: int, first_tag_name: *c::char, ...) void;
export @symbol("gtk_text_buffer_move_mark") fn text_buffer_move_mark(buffer: *TextBuffer, mark: *TextMark, where: *TextIter) void;
export @symbol("gtk_text_buffer_move_mark_by_name") fn text_buffer_move_mark_by_name(buffer: *TextBuffer, name: *c::char, where: *TextIter) void;
export @symbol("gtk_text_buffer_paste_clipboard") fn text_buffer_paste_clipboard(buffer: *TextBuffer, clipboard: *gdk4::Clipboard, override_location: *TextIter, default_editable: glib::boolean) void;
export @symbol("gtk_text_buffer_place_cursor") fn text_buffer_place_cursor(buffer: *TextBuffer, where: *TextIter) void;
export @symbol("gtk_text_buffer_redo") fn text_buffer_redo(buffer: *TextBuffer) void;
export @symbol("gtk_text_buffer_remove_all_tags") fn text_buffer_remove_all_tags(buffer: *TextBuffer, start: *TextIter, end: *TextIter) void;
export @symbol("gtk_text_buffer_remove_selection_clipboard") fn text_buffer_remove_selection_clipboard(buffer: *TextBuffer, clipboard: *gdk4::Clipboard) void;
export @symbol("gtk_text_buffer_remove_tag") fn text_buffer_remove_tag(buffer: *TextBuffer, tag: *TextTag, start: *TextIter, end: *TextIter) void;
export @symbol("gtk_text_buffer_remove_tag_by_name") fn text_buffer_remove_tag_by_name(buffer: *TextBuffer, name: *c::char, start: *TextIter, end: *TextIter) void;
export @symbol("gtk_text_buffer_select_range") fn text_buffer_select_range(buffer: *TextBuffer, ins: *TextIter, bound: *TextIter) void;
export @symbol("gtk_text_buffer_set_enable_undo") fn text_buffer_set_enable_undo(buffer: *TextBuffer, enable_undo: glib::boolean) void;
export @symbol("gtk_text_buffer_set_max_undo_levels") fn text_buffer_set_max_undo_levels(buffer: *TextBuffer, max_undo_levels: uint) void;
export @symbol("gtk_text_buffer_set_modified") fn text_buffer_set_modified(buffer: *TextBuffer, setting: glib::boolean) void;
export @symbol("gtk_text_buffer_set_text") fn text_buffer_set_text(buffer: *TextBuffer, text: *c::char, len_: int) void;
export @symbol("gtk_text_buffer_undo") fn text_buffer_undo(buffer: *TextBuffer) void;
export fn text_buffer_connect_apply_tag(
	instance: *TextBuffer,
	handler: *fn(instance: *TextBuffer, tag: *TextTag, start: *TextIter, end: *TextIter, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"apply-tag\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn text_buffer_connect_begin_user_action(
	instance: *TextBuffer,
	handler: *fn(instance: *TextBuffer, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"begin-user-action\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn text_buffer_connect_changed(
	instance: *TextBuffer,
	handler: *fn(instance: *TextBuffer, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"changed\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn text_buffer_connect_delete_range(
	instance: *TextBuffer,
	handler: *fn(instance: *TextBuffer, start: *TextIter, end: *TextIter, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"delete-range\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn text_buffer_connect_end_user_action(
	instance: *TextBuffer,
	handler: *fn(instance: *TextBuffer, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"end-user-action\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn text_buffer_connect_insert_child_anchor(
	instance: *TextBuffer,
	handler: *fn(instance: *TextBuffer, location: *TextIter, anchor: *TextChildAnchor, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"insert-child-anchor\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn text_buffer_connect_insert_paintable(
	instance: *TextBuffer,
	handler: *fn(instance: *TextBuffer, location: *TextIter, paintable: gdk4::Paintable, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"insert-paintable\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn text_buffer_connect_insert_text(
	instance: *TextBuffer,
	handler: *fn(instance: *TextBuffer, location: *TextIter, text: *c::char, len_: int, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"insert-text\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn text_buffer_connect_mark_deleted(
	instance: *TextBuffer,
	handler: *fn(instance: *TextBuffer, mark: *TextMark, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"mark-deleted\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn text_buffer_connect_mark_set(
	instance: *TextBuffer,
	handler: *fn(instance: *TextBuffer, location: *TextIter, mark: *TextMark, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"mark-set\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn text_buffer_connect_modified_changed(
	instance: *TextBuffer,
	handler: *fn(instance: *TextBuffer, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"modified-changed\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn text_buffer_connect_paste_done(
	instance: *TextBuffer,
	handler: *fn(instance: *TextBuffer, clipboard: gdk4::Clipboard, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"paste-done\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn text_buffer_connect_redo(
	instance: *TextBuffer,
	handler: *fn(instance: *TextBuffer, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"redo\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn text_buffer_connect_remove_tag(
	instance: *TextBuffer,
	handler: *fn(instance: *TextBuffer, tag: *TextTag, start: *TextIter, end: *TextIter, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"remove-tag\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn text_buffer_connect_undo(
	instance: *TextBuffer,
	handler: *fn(instance: *TextBuffer, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"undo\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export type TextChildAnchor = struct {
	parent_instance: gobject::Object,
	segment: *opaque,
};
export @symbol("gtk_text_child_anchor_new") fn text_child_anchor_new() *TextChildAnchor;
export @symbol("gtk_text_child_anchor_new_with_replacement") fn text_child_anchor_new_with_replacement(character: *c::char) *TextChildAnchor;
export @symbol("gtk_text_child_anchor_get_deleted") fn text_child_anchor_get_deleted(anchor: *TextChildAnchor) glib::boolean;
export @symbol("gtk_text_child_anchor_get_widgets") fn text_child_anchor_get_widgets(anchor: *TextChildAnchor, out_len: *uint) **Widget;
export type TextMark = struct {
	parent_instance: gobject::Object,
	segment: *opaque,
};
export @symbol("gtk_text_mark_new") fn text_mark_new(name: *c::char, left_gravity: glib::boolean) *TextMark;
export @symbol("gtk_text_mark_get_buffer") fn text_mark_get_buffer(mark: *TextMark) *TextBuffer;
export @symbol("gtk_text_mark_get_deleted") fn text_mark_get_deleted(mark: *TextMark) glib::boolean;
export @symbol("gtk_text_mark_get_left_gravity") fn text_mark_get_left_gravity(mark: *TextMark) glib::boolean;
export @symbol("gtk_text_mark_get_name") fn text_mark_get_name(mark: *TextMark) *c::char;
export @symbol("gtk_text_mark_get_visible") fn text_mark_get_visible(mark: *TextMark) glib::boolean;
export @symbol("gtk_text_mark_set_visible") fn text_mark_set_visible(mark: *TextMark, setting: glib::boolean) void;
export type TextTag = struct {
	parent_instance: gobject::Object,
	priv: *TextTagPrivate,
};
export @symbol("gtk_text_tag_new") fn text_tag_new(name: *c::char) *TextTag;
export @symbol("gtk_text_tag_changed") fn text_tag_changed(tag: *TextTag, size_changed: glib::boolean) void;
export @symbol("gtk_text_tag_get_priority") fn text_tag_get_priority(tag: *TextTag) int;
export @symbol("gtk_text_tag_set_priority") fn text_tag_set_priority(tag: *TextTag, priority: int) void;
export type TextTagTable = *opaque;
export @symbol("gtk_text_tag_table_new") fn text_tag_table_new() *TextTagTable;
export @symbol("gtk_text_tag_table_add") fn text_tag_table_add(table: *TextTagTable, tag: *TextTag) glib::boolean;
export @symbol("gtk_text_tag_table_foreach") fn text_tag_table_foreach(table: *TextTagTable, func: TextTagTableForeach, data: *opaque) void;
export @symbol("gtk_text_tag_table_get_size") fn text_tag_table_get_size(table: *TextTagTable) int;
export @symbol("gtk_text_tag_table_lookup") fn text_tag_table_lookup(table: *TextTagTable, name: *c::char) *TextTag;
export @symbol("gtk_text_tag_table_remove") fn text_tag_table_remove(table: *TextTagTable, tag: *TextTag) void;
export fn text_tag_table_connect_tag_added(
	instance: *TextTagTable,
	handler: *fn(instance: *TextTagTable, tag: *TextTag, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"tag-added\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn text_tag_table_connect_tag_changed(
	instance: *TextTagTable,
	handler: *fn(instance: *TextTagTable, tag: *TextTag, size_changed: glib::boolean, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"tag-changed\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn text_tag_table_connect_tag_removed(
	instance: *TextTagTable,
	handler: *fn(instance: *TextTagTable, tag: *TextTag, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"tag-removed\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export type TextView = struct {
	parent_instance: Widget,
	priv: *TextViewPrivate,
};
export @symbol("gtk_text_view_new") fn text_view_new() *Widget;
export @symbol("gtk_text_view_new_with_buffer") fn text_view_new_with_buffer(buffer: *TextBuffer) *Widget;
export @symbol("gtk_text_view_add_child_at_anchor") fn text_view_add_child_at_anchor(text_view: *TextView, child: *Widget, anchor: *TextChildAnchor) void;
export @symbol("gtk_text_view_add_overlay") fn text_view_add_overlay(text_view: *TextView, child: *Widget, xpos: int, ypos: int) void;
export @symbol("gtk_text_view_backward_display_line") fn text_view_backward_display_line(text_view: *TextView, iter: *TextIter) glib::boolean;
export @symbol("gtk_text_view_backward_display_line_start") fn text_view_backward_display_line_start(text_view: *TextView, iter: *TextIter) glib::boolean;
export @symbol("gtk_text_view_buffer_to_window_coords") fn text_view_buffer_to_window_coords(text_view: *TextView, win: TextWindowType, buffer_x: int, buffer_y: int, window_x: *int, window_y: *int) void;
export @symbol("gtk_text_view_forward_display_line") fn text_view_forward_display_line(text_view: *TextView, iter: *TextIter) glib::boolean;
export @symbol("gtk_text_view_forward_display_line_end") fn text_view_forward_display_line_end(text_view: *TextView, iter: *TextIter) glib::boolean;
export @symbol("gtk_text_view_get_accepts_tab") fn text_view_get_accepts_tab(text_view: *TextView) glib::boolean;
export @symbol("gtk_text_view_get_bottom_margin") fn text_view_get_bottom_margin(text_view: *TextView) int;
export @symbol("gtk_text_view_get_buffer") fn text_view_get_buffer(text_view: *TextView) *TextBuffer;
export @symbol("gtk_text_view_get_cursor_locations") fn text_view_get_cursor_locations(text_view: *TextView, iter: *TextIter, strong: *gdk4::Rectangle, weak: *gdk4::Rectangle) void;
export @symbol("gtk_text_view_get_cursor_visible") fn text_view_get_cursor_visible(text_view: *TextView) glib::boolean;
export @symbol("gtk_text_view_get_editable") fn text_view_get_editable(text_view: *TextView) glib::boolean;
export @symbol("gtk_text_view_get_extra_menu") fn text_view_get_extra_menu(text_view: *TextView) *gio::MenuModel;
export @symbol("gtk_text_view_get_gutter") fn text_view_get_gutter(text_view: *TextView, win: TextWindowType) *Widget;
export @symbol("gtk_text_view_get_indent") fn text_view_get_indent(text_view: *TextView) int;
export @symbol("gtk_text_view_get_input_hints") fn text_view_get_input_hints(text_view: *TextView) InputHints;
export @symbol("gtk_text_view_get_input_purpose") fn text_view_get_input_purpose(text_view: *TextView) InputPurpose;
export @symbol("gtk_text_view_get_iter_at_location") fn text_view_get_iter_at_location(text_view: *TextView, iter: *TextIter, x: int, y: int) glib::boolean;
export @symbol("gtk_text_view_get_iter_at_position") fn text_view_get_iter_at_position(text_view: *TextView, iter: *TextIter, trailing: *int, x: int, y: int) glib::boolean;
export @symbol("gtk_text_view_get_iter_location") fn text_view_get_iter_location(text_view: *TextView, iter: *TextIter, location: *gdk4::Rectangle) void;
export @symbol("gtk_text_view_get_justification") fn text_view_get_justification(text_view: *TextView) Justification;
export @symbol("gtk_text_view_get_left_margin") fn text_view_get_left_margin(text_view: *TextView) int;
export @symbol("gtk_text_view_get_line_at_y") fn text_view_get_line_at_y(text_view: *TextView, target_iter: *TextIter, y: int, line_top: *int) void;
export @symbol("gtk_text_view_get_line_yrange") fn text_view_get_line_yrange(text_view: *TextView, iter: *TextIter, y: *int, height: *int) void;
export @symbol("gtk_text_view_get_ltr_context") fn text_view_get_ltr_context(text_view: *TextView) *pango::Context;
export @symbol("gtk_text_view_get_monospace") fn text_view_get_monospace(text_view: *TextView) glib::boolean;
export @symbol("gtk_text_view_get_overwrite") fn text_view_get_overwrite(text_view: *TextView) glib::boolean;
export @symbol("gtk_text_view_get_pixels_above_lines") fn text_view_get_pixels_above_lines(text_view: *TextView) int;
export @symbol("gtk_text_view_get_pixels_below_lines") fn text_view_get_pixels_below_lines(text_view: *TextView) int;
export @symbol("gtk_text_view_get_pixels_inside_wrap") fn text_view_get_pixels_inside_wrap(text_view: *TextView) int;
export @symbol("gtk_text_view_get_right_margin") fn text_view_get_right_margin(text_view: *TextView) int;
export @symbol("gtk_text_view_get_rtl_context") fn text_view_get_rtl_context(text_view: *TextView) *pango::Context;
export @symbol("gtk_text_view_get_tabs") fn text_view_get_tabs(text_view: *TextView) *pango::TabArray;
export @symbol("gtk_text_view_get_top_margin") fn text_view_get_top_margin(text_view: *TextView) int;
export @symbol("gtk_text_view_get_visible_rect") fn text_view_get_visible_rect(text_view: *TextView, visible_rect: *gdk4::Rectangle) void;
export @symbol("gtk_text_view_get_wrap_mode") fn text_view_get_wrap_mode(text_view: *TextView) WrapMode;
export @symbol("gtk_text_view_im_context_filter_keypress") fn text_view_im_context_filter_keypress(text_view: *TextView, event: *gdk4::Event) glib::boolean;
export @symbol("gtk_text_view_move_mark_onscreen") fn text_view_move_mark_onscreen(text_view: *TextView, mark: *TextMark) glib::boolean;
export @symbol("gtk_text_view_move_overlay") fn text_view_move_overlay(text_view: *TextView, child: *Widget, xpos: int, ypos: int) void;
export @symbol("gtk_text_view_move_visually") fn text_view_move_visually(text_view: *TextView, iter: *TextIter, count: int) glib::boolean;
export @symbol("gtk_text_view_place_cursor_onscreen") fn text_view_place_cursor_onscreen(text_view: *TextView) glib::boolean;
export @symbol("gtk_text_view_remove") fn text_view_remove(text_view: *TextView, child: *Widget) void;
export @symbol("gtk_text_view_reset_cursor_blink") fn text_view_reset_cursor_blink(text_view: *TextView) void;
export @symbol("gtk_text_view_reset_im_context") fn text_view_reset_im_context(text_view: *TextView) void;
export @symbol("gtk_text_view_scroll_mark_onscreen") fn text_view_scroll_mark_onscreen(text_view: *TextView, mark: *TextMark) void;
export @symbol("gtk_text_view_scroll_to_iter") fn text_view_scroll_to_iter(text_view: *TextView, iter: *TextIter, within_margin: f64, use_align: glib::boolean, xalign: f64, yalign: f64) glib::boolean;
export @symbol("gtk_text_view_scroll_to_mark") fn text_view_scroll_to_mark(text_view: *TextView, mark: *TextMark, within_margin: f64, use_align: glib::boolean, xalign: f64, yalign: f64) void;
export @symbol("gtk_text_view_set_accepts_tab") fn text_view_set_accepts_tab(text_view: *TextView, accepts_tab: glib::boolean) void;
export @symbol("gtk_text_view_set_bottom_margin") fn text_view_set_bottom_margin(text_view: *TextView, bottom_margin: int) void;
export @symbol("gtk_text_view_set_buffer") fn text_view_set_buffer(text_view: *TextView, buffer: *TextBuffer) void;
export @symbol("gtk_text_view_set_cursor_visible") fn text_view_set_cursor_visible(text_view: *TextView, setting: glib::boolean) void;
export @symbol("gtk_text_view_set_editable") fn text_view_set_editable(text_view: *TextView, setting: glib::boolean) void;
export @symbol("gtk_text_view_set_extra_menu") fn text_view_set_extra_menu(text_view: *TextView, model: *gio::MenuModel) void;
export @symbol("gtk_text_view_set_gutter") fn text_view_set_gutter(text_view: *TextView, win: TextWindowType, widget: *Widget) void;
export @symbol("gtk_text_view_set_indent") fn text_view_set_indent(text_view: *TextView, indent: int) void;
export @symbol("gtk_text_view_set_input_hints") fn text_view_set_input_hints(text_view: *TextView, hints: InputHints) void;
export @symbol("gtk_text_view_set_input_purpose") fn text_view_set_input_purpose(text_view: *TextView, purpose: InputPurpose) void;
export @symbol("gtk_text_view_set_justification") fn text_view_set_justification(text_view: *TextView, justification: Justification) void;
export @symbol("gtk_text_view_set_left_margin") fn text_view_set_left_margin(text_view: *TextView, left_margin: int) void;
export @symbol("gtk_text_view_set_monospace") fn text_view_set_monospace(text_view: *TextView, monospace: glib::boolean) void;
export @symbol("gtk_text_view_set_overwrite") fn text_view_set_overwrite(text_view: *TextView, overwrite: glib::boolean) void;
export @symbol("gtk_text_view_set_pixels_above_lines") fn text_view_set_pixels_above_lines(text_view: *TextView, pixels_above_lines: int) void;
export @symbol("gtk_text_view_set_pixels_below_lines") fn text_view_set_pixels_below_lines(text_view: *TextView, pixels_below_lines: int) void;
export @symbol("gtk_text_view_set_pixels_inside_wrap") fn text_view_set_pixels_inside_wrap(text_view: *TextView, pixels_inside_wrap: int) void;
export @symbol("gtk_text_view_set_right_margin") fn text_view_set_right_margin(text_view: *TextView, right_margin: int) void;
export @symbol("gtk_text_view_set_tabs") fn text_view_set_tabs(text_view: *TextView, tabs: *pango::TabArray) void;
export @symbol("gtk_text_view_set_top_margin") fn text_view_set_top_margin(text_view: *TextView, top_margin: int) void;
export @symbol("gtk_text_view_set_wrap_mode") fn text_view_set_wrap_mode(text_view: *TextView, wrap_mode: WrapMode) void;
export @symbol("gtk_text_view_starts_display_line") fn text_view_starts_display_line(text_view: *TextView, iter: *TextIter) glib::boolean;
export @symbol("gtk_text_view_window_to_buffer_coords") fn text_view_window_to_buffer_coords(text_view: *TextView, win: TextWindowType, window_x: int, window_y: int, buffer_x: *int, buffer_y: *int) void;
export fn text_view_connect_backspace(
	instance: *TextView,
	handler: *fn(instance: *TextView, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"backspace\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn text_view_connect_copy_clipboard(
	instance: *TextView,
	handler: *fn(instance: *TextView, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"copy-clipboard\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn text_view_connect_cut_clipboard(
	instance: *TextView,
	handler: *fn(instance: *TextView, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"cut-clipboard\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn text_view_connect_delete_from_cursor(
	instance: *TextView,
	handler: *fn(instance: *TextView, type_: DeleteType, count: int, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"delete-from-cursor\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn text_view_connect_extend_selection(
	instance: *TextView,
	handler: *fn(instance: *TextView, granularity: TextExtendSelection, location: *TextIter, start: *TextIter, end: *TextIter, data: *opaque) glib::boolean,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"extend-selection\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn text_view_connect_insert_at_cursor(
	instance: *TextView,
	handler: *fn(instance: *TextView, string: *c::char, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"insert-at-cursor\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn text_view_connect_insert_emoji(
	instance: *TextView,
	handler: *fn(instance: *TextView, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"insert-emoji\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn text_view_connect_move_cursor(
	instance: *TextView,
	handler: *fn(instance: *TextView, step: MovementStep, count: int, extend_selection: glib::boolean, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"move-cursor\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn text_view_connect_move_viewport(
	instance: *TextView,
	handler: *fn(instance: *TextView, step: ScrollStep, count: int, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"move-viewport\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn text_view_connect_paste_clipboard(
	instance: *TextView,
	handler: *fn(instance: *TextView, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"paste-clipboard\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn text_view_connect_preedit_changed(
	instance: *TextView,
	handler: *fn(instance: *TextView, preedit: *c::char, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"preedit-changed\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn text_view_connect_select_all(
	instance: *TextView,
	handler: *fn(instance: *TextView, select: glib::boolean, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"select-all\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn text_view_connect_set_anchor(
	instance: *TextView,
	handler: *fn(instance: *TextView, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"set-anchor\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn text_view_connect_toggle_cursor_visible(
	instance: *TextView,
	handler: *fn(instance: *TextView, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"toggle-cursor-visible\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn text_view_connect_toggle_overwrite(
	instance: *TextView,
	handler: *fn(instance: *TextView, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"toggle-overwrite\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export type ToggleButton = struct {
	button: Button,
};
export @symbol("gtk_toggle_button_new") fn toggle_button_new() *Widget;
export @symbol("gtk_toggle_button_new_with_label") fn toggle_button_new_with_label(label: *c::char) *Widget;
export @symbol("gtk_toggle_button_new_with_mnemonic") fn toggle_button_new_with_mnemonic(label: *c::char) *Widget;
export @symbol("gtk_toggle_button_get_active") fn toggle_button_get_active(toggle_button: *ToggleButton) glib::boolean;
export @symbol("gtk_toggle_button_set_active") fn toggle_button_set_active(toggle_button: *ToggleButton, is_active: glib::boolean) void;
export @symbol("gtk_toggle_button_set_group") fn toggle_button_set_group(toggle_button: *ToggleButton, group: *ToggleButton) void;
export @symbol("gtk_toggle_button_toggled") fn toggle_button_toggled(toggle_button: *ToggleButton) void;
export fn toggle_button_connect_toggled(
	instance: *ToggleButton,
	handler: *fn(instance: *ToggleButton, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"toggled\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export type Tooltip = *opaque;
export @symbol("gtk_tooltip_set_custom") fn tooltip_set_custom(tooltip: *Tooltip, custom_widget: *Widget) void;
export @symbol("gtk_tooltip_set_icon") fn tooltip_set_icon(tooltip: *Tooltip, paintable: *gdk4::Paintable) void;
export @symbol("gtk_tooltip_set_icon_from_gicon") fn tooltip_set_icon_from_gicon(tooltip: *Tooltip, gicon: *gio::Icon) void;
export @symbol("gtk_tooltip_set_icon_from_icon_name") fn tooltip_set_icon_from_icon_name(tooltip: *Tooltip, icon_name: *c::char) void;
export @symbol("gtk_tooltip_set_markup") fn tooltip_set_markup(tooltip: *Tooltip, markup: *c::char) void;
export @symbol("gtk_tooltip_set_text") fn tooltip_set_text(tooltip: *Tooltip, text: *c::char) void;
export @symbol("gtk_tooltip_set_tip_area") fn tooltip_set_tip_area(tooltip: *Tooltip, rect: *gdk4::Rectangle) void;
export type TreeExpander = *opaque;
export @symbol("gtk_tree_expander_new") fn tree_expander_new() *Widget;
export @symbol("gtk_tree_expander_get_child") fn tree_expander_get_child(self: *TreeExpander) *Widget;
export @symbol("gtk_tree_expander_get_hide_expander") fn tree_expander_get_hide_expander(self: *TreeExpander) glib::boolean;
export @symbol("gtk_tree_expander_get_indent_for_depth") fn tree_expander_get_indent_for_depth(self: *TreeExpander) glib::boolean;
export @symbol("gtk_tree_expander_get_indent_for_icon") fn tree_expander_get_indent_for_icon(self: *TreeExpander) glib::boolean;
export @symbol("gtk_tree_expander_get_item") fn tree_expander_get_item(self: *TreeExpander) *opaque;
export @symbol("gtk_tree_expander_get_list_row") fn tree_expander_get_list_row(self: *TreeExpander) *TreeListRow;
export @symbol("gtk_tree_expander_set_child") fn tree_expander_set_child(self: *TreeExpander, child: *Widget) void;
export @symbol("gtk_tree_expander_set_hide_expander") fn tree_expander_set_hide_expander(self: *TreeExpander, hide_expander: glib::boolean) void;
export @symbol("gtk_tree_expander_set_indent_for_depth") fn tree_expander_set_indent_for_depth(self: *TreeExpander, indent_for_depth: glib::boolean) void;
export @symbol("gtk_tree_expander_set_indent_for_icon") fn tree_expander_set_indent_for_icon(self: *TreeExpander, indent_for_icon: glib::boolean) void;
export @symbol("gtk_tree_expander_set_list_row") fn tree_expander_set_list_row(self: *TreeExpander, list_row: *TreeListRow) void;
export type TreeListModel = *opaque;
export @symbol("gtk_tree_list_model_new") fn tree_list_model_new(root: *gio::ListModel, passthrough: glib::boolean, autoexpand: glib::boolean, create_func: TreeListModelCreateModelFunc, user_data: *opaque, user_destroy: glib::DestroyNotify) *TreeListModel;
export @symbol("gtk_tree_list_model_get_autoexpand") fn tree_list_model_get_autoexpand(self: *TreeListModel) glib::boolean;
export @symbol("gtk_tree_list_model_get_child_row") fn tree_list_model_get_child_row(self: *TreeListModel, position: uint) *TreeListRow;
export @symbol("gtk_tree_list_model_get_model") fn tree_list_model_get_model(self: *TreeListModel) *gio::ListModel;
export @symbol("gtk_tree_list_model_get_passthrough") fn tree_list_model_get_passthrough(self: *TreeListModel) glib::boolean;
export @symbol("gtk_tree_list_model_get_row") fn tree_list_model_get_row(self: *TreeListModel, position: uint) *TreeListRow;
export @symbol("gtk_tree_list_model_set_autoexpand") fn tree_list_model_set_autoexpand(self: *TreeListModel, autoexpand: glib::boolean) void;
export type TreeListRow = *opaque;
export @symbol("gtk_tree_list_row_get_child_row") fn tree_list_row_get_child_row(self: *TreeListRow, position: uint) *TreeListRow;
export @symbol("gtk_tree_list_row_get_children") fn tree_list_row_get_children(self: *TreeListRow) *gio::ListModel;
export @symbol("gtk_tree_list_row_get_depth") fn tree_list_row_get_depth(self: *TreeListRow) uint;
export @symbol("gtk_tree_list_row_get_expanded") fn tree_list_row_get_expanded(self: *TreeListRow) glib::boolean;
export @symbol("gtk_tree_list_row_get_item") fn tree_list_row_get_item(self: *TreeListRow) *opaque;
export @symbol("gtk_tree_list_row_get_parent") fn tree_list_row_get_parent(self: *TreeListRow) *TreeListRow;
export @symbol("gtk_tree_list_row_get_position") fn tree_list_row_get_position(self: *TreeListRow) uint;
export @symbol("gtk_tree_list_row_is_expandable") fn tree_list_row_is_expandable(self: *TreeListRow) glib::boolean;
export @symbol("gtk_tree_list_row_set_expanded") fn tree_list_row_set_expanded(self: *TreeListRow, expanded: glib::boolean) void;
export type TreeListRowSorter = *opaque;
export @symbol("gtk_tree_list_row_sorter_new") fn tree_list_row_sorter_new(sorter: *Sorter) *TreeListRowSorter;
export @symbol("gtk_tree_list_row_sorter_get_sorter") fn tree_list_row_sorter_get_sorter(self: *TreeListRowSorter) *Sorter;
export @symbol("gtk_tree_list_row_sorter_set_sorter") fn tree_list_row_sorter_set_sorter(self: *TreeListRowSorter, sorter: *Sorter) void;
export type TreeModelFilter = struct {
	parent: gobject::Object,
	priv: *TreeModelFilterPrivate,
};
export @symbol("gtk_tree_model_filter_clear_cache") fn tree_model_filter_clear_cache(filter: *TreeModelFilter) void;
export @symbol("gtk_tree_model_filter_convert_child_iter_to_iter") fn tree_model_filter_convert_child_iter_to_iter(filter: *TreeModelFilter, filter_iter: *TreeIter, child_iter: *TreeIter) glib::boolean;
export @symbol("gtk_tree_model_filter_convert_child_path_to_path") fn tree_model_filter_convert_child_path_to_path(filter: *TreeModelFilter, child_path: *TreePath) *TreePath;
export @symbol("gtk_tree_model_filter_convert_iter_to_child_iter") fn tree_model_filter_convert_iter_to_child_iter(filter: *TreeModelFilter, child_iter: *TreeIter, filter_iter: *TreeIter) void;
export @symbol("gtk_tree_model_filter_convert_path_to_child_path") fn tree_model_filter_convert_path_to_child_path(filter: *TreeModelFilter, filter_path: *TreePath) *TreePath;
export @symbol("gtk_tree_model_filter_get_model") fn tree_model_filter_get_model(filter: *TreeModelFilter) *TreeModel;
export @symbol("gtk_tree_model_filter_refilter") fn tree_model_filter_refilter(filter: *TreeModelFilter) void;
export @symbol("gtk_tree_model_filter_set_modify_func") fn tree_model_filter_set_modify_func(filter: *TreeModelFilter, n_columns: int, types: *glib::Type, func: TreeModelFilterModifyFunc, data: *opaque, destroy: glib::DestroyNotify) void;
export @symbol("gtk_tree_model_filter_set_visible_column") fn tree_model_filter_set_visible_column(filter: *TreeModelFilter, column: int) void;
export @symbol("gtk_tree_model_filter_set_visible_func") fn tree_model_filter_set_visible_func(filter: *TreeModelFilter, func: TreeModelFilterVisibleFunc, data: *opaque, destroy: glib::DestroyNotify) void;
export type TreeModelSort = struct {
	parent: gobject::Object,
	priv: *TreeModelSortPrivate,
};
export @symbol("gtk_tree_model_sort_new_with_model") fn tree_model_sort_new_with_model(child_model: *TreeModel) *TreeModel;
export @symbol("gtk_tree_model_sort_clear_cache") fn tree_model_sort_clear_cache(tree_model_sort: *TreeModelSort) void;
export @symbol("gtk_tree_model_sort_convert_child_iter_to_iter") fn tree_model_sort_convert_child_iter_to_iter(tree_model_sort: *TreeModelSort, sort_iter: *TreeIter, child_iter: *TreeIter) glib::boolean;
export @symbol("gtk_tree_model_sort_convert_child_path_to_path") fn tree_model_sort_convert_child_path_to_path(tree_model_sort: *TreeModelSort, child_path: *TreePath) *TreePath;
export @symbol("gtk_tree_model_sort_convert_iter_to_child_iter") fn tree_model_sort_convert_iter_to_child_iter(tree_model_sort: *TreeModelSort, child_iter: *TreeIter, sorted_iter: *TreeIter) void;
export @symbol("gtk_tree_model_sort_convert_path_to_child_path") fn tree_model_sort_convert_path_to_child_path(tree_model_sort: *TreeModelSort, sorted_path: *TreePath) *TreePath;
export @symbol("gtk_tree_model_sort_get_model") fn tree_model_sort_get_model(tree_model: *TreeModelSort) *TreeModel;
export @symbol("gtk_tree_model_sort_iter_is_valid") fn tree_model_sort_iter_is_valid(tree_model_sort: *TreeModelSort, iter: *TreeIter) glib::boolean;
export @symbol("gtk_tree_model_sort_reset_default_sort_func") fn tree_model_sort_reset_default_sort_func(tree_model_sort: *TreeModelSort) void;
export type TreeSelection = *opaque;
export @symbol("gtk_tree_selection_count_selected_rows") fn tree_selection_count_selected_rows(selection: *TreeSelection) int;
export @symbol("gtk_tree_selection_get_mode") fn tree_selection_get_mode(selection: *TreeSelection) SelectionMode;
export @symbol("gtk_tree_selection_get_select_function") fn tree_selection_get_select_function(selection: *TreeSelection) TreeSelectionFunc;
export @symbol("gtk_tree_selection_get_selected") fn tree_selection_get_selected(selection: *TreeSelection, model: **TreeModel, iter: *TreeIter) glib::boolean;
export @symbol("gtk_tree_selection_get_selected_rows") fn tree_selection_get_selected_rows(selection: *TreeSelection, model: **TreeModel) *glib::List;
export @symbol("gtk_tree_selection_get_tree_view") fn tree_selection_get_tree_view(selection: *TreeSelection) *TreeView;
export @symbol("gtk_tree_selection_get_user_data") fn tree_selection_get_user_data(selection: *TreeSelection) *opaque;
export @symbol("gtk_tree_selection_iter_is_selected") fn tree_selection_iter_is_selected(selection: *TreeSelection, iter: *TreeIter) glib::boolean;
export @symbol("gtk_tree_selection_path_is_selected") fn tree_selection_path_is_selected(selection: *TreeSelection, path: *TreePath) glib::boolean;
export @symbol("gtk_tree_selection_select_all") fn tree_selection_select_all(selection: *TreeSelection) void;
export @symbol("gtk_tree_selection_select_iter") fn tree_selection_select_iter(selection: *TreeSelection, iter: *TreeIter) void;
export @symbol("gtk_tree_selection_select_path") fn tree_selection_select_path(selection: *TreeSelection, path: *TreePath) void;
export @symbol("gtk_tree_selection_select_range") fn tree_selection_select_range(selection: *TreeSelection, start_path: *TreePath, end_path: *TreePath) void;
export @symbol("gtk_tree_selection_selected_foreach") fn tree_selection_selected_foreach(selection: *TreeSelection, func: TreeSelectionForeachFunc, data: *opaque) void;
export @symbol("gtk_tree_selection_set_mode") fn tree_selection_set_mode(selection: *TreeSelection, type_: SelectionMode) void;
export @symbol("gtk_tree_selection_set_select_function") fn tree_selection_set_select_function(selection: *TreeSelection, func: TreeSelectionFunc, data: *opaque, destroy: glib::DestroyNotify) void;
export @symbol("gtk_tree_selection_unselect_all") fn tree_selection_unselect_all(selection: *TreeSelection) void;
export @symbol("gtk_tree_selection_unselect_iter") fn tree_selection_unselect_iter(selection: *TreeSelection, iter: *TreeIter) void;
export @symbol("gtk_tree_selection_unselect_path") fn tree_selection_unselect_path(selection: *TreeSelection, path: *TreePath) void;
export @symbol("gtk_tree_selection_unselect_range") fn tree_selection_unselect_range(selection: *TreeSelection, start_path: *TreePath, end_path: *TreePath) void;
export fn tree_selection_connect_changed(
	instance: *TreeSelection,
	handler: *fn(instance: *TreeSelection, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"changed\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export type TreeStore = struct {
	parent: gobject::Object,
	priv: *TreeStorePrivate,
};
export @symbol("gtk_tree_store_new") fn tree_store_new(n_columns: int, ...) *TreeStore;
export @symbol("gtk_tree_store_newv") fn tree_store_newv(n_columns: int, types: *glib::Type) *TreeStore;
export @symbol("gtk_tree_store_append") fn tree_store_append(tree_store: *TreeStore, iter: *TreeIter, parent: *TreeIter) void;
export @symbol("gtk_tree_store_clear") fn tree_store_clear(tree_store: *TreeStore) void;
export @symbol("gtk_tree_store_insert") fn tree_store_insert(tree_store: *TreeStore, iter: *TreeIter, parent: *TreeIter, position: int) void;
export @symbol("gtk_tree_store_insert_after") fn tree_store_insert_after(tree_store: *TreeStore, iter: *TreeIter, parent: *TreeIter, sibling: *TreeIter) void;
export @symbol("gtk_tree_store_insert_before") fn tree_store_insert_before(tree_store: *TreeStore, iter: *TreeIter, parent: *TreeIter, sibling: *TreeIter) void;
export @symbol("gtk_tree_store_insert_with_values") fn tree_store_insert_with_values(tree_store: *TreeStore, iter: *TreeIter, parent: *TreeIter, position: int, ...) void;
export @symbol("gtk_tree_store_insert_with_valuesv") fn tree_store_insert_with_valuesv(tree_store: *TreeStore, iter: *TreeIter, parent: *TreeIter, position: int, columns: *int, values: *gobject::Value, n_values: int) void;
export @symbol("gtk_tree_store_is_ancestor") fn tree_store_is_ancestor(tree_store: *TreeStore, iter: *TreeIter, descendant: *TreeIter) glib::boolean;
export @symbol("gtk_tree_store_iter_depth") fn tree_store_iter_depth(tree_store: *TreeStore, iter: *TreeIter) int;
export @symbol("gtk_tree_store_iter_is_valid") fn tree_store_iter_is_valid(tree_store: *TreeStore, iter: *TreeIter) glib::boolean;
export @symbol("gtk_tree_store_move_after") fn tree_store_move_after(tree_store: *TreeStore, iter: *TreeIter, position: *TreeIter) void;
export @symbol("gtk_tree_store_move_before") fn tree_store_move_before(tree_store: *TreeStore, iter: *TreeIter, position: *TreeIter) void;
export @symbol("gtk_tree_store_prepend") fn tree_store_prepend(tree_store: *TreeStore, iter: *TreeIter, parent: *TreeIter) void;
export @symbol("gtk_tree_store_remove") fn tree_store_remove(tree_store: *TreeStore, iter: *TreeIter) glib::boolean;
export @symbol("gtk_tree_store_reorder") fn tree_store_reorder(tree_store: *TreeStore, parent: *TreeIter, new_order: *int) void;
export @symbol("gtk_tree_store_set") fn tree_store_set(tree_store: *TreeStore, iter: *TreeIter, ...) void;
export @symbol("gtk_tree_store_set_column_types") fn tree_store_set_column_types(tree_store: *TreeStore, n_columns: int, types: *glib::Type) void;
export @symbol("gtk_tree_store_set_valist") fn tree_store_set_valist(tree_store: *TreeStore, iter: *TreeIter, var_args: valist) void;
export @symbol("gtk_tree_store_set_value") fn tree_store_set_value(tree_store: *TreeStore, iter: *TreeIter, column: int, value: *gobject::Value) void;
export @symbol("gtk_tree_store_set_valuesv") fn tree_store_set_valuesv(tree_store: *TreeStore, iter: *TreeIter, columns: *int, values: *gobject::Value, n_values: int) void;
export @symbol("gtk_tree_store_swap") fn tree_store_swap(tree_store: *TreeStore, a: *TreeIter, b: *TreeIter) void;
export type TreeView = struct {
	parent_instance: Widget,
};
export @symbol("gtk_tree_view_new") fn tree_view_new() *Widget;
export @symbol("gtk_tree_view_new_with_model") fn tree_view_new_with_model(model: *TreeModel) *Widget;
export @symbol("gtk_tree_view_append_column") fn tree_view_append_column(tree_view: *TreeView, column: *TreeViewColumn) int;
export @symbol("gtk_tree_view_collapse_all") fn tree_view_collapse_all(tree_view: *TreeView) void;
export @symbol("gtk_tree_view_collapse_row") fn tree_view_collapse_row(tree_view: *TreeView, path: *TreePath) glib::boolean;
export @symbol("gtk_tree_view_columns_autosize") fn tree_view_columns_autosize(tree_view: *TreeView) void;
export @symbol("gtk_tree_view_convert_bin_window_to_tree_coords") fn tree_view_convert_bin_window_to_tree_coords(tree_view: *TreeView, bx: int, by: int, tx: *int, ty: *int) void;
export @symbol("gtk_tree_view_convert_bin_window_to_widget_coords") fn tree_view_convert_bin_window_to_widget_coords(tree_view: *TreeView, bx: int, by: int, wx: *int, wy: *int) void;
export @symbol("gtk_tree_view_convert_tree_to_bin_window_coords") fn tree_view_convert_tree_to_bin_window_coords(tree_view: *TreeView, tx: int, ty: int, bx: *int, by: *int) void;
export @symbol("gtk_tree_view_convert_tree_to_widget_coords") fn tree_view_convert_tree_to_widget_coords(tree_view: *TreeView, tx: int, ty: int, wx: *int, wy: *int) void;
export @symbol("gtk_tree_view_convert_widget_to_bin_window_coords") fn tree_view_convert_widget_to_bin_window_coords(tree_view: *TreeView, wx: int, wy: int, bx: *int, by: *int) void;
export @symbol("gtk_tree_view_convert_widget_to_tree_coords") fn tree_view_convert_widget_to_tree_coords(tree_view: *TreeView, wx: int, wy: int, tx: *int, ty: *int) void;
export @symbol("gtk_tree_view_create_row_drag_icon") fn tree_view_create_row_drag_icon(tree_view: *TreeView, path: *TreePath) *gdk4::Paintable;
export @symbol("gtk_tree_view_enable_model_drag_dest") fn tree_view_enable_model_drag_dest(tree_view: *TreeView, formats: *gdk4::ContentFormats, actions: gdk4::DragAction) void;
export @symbol("gtk_tree_view_enable_model_drag_source") fn tree_view_enable_model_drag_source(tree_view: *TreeView, start_button_mask: gdk4::ModifierType, formats: *gdk4::ContentFormats, actions: gdk4::DragAction) void;
export @symbol("gtk_tree_view_expand_all") fn tree_view_expand_all(tree_view: *TreeView) void;
export @symbol("gtk_tree_view_expand_row") fn tree_view_expand_row(tree_view: *TreeView, path: *TreePath, open_all: glib::boolean) glib::boolean;
export @symbol("gtk_tree_view_expand_to_path") fn tree_view_expand_to_path(tree_view: *TreeView, path: *TreePath) void;
export @symbol("gtk_tree_view_get_activate_on_single_click") fn tree_view_get_activate_on_single_click(tree_view: *TreeView) glib::boolean;
export @symbol("gtk_tree_view_get_background_area") fn tree_view_get_background_area(tree_view: *TreeView, path: *TreePath, column: *TreeViewColumn, rect: *gdk4::Rectangle) void;
export @symbol("gtk_tree_view_get_cell_area") fn tree_view_get_cell_area(tree_view: *TreeView, path: *TreePath, column: *TreeViewColumn, rect: *gdk4::Rectangle) void;
export @symbol("gtk_tree_view_get_column") fn tree_view_get_column(tree_view: *TreeView, n: int) *TreeViewColumn;
export @symbol("gtk_tree_view_get_columns") fn tree_view_get_columns(tree_view: *TreeView) *glib::List;
export @symbol("gtk_tree_view_get_cursor") fn tree_view_get_cursor(tree_view: *TreeView, path: **TreePath, focus_column: **TreeViewColumn) void;
export @symbol("gtk_tree_view_get_dest_row_at_pos") fn tree_view_get_dest_row_at_pos(tree_view: *TreeView, drag_x: int, drag_y: int, path: **TreePath, pos: *TreeViewDropPosition) glib::boolean;
export @symbol("gtk_tree_view_get_drag_dest_row") fn tree_view_get_drag_dest_row(tree_view: *TreeView, path: **TreePath, pos: *TreeViewDropPosition) void;
export @symbol("gtk_tree_view_get_enable_search") fn tree_view_get_enable_search(tree_view: *TreeView) glib::boolean;
export @symbol("gtk_tree_view_get_enable_tree_lines") fn tree_view_get_enable_tree_lines(tree_view: *TreeView) glib::boolean;
export @symbol("gtk_tree_view_get_expander_column") fn tree_view_get_expander_column(tree_view: *TreeView) *TreeViewColumn;
export @symbol("gtk_tree_view_get_fixed_height_mode") fn tree_view_get_fixed_height_mode(tree_view: *TreeView) glib::boolean;
export @symbol("gtk_tree_view_get_grid_lines") fn tree_view_get_grid_lines(tree_view: *TreeView) TreeViewGridLines;
export @symbol("gtk_tree_view_get_headers_clickable") fn tree_view_get_headers_clickable(tree_view: *TreeView) glib::boolean;
export @symbol("gtk_tree_view_get_headers_visible") fn tree_view_get_headers_visible(tree_view: *TreeView) glib::boolean;
export @symbol("gtk_tree_view_get_hover_expand") fn tree_view_get_hover_expand(tree_view: *TreeView) glib::boolean;
export @symbol("gtk_tree_view_get_hover_selection") fn tree_view_get_hover_selection(tree_view: *TreeView) glib::boolean;
export @symbol("gtk_tree_view_get_level_indentation") fn tree_view_get_level_indentation(tree_view: *TreeView) int;
export @symbol("gtk_tree_view_get_model") fn tree_view_get_model(tree_view: *TreeView) *TreeModel;
export @symbol("gtk_tree_view_get_n_columns") fn tree_view_get_n_columns(tree_view: *TreeView) uint;
export @symbol("gtk_tree_view_get_path_at_pos") fn tree_view_get_path_at_pos(tree_view: *TreeView, x: int, y: int, path: **TreePath, column: **TreeViewColumn, cell_x: *int, cell_y: *int) glib::boolean;
export @symbol("gtk_tree_view_get_reorderable") fn tree_view_get_reorderable(tree_view: *TreeView) glib::boolean;
export @symbol("gtk_tree_view_get_row_separator_func") fn tree_view_get_row_separator_func(tree_view: *TreeView) TreeViewRowSeparatorFunc;
export @symbol("gtk_tree_view_get_rubber_banding") fn tree_view_get_rubber_banding(tree_view: *TreeView) glib::boolean;
export @symbol("gtk_tree_view_get_search_column") fn tree_view_get_search_column(tree_view: *TreeView) int;
export @symbol("gtk_tree_view_get_search_entry") fn tree_view_get_search_entry(tree_view: *TreeView) *Editable;
export @symbol("gtk_tree_view_get_search_equal_func") fn tree_view_get_search_equal_func(tree_view: *TreeView) TreeViewSearchEqualFunc;
export @symbol("gtk_tree_view_get_selection") fn tree_view_get_selection(tree_view: *TreeView) *TreeSelection;
export @symbol("gtk_tree_view_get_show_expanders") fn tree_view_get_show_expanders(tree_view: *TreeView) glib::boolean;
export @symbol("gtk_tree_view_get_tooltip_column") fn tree_view_get_tooltip_column(tree_view: *TreeView) int;
export @symbol("gtk_tree_view_get_tooltip_context") fn tree_view_get_tooltip_context(tree_view: *TreeView, x: int, y: int, keyboard_tip: glib::boolean, model: **TreeModel, path: **TreePath, iter: *TreeIter) glib::boolean;
export @symbol("gtk_tree_view_get_visible_range") fn tree_view_get_visible_range(tree_view: *TreeView, start_path: **TreePath, end_path: **TreePath) glib::boolean;
export @symbol("gtk_tree_view_get_visible_rect") fn tree_view_get_visible_rect(tree_view: *TreeView, visible_rect: *gdk4::Rectangle) void;
export @symbol("gtk_tree_view_insert_column") fn tree_view_insert_column(tree_view: *TreeView, column: *TreeViewColumn, position: int) int;
export @symbol("gtk_tree_view_insert_column_with_attributes") fn tree_view_insert_column_with_attributes(tree_view: *TreeView, position: int, title: *c::char, cell: *CellRenderer, ...) int;
export @symbol("gtk_tree_view_insert_column_with_data_func") fn tree_view_insert_column_with_data_func(tree_view: *TreeView, position: int, title: *c::char, cell: *CellRenderer, func: TreeCellDataFunc, data: *opaque, dnotify: glib::DestroyNotify) int;
export @symbol("gtk_tree_view_is_blank_at_pos") fn tree_view_is_blank_at_pos(tree_view: *TreeView, x: int, y: int, path: **TreePath, column: **TreeViewColumn, cell_x: *int, cell_y: *int) glib::boolean;
export @symbol("gtk_tree_view_is_rubber_banding_active") fn tree_view_is_rubber_banding_active(tree_view: *TreeView) glib::boolean;
export @symbol("gtk_tree_view_map_expanded_rows") fn tree_view_map_expanded_rows(tree_view: *TreeView, func: TreeViewMappingFunc, data: *opaque) void;
export @symbol("gtk_tree_view_move_column_after") fn tree_view_move_column_after(tree_view: *TreeView, column: *TreeViewColumn, base_column: *TreeViewColumn) void;
export @symbol("gtk_tree_view_remove_column") fn tree_view_remove_column(tree_view: *TreeView, column: *TreeViewColumn) int;
export @symbol("gtk_tree_view_row_activated") fn tree_view_row_activated(tree_view: *TreeView, path: *TreePath, column: *TreeViewColumn) void;
export @symbol("gtk_tree_view_row_expanded") fn tree_view_row_expanded(tree_view: *TreeView, path: *TreePath) glib::boolean;
export @symbol("gtk_tree_view_scroll_to_cell") fn tree_view_scroll_to_cell(tree_view: *TreeView, path: *TreePath, column: *TreeViewColumn, use_align: glib::boolean, row_align: f32, col_align: f32) void;
export @symbol("gtk_tree_view_scroll_to_point") fn tree_view_scroll_to_point(tree_view: *TreeView, tree_x: int, tree_y: int) void;
export @symbol("gtk_tree_view_set_activate_on_single_click") fn tree_view_set_activate_on_single_click(tree_view: *TreeView, single: glib::boolean) void;
export @symbol("gtk_tree_view_set_column_drag_function") fn tree_view_set_column_drag_function(tree_view: *TreeView, func: TreeViewColumnDropFunc, user_data: *opaque, destroy: glib::DestroyNotify) void;
export @symbol("gtk_tree_view_set_cursor") fn tree_view_set_cursor(tree_view: *TreeView, path: *TreePath, focus_column: *TreeViewColumn, start_editing: glib::boolean) void;
export @symbol("gtk_tree_view_set_cursor_on_cell") fn tree_view_set_cursor_on_cell(tree_view: *TreeView, path: *TreePath, focus_column: *TreeViewColumn, focus_cell: *CellRenderer, start_editing: glib::boolean) void;
export @symbol("gtk_tree_view_set_drag_dest_row") fn tree_view_set_drag_dest_row(tree_view: *TreeView, path: *TreePath, pos: TreeViewDropPosition) void;
export @symbol("gtk_tree_view_set_enable_search") fn tree_view_set_enable_search(tree_view: *TreeView, enable_search: glib::boolean) void;
export @symbol("gtk_tree_view_set_enable_tree_lines") fn tree_view_set_enable_tree_lines(tree_view: *TreeView, enabled: glib::boolean) void;
export @symbol("gtk_tree_view_set_expander_column") fn tree_view_set_expander_column(tree_view: *TreeView, column: *TreeViewColumn) void;
export @symbol("gtk_tree_view_set_fixed_height_mode") fn tree_view_set_fixed_height_mode(tree_view: *TreeView, enable: glib::boolean) void;
export @symbol("gtk_tree_view_set_grid_lines") fn tree_view_set_grid_lines(tree_view: *TreeView, grid_lines: TreeViewGridLines) void;
export @symbol("gtk_tree_view_set_headers_clickable") fn tree_view_set_headers_clickable(tree_view: *TreeView, setting: glib::boolean) void;
export @symbol("gtk_tree_view_set_headers_visible") fn tree_view_set_headers_visible(tree_view: *TreeView, headers_visible: glib::boolean) void;
export @symbol("gtk_tree_view_set_hover_expand") fn tree_view_set_hover_expand(tree_view: *TreeView, expand: glib::boolean) void;
export @symbol("gtk_tree_view_set_hover_selection") fn tree_view_set_hover_selection(tree_view: *TreeView, hover: glib::boolean) void;
export @symbol("gtk_tree_view_set_level_indentation") fn tree_view_set_level_indentation(tree_view: *TreeView, indentation: int) void;
export @symbol("gtk_tree_view_set_model") fn tree_view_set_model(tree_view: *TreeView, model: *TreeModel) void;
export @symbol("gtk_tree_view_set_reorderable") fn tree_view_set_reorderable(tree_view: *TreeView, reorderable: glib::boolean) void;
export @symbol("gtk_tree_view_set_row_separator_func") fn tree_view_set_row_separator_func(tree_view: *TreeView, func: TreeViewRowSeparatorFunc, data: *opaque, destroy: glib::DestroyNotify) void;
export @symbol("gtk_tree_view_set_rubber_banding") fn tree_view_set_rubber_banding(tree_view: *TreeView, enable: glib::boolean) void;
export @symbol("gtk_tree_view_set_search_column") fn tree_view_set_search_column(tree_view: *TreeView, column: int) void;
export @symbol("gtk_tree_view_set_search_entry") fn tree_view_set_search_entry(tree_view: *TreeView, entry: *Editable) void;
export @symbol("gtk_tree_view_set_search_equal_func") fn tree_view_set_search_equal_func(tree_view: *TreeView, search_equal_func: TreeViewSearchEqualFunc, search_user_data: *opaque, search_destroy: glib::DestroyNotify) void;
export @symbol("gtk_tree_view_set_show_expanders") fn tree_view_set_show_expanders(tree_view: *TreeView, enabled: glib::boolean) void;
export @symbol("gtk_tree_view_set_tooltip_cell") fn tree_view_set_tooltip_cell(tree_view: *TreeView, tooltip: *Tooltip, path: *TreePath, column: *TreeViewColumn, cell: *CellRenderer) void;
export @symbol("gtk_tree_view_set_tooltip_column") fn tree_view_set_tooltip_column(tree_view: *TreeView, column: int) void;
export @symbol("gtk_tree_view_set_tooltip_row") fn tree_view_set_tooltip_row(tree_view: *TreeView, tooltip: *Tooltip, path: *TreePath) void;
export @symbol("gtk_tree_view_unset_rows_drag_dest") fn tree_view_unset_rows_drag_dest(tree_view: *TreeView) void;
export @symbol("gtk_tree_view_unset_rows_drag_source") fn tree_view_unset_rows_drag_source(tree_view: *TreeView) void;
export fn tree_view_connect_columns_changed(
	instance: *TreeView,
	handler: *fn(instance: *TreeView, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"columns-changed\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn tree_view_connect_cursor_changed(
	instance: *TreeView,
	handler: *fn(instance: *TreeView, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"cursor-changed\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn tree_view_connect_expand_collapse_cursor_row(
	instance: *TreeView,
	handler: *fn(instance: *TreeView, object: glib::boolean, p0: glib::boolean, p1: glib::boolean, data: *opaque) glib::boolean,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"expand-collapse-cursor-row\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn tree_view_connect_move_cursor(
	instance: *TreeView,
	handler: *fn(instance: *TreeView, step: MovementStep, direction: int, extend: glib::boolean, modify: glib::boolean, data: *opaque) glib::boolean,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"move-cursor\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn tree_view_connect_row_activated(
	instance: *TreeView,
	handler: *fn(instance: *TreeView, path: *TreePath, column: *TreeViewColumn, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"row-activated\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn tree_view_connect_row_collapsed(
	instance: *TreeView,
	handler: *fn(instance: *TreeView, iter: *TreeIter, path: *TreePath, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"row-collapsed\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn tree_view_connect_row_expanded(
	instance: *TreeView,
	handler: *fn(instance: *TreeView, iter: *TreeIter, path: *TreePath, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"row-expanded\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn tree_view_connect_select_all(
	instance: *TreeView,
	handler: *fn(instance: *TreeView, data: *opaque) glib::boolean,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"select-all\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn tree_view_connect_select_cursor_parent(
	instance: *TreeView,
	handler: *fn(instance: *TreeView, data: *opaque) glib::boolean,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"select-cursor-parent\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn tree_view_connect_select_cursor_row(
	instance: *TreeView,
	handler: *fn(instance: *TreeView, object: glib::boolean, data: *opaque) glib::boolean,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"select-cursor-row\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn tree_view_connect_start_interactive_search(
	instance: *TreeView,
	handler: *fn(instance: *TreeView, data: *opaque) glib::boolean,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"start-interactive-search\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn tree_view_connect_test_collapse_row(
	instance: *TreeView,
	handler: *fn(instance: *TreeView, iter: *TreeIter, path: *TreePath, data: *opaque) glib::boolean,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"test-collapse-row\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn tree_view_connect_test_expand_row(
	instance: *TreeView,
	handler: *fn(instance: *TreeView, iter: *TreeIter, path: *TreePath, data: *opaque) glib::boolean,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"test-expand-row\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn tree_view_connect_toggle_cursor_row(
	instance: *TreeView,
	handler: *fn(instance: *TreeView, data: *opaque) glib::boolean,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"toggle-cursor-row\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn tree_view_connect_unselect_all(
	instance: *TreeView,
	handler: *fn(instance: *TreeView, data: *opaque) glib::boolean,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"unselect-all\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export type TreeViewColumn = *opaque;
export @symbol("gtk_tree_view_column_new") fn tree_view_column_new() *TreeViewColumn;
export @symbol("gtk_tree_view_column_new_with_area") fn tree_view_column_new_with_area(area: *CellArea) *TreeViewColumn;
export @symbol("gtk_tree_view_column_new_with_attributes") fn tree_view_column_new_with_attributes(title: *c::char, cell: *CellRenderer, ...) *TreeViewColumn;
export @symbol("gtk_tree_view_column_add_attribute") fn tree_view_column_add_attribute(tree_column: *TreeViewColumn, cell_renderer: *CellRenderer, attribute: *c::char, column: int) void;
export @symbol("gtk_tree_view_column_cell_get_position") fn tree_view_column_cell_get_position(tree_column: *TreeViewColumn, cell_renderer: *CellRenderer, x_offset: *int, width: *int) glib::boolean;
export @symbol("gtk_tree_view_column_cell_get_size") fn tree_view_column_cell_get_size(tree_column: *TreeViewColumn, x_offset: *int, y_offset: *int, width: *int, height: *int) void;
export @symbol("gtk_tree_view_column_cell_is_visible") fn tree_view_column_cell_is_visible(tree_column: *TreeViewColumn) glib::boolean;
export @symbol("gtk_tree_view_column_cell_set_cell_data") fn tree_view_column_cell_set_cell_data(tree_column: *TreeViewColumn, tree_model: *TreeModel, iter: *TreeIter, is_expander: glib::boolean, is_expanded: glib::boolean) void;
export @symbol("gtk_tree_view_column_clear") fn tree_view_column_clear(tree_column: *TreeViewColumn) void;
export @symbol("gtk_tree_view_column_clear_attributes") fn tree_view_column_clear_attributes(tree_column: *TreeViewColumn, cell_renderer: *CellRenderer) void;
export @symbol("gtk_tree_view_column_clicked") fn tree_view_column_clicked(tree_column: *TreeViewColumn) void;
export @symbol("gtk_tree_view_column_focus_cell") fn tree_view_column_focus_cell(tree_column: *TreeViewColumn, cell: *CellRenderer) void;
export @symbol("gtk_tree_view_column_get_alignment") fn tree_view_column_get_alignment(tree_column: *TreeViewColumn) f32;
export @symbol("gtk_tree_view_column_get_button") fn tree_view_column_get_button(tree_column: *TreeViewColumn) *Widget;
export @symbol("gtk_tree_view_column_get_clickable") fn tree_view_column_get_clickable(tree_column: *TreeViewColumn) glib::boolean;
export @symbol("gtk_tree_view_column_get_expand") fn tree_view_column_get_expand(tree_column: *TreeViewColumn) glib::boolean;
export @symbol("gtk_tree_view_column_get_fixed_width") fn tree_view_column_get_fixed_width(tree_column: *TreeViewColumn) int;
export @symbol("gtk_tree_view_column_get_max_width") fn tree_view_column_get_max_width(tree_column: *TreeViewColumn) int;
export @symbol("gtk_tree_view_column_get_min_width") fn tree_view_column_get_min_width(tree_column: *TreeViewColumn) int;
export @symbol("gtk_tree_view_column_get_reorderable") fn tree_view_column_get_reorderable(tree_column: *TreeViewColumn) glib::boolean;
export @symbol("gtk_tree_view_column_get_resizable") fn tree_view_column_get_resizable(tree_column: *TreeViewColumn) glib::boolean;
export @symbol("gtk_tree_view_column_get_sizing") fn tree_view_column_get_sizing(tree_column: *TreeViewColumn) TreeViewColumnSizing;
export @symbol("gtk_tree_view_column_get_sort_column_id") fn tree_view_column_get_sort_column_id(tree_column: *TreeViewColumn) int;
export @symbol("gtk_tree_view_column_get_sort_indicator") fn tree_view_column_get_sort_indicator(tree_column: *TreeViewColumn) glib::boolean;
export @symbol("gtk_tree_view_column_get_sort_order") fn tree_view_column_get_sort_order(tree_column: *TreeViewColumn) SortType;
export @symbol("gtk_tree_view_column_get_spacing") fn tree_view_column_get_spacing(tree_column: *TreeViewColumn) int;
export @symbol("gtk_tree_view_column_get_title") fn tree_view_column_get_title(tree_column: *TreeViewColumn) *c::char;
export @symbol("gtk_tree_view_column_get_tree_view") fn tree_view_column_get_tree_view(tree_column: *TreeViewColumn) *Widget;
export @symbol("gtk_tree_view_column_get_visible") fn tree_view_column_get_visible(tree_column: *TreeViewColumn) glib::boolean;
export @symbol("gtk_tree_view_column_get_widget") fn tree_view_column_get_widget(tree_column: *TreeViewColumn) *Widget;
export @symbol("gtk_tree_view_column_get_width") fn tree_view_column_get_width(tree_column: *TreeViewColumn) int;
export @symbol("gtk_tree_view_column_get_x_offset") fn tree_view_column_get_x_offset(tree_column: *TreeViewColumn) int;
export @symbol("gtk_tree_view_column_pack_end") fn tree_view_column_pack_end(tree_column: *TreeViewColumn, cell: *CellRenderer, expand: glib::boolean) void;
export @symbol("gtk_tree_view_column_pack_start") fn tree_view_column_pack_start(tree_column: *TreeViewColumn, cell: *CellRenderer, expand: glib::boolean) void;
export @symbol("gtk_tree_view_column_queue_resize") fn tree_view_column_queue_resize(tree_column: *TreeViewColumn) void;
export @symbol("gtk_tree_view_column_set_alignment") fn tree_view_column_set_alignment(tree_column: *TreeViewColumn, xalign: f32) void;
export @symbol("gtk_tree_view_column_set_attributes") fn tree_view_column_set_attributes(tree_column: *TreeViewColumn, cell_renderer: *CellRenderer, ...) void;
export @symbol("gtk_tree_view_column_set_cell_data_func") fn tree_view_column_set_cell_data_func(tree_column: *TreeViewColumn, cell_renderer: *CellRenderer, func: TreeCellDataFunc, func_data: *opaque, destroy: glib::DestroyNotify) void;
export @symbol("gtk_tree_view_column_set_clickable") fn tree_view_column_set_clickable(tree_column: *TreeViewColumn, clickable: glib::boolean) void;
export @symbol("gtk_tree_view_column_set_expand") fn tree_view_column_set_expand(tree_column: *TreeViewColumn, expand: glib::boolean) void;
export @symbol("gtk_tree_view_column_set_fixed_width") fn tree_view_column_set_fixed_width(tree_column: *TreeViewColumn, fixed_width: int) void;
export @symbol("gtk_tree_view_column_set_max_width") fn tree_view_column_set_max_width(tree_column: *TreeViewColumn, max_width: int) void;
export @symbol("gtk_tree_view_column_set_min_width") fn tree_view_column_set_min_width(tree_column: *TreeViewColumn, min_width: int) void;
export @symbol("gtk_tree_view_column_set_reorderable") fn tree_view_column_set_reorderable(tree_column: *TreeViewColumn, reorderable: glib::boolean) void;
export @symbol("gtk_tree_view_column_set_resizable") fn tree_view_column_set_resizable(tree_column: *TreeViewColumn, resizable: glib::boolean) void;
export @symbol("gtk_tree_view_column_set_sizing") fn tree_view_column_set_sizing(tree_column: *TreeViewColumn, type_: TreeViewColumnSizing) void;
export @symbol("gtk_tree_view_column_set_sort_column_id") fn tree_view_column_set_sort_column_id(tree_column: *TreeViewColumn, sort_column_id: int) void;
export @symbol("gtk_tree_view_column_set_sort_indicator") fn tree_view_column_set_sort_indicator(tree_column: *TreeViewColumn, setting: glib::boolean) void;
export @symbol("gtk_tree_view_column_set_sort_order") fn tree_view_column_set_sort_order(tree_column: *TreeViewColumn, order: SortType) void;
export @symbol("gtk_tree_view_column_set_spacing") fn tree_view_column_set_spacing(tree_column: *TreeViewColumn, spacing: int) void;
export @symbol("gtk_tree_view_column_set_title") fn tree_view_column_set_title(tree_column: *TreeViewColumn, title: *c::char) void;
export @symbol("gtk_tree_view_column_set_visible") fn tree_view_column_set_visible(tree_column: *TreeViewColumn, visible: glib::boolean) void;
export @symbol("gtk_tree_view_column_set_widget") fn tree_view_column_set_widget(tree_column: *TreeViewColumn, widget: *Widget) void;
export fn tree_view_column_connect_clicked(
	instance: *TreeViewColumn,
	handler: *fn(instance: *TreeViewColumn, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"clicked\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export type UriLauncher = *opaque;
export @symbol("gtk_uri_launcher_new") fn uri_launcher_new(uri: *c::char) *UriLauncher;
export @symbol("gtk_uri_launcher_get_uri") fn uri_launcher_get_uri(self: *UriLauncher) *c::char;
export @symbol("gtk_uri_launcher_launch") fn uri_launcher_launch(self: *UriLauncher, parent: *Window, cancellable: *gio::Cancellable, callback: gio::AsyncReadyCallback, user_data: *opaque) void;
export @symbol("gtk_uri_launcher_launch_finish") fn uri_launcher_launch_finish(self: *UriLauncher, result: *gio::AsyncResult, error: nullable **glib::Error) glib::boolean;
export @symbol("gtk_uri_launcher_set_uri") fn uri_launcher_set_uri(self: *UriLauncher, uri: *c::char) void;
export type Video = *opaque;
export @symbol("gtk_video_new") fn video_new() *Widget;
export @symbol("gtk_video_new_for_file") fn video_new_for_file(file: *gio::File) *Widget;
export @symbol("gtk_video_new_for_filename") fn video_new_for_filename(filename: *c::char) *Widget;
export @symbol("gtk_video_new_for_media_stream") fn video_new_for_media_stream(stream: *MediaStream) *Widget;
export @symbol("gtk_video_new_for_resource") fn video_new_for_resource(resource_path: *c::char) *Widget;
export @symbol("gtk_video_get_autoplay") fn video_get_autoplay(self: *Video) glib::boolean;
export @symbol("gtk_video_get_file") fn video_get_file(self: *Video) *gio::File;
export @symbol("gtk_video_get_loop") fn video_get_loop(self: *Video) glib::boolean;
export @symbol("gtk_video_get_media_stream") fn video_get_media_stream(self: *Video) *MediaStream;
export @symbol("gtk_video_set_autoplay") fn video_set_autoplay(self: *Video, autoplay: glib::boolean) void;
export @symbol("gtk_video_set_file") fn video_set_file(self: *Video, file: *gio::File) void;
export @symbol("gtk_video_set_filename") fn video_set_filename(self: *Video, filename: *c::char) void;
export @symbol("gtk_video_set_loop") fn video_set_loop(self: *Video, loop: glib::boolean) void;
export @symbol("gtk_video_set_media_stream") fn video_set_media_stream(self: *Video, stream: *MediaStream) void;
export @symbol("gtk_video_set_resource") fn video_set_resource(self: *Video, resource_path: *c::char) void;
export type Viewport = *opaque;
export @symbol("gtk_viewport_new") fn viewport_new(hadjustment: *Adjustment, vadjustment: *Adjustment) *Widget;
export @symbol("gtk_viewport_get_child") fn viewport_get_child(viewport: *Viewport) *Widget;
export @symbol("gtk_viewport_get_scroll_to_focus") fn viewport_get_scroll_to_focus(viewport: *Viewport) glib::boolean;
export @symbol("gtk_viewport_scroll_to") fn viewport_scroll_to(viewport: *Viewport, descendant: *Widget, scroll: *ScrollInfo) void;
export @symbol("gtk_viewport_set_child") fn viewport_set_child(viewport: *Viewport, child: *Widget) void;
export @symbol("gtk_viewport_set_scroll_to_focus") fn viewport_set_scroll_to_focus(viewport: *Viewport, scroll_to_focus: glib::boolean) void;
export type VolumeButton = struct {
	parent: ScaleButton,
};
export @symbol("gtk_volume_button_new") fn volume_button_new() *Widget;
export type Widget = struct {
	parent_instance: gobject::InitiallyUnowned,
	priv: *WidgetPrivate,
};
export @symbol("gtk_widget_action_set_enabled") fn widget_action_set_enabled(widget: *Widget, action_name: *c::char, enabled: glib::boolean) void;
export @symbol("gtk_widget_activate") fn widget_activate(widget: *Widget) glib::boolean;
export @symbol("gtk_widget_activate_action") fn widget_activate_action(widget: *Widget, name: *c::char, format_string: *c::char, ...) glib::boolean;
export @symbol("gtk_widget_activate_action_variant") fn widget_activate_action_variant(widget: *Widget, name: *c::char, args: *glib::Variant) glib::boolean;
export @symbol("gtk_widget_activate_default") fn widget_activate_default(widget: *Widget) void;
export @symbol("gtk_widget_add_controller") fn widget_add_controller(widget: *Widget, controller: *EventController) void;
export @symbol("gtk_widget_add_css_class") fn widget_add_css_class(widget: *Widget, css_class: *c::char) void;
export @symbol("gtk_widget_add_mnemonic_label") fn widget_add_mnemonic_label(widget: *Widget, label: *Widget) void;
export @symbol("gtk_widget_add_tick_callback") fn widget_add_tick_callback(widget: *Widget, callback: TickCallback, user_data: *opaque, notify: glib::DestroyNotify) uint;
export @symbol("gtk_widget_allocate") fn widget_allocate(widget: *Widget, width: int, height: int, baseline: int, transform: *gsk::Transform) void;
export @symbol("gtk_widget_child_focus") fn widget_child_focus(widget: *Widget, direction: DirectionType) glib::boolean;
export @symbol("gtk_widget_compute_bounds") fn widget_compute_bounds(widget: *Widget, target: *Widget, out_bounds: *graphene::Rect) glib::boolean;
export @symbol("gtk_widget_compute_expand") fn widget_compute_expand(widget: *Widget, orientation: Orientation) glib::boolean;
export @symbol("gtk_widget_compute_point") fn widget_compute_point(widget: *Widget, target: *Widget, point: *graphene::Point, out_point: *graphene::Point) glib::boolean;
export @symbol("gtk_widget_compute_transform") fn widget_compute_transform(widget: *Widget, target: *Widget, out_transform: *graphene::Matrix) glib::boolean;
export @symbol("gtk_widget_contains") fn widget_contains(widget: *Widget, x: f64, y: f64) glib::boolean;
export @symbol("gtk_widget_create_pango_context") fn widget_create_pango_context(widget: *Widget) *pango::Context;
export @symbol("gtk_widget_create_pango_layout") fn widget_create_pango_layout(widget: *Widget, text: *c::char) *pango::Layout;
export @symbol("gtk_widget_dispose_template") fn widget_dispose_template(widget: *Widget, widget_type: glib::Type) void;
export @symbol("gtk_drag_check_threshold") fn widget_drag_check_threshold(widget: *Widget, start_x: int, start_y: int, current_x: int, current_y: int) glib::boolean;
export @symbol("gtk_widget_error_bell") fn widget_error_bell(widget: *Widget) void;
export @symbol("gtk_widget_get_allocated_baseline") fn widget_get_allocated_baseline(widget: *Widget) int;
export @symbol("gtk_widget_get_allocated_height") fn widget_get_allocated_height(widget: *Widget) int;
export @symbol("gtk_widget_get_allocated_width") fn widget_get_allocated_width(widget: *Widget) int;
export @symbol("gtk_widget_get_allocation") fn widget_get_allocation(widget: *Widget, allocation: *Allocation) void;
export @symbol("gtk_widget_get_ancestor") fn widget_get_ancestor(widget: *Widget, widget_type: glib::Type) *Widget;
export @symbol("gtk_widget_get_baseline") fn widget_get_baseline(widget: *Widget) int;
export @symbol("gtk_widget_get_can_focus") fn widget_get_can_focus(widget: *Widget) glib::boolean;
export @symbol("gtk_widget_get_can_target") fn widget_get_can_target(widget: *Widget) glib::boolean;
export @symbol("gtk_widget_get_child_visible") fn widget_get_child_visible(widget: *Widget) glib::boolean;
export @symbol("gtk_widget_get_clipboard") fn widget_get_clipboard(widget: *Widget) *gdk4::Clipboard;
export @symbol("gtk_widget_get_color") fn widget_get_color(widget: *Widget, color: *gdk4::RGBA) void;
export @symbol("gtk_widget_get_css_classes") fn widget_get_css_classes(widget: *Widget) **c::char;
export @symbol("gtk_widget_get_css_name") fn widget_get_css_name(self: *Widget) *c::char;
export @symbol("gtk_widget_get_cursor") fn widget_get_cursor(widget: *Widget) *gdk4::Cursor;
export @symbol("gtk_widget_get_direction") fn widget_get_direction(widget: *Widget) TextDirection;
export @symbol("gtk_widget_get_display") fn widget_get_display(widget: *Widget) *gdk4::Display;
export @symbol("gtk_widget_get_first_child") fn widget_get_first_child(widget: *Widget) *Widget;
export @symbol("gtk_widget_get_focus_child") fn widget_get_focus_child(widget: *Widget) *Widget;
export @symbol("gtk_widget_get_focus_on_click") fn widget_get_focus_on_click(widget: *Widget) glib::boolean;
export @symbol("gtk_widget_get_focusable") fn widget_get_focusable(widget: *Widget) glib::boolean;
export @symbol("gtk_widget_get_font_map") fn widget_get_font_map(widget: *Widget) *pango::FontMap;
export @symbol("gtk_widget_get_font_options") fn widget_get_font_options(widget: *Widget) *cairo::FontOptions;
export @symbol("gtk_widget_get_frame_clock") fn widget_get_frame_clock(widget: *Widget) *gdk4::FrameClock;
export @symbol("gtk_widget_get_halign") fn widget_get_halign(widget: *Widget) Align;
export @symbol("gtk_widget_get_has_tooltip") fn widget_get_has_tooltip(widget: *Widget) glib::boolean;
export @symbol("gtk_widget_get_height") fn widget_get_height(widget: *Widget) int;
export @symbol("gtk_widget_get_hexpand") fn widget_get_hexpand(widget: *Widget) glib::boolean;
export @symbol("gtk_widget_get_hexpand_set") fn widget_get_hexpand_set(widget: *Widget) glib::boolean;
export @symbol("gtk_widget_get_last_child") fn widget_get_last_child(widget: *Widget) *Widget;
export @symbol("gtk_widget_get_layout_manager") fn widget_get_layout_manager(widget: *Widget) *LayoutManager;
export @symbol("gtk_widget_get_mapped") fn widget_get_mapped(widget: *Widget) glib::boolean;
export @symbol("gtk_widget_get_margin_bottom") fn widget_get_margin_bottom(widget: *Widget) int;
export @symbol("gtk_widget_get_margin_end") fn widget_get_margin_end(widget: *Widget) int;
export @symbol("gtk_widget_get_margin_start") fn widget_get_margin_start(widget: *Widget) int;
export @symbol("gtk_widget_get_margin_top") fn widget_get_margin_top(widget: *Widget) int;
export @symbol("gtk_widget_get_name") fn widget_get_name(widget: *Widget) *c::char;
export @symbol("gtk_widget_get_native") fn widget_get_native(widget: *Widget) *Native;
export @symbol("gtk_widget_get_next_sibling") fn widget_get_next_sibling(widget: *Widget) *Widget;
export @symbol("gtk_widget_get_opacity") fn widget_get_opacity(widget: *Widget) f64;
export @symbol("gtk_widget_get_overflow") fn widget_get_overflow(widget: *Widget) Overflow;
export @symbol("gtk_widget_get_pango_context") fn widget_get_pango_context(widget: *Widget) *pango::Context;
export @symbol("gtk_widget_get_parent") fn widget_get_parent(widget: *Widget) *Widget;
export @symbol("gtk_widget_get_preferred_size") fn widget_get_preferred_size(widget: *Widget, minimum_size: *Requisition, natural_size: *Requisition) void;
export @symbol("gtk_widget_get_prev_sibling") fn widget_get_prev_sibling(widget: *Widget) *Widget;
export @symbol("gtk_widget_get_primary_clipboard") fn widget_get_primary_clipboard(widget: *Widget) *gdk4::Clipboard;
export @symbol("gtk_widget_get_realized") fn widget_get_realized(widget: *Widget) glib::boolean;
export @symbol("gtk_widget_get_receives_default") fn widget_get_receives_default(widget: *Widget) glib::boolean;
export @symbol("gtk_widget_get_request_mode") fn widget_get_request_mode(widget: *Widget) SizeRequestMode;
export @symbol("gtk_widget_get_root") fn widget_get_root(widget: *Widget) *Root;
export @symbol("gtk_widget_get_scale_factor") fn widget_get_scale_factor(widget: *Widget) int;
export @symbol("gtk_widget_get_sensitive") fn widget_get_sensitive(widget: *Widget) glib::boolean;
export @symbol("gtk_widget_get_settings") fn widget_get_settings(widget: *Widget) *Settings;
export @symbol("gtk_widget_get_size") fn widget_get_size(widget: *Widget, orientation: Orientation) int;
export @symbol("gtk_widget_get_size_request") fn widget_get_size_request(widget: *Widget, width: *int, height: *int) void;
export @symbol("gtk_widget_get_state_flags") fn widget_get_state_flags(widget: *Widget) StateFlags;
export @symbol("gtk_widget_get_style_context") fn widget_get_style_context(widget: *Widget) *StyleContext;
export @symbol("gtk_widget_get_template_child") fn widget_get_template_child(widget: *Widget, widget_type: glib::Type, name: *c::char) *gobject::Object;
export @symbol("gtk_widget_get_tooltip_markup") fn widget_get_tooltip_markup(widget: *Widget) *c::char;
export @symbol("gtk_widget_get_tooltip_text") fn widget_get_tooltip_text(widget: *Widget) *c::char;
export @symbol("gtk_widget_get_valign") fn widget_get_valign(widget: *Widget) Align;
export @symbol("gtk_widget_get_vexpand") fn widget_get_vexpand(widget: *Widget) glib::boolean;
export @symbol("gtk_widget_get_vexpand_set") fn widget_get_vexpand_set(widget: *Widget) glib::boolean;
export @symbol("gtk_widget_get_visible") fn widget_get_visible(widget: *Widget) glib::boolean;
export @symbol("gtk_widget_get_width") fn widget_get_width(widget: *Widget) int;
export @symbol("gtk_widget_grab_focus") fn widget_grab_focus(widget: *Widget) glib::boolean;
export @symbol("gtk_widget_has_css_class") fn widget_has_css_class(widget: *Widget, css_class: *c::char) glib::boolean;
export @symbol("gtk_widget_has_default") fn widget_has_default(widget: *Widget) glib::boolean;
export @symbol("gtk_widget_has_focus") fn widget_has_focus(widget: *Widget) glib::boolean;
export @symbol("gtk_widget_has_visible_focus") fn widget_has_visible_focus(widget: *Widget) glib::boolean;
export @symbol("gtk_widget_hide") fn widget_hide(widget: *Widget) void;
export @symbol("gtk_widget_in_destruction") fn widget_in_destruction(widget: *Widget) glib::boolean;
export @symbol("gtk_widget_init_template") fn widget_init_template(widget: *Widget) void;
export @symbol("gtk_widget_insert_action_group") fn widget_insert_action_group(widget: *Widget, name: *c::char, group: *gio::ActionGroup) void;
export @symbol("gtk_widget_insert_after") fn widget_insert_after(widget: *Widget, parent: *Widget, previous_sibling: *Widget) void;
export @symbol("gtk_widget_insert_before") fn widget_insert_before(widget: *Widget, parent: *Widget, next_sibling: *Widget) void;
export @symbol("gtk_widget_is_ancestor") fn widget_is_ancestor(widget: *Widget, ancestor: *Widget) glib::boolean;
export @symbol("gtk_widget_is_drawable") fn widget_is_drawable(widget: *Widget) glib::boolean;
export @symbol("gtk_widget_is_focus") fn widget_is_focus(widget: *Widget) glib::boolean;
export @symbol("gtk_widget_is_sensitive") fn widget_is_sensitive(widget: *Widget) glib::boolean;
export @symbol("gtk_widget_is_visible") fn widget_is_visible(widget: *Widget) glib::boolean;
export @symbol("gtk_widget_keynav_failed") fn widget_keynav_failed(widget: *Widget, direction: DirectionType) glib::boolean;
export @symbol("gtk_widget_list_mnemonic_labels") fn widget_list_mnemonic_labels(widget: *Widget) *glib::List;
export @symbol("gtk_widget_map") fn widget_map(widget: *Widget) void;
export @symbol("gtk_widget_measure") fn widget_measure(widget: *Widget, orientation: Orientation, for_size: int, minimum: *int, natural: *int, minimum_baseline: *int, natural_baseline: *int) void;
export @symbol("gtk_widget_mnemonic_activate") fn widget_mnemonic_activate(widget: *Widget, group_cycling: glib::boolean) glib::boolean;
export @symbol("gtk_widget_observe_children") fn widget_observe_children(widget: *Widget) *gio::ListModel;
export @symbol("gtk_widget_observe_controllers") fn widget_observe_controllers(widget: *Widget) *gio::ListModel;
export @symbol("gtk_widget_pick") fn widget_pick(widget: *Widget, x: f64, y: f64, flags: PickFlags) *Widget;
export @symbol("gtk_widget_queue_allocate") fn widget_queue_allocate(widget: *Widget) void;
export @symbol("gtk_widget_queue_draw") fn widget_queue_draw(widget: *Widget) void;
export @symbol("gtk_widget_queue_resize") fn widget_queue_resize(widget: *Widget) void;
export @symbol("gtk_widget_realize") fn widget_realize(widget: *Widget) void;
export @symbol("gtk_widget_remove_controller") fn widget_remove_controller(widget: *Widget, controller: *EventController) void;
export @symbol("gtk_widget_remove_css_class") fn widget_remove_css_class(widget: *Widget, css_class: *c::char) void;
export @symbol("gtk_widget_remove_mnemonic_label") fn widget_remove_mnemonic_label(widget: *Widget, label: *Widget) void;
export @symbol("gtk_widget_remove_tick_callback") fn widget_remove_tick_callback(widget: *Widget, id: uint) void;
export @symbol("gtk_widget_set_can_focus") fn widget_set_can_focus(widget: *Widget, can_focus: glib::boolean) void;
export @symbol("gtk_widget_set_can_target") fn widget_set_can_target(widget: *Widget, can_target: glib::boolean) void;
export @symbol("gtk_widget_set_child_visible") fn widget_set_child_visible(widget: *Widget, child_visible: glib::boolean) void;
export @symbol("gtk_widget_set_css_classes") fn widget_set_css_classes(widget: *Widget, classes: **c::char) void;
export @symbol("gtk_widget_set_cursor") fn widget_set_cursor(widget: *Widget, cursor: *gdk4::Cursor) void;
export @symbol("gtk_widget_set_cursor_from_name") fn widget_set_cursor_from_name(widget: *Widget, name: *c::char) void;
export @symbol("gtk_widget_set_direction") fn widget_set_direction(widget: *Widget, dir: TextDirection) void;
export @symbol("gtk_widget_set_focus_child") fn widget_set_focus_child(widget: *Widget, child: *Widget) void;
export @symbol("gtk_widget_set_focus_on_click") fn widget_set_focus_on_click(widget: *Widget, focus_on_click: glib::boolean) void;
export @symbol("gtk_widget_set_focusable") fn widget_set_focusable(widget: *Widget, focusable: glib::boolean) void;
export @symbol("gtk_widget_set_font_map") fn widget_set_font_map(widget: *Widget, font_map: *pango::FontMap) void;
export @symbol("gtk_widget_set_font_options") fn widget_set_font_options(widget: *Widget, options: *cairo::FontOptions) void;
export @symbol("gtk_widget_set_halign") fn widget_set_halign(widget: *Widget, align_: Align) void;
export @symbol("gtk_widget_set_has_tooltip") fn widget_set_has_tooltip(widget: *Widget, has_tooltip: glib::boolean) void;
export @symbol("gtk_widget_set_hexpand") fn widget_set_hexpand(widget: *Widget, expand: glib::boolean) void;
export @symbol("gtk_widget_set_hexpand_set") fn widget_set_hexpand_set(widget: *Widget, set: glib::boolean) void;
export @symbol("gtk_widget_set_layout_manager") fn widget_set_layout_manager(widget: *Widget, layout_manager: *LayoutManager) void;
export @symbol("gtk_widget_set_margin_bottom") fn widget_set_margin_bottom(widget: *Widget, margin: int) void;
export @symbol("gtk_widget_set_margin_end") fn widget_set_margin_end(widget: *Widget, margin: int) void;
export @symbol("gtk_widget_set_margin_start") fn widget_set_margin_start(widget: *Widget, margin: int) void;
export @symbol("gtk_widget_set_margin_top") fn widget_set_margin_top(widget: *Widget, margin: int) void;
export @symbol("gtk_widget_set_name") fn widget_set_name(widget: *Widget, name: *c::char) void;
export @symbol("gtk_widget_set_opacity") fn widget_set_opacity(widget: *Widget, opacity: f64) void;
export @symbol("gtk_widget_set_overflow") fn widget_set_overflow(widget: *Widget, overflow: Overflow) void;
export @symbol("gtk_widget_set_parent") fn widget_set_parent(widget: *Widget, parent: *Widget) void;
export @symbol("gtk_widget_set_receives_default") fn widget_set_receives_default(widget: *Widget, receives_default: glib::boolean) void;
export @symbol("gtk_widget_set_sensitive") fn widget_set_sensitive(widget: *Widget, sensitive: glib::boolean) void;
export @symbol("gtk_widget_set_size_request") fn widget_set_size_request(widget: *Widget, width: int, height: int) void;
export @symbol("gtk_widget_set_state_flags") fn widget_set_state_flags(widget: *Widget, flags: StateFlags, clear: glib::boolean) void;
export @symbol("gtk_widget_set_tooltip_markup") fn widget_set_tooltip_markup(widget: *Widget, markup: *c::char) void;
export @symbol("gtk_widget_set_tooltip_text") fn widget_set_tooltip_text(widget: *Widget, text: *c::char) void;
export @symbol("gtk_widget_set_valign") fn widget_set_valign(widget: *Widget, align_: Align) void;
export @symbol("gtk_widget_set_vexpand") fn widget_set_vexpand(widget: *Widget, expand: glib::boolean) void;
export @symbol("gtk_widget_set_vexpand_set") fn widget_set_vexpand_set(widget: *Widget, set: glib::boolean) void;
export @symbol("gtk_widget_set_visible") fn widget_set_visible(widget: *Widget, visible: glib::boolean) void;
export @symbol("gtk_widget_should_layout") fn widget_should_layout(widget: *Widget) glib::boolean;
export @symbol("gtk_widget_show") fn widget_show(widget: *Widget) void;
export @symbol("gtk_widget_size_allocate") fn widget_size_allocate(widget: *Widget, allocation: *Allocation, baseline: int) void;
export @symbol("gtk_widget_snapshot_child") fn widget_snapshot_child(widget: *Widget, child: *Widget, snapshot: *Snapshot) void;
export @symbol("gtk_widget_translate_coordinates") fn widget_translate_coordinates(src_widget: *Widget, dest_widget: *Widget, src_x: f64, src_y: f64, dest_x: *f64, dest_y: *f64) glib::boolean;
export @symbol("gtk_widget_trigger_tooltip_query") fn widget_trigger_tooltip_query(widget: *Widget) void;
export @symbol("gtk_widget_unmap") fn widget_unmap(widget: *Widget) void;
export @symbol("gtk_widget_unparent") fn widget_unparent(widget: *Widget) void;
export @symbol("gtk_widget_unrealize") fn widget_unrealize(widget: *Widget) void;
export @symbol("gtk_widget_unset_state_flags") fn widget_unset_state_flags(widget: *Widget, flags: StateFlags) void;
export @symbol("gtk_widget_get_default_direction") fn widget_get_default_direction() TextDirection;
export @symbol("gtk_widget_set_default_direction") fn widget_set_default_direction(dir: TextDirection) void;
export fn widget_connect_destroy(
	instance: *Widget,
	handler: *fn(instance: *Widget, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"destroy\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn widget_connect_direction_changed(
	instance: *Widget,
	handler: *fn(instance: *Widget, previous_direction: TextDirection, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"direction-changed\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn widget_connect_hide(
	instance: *Widget,
	handler: *fn(instance: *Widget, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"hide\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn widget_connect_keynav_failed(
	instance: *Widget,
	handler: *fn(instance: *Widget, direction: DirectionType, data: *opaque) glib::boolean,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"keynav-failed\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn widget_connect_map(
	instance: *Widget,
	handler: *fn(instance: *Widget, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"map\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn widget_connect_mnemonic_activate(
	instance: *Widget,
	handler: *fn(instance: *Widget, group_cycling: glib::boolean, data: *opaque) glib::boolean,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"mnemonic-activate\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn widget_connect_move_focus(
	instance: *Widget,
	handler: *fn(instance: *Widget, direction: DirectionType, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"move-focus\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn widget_connect_query_tooltip(
	instance: *Widget,
	handler: *fn(instance: *Widget, x: int, y: int, keyboard_mode: glib::boolean, tooltip: *Tooltip, data: *opaque) glib::boolean,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"query-tooltip\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn widget_connect_realize(
	instance: *Widget,
	handler: *fn(instance: *Widget, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"realize\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn widget_connect_show(
	instance: *Widget,
	handler: *fn(instance: *Widget, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"show\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn widget_connect_state_flags_changed(
	instance: *Widget,
	handler: *fn(instance: *Widget, flags: StateFlags, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"state-flags-changed\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn widget_connect_unmap(
	instance: *Widget,
	handler: *fn(instance: *Widget, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"unmap\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn widget_connect_unrealize(
	instance: *Widget,
	handler: *fn(instance: *Widget, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"unrealize\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export type WidgetPaintable = *opaque;
export @symbol("gtk_widget_paintable_new") fn widget_paintable_new(widget: *Widget) *gdk4::Paintable;
export @symbol("gtk_widget_paintable_get_widget") fn widget_paintable_get_widget(self: *WidgetPaintable) *Widget;
export @symbol("gtk_widget_paintable_set_widget") fn widget_paintable_set_widget(self: *WidgetPaintable, widget: *Widget) void;
export type Window = struct {
	parent_instance: Widget,
};
export @symbol("gtk_window_new") fn window_new() *Widget;
export @symbol("gtk_window_close") fn window_close(window: *Window) void;
export @symbol("gtk_window_destroy") fn window_destroy(window: *Window) void;
export @symbol("gtk_window_fullscreen") fn window_fullscreen(window: *Window) void;
export @symbol("gtk_window_fullscreen_on_monitor") fn window_fullscreen_on_monitor(window: *Window, monitor: *gdk4::Monitor) void;
export @symbol("gtk_window_get_application") fn window_get_application(window: *Window) *Application;
export @symbol("gtk_window_get_child") fn window_get_child(window: *Window) *Widget;
export @symbol("gtk_window_get_decorated") fn window_get_decorated(window: *Window) glib::boolean;
export @symbol("gtk_window_get_default_size") fn window_get_default_size(window: *Window, width: *int, height: *int) void;
export @symbol("gtk_window_get_default_widget") fn window_get_default_widget(window: *Window) *Widget;
export @symbol("gtk_window_get_deletable") fn window_get_deletable(window: *Window) glib::boolean;
export @symbol("gtk_window_get_destroy_with_parent") fn window_get_destroy_with_parent(window: *Window) glib::boolean;
export @symbol("gtk_window_get_focus") fn window_get_focus(window: *Window) *Widget;
export @symbol("gtk_window_get_focus_visible") fn window_get_focus_visible(window: *Window) glib::boolean;
export @symbol("gtk_window_get_group") fn window_get_group(window: *Window) *WindowGroup;
export @symbol("gtk_window_get_handle_menubar_accel") fn window_get_handle_menubar_accel(window: *Window) glib::boolean;
export @symbol("gtk_window_get_hide_on_close") fn window_get_hide_on_close(window: *Window) glib::boolean;
export @symbol("gtk_window_get_icon_name") fn window_get_icon_name(window: *Window) *c::char;
export @symbol("gtk_window_get_mnemonics_visible") fn window_get_mnemonics_visible(window: *Window) glib::boolean;
export @symbol("gtk_window_get_modal") fn window_get_modal(window: *Window) glib::boolean;
export @symbol("gtk_window_get_resizable") fn window_get_resizable(window: *Window) glib::boolean;
export @symbol("gtk_window_get_title") fn window_get_title(window: *Window) *c::char;
export @symbol("gtk_window_get_titlebar") fn window_get_titlebar(window: *Window) *Widget;
export @symbol("gtk_window_get_transient_for") fn window_get_transient_for(window: *Window) *Window;
export @symbol("gtk_window_has_group") fn window_has_group(window: *Window) glib::boolean;
export @symbol("gtk_window_is_active") fn window_is_active(window: *Window) glib::boolean;
export @symbol("gtk_window_is_fullscreen") fn window_is_fullscreen(window: *Window) glib::boolean;
export @symbol("gtk_window_is_maximized") fn window_is_maximized(window: *Window) glib::boolean;
export @symbol("gtk_window_is_suspended") fn window_is_suspended(window: *Window) glib::boolean;
export @symbol("gtk_window_maximize") fn window_maximize(window: *Window) void;
export @symbol("gtk_window_minimize") fn window_minimize(window: *Window) void;
export @symbol("gtk_window_present") fn window_present(window: *Window) void;
export @symbol("gtk_window_present_with_time") fn window_present_with_time(window: *Window, timestamp: u32) void;
export @symbol("gtk_window_set_application") fn window_set_application(window: *Window, application: *Application) void;
export @symbol("gtk_window_set_child") fn window_set_child(window: *Window, child: *Widget) void;
export @symbol("gtk_window_set_decorated") fn window_set_decorated(window: *Window, setting: glib::boolean) void;
export @symbol("gtk_window_set_default_size") fn window_set_default_size(window: *Window, width: int, height: int) void;
export @symbol("gtk_window_set_default_widget") fn window_set_default_widget(window: *Window, default_widget: *Widget) void;
export @symbol("gtk_window_set_deletable") fn window_set_deletable(window: *Window, setting: glib::boolean) void;
export @symbol("gtk_window_set_destroy_with_parent") fn window_set_destroy_with_parent(window: *Window, setting: glib::boolean) void;
export @symbol("gtk_window_set_display") fn window_set_display(window: *Window, display: *gdk4::Display) void;
export @symbol("gtk_window_set_focus") fn window_set_focus(window: *Window, focus: *Widget) void;
export @symbol("gtk_window_set_focus_visible") fn window_set_focus_visible(window: *Window, setting: glib::boolean) void;
export @symbol("gtk_window_set_handle_menubar_accel") fn window_set_handle_menubar_accel(window: *Window, handle_menubar_accel: glib::boolean) void;
export @symbol("gtk_window_set_hide_on_close") fn window_set_hide_on_close(window: *Window, setting: glib::boolean) void;
export @symbol("gtk_window_set_icon_name") fn window_set_icon_name(window: *Window, name: *c::char) void;
export @symbol("gtk_window_set_mnemonics_visible") fn window_set_mnemonics_visible(window: *Window, setting: glib::boolean) void;
export @symbol("gtk_window_set_modal") fn window_set_modal(window: *Window, modal: glib::boolean) void;
export @symbol("gtk_window_set_resizable") fn window_set_resizable(window: *Window, resizable: glib::boolean) void;
export @symbol("gtk_window_set_startup_id") fn window_set_startup_id(window: *Window, startup_id: *c::char) void;
export @symbol("gtk_window_set_title") fn window_set_title(window: *Window, title: *c::char) void;
export @symbol("gtk_window_set_titlebar") fn window_set_titlebar(window: *Window, titlebar: *Widget) void;
export @symbol("gtk_window_set_transient_for") fn window_set_transient_for(window: *Window, parent: *Window) void;
export @symbol("gtk_window_unfullscreen") fn window_unfullscreen(window: *Window) void;
export @symbol("gtk_window_unmaximize") fn window_unmaximize(window: *Window) void;
export @symbol("gtk_window_unminimize") fn window_unminimize(window: *Window) void;
export @symbol("gtk_window_get_default_icon_name") fn window_get_default_icon_name() *c::char;
export @symbol("gtk_window_get_toplevels") fn window_get_toplevels() *gio::ListModel;
export @symbol("gtk_window_list_toplevels") fn window_list_toplevels() *glib::List;
export @symbol("gtk_window_set_auto_startup_notification") fn window_set_auto_startup_notification(setting: glib::boolean) void;
export @symbol("gtk_window_set_default_icon_name") fn window_set_default_icon_name(name: *c::char) void;
export @symbol("gtk_window_set_interactive_debugging") fn window_set_interactive_debugging(enable: glib::boolean) void;
export fn window_connect_activate_default(
	instance: *Window,
	handler: *fn(instance: *Window, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"activate-default\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn window_connect_activate_focus(
	instance: *Window,
	handler: *fn(instance: *Window, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"activate-focus\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn window_connect_close_request(
	instance: *Window,
	handler: *fn(instance: *Window, data: *opaque) glib::boolean,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"close-request\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn window_connect_enable_debugging(
	instance: *Window,
	handler: *fn(instance: *Window, toggle: glib::boolean, data: *opaque) glib::boolean,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"enable-debugging\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn window_connect_keys_changed(
	instance: *Window,
	handler: *fn(instance: *Window, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"keys-changed\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export type WindowControls = *opaque;
export @symbol("gtk_window_controls_new") fn window_controls_new(side: PackType) *Widget;
export @symbol("gtk_window_controls_get_decoration_layout") fn window_controls_get_decoration_layout(self: *WindowControls) *c::char;
export @symbol("gtk_window_controls_get_empty") fn window_controls_get_empty(self: *WindowControls) glib::boolean;
export @symbol("gtk_window_controls_get_side") fn window_controls_get_side(self: *WindowControls) PackType;
export @symbol("gtk_window_controls_set_decoration_layout") fn window_controls_set_decoration_layout(self: *WindowControls, layout: *c::char) void;
export @symbol("gtk_window_controls_set_side") fn window_controls_set_side(self: *WindowControls, side: PackType) void;
export type WindowGroup = struct {
	parent_instance: gobject::Object,
	priv: *WindowGroupPrivate,
};
export @symbol("gtk_window_group_new") fn window_group_new() *WindowGroup;
export @symbol("gtk_window_group_add_window") fn window_group_add_window(window_group: *WindowGroup, window: *Window) void;
export @symbol("gtk_window_group_list_windows") fn window_group_list_windows(window_group: *WindowGroup) *glib::List;
export @symbol("gtk_window_group_remove_window") fn window_group_remove_window(window_group: *WindowGroup, window: *Window) void;
export type WindowHandle = *opaque;
export @symbol("gtk_window_handle_new") fn window_handle_new() *Widget;
export @symbol("gtk_window_handle_get_child") fn window_handle_get_child(self: *WindowHandle) *Widget;
export @symbol("gtk_window_handle_set_child") fn window_handle_set_child(self: *WindowHandle, child: *Widget) void;
export type Accessible = *opaque;
export @symbol("gtk_accessible_get_accessible_parent") fn accessible_get_accessible_parent(self: *Accessible) *Accessible;
export @symbol("gtk_accessible_get_accessible_role") fn accessible_get_accessible_role(self: *Accessible) AccessibleRole;
export @symbol("gtk_accessible_get_at_context") fn accessible_get_at_context(self: *Accessible) *ATContext;
export @symbol("gtk_accessible_get_bounds") fn accessible_get_bounds(self: *Accessible, x: *int, y: *int, width: *int, height: *int) glib::boolean;
export @symbol("gtk_accessible_get_first_accessible_child") fn accessible_get_first_accessible_child(self: *Accessible) *Accessible;
export @symbol("gtk_accessible_get_next_accessible_sibling") fn accessible_get_next_accessible_sibling(self: *Accessible) *Accessible;
export @symbol("gtk_accessible_get_platform_state") fn accessible_get_platform_state(self: *Accessible, state: AccessiblePlatformState) glib::boolean;
export @symbol("gtk_accessible_reset_property") fn accessible_reset_property(self: *Accessible, property: AccessibleProperty) void;
export @symbol("gtk_accessible_reset_relation") fn accessible_reset_relation(self: *Accessible, relation: AccessibleRelation) void;
export @symbol("gtk_accessible_reset_state") fn accessible_reset_state(self: *Accessible, state: AccessibleState) void;
export @symbol("gtk_accessible_set_accessible_parent") fn accessible_set_accessible_parent(self: *Accessible, parent: *Accessible, next_sibling: *Accessible) void;
export @symbol("gtk_accessible_update_next_accessible_sibling") fn accessible_update_next_accessible_sibling(self: *Accessible, new_sibling: *Accessible) void;
export @symbol("gtk_accessible_update_property") fn accessible_update_property(self: *Accessible, first_property: AccessibleProperty, ...) void;
export @symbol("gtk_accessible_update_property_value") fn accessible_update_property_value(self: *Accessible, n_properties: int, properties: *AccessibleProperty, values: *gobject::Value) void;
export @symbol("gtk_accessible_update_relation") fn accessible_update_relation(self: *Accessible, first_relation: AccessibleRelation, ...) void;
export @symbol("gtk_accessible_update_relation_value") fn accessible_update_relation_value(self: *Accessible, n_relations: int, relations: *AccessibleRelation, values: *gobject::Value) void;
export @symbol("gtk_accessible_update_state") fn accessible_update_state(self: *Accessible, first_state: AccessibleState, ...) void;
export @symbol("gtk_accessible_update_state_value") fn accessible_update_state_value(self: *Accessible, n_states: int, states: *AccessibleState, values: *gobject::Value) void;
export type AccessibleRange = *opaque;
export type Actionable = *opaque;
export @symbol("gtk_actionable_get_action_name") fn actionable_get_action_name(actionable: *Actionable) *c::char;
export @symbol("gtk_actionable_get_action_target_value") fn actionable_get_action_target_value(actionable: *Actionable) *glib::Variant;
export @symbol("gtk_actionable_set_action_name") fn actionable_set_action_name(actionable: *Actionable, action_name: *c::char) void;
export @symbol("gtk_actionable_set_action_target") fn actionable_set_action_target(actionable: *Actionable, format_string: *c::char, ...) void;
export @symbol("gtk_actionable_set_action_target_value") fn actionable_set_action_target_value(actionable: *Actionable, target_value: *glib::Variant) void;
export @symbol("gtk_actionable_set_detailed_action_name") fn actionable_set_detailed_action_name(actionable: *Actionable, detailed_action_name: *c::char) void;
export type AppChooser = *opaque;
export @symbol("gtk_app_chooser_get_app_info") fn app_chooser_get_app_info(self: *AppChooser) *gio::AppInfo;
export @symbol("gtk_app_chooser_get_content_type") fn app_chooser_get_content_type(self: *AppChooser) *c::char;
export @symbol("gtk_app_chooser_refresh") fn app_chooser_refresh(self: *AppChooser) void;
export type Buildable = *opaque;
export @symbol("gtk_buildable_get_buildable_id") fn buildable_get_buildable_id(buildable: *Buildable) *c::char;
export type BuilderScope = *opaque;
export type CellEditable = *opaque;
export @symbol("gtk_cell_editable_editing_done") fn cell_editable_editing_done(cell_editable: *CellEditable) void;
export @symbol("gtk_cell_editable_remove_widget") fn cell_editable_remove_widget(cell_editable: *CellEditable) void;
export @symbol("gtk_cell_editable_start_editing") fn cell_editable_start_editing(cell_editable: *CellEditable, event: *gdk4::Event) void;
export fn cell_editable_connect_editing_done(
	instance: *CellEditable,
	handler: *fn(instance: *CellEditable, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"editing-done\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn cell_editable_connect_remove_widget(
	instance: *CellEditable,
	handler: *fn(instance: *CellEditable, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"remove-widget\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export type CellLayout = *opaque;
export @symbol("gtk_cell_layout_add_attribute") fn cell_layout_add_attribute(cell_layout: *CellLayout, cell: *CellRenderer, attribute: *c::char, column: int) void;
export @symbol("gtk_cell_layout_clear") fn cell_layout_clear(cell_layout: *CellLayout) void;
export @symbol("gtk_cell_layout_clear_attributes") fn cell_layout_clear_attributes(cell_layout: *CellLayout, cell: *CellRenderer) void;
export @symbol("gtk_cell_layout_get_area") fn cell_layout_get_area(cell_layout: *CellLayout) *CellArea;
export @symbol("gtk_cell_layout_get_cells") fn cell_layout_get_cells(cell_layout: *CellLayout) *glib::List;
export @symbol("gtk_cell_layout_pack_end") fn cell_layout_pack_end(cell_layout: *CellLayout, cell: *CellRenderer, expand: glib::boolean) void;
export @symbol("gtk_cell_layout_pack_start") fn cell_layout_pack_start(cell_layout: *CellLayout, cell: *CellRenderer, expand: glib::boolean) void;
export @symbol("gtk_cell_layout_reorder") fn cell_layout_reorder(cell_layout: *CellLayout, cell: *CellRenderer, position: int) void;
export @symbol("gtk_cell_layout_set_attributes") fn cell_layout_set_attributes(cell_layout: *CellLayout, cell: *CellRenderer, ...) void;
export @symbol("gtk_cell_layout_set_cell_data_func") fn cell_layout_set_cell_data_func(cell_layout: *CellLayout, cell: *CellRenderer, func: CellLayoutDataFunc, func_data: *opaque, destroy: glib::DestroyNotify) void;
export type ColorChooser = *opaque;
export @symbol("gtk_color_chooser_add_palette") fn color_chooser_add_palette(chooser: *ColorChooser, orientation: Orientation, colors_per_line: int, n_colors: int, colors: *gdk4::RGBA) void;
export @symbol("gtk_color_chooser_get_rgba") fn color_chooser_get_rgba(chooser: *ColorChooser, color: *gdk4::RGBA) void;
export @symbol("gtk_color_chooser_get_use_alpha") fn color_chooser_get_use_alpha(chooser: *ColorChooser) glib::boolean;
export @symbol("gtk_color_chooser_set_rgba") fn color_chooser_set_rgba(chooser: *ColorChooser, color: *gdk4::RGBA) void;
export @symbol("gtk_color_chooser_set_use_alpha") fn color_chooser_set_use_alpha(chooser: *ColorChooser, use_alpha: glib::boolean) void;
export fn color_chooser_connect_color_activated(
	instance: *ColorChooser,
	handler: *fn(instance: *ColorChooser, color: gdk4::RGBA, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"color-activated\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export type ConstraintTarget = *opaque;
export type Editable = *opaque;
export @symbol("gtk_editable_delegate_get_accessible_platform_state") fn editable_delegate_get_accessible_platform_state(editable: *Editable, state: AccessiblePlatformState) glib::boolean;
export @symbol("gtk_editable_delete_selection") fn editable_delete_selection(editable: *Editable) void;
export @symbol("gtk_editable_delete_text") fn editable_delete_text(editable: *Editable, start_pos: int, end_pos: int) void;
export @symbol("gtk_editable_finish_delegate") fn editable_finish_delegate(editable: *Editable) void;
export @symbol("gtk_editable_get_alignment") fn editable_get_alignment(editable: *Editable) f32;
export @symbol("gtk_editable_get_chars") fn editable_get_chars(editable: *Editable, start_pos: int, end_pos: int) *c::char;
export @symbol("gtk_editable_get_delegate") fn editable_get_delegate(editable: *Editable) *Editable;
export @symbol("gtk_editable_get_editable") fn editable_get_editable(editable: *Editable) glib::boolean;
export @symbol("gtk_editable_get_enable_undo") fn editable_get_enable_undo(editable: *Editable) glib::boolean;
export @symbol("gtk_editable_get_max_width_chars") fn editable_get_max_width_chars(editable: *Editable) int;
export @symbol("gtk_editable_get_position") fn editable_get_position(editable: *Editable) int;
export @symbol("gtk_editable_get_selection_bounds") fn editable_get_selection_bounds(editable: *Editable, start_pos: *int, end_pos: *int) glib::boolean;
export @symbol("gtk_editable_get_text") fn editable_get_text(editable: *Editable) *c::char;
export @symbol("gtk_editable_get_width_chars") fn editable_get_width_chars(editable: *Editable) int;
export @symbol("gtk_editable_init_delegate") fn editable_init_delegate(editable: *Editable) void;
export @symbol("gtk_editable_insert_text") fn editable_insert_text(editable: *Editable, text: *c::char, length: int, position: *int) void;
export @symbol("gtk_editable_select_region") fn editable_select_region(editable: *Editable, start_pos: int, end_pos: int) void;
export @symbol("gtk_editable_set_alignment") fn editable_set_alignment(editable: *Editable, xalign: f32) void;
export @symbol("gtk_editable_set_editable") fn editable_set_editable(editable: *Editable, is_editable: glib::boolean) void;
export @symbol("gtk_editable_set_enable_undo") fn editable_set_enable_undo(editable: *Editable, enable_undo: glib::boolean) void;
export @symbol("gtk_editable_set_max_width_chars") fn editable_set_max_width_chars(editable: *Editable, n_chars: int) void;
export @symbol("gtk_editable_set_position") fn editable_set_position(editable: *Editable, position: int) void;
export @symbol("gtk_editable_set_text") fn editable_set_text(editable: *Editable, text: *c::char) void;
export @symbol("gtk_editable_set_width_chars") fn editable_set_width_chars(editable: *Editable, n_chars: int) void;
export @symbol("gtk_editable_delegate_get_property") fn editable_delegate_get_property(object: *gobject::Object, prop_id: uint, value: *gobject::Value, pspec: *gobject::ParamSpec) glib::boolean;
export @symbol("gtk_editable_delegate_set_property") fn editable_delegate_set_property(object: *gobject::Object, prop_id: uint, value: *gobject::Value, pspec: *gobject::ParamSpec) glib::boolean;
export @symbol("gtk_editable_install_properties") fn editable_install_properties(object_class: *gobject::ObjectClass, first_prop: uint) uint;
export fn editable_connect_changed(
	instance: *Editable,
	handler: *fn(instance: *Editable, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"changed\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn editable_connect_delete_text(
	instance: *Editable,
	handler: *fn(instance: *Editable, start_pos: int, end_pos: int, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"delete-text\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn editable_connect_insert_text(
	instance: *Editable,
	handler: *fn(instance: *Editable, text: *c::char, length: int, position: *opaque, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"insert-text\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export type FileChooser = *opaque;
export @symbol("gtk_file_chooser_add_choice") fn file_chooser_add_choice(chooser: *FileChooser, id: *c::char, label: *c::char, options: **c::char, option_labels: **c::char) void;
export @symbol("gtk_file_chooser_add_filter") fn file_chooser_add_filter(chooser: *FileChooser, filter: *FileFilter) void;
export @symbol("gtk_file_chooser_add_shortcut_folder") fn file_chooser_add_shortcut_folder(chooser: *FileChooser, folder: *gio::File, error: nullable **glib::Error) glib::boolean;
export @symbol("gtk_file_chooser_get_action") fn file_chooser_get_action(chooser: *FileChooser) FileChooserAction;
export @symbol("gtk_file_chooser_get_choice") fn file_chooser_get_choice(chooser: *FileChooser, id: *c::char) *c::char;
export @symbol("gtk_file_chooser_get_create_folders") fn file_chooser_get_create_folders(chooser: *FileChooser) glib::boolean;
export @symbol("gtk_file_chooser_get_current_folder") fn file_chooser_get_current_folder(chooser: *FileChooser) *gio::File;
export @symbol("gtk_file_chooser_get_current_name") fn file_chooser_get_current_name(chooser: *FileChooser) *c::char;
export @symbol("gtk_file_chooser_get_file") fn file_chooser_get_file(chooser: *FileChooser) *gio::File;
export @symbol("gtk_file_chooser_get_files") fn file_chooser_get_files(chooser: *FileChooser) *gio::ListModel;
export @symbol("gtk_file_chooser_get_filter") fn file_chooser_get_filter(chooser: *FileChooser) *FileFilter;
export @symbol("gtk_file_chooser_get_filters") fn file_chooser_get_filters(chooser: *FileChooser) *gio::ListModel;
export @symbol("gtk_file_chooser_get_select_multiple") fn file_chooser_get_select_multiple(chooser: *FileChooser) glib::boolean;
export @symbol("gtk_file_chooser_get_shortcut_folders") fn file_chooser_get_shortcut_folders(chooser: *FileChooser) *gio::ListModel;
export @symbol("gtk_file_chooser_remove_choice") fn file_chooser_remove_choice(chooser: *FileChooser, id: *c::char) void;
export @symbol("gtk_file_chooser_remove_filter") fn file_chooser_remove_filter(chooser: *FileChooser, filter: *FileFilter) void;
export @symbol("gtk_file_chooser_remove_shortcut_folder") fn file_chooser_remove_shortcut_folder(chooser: *FileChooser, folder: *gio::File, error: nullable **glib::Error) glib::boolean;
export @symbol("gtk_file_chooser_set_action") fn file_chooser_set_action(chooser: *FileChooser, action: FileChooserAction) void;
export @symbol("gtk_file_chooser_set_choice") fn file_chooser_set_choice(chooser: *FileChooser, id: *c::char, option: *c::char) void;
export @symbol("gtk_file_chooser_set_create_folders") fn file_chooser_set_create_folders(chooser: *FileChooser, create_folders: glib::boolean) void;
export @symbol("gtk_file_chooser_set_current_folder") fn file_chooser_set_current_folder(chooser: *FileChooser, file: *gio::File, error: nullable **glib::Error) glib::boolean;
export @symbol("gtk_file_chooser_set_current_name") fn file_chooser_set_current_name(chooser: *FileChooser, name: *c::char) void;
export @symbol("gtk_file_chooser_set_file") fn file_chooser_set_file(chooser: *FileChooser, file: *gio::File, error: nullable **glib::Error) glib::boolean;
export @symbol("gtk_file_chooser_set_filter") fn file_chooser_set_filter(chooser: *FileChooser, filter: *FileFilter) void;
export @symbol("gtk_file_chooser_set_select_multiple") fn file_chooser_set_select_multiple(chooser: *FileChooser, select_multiple: glib::boolean) void;
export type FontChooser = *opaque;
export @symbol("gtk_font_chooser_get_font") fn font_chooser_get_font(fontchooser: *FontChooser) *c::char;
export @symbol("gtk_font_chooser_get_font_desc") fn font_chooser_get_font_desc(fontchooser: *FontChooser) *pango::FontDescription;
export @symbol("gtk_font_chooser_get_font_face") fn font_chooser_get_font_face(fontchooser: *FontChooser) *pango::FontFace;
export @symbol("gtk_font_chooser_get_font_family") fn font_chooser_get_font_family(fontchooser: *FontChooser) *pango::FontFamily;
export @symbol("gtk_font_chooser_get_font_features") fn font_chooser_get_font_features(fontchooser: *FontChooser) *c::char;
export @symbol("gtk_font_chooser_get_font_map") fn font_chooser_get_font_map(fontchooser: *FontChooser) *pango::FontMap;
export @symbol("gtk_font_chooser_get_font_size") fn font_chooser_get_font_size(fontchooser: *FontChooser) int;
export @symbol("gtk_font_chooser_get_language") fn font_chooser_get_language(fontchooser: *FontChooser) *c::char;
export @symbol("gtk_font_chooser_get_level") fn font_chooser_get_level(fontchooser: *FontChooser) FontChooserLevel;
export @symbol("gtk_font_chooser_get_preview_text") fn font_chooser_get_preview_text(fontchooser: *FontChooser) *c::char;
export @symbol("gtk_font_chooser_get_show_preview_entry") fn font_chooser_get_show_preview_entry(fontchooser: *FontChooser) glib::boolean;
export @symbol("gtk_font_chooser_set_filter_func") fn font_chooser_set_filter_func(fontchooser: *FontChooser, filter: FontFilterFunc, user_data: *opaque, destroy: glib::DestroyNotify) void;
export @symbol("gtk_font_chooser_set_font") fn font_chooser_set_font(fontchooser: *FontChooser, fontname: *c::char) void;
export @symbol("gtk_font_chooser_set_font_desc") fn font_chooser_set_font_desc(fontchooser: *FontChooser, font_desc: *pango::FontDescription) void;
export @symbol("gtk_font_chooser_set_font_map") fn font_chooser_set_font_map(fontchooser: *FontChooser, fontmap: *pango::FontMap) void;
export @symbol("gtk_font_chooser_set_language") fn font_chooser_set_language(fontchooser: *FontChooser, language: *c::char) void;
export @symbol("gtk_font_chooser_set_level") fn font_chooser_set_level(fontchooser: *FontChooser, level: FontChooserLevel) void;
export @symbol("gtk_font_chooser_set_preview_text") fn font_chooser_set_preview_text(fontchooser: *FontChooser, text: *c::char) void;
export @symbol("gtk_font_chooser_set_show_preview_entry") fn font_chooser_set_show_preview_entry(fontchooser: *FontChooser, show_preview_entry: glib::boolean) void;
export fn font_chooser_connect_font_activated(
	instance: *FontChooser,
	handler: *fn(instance: *FontChooser, fontname: *c::char, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"font-activated\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export type Native = *opaque;
export @symbol("gtk_native_get_renderer") fn native_get_renderer(self: *Native) *gsk::Renderer;
export @symbol("gtk_native_get_surface") fn native_get_surface(self: *Native) *gdk4::Surface;
export @symbol("gtk_native_get_surface_transform") fn native_get_surface_transform(self: *Native, x: *f64, y: *f64) void;
export @symbol("gtk_native_realize") fn native_realize(self: *Native) void;
export @symbol("gtk_native_unrealize") fn native_unrealize(self: *Native) void;
export @symbol("gtk_native_get_for_surface") fn native_get_for_surface(surface: *gdk4::Surface) *Native;
export type Orientable = *opaque;
export @symbol("gtk_orientable_get_orientation") fn orientable_get_orientation(orientable: *Orientable) Orientation;
export @symbol("gtk_orientable_set_orientation") fn orientable_set_orientation(orientable: *Orientable, orientation: Orientation) void;
export type PrintOperationPreview = *opaque;
export @symbol("gtk_print_operation_preview_end_preview") fn print_operation_preview_end_preview(preview: *PrintOperationPreview) void;
export @symbol("gtk_print_operation_preview_is_selected") fn print_operation_preview_is_selected(preview: *PrintOperationPreview, page_nr: int) glib::boolean;
export @symbol("gtk_print_operation_preview_render_page") fn print_operation_preview_render_page(preview: *PrintOperationPreview, page_nr: int) void;
export fn print_operation_preview_connect_got_page_size(
	instance: *PrintOperationPreview,
	handler: *fn(instance: *PrintOperationPreview, context: *PrintContext, page_setup: *PageSetup, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"got-page-size\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn print_operation_preview_connect_ready(
	instance: *PrintOperationPreview,
	handler: *fn(instance: *PrintOperationPreview, context: *PrintContext, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"ready\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export type Root = *opaque;
export @symbol("gtk_root_get_display") fn root_get_display(self: *Root) *gdk4::Display;
export @symbol("gtk_root_get_focus") fn root_get_focus(self: *Root) *Widget;
export @symbol("gtk_root_set_focus") fn root_set_focus(self: *Root, focus: *Widget) void;
export type Scrollable = *opaque;
export @symbol("gtk_scrollable_get_border") fn scrollable_get_border(scrollable: *Scrollable, border: *Border) glib::boolean;
export @symbol("gtk_scrollable_get_hadjustment") fn scrollable_get_hadjustment(scrollable: *Scrollable) *Adjustment;
export @symbol("gtk_scrollable_get_hscroll_policy") fn scrollable_get_hscroll_policy(scrollable: *Scrollable) ScrollablePolicy;
export @symbol("gtk_scrollable_get_vadjustment") fn scrollable_get_vadjustment(scrollable: *Scrollable) *Adjustment;
export @symbol("gtk_scrollable_get_vscroll_policy") fn scrollable_get_vscroll_policy(scrollable: *Scrollable) ScrollablePolicy;
export @symbol("gtk_scrollable_set_hadjustment") fn scrollable_set_hadjustment(scrollable: *Scrollable, hadjustment: *Adjustment) void;
export @symbol("gtk_scrollable_set_hscroll_policy") fn scrollable_set_hscroll_policy(scrollable: *Scrollable, policy: ScrollablePolicy) void;
export @symbol("gtk_scrollable_set_vadjustment") fn scrollable_set_vadjustment(scrollable: *Scrollable, vadjustment: *Adjustment) void;
export @symbol("gtk_scrollable_set_vscroll_policy") fn scrollable_set_vscroll_policy(scrollable: *Scrollable, policy: ScrollablePolicy) void;
export type SectionModel = *opaque;
export @symbol("gtk_section_model_get_section") fn section_model_get_section(self: *SectionModel, position: uint, out_start: *uint, out_end: *uint) void;
export @symbol("gtk_section_model_sections_changed") fn section_model_sections_changed(self: *SectionModel, position: uint, n_items: uint) void;
export fn section_model_connect_sections_changed(
	instance: *SectionModel,
	handler: *fn(instance: *SectionModel, position: uint, n_items: uint, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"sections-changed\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export type SelectionModel = *opaque;
export @symbol("gtk_selection_model_get_selection") fn selection_model_get_selection(model: *SelectionModel) *Bitset;
export @symbol("gtk_selection_model_get_selection_in_range") fn selection_model_get_selection_in_range(model: *SelectionModel, position: uint, n_items: uint) *Bitset;
export @symbol("gtk_selection_model_is_selected") fn selection_model_is_selected(model: *SelectionModel, position: uint) glib::boolean;
export @symbol("gtk_selection_model_select_all") fn selection_model_select_all(model: *SelectionModel) glib::boolean;
export @symbol("gtk_selection_model_select_item") fn selection_model_select_item(model: *SelectionModel, position: uint, unselect_rest: glib::boolean) glib::boolean;
export @symbol("gtk_selection_model_select_range") fn selection_model_select_range(model: *SelectionModel, position: uint, n_items: uint, unselect_rest: glib::boolean) glib::boolean;
export @symbol("gtk_selection_model_selection_changed") fn selection_model_selection_changed(model: *SelectionModel, position: uint, n_items: uint) void;
export @symbol("gtk_selection_model_set_selection") fn selection_model_set_selection(model: *SelectionModel, selected: *Bitset, mask: *Bitset) glib::boolean;
export @symbol("gtk_selection_model_unselect_all") fn selection_model_unselect_all(model: *SelectionModel) glib::boolean;
export @symbol("gtk_selection_model_unselect_item") fn selection_model_unselect_item(model: *SelectionModel, position: uint) glib::boolean;
export @symbol("gtk_selection_model_unselect_range") fn selection_model_unselect_range(model: *SelectionModel, position: uint, n_items: uint) glib::boolean;
export fn selection_model_connect_selection_changed(
	instance: *SelectionModel,
	handler: *fn(instance: *SelectionModel, position: uint, n_items: uint, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"selection-changed\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export type ShortcutManager = *opaque;
export type StyleProvider = *opaque;
export fn style_provider_connect_gtk_private_changed(
	instance: *StyleProvider,
	handler: *fn(instance: *StyleProvider, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"gtk-private-changed\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export type SymbolicPaintable = *opaque;
export @symbol("gtk_symbolic_paintable_snapshot_symbolic") fn symbolic_paintable_snapshot_symbolic(paintable: *SymbolicPaintable, snapshot: *gdk4::Snapshot, width: f64, height: f64, colors: *gdk4::RGBA, n_colors: size) void;
export type TreeDragDest = *opaque;
export @symbol("gtk_tree_drag_dest_drag_data_received") fn tree_drag_dest_drag_data_received(drag_dest: *TreeDragDest, dest: *TreePath, value: *gobject::Value) glib::boolean;
export @symbol("gtk_tree_drag_dest_row_drop_possible") fn tree_drag_dest_row_drop_possible(drag_dest: *TreeDragDest, dest_path: *TreePath, value: *gobject::Value) glib::boolean;
export type TreeDragSource = *opaque;
export @symbol("gtk_tree_drag_source_drag_data_delete") fn tree_drag_source_drag_data_delete(drag_source: *TreeDragSource, path: *TreePath) glib::boolean;
export @symbol("gtk_tree_drag_source_drag_data_get") fn tree_drag_source_drag_data_get(drag_source: *TreeDragSource, path: *TreePath) *gdk4::ContentProvider;
export @symbol("gtk_tree_drag_source_row_draggable") fn tree_drag_source_row_draggable(drag_source: *TreeDragSource, path: *TreePath) glib::boolean;
export type TreeModel = *opaque;
export @symbol("gtk_tree_model_filter_new") fn tree_model_filter_new(child_model: *TreeModel, root: *TreePath) *TreeModel;
export @symbol("gtk_tree_model_foreach") fn tree_model_foreach(model: *TreeModel, func: TreeModelForeachFunc, user_data: *opaque) void;
export @symbol("gtk_tree_model_get") fn tree_model_get(tree_model: *TreeModel, iter: *TreeIter, ...) void;
export @symbol("gtk_tree_model_get_column_type") fn tree_model_get_column_type(tree_model: *TreeModel, index_: int) glib::Type;
export @symbol("gtk_tree_model_get_flags") fn tree_model_get_flags(tree_model: *TreeModel) TreeModelFlags;
export @symbol("gtk_tree_model_get_iter") fn tree_model_get_iter(tree_model: *TreeModel, iter: *TreeIter, path: *TreePath) glib::boolean;
export @symbol("gtk_tree_model_get_iter_first") fn tree_model_get_iter_first(tree_model: *TreeModel, iter: *TreeIter) glib::boolean;
export @symbol("gtk_tree_model_get_iter_from_string") fn tree_model_get_iter_from_string(tree_model: *TreeModel, iter: *TreeIter, path_string: *c::char) glib::boolean;
export @symbol("gtk_tree_model_get_n_columns") fn tree_model_get_n_columns(tree_model: *TreeModel) int;
export @symbol("gtk_tree_model_get_path") fn tree_model_get_path(tree_model: *TreeModel, iter: *TreeIter) *TreePath;
export @symbol("gtk_tree_model_get_string_from_iter") fn tree_model_get_string_from_iter(tree_model: *TreeModel, iter: *TreeIter) *c::char;
export @symbol("gtk_tree_model_get_valist") fn tree_model_get_valist(tree_model: *TreeModel, iter: *TreeIter, var_args: valist) void;
export @symbol("gtk_tree_model_get_value") fn tree_model_get_value(tree_model: *TreeModel, iter: *TreeIter, column: int, value: *gobject::Value) void;
export @symbol("gtk_tree_model_iter_children") fn tree_model_iter_children(tree_model: *TreeModel, iter: *TreeIter, parent: *TreeIter) glib::boolean;
export @symbol("gtk_tree_model_iter_has_child") fn tree_model_iter_has_child(tree_model: *TreeModel, iter: *TreeIter) glib::boolean;
export @symbol("gtk_tree_model_iter_n_children") fn tree_model_iter_n_children(tree_model: *TreeModel, iter: *TreeIter) int;
export @symbol("gtk_tree_model_iter_next") fn tree_model_iter_next(tree_model: *TreeModel, iter: *TreeIter) glib::boolean;
export @symbol("gtk_tree_model_iter_nth_child") fn tree_model_iter_nth_child(tree_model: *TreeModel, iter: *TreeIter, parent: *TreeIter, n: int) glib::boolean;
export @symbol("gtk_tree_model_iter_parent") fn tree_model_iter_parent(tree_model: *TreeModel, iter: *TreeIter, child: *TreeIter) glib::boolean;
export @symbol("gtk_tree_model_iter_previous") fn tree_model_iter_previous(tree_model: *TreeModel, iter: *TreeIter) glib::boolean;
export @symbol("gtk_tree_model_ref_node") fn tree_model_ref_node(tree_model: *TreeModel, iter: *TreeIter) void;
export @symbol("gtk_tree_model_row_changed") fn tree_model_row_changed(tree_model: *TreeModel, path: *TreePath, iter: *TreeIter) void;
export @symbol("gtk_tree_model_row_deleted") fn tree_model_row_deleted(tree_model: *TreeModel, path: *TreePath) void;
export @symbol("gtk_tree_model_row_has_child_toggled") fn tree_model_row_has_child_toggled(tree_model: *TreeModel, path: *TreePath, iter: *TreeIter) void;
export @symbol("gtk_tree_model_row_inserted") fn tree_model_row_inserted(tree_model: *TreeModel, path: *TreePath, iter: *TreeIter) void;
export @symbol("gtk_tree_model_rows_reordered") fn tree_model_rows_reordered(tree_model: *TreeModel, path: *TreePath, iter: *TreeIter, new_order: *int) void;
export @symbol("gtk_tree_model_rows_reordered_with_length") fn tree_model_rows_reordered_with_length(tree_model: *TreeModel, path: *TreePath, iter: *TreeIter, new_order: *int, length: int) void;
export @symbol("gtk_tree_model_unref_node") fn tree_model_unref_node(tree_model: *TreeModel, iter: *TreeIter) void;
export fn tree_model_connect_row_changed(
	instance: *TreeModel,
	handler: *fn(instance: *TreeModel, path: *TreePath, iter: *TreeIter, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"row-changed\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn tree_model_connect_row_deleted(
	instance: *TreeModel,
	handler: *fn(instance: *TreeModel, path: *TreePath, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"row-deleted\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn tree_model_connect_row_has_child_toggled(
	instance: *TreeModel,
	handler: *fn(instance: *TreeModel, path: *TreePath, iter: *TreeIter, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"row-has-child-toggled\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn tree_model_connect_row_inserted(
	instance: *TreeModel,
	handler: *fn(instance: *TreeModel, path: *TreePath, iter: *TreeIter, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"row-inserted\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn tree_model_connect_rows_reordered(
	instance: *TreeModel,
	handler: *fn(instance: *TreeModel, path: *TreePath, iter: *TreeIter, new_order: *opaque, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"rows-reordered\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export type TreeSortable = *opaque;
export @symbol("gtk_tree_sortable_get_sort_column_id") fn tree_sortable_get_sort_column_id(sortable: *TreeSortable, sort_column_id: *int, order: *SortType) glib::boolean;
export @symbol("gtk_tree_sortable_has_default_sort_func") fn tree_sortable_has_default_sort_func(sortable: *TreeSortable) glib::boolean;
export @symbol("gtk_tree_sortable_set_default_sort_func") fn tree_sortable_set_default_sort_func(sortable: *TreeSortable, sort_func: TreeIterCompareFunc, user_data: *opaque, destroy: glib::DestroyNotify) void;
export @symbol("gtk_tree_sortable_set_sort_column_id") fn tree_sortable_set_sort_column_id(sortable: *TreeSortable, sort_column_id: int, order: SortType) void;
export @symbol("gtk_tree_sortable_set_sort_func") fn tree_sortable_set_sort_func(sortable: *TreeSortable, sort_column_id: int, sort_func: TreeIterCompareFunc, user_data: *opaque, destroy: glib::DestroyNotify) void;
export @symbol("gtk_tree_sortable_sort_column_changed") fn tree_sortable_sort_column_changed(sortable: *TreeSortable) void;
export fn tree_sortable_connect_sort_column_changed(
	instance: *TreeSortable,
	handler: *fn(instance: *TreeSortable, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"sort-column-changed\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export type ATContextClass = *opaque;
export type AccessibleInterface = struct {
	g_iface: gobject::TypeInterface,
	get_at_context: *fn(self: *Accessible) *ATContext,
	get_platform_state: *fn(self: *Accessible, state: AccessiblePlatformState) glib::boolean,
	get_accessible_parent: *fn(self: *Accessible) *Accessible,
	get_first_accessible_child: *fn(self: *Accessible) *Accessible,
	get_next_accessible_sibling: *fn(self: *Accessible) *Accessible,
	get_bounds: *fn(self: *Accessible, x: *int, y: *int, width: *int, height: *int) glib::boolean,
};
export type AccessibleRangeInterface = struct {
	g_iface: gobject::TypeInterface,
	set_current_value: *fn(self: *AccessibleRange, value: f64) glib::boolean,
};
export type ActionableInterface = struct {
	g_iface: gobject::TypeInterface,
	get_action_name: *fn(actionable: *Actionable) *c::char,
	set_action_name: *fn(actionable: *Actionable, action_name: *c::char) void,
	get_action_target_value: *fn(actionable: *Actionable) *glib::Variant,
	set_action_target_value: *fn(actionable: *Actionable, target_value: *glib::Variant) void,
};
export type ActivateActionClass = *opaque;
export type AdjustmentClass = struct {
	parent_class: gobject::InitiallyUnownedClass,
	changed: *fn(adjustment: *Adjustment) void,
	value_changed: *fn(adjustment: *Adjustment) void,
	_gtk_reserved1: *fn() void,
	_gtk_reserved2: *fn() void,
	_gtk_reserved3: *fn() void,
	_gtk_reserved4: *fn() void,
};
export type AlertDialogClass = struct {
	parent_class: gobject::ObjectClass,
};
export type AlternativeTriggerClass = *opaque;
export type AnyFilterClass = *opaque;
export type ApplicationClass = struct {
	parent_class: gio::ApplicationClass,
	window_added: *fn(application: *Application, window: *Window) void,
	window_removed: *fn(application: *Application, window: *Window) void,
	padding: [8]*opaque,
};
export type ApplicationWindowClass = struct {
	parent_class: WindowClass,
	padding: [8]*opaque,
};
export type BinLayoutClass = struct {
	parent_class: LayoutManagerClass,
};
export type Bitset = *opaque;
export @symbol("gtk_bitset_new_empty") fn bitset_new_empty() *Bitset;
export @symbol("gtk_bitset_new_range") fn bitset_new_range(start: uint, n_items: uint) *Bitset;
export @symbol("gtk_bitset_add") fn bitset_add(self: *Bitset, value: uint) glib::boolean;
export @symbol("gtk_bitset_add_range") fn bitset_add_range(self: *Bitset, start: uint, n_items: uint) void;
export @symbol("gtk_bitset_add_range_closed") fn bitset_add_range_closed(self: *Bitset, first: uint, last: uint) void;
export @symbol("gtk_bitset_add_rectangle") fn bitset_add_rectangle(self: *Bitset, start: uint, width: uint, height: uint, stride: uint) void;
export @symbol("gtk_bitset_contains") fn bitset_contains(self: *Bitset, value: uint) glib::boolean;
export @symbol("gtk_bitset_copy") fn bitset_copy(self: *Bitset) *Bitset;
export @symbol("gtk_bitset_difference") fn bitset_difference(self: *Bitset, other: *Bitset) void;
export @symbol("gtk_bitset_equals") fn bitset_equals(self: *Bitset, other: *Bitset) glib::boolean;
export @symbol("gtk_bitset_get_maximum") fn bitset_get_maximum(self: *Bitset) uint;
export @symbol("gtk_bitset_get_minimum") fn bitset_get_minimum(self: *Bitset) uint;
export @symbol("gtk_bitset_get_nth") fn bitset_get_nth(self: *Bitset, nth: uint) uint;
export @symbol("gtk_bitset_get_size") fn bitset_get_size(self: *Bitset) u64;
export @symbol("gtk_bitset_get_size_in_range") fn bitset_get_size_in_range(self: *Bitset, first: uint, last: uint) u64;
export @symbol("gtk_bitset_intersect") fn bitset_intersect(self: *Bitset, other: *Bitset) void;
export @symbol("gtk_bitset_is_empty") fn bitset_is_empty(self: *Bitset) glib::boolean;
export @symbol("gtk_bitset_ref") fn bitset_ref(self: *Bitset) *Bitset;
export @symbol("gtk_bitset_remove") fn bitset_remove(self: *Bitset, value: uint) glib::boolean;
export @symbol("gtk_bitset_remove_all") fn bitset_remove_all(self: *Bitset) void;
export @symbol("gtk_bitset_remove_range") fn bitset_remove_range(self: *Bitset, start: uint, n_items: uint) void;
export @symbol("gtk_bitset_remove_range_closed") fn bitset_remove_range_closed(self: *Bitset, first: uint, last: uint) void;
export @symbol("gtk_bitset_remove_rectangle") fn bitset_remove_rectangle(self: *Bitset, start: uint, width: uint, height: uint, stride: uint) void;
export @symbol("gtk_bitset_shift_left") fn bitset_shift_left(self: *Bitset, amount: uint) void;
export @symbol("gtk_bitset_shift_right") fn bitset_shift_right(self: *Bitset, amount: uint) void;
export @symbol("gtk_bitset_splice") fn bitset_splice(self: *Bitset, position: uint, removed: uint, added: uint) void;
export @symbol("gtk_bitset_subtract") fn bitset_subtract(self: *Bitset, other: *Bitset) void;
export @symbol("gtk_bitset_union") fn bitset_union(self: *Bitset, other: *Bitset) void;
export @symbol("gtk_bitset_unref") fn bitset_unref(self: *Bitset) void;
export type BitsetIter = struct {
	private_data: [10]*opaque,
};
export @symbol("gtk_bitset_iter_get_value") fn bitset_iter_get_value(iter: *BitsetIter) uint;
export @symbol("gtk_bitset_iter_is_valid") fn bitset_iter_is_valid(iter: *BitsetIter) glib::boolean;
export @symbol("gtk_bitset_iter_next") fn bitset_iter_next(iter: *BitsetIter, value: *uint) glib::boolean;
export @symbol("gtk_bitset_iter_previous") fn bitset_iter_previous(iter: *BitsetIter, value: *uint) glib::boolean;
export @symbol("gtk_bitset_iter_init_at") fn bitset_iter_init_at(iter: *BitsetIter, set: *Bitset, target: uint, value: *uint) glib::boolean;
export @symbol("gtk_bitset_iter_init_first") fn bitset_iter_init_first(iter: *BitsetIter, set: *Bitset, value: *uint) glib::boolean;
export @symbol("gtk_bitset_iter_init_last") fn bitset_iter_init_last(iter: *BitsetIter, set: *Bitset, value: *uint) glib::boolean;
export type BookmarkListClass = struct {
	parent_class: gobject::ObjectClass,
};
export type BoolFilterClass = struct {
	parent_class: FilterClass,
};
export type Border = struct {
	left: i16,
	right: i16,
	top: i16,
	bottom: i16,
};
export @symbol("gtk_border_new") fn border_new() *Border;
export @symbol("gtk_border_copy") fn border_copy(border_: *Border) *Border;
export @symbol("gtk_border_free") fn border_free(border_: *Border) void;
export type BoxClass = struct {
	parent_class: WidgetClass,
	padding: [8]*opaque,
};
export type BoxLayoutClass = struct {
	parent_class: LayoutManagerClass,
};
export type BuildableIface = struct {
	g_iface: gobject::TypeInterface,
	set_id: *fn(buildable: *Buildable, id: *c::char) void,
	get_id: *fn(buildable: *Buildable) *c::char,
	add_child: *fn(buildable: *Buildable, builder: *Builder, child: *gobject::Object, type_: *c::char) void,
	set_buildable_property: *fn(buildable: *Buildable, builder: *Builder, name: *c::char, value: *gobject::Value) void,
	construct_child: *fn(buildable: *Buildable, builder: *Builder, name: *c::char) *gobject::Object,
	custom_tag_start: *fn(buildable: *Buildable, builder: *Builder, child: *gobject::Object, tagname: *c::char, parser: *BuildableParser, data: **opaque) glib::boolean,
	custom_tag_end: *fn(buildable: *Buildable, builder: *Builder, child: *gobject::Object, tagname: *c::char, data: *opaque) void,
	custom_finished: *fn(buildable: *Buildable, builder: *Builder, child: *gobject::Object, tagname: *c::char, data: *opaque) void,
	parser_finished: *fn(buildable: *Buildable, builder: *Builder) void,
	get_internal_child: *fn(buildable: *Buildable, builder: *Builder, childname: *c::char) *gobject::Object,
};
export type BuildableParseContext = *opaque;
export @symbol("gtk_buildable_parse_context_get_element") fn buildable_parse_context_get_element(context: *BuildableParseContext) *c::char;
export @symbol("gtk_buildable_parse_context_get_element_stack") fn buildable_parse_context_get_element_stack(context: *BuildableParseContext) *glib::PtrArray;
export @symbol("gtk_buildable_parse_context_get_position") fn buildable_parse_context_get_position(context: *BuildableParseContext, line_number: *int, char_number: *int) void;
export @symbol("gtk_buildable_parse_context_pop") fn buildable_parse_context_pop(context: *BuildableParseContext) *opaque;
export @symbol("gtk_buildable_parse_context_push") fn buildable_parse_context_push(context: *BuildableParseContext, parser: *BuildableParser, user_data: *opaque) void;
export type BuildableParser = struct {
	start_element: *fn(context: *BuildableParseContext, element_name: *c::char, attribute_names: **c::char, attribute_values: **c::char, user_data: *opaque, error: nullable **glib::Error) void,
	end_element: *fn(context: *BuildableParseContext, element_name: *c::char, user_data: *opaque, error: nullable **glib::Error) void,
	text: *fn(context: *BuildableParseContext, text: *c::char, text_len: size, user_data: *opaque, error: nullable **glib::Error) void,
	error: *fn(context: *BuildableParseContext, error: *glib::Error, user_data: *opaque) void,
	padding: [4]*opaque,
};
export type BuilderCScopeClass = struct {
	parent_class: gobject::ObjectClass,
};
export type BuilderClass = *opaque;
export type BuilderListItemFactoryClass = *opaque;
export type BuilderScopeInterface = struct {
	g_iface: gobject::TypeInterface,
	get_type_from_name: *fn(self: *BuilderScope, builder: *Builder, type_name: *c::char) glib::Type,
	get_type_from_function: *fn(self: *BuilderScope, builder: *Builder, function_name: *c::char) glib::Type,
	create_closure: *fn(self: *BuilderScope, builder: *Builder, function_name: *c::char, flags: BuilderClosureFlags, object: *gobject::Object, error: nullable **glib::Error) *gobject::Closure,
};
export type ButtonClass = struct {
	parent_class: WidgetClass,
	clicked: *fn(button: *Button) void,
	activate: *fn(button: *Button) void,
	padding: [8]*opaque,
};
export type ButtonPrivate = *opaque;
export type CallbackActionClass = *opaque;
export type CellAreaClass = struct {
	parent_class: gobject::InitiallyUnownedClass,
	add: *fn(area: *CellArea, renderer: *CellRenderer) void,
	remove: *fn(area: *CellArea, renderer: *CellRenderer) void,
	foreach: *fn(area: *CellArea, callback: CellCallback, callback_data: *opaque) void,
	foreach_alloc: *fn(area: *CellArea, context: *CellAreaContext, widget: *Widget, cell_area: *gdk4::Rectangle, background_area: *gdk4::Rectangle, callback: CellAllocCallback, callback_data: *opaque) void,
	event: *fn(area: *CellArea, context: *CellAreaContext, widget: *Widget, event: *gdk4::Event, cell_area: *gdk4::Rectangle, flags: CellRendererState) int,
	snapshot: *fn(area: *CellArea, context: *CellAreaContext, widget: *Widget, snapshot: *Snapshot, background_area: *gdk4::Rectangle, cell_area: *gdk4::Rectangle, flags: CellRendererState, paint_focus: glib::boolean) void,
	apply_attributes: *fn(area: *CellArea, tree_model: *TreeModel, iter: *TreeIter, is_expander: glib::boolean, is_expanded: glib::boolean) void,
	create_context: *fn(area: *CellArea) *CellAreaContext,
	copy_context: *fn(area: *CellArea, context: *CellAreaContext) *CellAreaContext,
	get_request_mode: *fn(area: *CellArea) SizeRequestMode,
	get_preferred_width: *fn(area: *CellArea, context: *CellAreaContext, widget: *Widget, minimum_width: *int, natural_width: *int) void,
	get_preferred_height_for_width: *fn(area: *CellArea, context: *CellAreaContext, widget: *Widget, width: int, minimum_height: *int, natural_height: *int) void,
	get_preferred_height: *fn(area: *CellArea, context: *CellAreaContext, widget: *Widget, minimum_height: *int, natural_height: *int) void,
	get_preferred_width_for_height: *fn(area: *CellArea, context: *CellAreaContext, widget: *Widget, height: int, minimum_width: *int, natural_width: *int) void,
	set_cell_property: *fn(area: *CellArea, renderer: *CellRenderer, property_id: uint, value: *gobject::Value, pspec: *gobject::ParamSpec) void,
	get_cell_property: *fn(area: *CellArea, renderer: *CellRenderer, property_id: uint, value: *gobject::Value, pspec: *gobject::ParamSpec) void,
	focus: *fn(area: *CellArea, direction: DirectionType) glib::boolean,
	is_activatable: *fn(area: *CellArea) glib::boolean,
	activate: *fn(area: *CellArea, context: *CellAreaContext, widget: *Widget, cell_area: *gdk4::Rectangle, flags: CellRendererState, edit_only: glib::boolean) glib::boolean,
	padding: [8]*opaque,
};
export @symbol("gtk_cell_area_class_find_cell_property") fn cell_area_class_find_cell_property(aclass: *CellAreaClass, property_name: *c::char) *gobject::ParamSpec;
export @symbol("gtk_cell_area_class_install_cell_property") fn cell_area_class_install_cell_property(aclass: *CellAreaClass, property_id: uint, pspec: *gobject::ParamSpec) void;
export @symbol("gtk_cell_area_class_list_cell_properties") fn cell_area_class_list_cell_properties(aclass: *CellAreaClass, n_properties: *uint) **gobject::ParamSpec;
export type CellAreaContextClass = struct {
	parent_class: gobject::ObjectClass,
	allocate: *fn(context: *CellAreaContext, width: int, height: int) void,
	reset: *fn(context: *CellAreaContext) void,
	get_preferred_height_for_width: *fn(context: *CellAreaContext, width: int, minimum_height: *int, natural_height: *int) void,
	get_preferred_width_for_height: *fn(context: *CellAreaContext, height: int, minimum_width: *int, natural_width: *int) void,
	padding: [8]*opaque,
};
export type CellAreaContextPrivate = *opaque;
export type CellEditableIface = struct {
	g_iface: gobject::TypeInterface,
	editing_done: *fn(cell_editable: *CellEditable) void,
	remove_widget: *fn(cell_editable: *CellEditable) void,
	start_editing: *fn(cell_editable: *CellEditable, event: *gdk4::Event) void,
};
export type CellLayoutIface = struct {
	g_iface: gobject::TypeInterface,
	pack_start: *fn(cell_layout: *CellLayout, cell: *CellRenderer, expand: glib::boolean) void,
	pack_end: *fn(cell_layout: *CellLayout, cell: *CellRenderer, expand: glib::boolean) void,
	clear: *fn(cell_layout: *CellLayout) void,
	add_attribute: *fn(cell_layout: *CellLayout, cell: *CellRenderer, attribute: *c::char, column: int) void,
	set_cell_data_func: *fn(cell_layout: *CellLayout, cell: *CellRenderer, func: CellLayoutDataFunc, func_data: *opaque, destroy: glib::DestroyNotify) void,
	clear_attributes: *fn(cell_layout: *CellLayout, cell: *CellRenderer) void,
	reorder: *fn(cell_layout: *CellLayout, cell: *CellRenderer, position: int) void,
	get_cells: *fn(cell_layout: *CellLayout) *glib::List,
	get_area: *fn(cell_layout: *CellLayout) *CellArea,
};
export type CellRendererClass = struct {
	parent_class: gobject::InitiallyUnownedClass,
	get_request_mode: *fn(cell: *CellRenderer) SizeRequestMode,
	get_preferred_width: *fn(cell: *CellRenderer, widget: *Widget, minimum_size: *int, natural_size: *int) void,
	get_preferred_height_for_width: *fn(cell: *CellRenderer, widget: *Widget, width: int, minimum_height: *int, natural_height: *int) void,
	get_preferred_height: *fn(cell: *CellRenderer, widget: *Widget, minimum_size: *int, natural_size: *int) void,
	get_preferred_width_for_height: *fn(cell: *CellRenderer, widget: *Widget, height: int, minimum_width: *int, natural_width: *int) void,
	get_aligned_area: *fn(cell: *CellRenderer, widget: *Widget, flags: CellRendererState, cell_area: *gdk4::Rectangle, aligned_area: *gdk4::Rectangle) void,
	snapshot: *fn(cell: *CellRenderer, snapshot: *Snapshot, widget: *Widget, background_area: *gdk4::Rectangle, cell_area: *gdk4::Rectangle, flags: CellRendererState) void,
	activate: *fn(cell: *CellRenderer, event: *gdk4::Event, widget: *Widget, path: *c::char, background_area: *gdk4::Rectangle, cell_area: *gdk4::Rectangle, flags: CellRendererState) glib::boolean,
	start_editing: *fn(cell: *CellRenderer, event: *gdk4::Event, widget: *Widget, path: *c::char, background_area: *gdk4::Rectangle, cell_area: *gdk4::Rectangle, flags: CellRendererState) *CellEditable,
	editing_canceled: *fn(cell: *CellRenderer) void,
	editing_started: *fn(cell: *CellRenderer, editable: *CellEditable, path: *c::char) void,
	padding: [8]*opaque,
};
export type CellRendererClassPrivate = *opaque;
export type CellRendererPrivate = *opaque;
export type CellRendererTextClass = struct {
	parent_class: CellRendererClass,
	edited: *fn(cell_renderer_text: *CellRendererText, path: *c::char, new_text: *c::char) void,
	padding: [8]*opaque,
};
export type CenterBoxClass = *opaque;
export type CenterLayoutClass = struct {
	parent_class: LayoutManagerClass,
};
export type CheckButtonClass = struct {
	parent_class: WidgetClass,
	toggled: *fn(check_button: *CheckButton) void,
	activate: *fn(check_button: *CheckButton) void,
	padding: [7]*opaque,
};
export type ColorChooserInterface = struct {
	base_interface: gobject::TypeInterface,
	get_rgba: *fn(chooser: *ColorChooser, color: *gdk4::RGBA) void,
	set_rgba: *fn(chooser: *ColorChooser, color: *gdk4::RGBA) void,
	add_palette: *fn(chooser: *ColorChooser, orientation: Orientation, colors_per_line: int, n_colors: int, colors: *gdk4::RGBA) void,
	color_activated: *fn(chooser: *ColorChooser, color: *gdk4::RGBA) void,
	padding: [12]*opaque,
};
export type ColorDialogButtonClass = struct {
	parent_class: WidgetClass,
};
export type ColorDialogClass = struct {
	parent_class: gobject::ObjectClass,
};
export type ColumnViewCellClass = *opaque;
export type ColumnViewClass = *opaque;
export type ColumnViewColumnClass = *opaque;
export type ColumnViewRowClass = *opaque;
export type ColumnViewSorterClass = struct {
	parent_class: SorterClass,
};
export type ComboBoxClass = struct {
	parent_class: WidgetClass,
	changed: *fn(combo_box: *ComboBox) void,
	format_entry_text: *fn(combo_box: *ComboBox, path: *c::char) *c::char,
	activate: *fn(combo_box: *ComboBox) void,
	padding: [7]*opaque,
};
export type ConstraintClass = struct {
	parent_class: gobject::ObjectClass,
};
export type ConstraintGuideClass = struct {
	parent_class: gobject::ObjectClass,
};
export type ConstraintLayoutChildClass = struct {
	parent_class: LayoutChildClass,
};
export type ConstraintLayoutClass = struct {
	parent_class: LayoutManagerClass,
};
export type ConstraintTargetInterface = *opaque;
export type CssLocation = struct {
	bytes: size,
	chars: size,
	lines: size,
	line_bytes: size,
	line_chars: size,
};
export type CssProviderClass = *opaque;
export type CssProviderPrivate = *opaque;
export type CssSection = *opaque;
export @symbol("gtk_css_section_new") fn css_section_new(file: *gio::File, start: *CssLocation, end: *CssLocation) *CssSection;
export @symbol("gtk_css_section_get_end_location") fn css_section_get_end_location(section: *CssSection) *CssLocation;
export @symbol("gtk_css_section_get_file") fn css_section_get_file(section: *CssSection) *gio::File;
export @symbol("gtk_css_section_get_parent") fn css_section_get_parent(section: *CssSection) *CssSection;
export @symbol("gtk_css_section_get_start_location") fn css_section_get_start_location(section: *CssSection) *CssLocation;
export @symbol("gtk_css_section_print") fn css_section_print(section: *CssSection, string: *glib::String) void;
export @symbol("gtk_css_section_ref") fn css_section_ref(section: *CssSection) *CssSection;
export @symbol("gtk_css_section_to_string") fn css_section_to_string(section: *CssSection) *c::char;
export @symbol("gtk_css_section_unref") fn css_section_unref(section: *CssSection) void;
export type CssStyleChange = *opaque;
export type CustomFilterClass = struct {
	parent_class: FilterClass,
};
export type CustomLayoutClass = struct {
	parent_class: LayoutManagerClass,
};
export type CustomSorterClass = struct {
	parent_class: SorterClass,
};
export type DialogClass = struct {
	parent_class: WindowClass,
	response: *fn(dialog: *Dialog, response_id: int) void,
	close: *fn(dialog: *Dialog) void,
	padding: [8]*opaque,
};
export type DirectoryListClass = struct {
	parent_class: gobject::ObjectClass,
};
export type DragIconClass = struct {
	parent_class: WidgetClass,
};
export type DragSourceClass = *opaque;
export type DrawingAreaClass = struct {
	parent_class: WidgetClass,
	resize: *fn(area: *DrawingArea, width: int, height: int) void,
	padding: [8]*opaque,
};
export type DropControllerMotionClass = *opaque;
export type DropDownClass = struct {
	parent_class: WidgetClass,
};
export type DropTargetAsyncClass = *opaque;
export type DropTargetClass = *opaque;
export type EditableInterface = struct {
	base_iface: gobject::TypeInterface,
	insert_text: *fn(editable: *Editable, text: *c::char, length: int, position: *int) void,
	delete_text: *fn(editable: *Editable, start_pos: int, end_pos: int) void,
	changed: *fn(editable: *Editable) void,
	get_text: *fn(editable: *Editable) *c::char,
	do_insert_text: *fn(editable: *Editable, text: *c::char, length: int, position: *int) void,
	do_delete_text: *fn(editable: *Editable, start_pos: int, end_pos: int) void,
	get_selection_bounds: *fn(editable: *Editable, start_pos: *int, end_pos: *int) glib::boolean,
	set_selection_bounds: *fn(editable: *Editable, start_pos: int, end_pos: int) void,
	get_delegate: *fn(editable: *Editable) *Editable,
};
export type EditableLabelClass = struct {
	parent_class: WidgetClass,
};
export type EmojiChooserClass = *opaque;
export type EntryBufferClass = struct {
	parent_class: gobject::ObjectClass,
	inserted_text: *fn(buffer: *EntryBuffer, position: uint, chars: *c::char, n_chars: uint) void,
	deleted_text: *fn(buffer: *EntryBuffer, position: uint, n_chars: uint) void,
	get_text: *fn(buffer: *EntryBuffer, n_bytes: *size) *c::char,
	get_length: *fn(buffer: *EntryBuffer) uint,
	insert_text: *fn(buffer: *EntryBuffer, position: uint, chars: *c::char, n_chars: uint) uint,
	delete_text: *fn(buffer: *EntryBuffer, position: uint, n_chars: uint) uint,
	_gtk_reserved1: *fn() void,
	_gtk_reserved2: *fn() void,
	_gtk_reserved3: *fn() void,
	_gtk_reserved4: *fn() void,
	_gtk_reserved5: *fn() void,
	_gtk_reserved6: *fn() void,
	_gtk_reserved7: *fn() void,
	_gtk_reserved8: *fn() void,
};
export type EntryClass = struct {
	parent_class: WidgetClass,
	activate: *fn(entry: *Entry) void,
	padding: [8]*opaque,
};
export type EventControllerClass = *opaque;
export type EventControllerFocusClass = *opaque;
export type EventControllerKeyClass = *opaque;
export type EventControllerLegacyClass = *opaque;
export type EventControllerMotionClass = *opaque;
export type EventControllerScrollClass = *opaque;
export type EveryFilterClass = *opaque;
export type ExpressionWatch = *opaque;
export @symbol("gtk_expression_watch_evaluate") fn expression_watch_evaluate(watch: *ExpressionWatch, value: *gobject::Value) glib::boolean;
export @symbol("gtk_expression_watch_ref") fn expression_watch_ref(watch: *ExpressionWatch) *ExpressionWatch;
export @symbol("gtk_expression_watch_unref") fn expression_watch_unref(watch: *ExpressionWatch) void;
export @symbol("gtk_expression_watch_unwatch") fn expression_watch_unwatch(watch: *ExpressionWatch) void;
export type FileChooserNativeClass = struct {
	parent_class: NativeDialogClass,
};
export type FileDialogClass = struct {
	parent_class: gobject::ObjectClass,
};
export type FileLauncherClass = struct {
	parent_class: gobject::ObjectClass,
};
export type FilterClass = struct {
	parent_class: gobject::ObjectClass,
	match_: *fn(self: *Filter, item: *opaque) glib::boolean,
	get_strictness: *fn(self: *Filter) FilterMatch,
	_gtk_reserved1: *fn() void,
	_gtk_reserved2: *fn() void,
	_gtk_reserved3: *fn() void,
	_gtk_reserved4: *fn() void,
	_gtk_reserved5: *fn() void,
	_gtk_reserved6: *fn() void,
	_gtk_reserved7: *fn() void,
	_gtk_reserved8: *fn() void,
};
export type FilterListModelClass = struct {
	parent_class: gobject::ObjectClass,
};
export type FixedClass = struct {
	parent_class: WidgetClass,
	padding: [8]*opaque,
};
export type FixedLayoutChildClass = struct {
	parent_class: LayoutChildClass,
};
export type FixedLayoutClass = struct {
	parent_class: LayoutManagerClass,
};
export type FlattenListModelClass = struct {
	parent_class: gobject::ObjectClass,
};
export type FlowBoxChildClass = struct {
	parent_class: WidgetClass,
	activate: *fn(child: *FlowBoxChild) void,
	padding: [8]*opaque,
};
export type FontChooserIface = struct {
	base_iface: gobject::TypeInterface,
	get_font_family: *fn(fontchooser: *FontChooser) *pango::FontFamily,
	get_font_face: *fn(fontchooser: *FontChooser) *pango::FontFace,
	get_font_size: *fn(fontchooser: *FontChooser) int,
	set_filter_func: *fn(fontchooser: *FontChooser, filter: FontFilterFunc, user_data: *opaque, destroy: glib::DestroyNotify) void,
	font_activated: *fn(chooser: *FontChooser, fontname: *c::char) void,
	set_font_map: *fn(fontchooser: *FontChooser, fontmap: *pango::FontMap) void,
	get_font_map: *fn(fontchooser: *FontChooser) *pango::FontMap,
	padding: [10]*opaque,
};
export type FontDialogButtonClass = struct {
	parent_class: WidgetClass,
};
export type FontDialogClass = struct {
	parent_class: gobject::ObjectClass,
};
export type FrameClass = struct {
	parent_class: WidgetClass,
	compute_child_allocation: *fn(frame: *Frame, allocation: *Allocation) void,
	padding: [8]*opaque,
};
export type GLAreaClass = struct {
	parent_class: WidgetClass,
	render: *fn(area: *GLArea, context: *gdk4::GLContext) glib::boolean,
	resize: *fn(area: *GLArea, width: int, height: int) void,
	create_context: *fn(area: *GLArea) *gdk4::GLContext,
	_padding: [8]*opaque,
};
export type GestureClass = *opaque;
export type GestureClickClass = *opaque;
export type GestureDragClass = *opaque;
export type GestureLongPressClass = *opaque;
export type GesturePanClass = *opaque;
export type GestureRotateClass = *opaque;
export type GestureSingleClass = *opaque;
export type GestureStylusClass = *opaque;
export type GestureSwipeClass = *opaque;
export type GestureZoomClass = *opaque;
export type GridClass = struct {
	parent_class: WidgetClass,
	padding: [8]*opaque,
};
export type GridLayoutChildClass = struct {
	parent_class: LayoutChildClass,
};
export type GridLayoutClass = struct {
	parent_class: LayoutManagerClass,
};
export type GridViewClass = *opaque;
export type IMContextClass = struct {
	parent_class: gobject::ObjectClass,
	preedit_start: *fn(context: *IMContext) void,
	preedit_end: *fn(context: *IMContext) void,
	preedit_changed: *fn(context: *IMContext) void,
	commit: *fn(context: *IMContext, str_: *c::char) void,
	retrieve_surrounding: *fn(context: *IMContext) glib::boolean,
	delete_surrounding: *fn(context: *IMContext, offset_: int, n_chars: int) glib::boolean,
	set_client_widget: *fn(context: *IMContext, widget: *Widget) void,
	get_preedit_string: *fn(context: *IMContext, str_: **c::char, attrs: **pango::AttrList, cursor_pos: *int) void,
	filter_keypress: *fn(context: *IMContext, event: *gdk4::Event) glib::boolean,
	focus_in: *fn(context: *IMContext) void,
	focus_out: *fn(context: *IMContext) void,
	reset: *fn(context: *IMContext) void,
	set_cursor_location: *fn(context: *IMContext, area: *gdk4::Rectangle) void,
	set_use_preedit: *fn(context: *IMContext, use_preedit: glib::boolean) void,
	set_surrounding: *fn(context: *IMContext, text: *c::char, len_: int, cursor_index: int) void,
	get_surrounding: *fn(context: *IMContext, text: **c::char, cursor_index: *int) glib::boolean,
	set_surrounding_with_selection: *fn(context: *IMContext, text: *c::char, len_: int, cursor_index: int, anchor_index: int) void,
	get_surrounding_with_selection: *fn(context: *IMContext, text: **c::char, cursor_index: *int, anchor_index: *int) glib::boolean,
	activate_osk: *fn(context: *IMContext) void,
	_gtk_reserved1: *fn() void,
	_gtk_reserved2: *fn() void,
	_gtk_reserved3: *fn() void,
	_gtk_reserved4: *fn() void,
};
export type IMContextSimpleClass = struct {
	parent_class: IMContextClass,
};
export type IMContextSimplePrivate = *opaque;
export type IMMulticontextClass = struct {
	parent_class: IMContextClass,
	_gtk_reserved1: *fn() void,
	_gtk_reserved2: *fn() void,
	_gtk_reserved3: *fn() void,
	_gtk_reserved4: *fn() void,
};
export type IMMulticontextPrivate = *opaque;
export type InscriptionClass = struct {
	parent_class: WidgetClass,
};
export type KeyvalTriggerClass = *opaque;
export type LayoutChildClass = struct {
	parent_class: gobject::ObjectClass,
};
export type LayoutManagerClass = struct {
	parent_class: gobject::ObjectClass,
	get_request_mode: *fn(manager: *LayoutManager, widget: *Widget) SizeRequestMode,
	measure: *fn(manager: *LayoutManager, widget: *Widget, orientation: Orientation, for_size: int, minimum: *int, natural: *int, minimum_baseline: *int, natural_baseline: *int) void,
	allocate: *fn(manager: *LayoutManager, widget: *Widget, width: int, height: int, baseline: int) void,
	layout_child_type: glib::Type,
	create_layout_child: *fn(manager: *LayoutManager, widget: *Widget, for_child: *Widget) *LayoutChild,
	root: *fn(manager: *LayoutManager) void,
	unroot: *fn(manager: *LayoutManager) void,
	_padding: [16]*opaque,
};
export type ListBaseClass = *opaque;
export type ListBoxRowClass = struct {
	parent_class: WidgetClass,
	activate: *fn(row: *ListBoxRow) void,
	padding: [8]*opaque,
};
export type ListHeaderClass = *opaque;
export type ListItemClass = *opaque;
export type ListItemFactoryClass = *opaque;
export type ListStoreClass = struct {
	parent_class: gobject::ObjectClass,
	padding: [8]*opaque,
};
export type ListStorePrivate = *opaque;
export type ListViewClass = *opaque;
export type MapListModelClass = struct {
	parent_class: gobject::ObjectClass,
};
export type MediaControlsClass = struct {
	parent_class: WidgetClass,
};
export type MediaFileClass = struct {
	parent_class: MediaStreamClass,
	open: *fn(self: *MediaFile) void,
	close: *fn(self: *MediaFile) void,
	_gtk_reserved1: *fn() void,
	_gtk_reserved2: *fn() void,
	_gtk_reserved3: *fn() void,
	_gtk_reserved4: *fn() void,
};
export type MediaStreamClass = struct {
	parent_class: gobject::ObjectClass,
	play: *fn(self: *MediaStream) glib::boolean,
	pause: *fn(self: *MediaStream) void,
	seek: *fn(self: *MediaStream, timestamp: i64) void,
	update_audio: *fn(self: *MediaStream, muted: glib::boolean, volume: f64) void,
	realize: *fn(self: *MediaStream, surface: *gdk4::Surface) void,
	unrealize: *fn(self: *MediaStream, surface: *gdk4::Surface) void,
	_gtk_reserved1: *fn() void,
	_gtk_reserved2: *fn() void,
	_gtk_reserved3: *fn() void,
	_gtk_reserved4: *fn() void,
	_gtk_reserved5: *fn() void,
	_gtk_reserved6: *fn() void,
	_gtk_reserved7: *fn() void,
	_gtk_reserved8: *fn() void,
};
export type MessageDialogClass = *opaque;
export type MnemonicActionClass = *opaque;
export type MnemonicTriggerClass = *opaque;
export type MountOperationClass = struct {
	parent_class: gio::MountOperationClass,
	_gtk_reserved1: *fn() void,
	_gtk_reserved2: *fn() void,
	_gtk_reserved3: *fn() void,
	_gtk_reserved4: *fn() void,
};
export type MountOperationPrivate = *opaque;
export type MultiFilterClass = *opaque;
export type MultiSelectionClass = struct {
	parent_class: gobject::ObjectClass,
};
export type MultiSorterClass = struct {
	parent_class: SorterClass,
};
export type NamedActionClass = *opaque;
export type NativeDialogClass = struct {
	parent_class: gobject::ObjectClass,
	response: *fn(self: *NativeDialog, response_id: int) void,
	show: *fn(self: *NativeDialog) void,
	hide: *fn(self: *NativeDialog) void,
	_gtk_reserved1: *fn() void,
	_gtk_reserved2: *fn() void,
	_gtk_reserved3: *fn() void,
	_gtk_reserved4: *fn() void,
};
export type NativeInterface = *opaque;
export type NeverTriggerClass = *opaque;
export type NoSelectionClass = struct {
	parent_class: gobject::ObjectClass,
};
export type NothingActionClass = *opaque;
export type NumericSorterClass = struct {
	parent_class: SorterClass,
};
export type OrientableIface = struct {
	base_iface: gobject::TypeInterface,
};
export type OverlayLayoutChildClass = struct {
	parent_class: LayoutChildClass,
};
export type OverlayLayoutClass = struct {
	parent_class: LayoutManagerClass,
};
export type PadActionEntry = struct {
	type_: PadActionType,
	index: int,
	mode: int,
	label: *c::char,
	action_name: *c::char,
};
export type PadControllerClass = *opaque;
export type PageRange = struct {
	start: int,
	end: int,
};
export type PaperSize = *opaque;
export @symbol("gtk_paper_size_new") fn paper_size_new(name: *c::char) *PaperSize;
export @symbol("gtk_paper_size_new_custom") fn paper_size_new_custom(name: *c::char, display_name: *c::char, width: f64, height: f64, unit: Unit) *PaperSize;
export @symbol("gtk_paper_size_new_from_gvariant") fn paper_size_new_from_gvariant(variant: *glib::Variant) *PaperSize;
export @symbol("gtk_paper_size_new_from_ipp") fn paper_size_new_from_ipp(ipp_name: *c::char, width: f64, height: f64) *PaperSize;
export @symbol("gtk_paper_size_new_from_key_file") fn paper_size_new_from_key_file(key_file: *glib::KeyFile, group_name: *c::char, error: nullable **glib::Error) *PaperSize;
export @symbol("gtk_paper_size_new_from_ppd") fn paper_size_new_from_ppd(ppd_name: *c::char, ppd_display_name: *c::char, width: f64, height: f64) *PaperSize;
export @symbol("gtk_paper_size_copy") fn paper_size_copy(other: *PaperSize) *PaperSize;
export @symbol("gtk_paper_size_free") fn paper_size_free(size_: *PaperSize) void;
export @symbol("gtk_paper_size_get_default_bottom_margin") fn paper_size_get_default_bottom_margin(size_: *PaperSize, unit: Unit) f64;
export @symbol("gtk_paper_size_get_default_left_margin") fn paper_size_get_default_left_margin(size_: *PaperSize, unit: Unit) f64;
export @symbol("gtk_paper_size_get_default_right_margin") fn paper_size_get_default_right_margin(size_: *PaperSize, unit: Unit) f64;
export @symbol("gtk_paper_size_get_default_top_margin") fn paper_size_get_default_top_margin(size_: *PaperSize, unit: Unit) f64;
export @symbol("gtk_paper_size_get_display_name") fn paper_size_get_display_name(size_: *PaperSize) *c::char;
export @symbol("gtk_paper_size_get_height") fn paper_size_get_height(size_: *PaperSize, unit: Unit) f64;
export @symbol("gtk_paper_size_get_name") fn paper_size_get_name(size_: *PaperSize) *c::char;
export @symbol("gtk_paper_size_get_ppd_name") fn paper_size_get_ppd_name(size_: *PaperSize) *c::char;
export @symbol("gtk_paper_size_get_width") fn paper_size_get_width(size_: *PaperSize, unit: Unit) f64;
export @symbol("gtk_paper_size_is_custom") fn paper_size_is_custom(size_: *PaperSize) glib::boolean;
export @symbol("gtk_paper_size_is_equal") fn paper_size_is_equal(size1: *PaperSize, size2: *PaperSize) glib::boolean;
export @symbol("gtk_paper_size_is_ipp") fn paper_size_is_ipp(size_: *PaperSize) glib::boolean;
export @symbol("gtk_paper_size_set_size") fn paper_size_set_size(size_: *PaperSize, width: f64, height: f64, unit: Unit) void;
export @symbol("gtk_paper_size_to_gvariant") fn paper_size_to_gvariant(paper_size: *PaperSize) *glib::Variant;
export @symbol("gtk_paper_size_to_key_file") fn paper_size_to_key_file(size_: *PaperSize, key_file: *glib::KeyFile, group_name: *c::char) void;
export @symbol("gtk_paper_size_get_default") fn paper_size_get_default() *c::char;
export @symbol("gtk_paper_size_get_paper_sizes") fn paper_size_get_paper_sizes(include_custom: glib::boolean) *glib::List;
export type PasswordEntryBufferClass = struct {
	parent_class: EntryBufferClass,
};
export type PasswordEntryClass = *opaque;
export type PictureClass = struct {
	parent_class: WidgetClass,
};
export type PopoverClass = struct {
	parent_class: WidgetClass,
	closed: *fn(popover: *Popover) void,
	activate_default: *fn(popover: *Popover) void,
	reserved: [8]*opaque,
};
export type PrintBackend = *opaque;
export type PrintOperationClass = struct {
	parent_class: gobject::ObjectClass,
	done: *fn(operation: *PrintOperation, result: PrintOperationResult) void,
	begin_print: *fn(operation: *PrintOperation, context: *PrintContext) void,
	paginate: *fn(operation: *PrintOperation, context: *PrintContext) glib::boolean,
	request_page_setup: *fn(operation: *PrintOperation, context: *PrintContext, page_nr: int, setup: *PageSetup) void,
	draw_page: *fn(operation: *PrintOperation, context: *PrintContext, page_nr: int) void,
	end_print: *fn(operation: *PrintOperation, context: *PrintContext) void,
	status_changed: *fn(operation: *PrintOperation) void,
	create_custom_widget: *fn(operation: *PrintOperation) *Widget,
	custom_widget_apply: *fn(operation: *PrintOperation, widget: *Widget) void,
	preview: *fn(operation: *PrintOperation, preview: *PrintOperationPreview, context: *PrintContext, parent: *Window) glib::boolean,
	update_custom_widget: *fn(operation: *PrintOperation, widget: *Widget, setup: *PageSetup, settings: *PrintSettings) void,
	padding: [8]*opaque,
};
export type PrintOperationPreviewIface = struct {
	g_iface: gobject::TypeInterface,
	ready: *fn(preview: *PrintOperationPreview, context: *PrintContext) void,
	got_page_size: *fn(preview: *PrintOperationPreview, context: *PrintContext, page_setup: *PageSetup) void,
	render_page: *fn(preview: *PrintOperationPreview, page_nr: int) void,
	is_selected: *fn(preview: *PrintOperationPreview, page_nr: int) glib::boolean,
	end_preview: *fn(preview: *PrintOperationPreview) void,
	_gtk_reserved1: *fn() void,
	_gtk_reserved2: *fn() void,
	_gtk_reserved3: *fn() void,
	_gtk_reserved4: *fn() void,
	_gtk_reserved5: *fn() void,
	_gtk_reserved6: *fn() void,
	_gtk_reserved7: *fn() void,
	_gtk_reserved8: *fn() void,
};
export type PrintOperationPrivate = *opaque;
export type RangeClass = struct {
	parent_class: WidgetClass,
	value_changed: *fn(range: *Range) void,
	adjust_bounds: *fn(range: *Range, new_value: f64) void,
	move_slider: *fn(range: *Range, scroll: ScrollType) void,
	get_range_border: *fn(range: *Range, border_: *Border) void,
	change_value: *fn(range: *Range, scroll: ScrollType, new_value: f64) glib::boolean,
	padding: [8]*opaque,
};
export type RecentData = struct {
	display_name: *c::char,
	description: *c::char,
	mime_type: *c::char,
	app_name: *c::char,
	app_exec: *c::char,
	groups: **c::char,
	is_private: glib::boolean,
};
export type RecentInfo = *opaque;
export @symbol("gtk_recent_info_create_app_info") fn recent_info_create_app_info(info: *RecentInfo, app_name: *c::char, error: nullable **glib::Error) *gio::AppInfo;
export @symbol("gtk_recent_info_exists") fn recent_info_exists(info: *RecentInfo) glib::boolean;
export @symbol("gtk_recent_info_get_added") fn recent_info_get_added(info: *RecentInfo) *glib::DateTime;
export @symbol("gtk_recent_info_get_age") fn recent_info_get_age(info: *RecentInfo) int;
export @symbol("gtk_recent_info_get_application_info") fn recent_info_get_application_info(info: *RecentInfo, app_name: *c::char, app_exec: **c::char, count: *uint, stamp: **glib::DateTime) glib::boolean;
export @symbol("gtk_recent_info_get_applications") fn recent_info_get_applications(info: *RecentInfo, length: *size) **c::char;
export @symbol("gtk_recent_info_get_description") fn recent_info_get_description(info: *RecentInfo) *c::char;
export @symbol("gtk_recent_info_get_display_name") fn recent_info_get_display_name(info: *RecentInfo) *c::char;
export @symbol("gtk_recent_info_get_gicon") fn recent_info_get_gicon(info: *RecentInfo) *gio::Icon;
export @symbol("gtk_recent_info_get_groups") fn recent_info_get_groups(info: *RecentInfo, length: *size) **c::char;
export @symbol("gtk_recent_info_get_mime_type") fn recent_info_get_mime_type(info: *RecentInfo) *c::char;
export @symbol("gtk_recent_info_get_modified") fn recent_info_get_modified(info: *RecentInfo) *glib::DateTime;
export @symbol("gtk_recent_info_get_private_hint") fn recent_info_get_private_hint(info: *RecentInfo) glib::boolean;
export @symbol("gtk_recent_info_get_short_name") fn recent_info_get_short_name(info: *RecentInfo) *c::char;
export @symbol("gtk_recent_info_get_uri") fn recent_info_get_uri(info: *RecentInfo) *c::char;
export @symbol("gtk_recent_info_get_uri_display") fn recent_info_get_uri_display(info: *RecentInfo) *c::char;
export @symbol("gtk_recent_info_get_visited") fn recent_info_get_visited(info: *RecentInfo) *glib::DateTime;
export @symbol("gtk_recent_info_has_application") fn recent_info_has_application(info: *RecentInfo, app_name: *c::char) glib::boolean;
export @symbol("gtk_recent_info_has_group") fn recent_info_has_group(info: *RecentInfo, group_name: *c::char) glib::boolean;
export @symbol("gtk_recent_info_is_local") fn recent_info_is_local(info: *RecentInfo) glib::boolean;
export @symbol("gtk_recent_info_last_application") fn recent_info_last_application(info: *RecentInfo) *c::char;
export @symbol("gtk_recent_info_match") fn recent_info_match(info_a: *RecentInfo, info_b: *RecentInfo) glib::boolean;
export @symbol("gtk_recent_info_ref") fn recent_info_ref(info: *RecentInfo) *RecentInfo;
export @symbol("gtk_recent_info_unref") fn recent_info_unref(info: *RecentInfo) void;
export type RecentManagerClass = struct {
	parent_class: gobject::ObjectClass,
	changed: *fn(manager: *RecentManager) void,
	_gtk_recent1: *fn() void,
	_gtk_recent2: *fn() void,
	_gtk_recent3: *fn() void,
	_gtk_recent4: *fn() void,
};
export type RecentManagerPrivate = *opaque;
export type RequestedSize = struct {
	data: *opaque,
	minimum_size: int,
	natural_size: int,
};
export type Requisition = struct {
	width: int,
	height: int,
};
export @symbol("gtk_requisition_new") fn requisition_new() *Requisition;
export @symbol("gtk_requisition_copy") fn requisition_copy(requisition: *Requisition) *Requisition;
export @symbol("gtk_requisition_free") fn requisition_free(requisition: *Requisition) void;
export type RootInterface = *opaque;
export type ScaleButtonClass = struct {
	parent_class: WidgetClass,
	value_changed: *fn(button: *ScaleButton, value: f64) void,
	padding: [8]*opaque,
};
export type ScaleClass = struct {
	parent_class: RangeClass,
	get_layout_offsets: *fn(scale: *Scale, x: *int, y: *int) void,
	padding: [8]*opaque,
};
export type ScrollInfo = *opaque;
export @symbol("gtk_scroll_info_new") fn scroll_info_new() *ScrollInfo;
export @symbol("gtk_scroll_info_get_enable_horizontal") fn scroll_info_get_enable_horizontal(self: *ScrollInfo) glib::boolean;
export @symbol("gtk_scroll_info_get_enable_vertical") fn scroll_info_get_enable_vertical(self: *ScrollInfo) glib::boolean;
export @symbol("gtk_scroll_info_ref") fn scroll_info_ref(self: *ScrollInfo) *ScrollInfo;
export @symbol("gtk_scroll_info_set_enable_horizontal") fn scroll_info_set_enable_horizontal(self: *ScrollInfo, horizontal: glib::boolean) void;
export @symbol("gtk_scroll_info_set_enable_vertical") fn scroll_info_set_enable_vertical(self: *ScrollInfo, vertical: glib::boolean) void;
export @symbol("gtk_scroll_info_unref") fn scroll_info_unref(self: *ScrollInfo) void;
export type ScrollableInterface = struct {
	base_iface: gobject::TypeInterface,
	get_border: *fn(scrollable: *Scrollable, border: *Border) glib::boolean,
};
export type SectionModelInterface = struct {
	g_iface: gobject::TypeInterface,
	get_section: *fn(self: *SectionModel, position: uint, out_start: *uint, out_end: *uint) void,
};
export type SelectionFilterModelClass = struct {
	parent_class: gobject::ObjectClass,
};
export type SelectionModelInterface = struct {
	g_iface: gobject::TypeInterface,
	is_selected: *fn(model: *SelectionModel, position: uint) glib::boolean,
	get_selection_in_range: *fn(model: *SelectionModel, position: uint, n_items: uint) *Bitset,
	select_item: *fn(model: *SelectionModel, position: uint, unselect_rest: glib::boolean) glib::boolean,
	unselect_item: *fn(model: *SelectionModel, position: uint) glib::boolean,
	select_range: *fn(model: *SelectionModel, position: uint, n_items: uint, unselect_rest: glib::boolean) glib::boolean,
	unselect_range: *fn(model: *SelectionModel, position: uint, n_items: uint) glib::boolean,
	select_all: *fn(model: *SelectionModel) glib::boolean,
	unselect_all: *fn(model: *SelectionModel) glib::boolean,
	set_selection: *fn(model: *SelectionModel, selected: *Bitset, mask: *Bitset) glib::boolean,
};
export type ShortcutActionClass = *opaque;
export type ShortcutClass = struct {
	parent_class: gobject::ObjectClass,
};
export type ShortcutControllerClass = *opaque;
export type ShortcutLabelClass = *opaque;
export type ShortcutManagerInterface = struct {
	g_iface: gobject::TypeInterface,
	add_controller: *fn(self: *ShortcutManager, controller: *ShortcutController) void,
	remove_controller: *fn(self: *ShortcutManager, controller: *ShortcutController) void,
};
export type ShortcutTriggerClass = *opaque;
export type ShortcutsGroupClass = *opaque;
export type ShortcutsSectionClass = *opaque;
export type ShortcutsShortcutClass = *opaque;
export type SignalActionClass = *opaque;
export type SignalListItemFactoryClass = *opaque;
export type SingleSelectionClass = struct {
	parent_class: gobject::ObjectClass,
};
export type SliceListModelClass = struct {
	parent_class: gobject::ObjectClass,
};
export type SnapshotClass = *opaque;
export type SortListModelClass = struct {
	parent_class: gobject::ObjectClass,
};
export type SorterClass = struct {
	parent_class: gobject::ObjectClass,
	compare: *fn(self: *Sorter, item1: *opaque, item2: *opaque) Ordering,
	get_order: *fn(self: *Sorter) SorterOrder,
	_gtk_reserved1: *fn() void,
	_gtk_reserved2: *fn() void,
	_gtk_reserved3: *fn() void,
	_gtk_reserved4: *fn() void,
	_gtk_reserved5: *fn() void,
	_gtk_reserved6: *fn() void,
	_gtk_reserved7: *fn() void,
	_gtk_reserved8: *fn() void,
};
export type StringFilterClass = struct {
	parent_class: FilterClass,
};
export type StringListClass = struct {
	parent_class: gobject::ObjectClass,
};
export type StringObjectClass = struct {
	parent_class: gobject::ObjectClass,
};
export type StringSorterClass = struct {
	parent_class: SorterClass,
};
export type StyleContextClass = struct {
	parent_class: gobject::ObjectClass,
	changed: *fn(context: *StyleContext) void,
	_gtk_reserved1: *fn() void,
	_gtk_reserved2: *fn() void,
	_gtk_reserved3: *fn() void,
	_gtk_reserved4: *fn() void,
};
export type SymbolicPaintableInterface = struct {
	g_iface: gobject::TypeInterface,
	snapshot_symbolic: *fn(paintable: *SymbolicPaintable, snapshot: *gdk4::Snapshot, width: f64, height: f64, colors: *gdk4::RGBA, n_colors: size) void,
};
export type TextBufferClass = struct {
	parent_class: gobject::ObjectClass,
	insert_text: *fn(buffer: *TextBuffer, pos: *TextIter, new_text: *c::char, new_text_length: int) void,
	insert_paintable: *fn(buffer: *TextBuffer, iter: *TextIter, paintable: *gdk4::Paintable) void,
	insert_child_anchor: *fn(buffer: *TextBuffer, iter: *TextIter, anchor: *TextChildAnchor) void,
	delete_range: *fn(buffer: *TextBuffer, start: *TextIter, end: *TextIter) void,
	changed: *fn(buffer: *TextBuffer) void,
	modified_changed: *fn(buffer: *TextBuffer) void,
	mark_set: *fn(buffer: *TextBuffer, location: *TextIter, mark: *TextMark) void,
	mark_deleted: *fn(buffer: *TextBuffer, mark: *TextMark) void,
	apply_tag: *fn(buffer: *TextBuffer, tag: *TextTag, start: *TextIter, end: *TextIter) void,
	remove_tag: *fn(buffer: *TextBuffer, tag: *TextTag, start: *TextIter, end: *TextIter) void,
	begin_user_action: *fn(buffer: *TextBuffer) void,
	end_user_action: *fn(buffer: *TextBuffer) void,
	paste_done: *fn(buffer: *TextBuffer, clipboard: *gdk4::Clipboard) void,
	undo: *fn(buffer: *TextBuffer) void,
	redo: *fn(buffer: *TextBuffer) void,
	_gtk_reserved1: *fn() void,
	_gtk_reserved2: *fn() void,
	_gtk_reserved3: *fn() void,
	_gtk_reserved4: *fn() void,
};
export type TextBufferPrivate = *opaque;
export type TextChildAnchorClass = struct {
	parent_class: gobject::ObjectClass,
	_gtk_reserved1: *fn() void,
	_gtk_reserved2: *fn() void,
	_gtk_reserved3: *fn() void,
	_gtk_reserved4: *fn() void,
};
export type TextIter = struct {
	dummy1: *opaque,
	dummy2: *opaque,
	dummy3: int,
	dummy4: int,
	dummy5: int,
	dummy6: int,
	dummy7: int,
	dummy8: int,
	dummy9: *opaque,
	dummy10: *opaque,
	dummy11: int,
	dummy12: int,
	dummy13: int,
	dummy14: *opaque,
};
export @symbol("gtk_text_iter_assign") fn text_iter_assign(iter: *TextIter, other: *TextIter) void;
export @symbol("gtk_text_iter_backward_char") fn text_iter_backward_char(iter: *TextIter) glib::boolean;
export @symbol("gtk_text_iter_backward_chars") fn text_iter_backward_chars(iter: *TextIter, count: int) glib::boolean;
export @symbol("gtk_text_iter_backward_cursor_position") fn text_iter_backward_cursor_position(iter: *TextIter) glib::boolean;
export @symbol("gtk_text_iter_backward_cursor_positions") fn text_iter_backward_cursor_positions(iter: *TextIter, count: int) glib::boolean;
export @symbol("gtk_text_iter_backward_find_char") fn text_iter_backward_find_char(iter: *TextIter, pred: TextCharPredicate, user_data: *opaque, limit: *TextIter) glib::boolean;
export @symbol("gtk_text_iter_backward_line") fn text_iter_backward_line(iter: *TextIter) glib::boolean;
export @symbol("gtk_text_iter_backward_lines") fn text_iter_backward_lines(iter: *TextIter, count: int) glib::boolean;
export @symbol("gtk_text_iter_backward_search") fn text_iter_backward_search(iter: *TextIter, str_: *c::char, flags: TextSearchFlags, match_start: *TextIter, match_end: *TextIter, limit: *TextIter) glib::boolean;
export @symbol("gtk_text_iter_backward_sentence_start") fn text_iter_backward_sentence_start(iter: *TextIter) glib::boolean;
export @symbol("gtk_text_iter_backward_sentence_starts") fn text_iter_backward_sentence_starts(iter: *TextIter, count: int) glib::boolean;
export @symbol("gtk_text_iter_backward_to_tag_toggle") fn text_iter_backward_to_tag_toggle(iter: *TextIter, tag: *TextTag) glib::boolean;
export @symbol("gtk_text_iter_backward_visible_cursor_position") fn text_iter_backward_visible_cursor_position(iter: *TextIter) glib::boolean;
export @symbol("gtk_text_iter_backward_visible_cursor_positions") fn text_iter_backward_visible_cursor_positions(iter: *TextIter, count: int) glib::boolean;
export @symbol("gtk_text_iter_backward_visible_line") fn text_iter_backward_visible_line(iter: *TextIter) glib::boolean;
export @symbol("gtk_text_iter_backward_visible_lines") fn text_iter_backward_visible_lines(iter: *TextIter, count: int) glib::boolean;
export @symbol("gtk_text_iter_backward_visible_word_start") fn text_iter_backward_visible_word_start(iter: *TextIter) glib::boolean;
export @symbol("gtk_text_iter_backward_visible_word_starts") fn text_iter_backward_visible_word_starts(iter: *TextIter, count: int) glib::boolean;
export @symbol("gtk_text_iter_backward_word_start") fn text_iter_backward_word_start(iter: *TextIter) glib::boolean;
export @symbol("gtk_text_iter_backward_word_starts") fn text_iter_backward_word_starts(iter: *TextIter, count: int) glib::boolean;
export @symbol("gtk_text_iter_can_insert") fn text_iter_can_insert(iter: *TextIter, default_editability: glib::boolean) glib::boolean;
export @symbol("gtk_text_iter_compare") fn text_iter_compare(lhs: *TextIter, rhs: *TextIter) int;
export @symbol("gtk_text_iter_copy") fn text_iter_copy(iter: *TextIter) *TextIter;
export @symbol("gtk_text_iter_editable") fn text_iter_editable(iter: *TextIter, default_setting: glib::boolean) glib::boolean;
export @symbol("gtk_text_iter_ends_line") fn text_iter_ends_line(iter: *TextIter) glib::boolean;
export @symbol("gtk_text_iter_ends_sentence") fn text_iter_ends_sentence(iter: *TextIter) glib::boolean;
export @symbol("gtk_text_iter_ends_tag") fn text_iter_ends_tag(iter: *TextIter, tag: *TextTag) glib::boolean;
export @symbol("gtk_text_iter_ends_word") fn text_iter_ends_word(iter: *TextIter) glib::boolean;
export @symbol("gtk_text_iter_equal") fn text_iter_equal(lhs: *TextIter, rhs: *TextIter) glib::boolean;
export @symbol("gtk_text_iter_forward_char") fn text_iter_forward_char(iter: *TextIter) glib::boolean;
export @symbol("gtk_text_iter_forward_chars") fn text_iter_forward_chars(iter: *TextIter, count: int) glib::boolean;
export @symbol("gtk_text_iter_forward_cursor_position") fn text_iter_forward_cursor_position(iter: *TextIter) glib::boolean;
export @symbol("gtk_text_iter_forward_cursor_positions") fn text_iter_forward_cursor_positions(iter: *TextIter, count: int) glib::boolean;
export @symbol("gtk_text_iter_forward_find_char") fn text_iter_forward_find_char(iter: *TextIter, pred: TextCharPredicate, user_data: *opaque, limit: *TextIter) glib::boolean;
export @symbol("gtk_text_iter_forward_line") fn text_iter_forward_line(iter: *TextIter) glib::boolean;
export @symbol("gtk_text_iter_forward_lines") fn text_iter_forward_lines(iter: *TextIter, count: int) glib::boolean;
export @symbol("gtk_text_iter_forward_search") fn text_iter_forward_search(iter: *TextIter, str_: *c::char, flags: TextSearchFlags, match_start: *TextIter, match_end: *TextIter, limit: *TextIter) glib::boolean;
export @symbol("gtk_text_iter_forward_sentence_end") fn text_iter_forward_sentence_end(iter: *TextIter) glib::boolean;
export @symbol("gtk_text_iter_forward_sentence_ends") fn text_iter_forward_sentence_ends(iter: *TextIter, count: int) glib::boolean;
export @symbol("gtk_text_iter_forward_to_end") fn text_iter_forward_to_end(iter: *TextIter) void;
export @symbol("gtk_text_iter_forward_to_line_end") fn text_iter_forward_to_line_end(iter: *TextIter) glib::boolean;
export @symbol("gtk_text_iter_forward_to_tag_toggle") fn text_iter_forward_to_tag_toggle(iter: *TextIter, tag: *TextTag) glib::boolean;
export @symbol("gtk_text_iter_forward_visible_cursor_position") fn text_iter_forward_visible_cursor_position(iter: *TextIter) glib::boolean;
export @symbol("gtk_text_iter_forward_visible_cursor_positions") fn text_iter_forward_visible_cursor_positions(iter: *TextIter, count: int) glib::boolean;
export @symbol("gtk_text_iter_forward_visible_line") fn text_iter_forward_visible_line(iter: *TextIter) glib::boolean;
export @symbol("gtk_text_iter_forward_visible_lines") fn text_iter_forward_visible_lines(iter: *TextIter, count: int) glib::boolean;
export @symbol("gtk_text_iter_forward_visible_word_end") fn text_iter_forward_visible_word_end(iter: *TextIter) glib::boolean;
export @symbol("gtk_text_iter_forward_visible_word_ends") fn text_iter_forward_visible_word_ends(iter: *TextIter, count: int) glib::boolean;
export @symbol("gtk_text_iter_forward_word_end") fn text_iter_forward_word_end(iter: *TextIter) glib::boolean;
export @symbol("gtk_text_iter_forward_word_ends") fn text_iter_forward_word_ends(iter: *TextIter, count: int) glib::boolean;
export @symbol("gtk_text_iter_free") fn text_iter_free(iter: *TextIter) void;
export @symbol("gtk_text_iter_get_buffer") fn text_iter_get_buffer(iter: *TextIter) *TextBuffer;
export @symbol("gtk_text_iter_get_bytes_in_line") fn text_iter_get_bytes_in_line(iter: *TextIter) int;
export @symbol("gtk_text_iter_get_char") fn text_iter_get_char(iter: *TextIter) rune;
export @symbol("gtk_text_iter_get_chars_in_line") fn text_iter_get_chars_in_line(iter: *TextIter) int;
export @symbol("gtk_text_iter_get_child_anchor") fn text_iter_get_child_anchor(iter: *TextIter) *TextChildAnchor;
export @symbol("gtk_text_iter_get_language") fn text_iter_get_language(iter: *TextIter) *pango::Language;
export @symbol("gtk_text_iter_get_line") fn text_iter_get_line(iter: *TextIter) int;
export @symbol("gtk_text_iter_get_line_index") fn text_iter_get_line_index(iter: *TextIter) int;
export @symbol("gtk_text_iter_get_line_offset") fn text_iter_get_line_offset(iter: *TextIter) int;
export @symbol("gtk_text_iter_get_marks") fn text_iter_get_marks(iter: *TextIter) *glib::SList;
export @symbol("gtk_text_iter_get_offset") fn text_iter_get_offset(iter: *TextIter) int;
export @symbol("gtk_text_iter_get_paintable") fn text_iter_get_paintable(iter: *TextIter) *gdk4::Paintable;
export @symbol("gtk_text_iter_get_slice") fn text_iter_get_slice(start: *TextIter, end: *TextIter) *c::char;
export @symbol("gtk_text_iter_get_tags") fn text_iter_get_tags(iter: *TextIter) *glib::SList;
export @symbol("gtk_text_iter_get_text") fn text_iter_get_text(start: *TextIter, end: *TextIter) *c::char;
export @symbol("gtk_text_iter_get_toggled_tags") fn text_iter_get_toggled_tags(iter: *TextIter, toggled_on: glib::boolean) *glib::SList;
export @symbol("gtk_text_iter_get_visible_line_index") fn text_iter_get_visible_line_index(iter: *TextIter) int;
export @symbol("gtk_text_iter_get_visible_line_offset") fn text_iter_get_visible_line_offset(iter: *TextIter) int;
export @symbol("gtk_text_iter_get_visible_slice") fn text_iter_get_visible_slice(start: *TextIter, end: *TextIter) *c::char;
export @symbol("gtk_text_iter_get_visible_text") fn text_iter_get_visible_text(start: *TextIter, end: *TextIter) *c::char;
export @symbol("gtk_text_iter_has_tag") fn text_iter_has_tag(iter: *TextIter, tag: *TextTag) glib::boolean;
export @symbol("gtk_text_iter_in_range") fn text_iter_in_range(iter: *TextIter, start: *TextIter, end: *TextIter) glib::boolean;
export @symbol("gtk_text_iter_inside_sentence") fn text_iter_inside_sentence(iter: *TextIter) glib::boolean;
export @symbol("gtk_text_iter_inside_word") fn text_iter_inside_word(iter: *TextIter) glib::boolean;
export @symbol("gtk_text_iter_is_cursor_position") fn text_iter_is_cursor_position(iter: *TextIter) glib::boolean;
export @symbol("gtk_text_iter_is_end") fn text_iter_is_end(iter: *TextIter) glib::boolean;
export @symbol("gtk_text_iter_is_start") fn text_iter_is_start(iter: *TextIter) glib::boolean;
export @symbol("gtk_text_iter_order") fn text_iter_order(first: *TextIter, second: *TextIter) void;
export @symbol("gtk_text_iter_set_line") fn text_iter_set_line(iter: *TextIter, line_number: int) void;
export @symbol("gtk_text_iter_set_line_index") fn text_iter_set_line_index(iter: *TextIter, byte_on_line: int) void;
export @symbol("gtk_text_iter_set_line_offset") fn text_iter_set_line_offset(iter: *TextIter, char_on_line: int) void;
export @symbol("gtk_text_iter_set_offset") fn text_iter_set_offset(iter: *TextIter, char_offset: int) void;
export @symbol("gtk_text_iter_set_visible_line_index") fn text_iter_set_visible_line_index(iter: *TextIter, byte_on_line: int) void;
export @symbol("gtk_text_iter_set_visible_line_offset") fn text_iter_set_visible_line_offset(iter: *TextIter, char_on_line: int) void;
export @symbol("gtk_text_iter_starts_line") fn text_iter_starts_line(iter: *TextIter) glib::boolean;
export @symbol("gtk_text_iter_starts_sentence") fn text_iter_starts_sentence(iter: *TextIter) glib::boolean;
export @symbol("gtk_text_iter_starts_tag") fn text_iter_starts_tag(iter: *TextIter, tag: *TextTag) glib::boolean;
export @symbol("gtk_text_iter_starts_word") fn text_iter_starts_word(iter: *TextIter) glib::boolean;
export @symbol("gtk_text_iter_toggles_tag") fn text_iter_toggles_tag(iter: *TextIter, tag: *TextTag) glib::boolean;
export type TextMarkClass = struct {
	parent_class: gobject::ObjectClass,
	padding: [8]*opaque,
};
export type TextTagClass = struct {
	parent_class: gobject::ObjectClass,
	padding: [8]*opaque,
};
export type TextTagPrivate = *opaque;
export type TextViewClass = struct {
	parent_class: WidgetClass,
	move_cursor: *fn(text_view: *TextView, step: MovementStep, count: int, extend_selection: glib::boolean) void,
	set_anchor: *fn(text_view: *TextView) void,
	insert_at_cursor: *fn(text_view: *TextView, str_: *c::char) void,
	delete_from_cursor: *fn(text_view: *TextView, type_: DeleteType, count: int) void,
	backspace: *fn(text_view: *TextView) void,
	cut_clipboard: *fn(text_view: *TextView) void,
	copy_clipboard: *fn(text_view: *TextView) void,
	paste_clipboard: *fn(text_view: *TextView) void,
	toggle_overwrite: *fn(text_view: *TextView) void,
	create_buffer: *fn(text_view: *TextView) *TextBuffer,
	snapshot_layer: *fn(text_view: *TextView, layer: TextViewLayer, snapshot: *Snapshot) void,
	extend_selection: *fn(text_view: *TextView, granularity: TextExtendSelection, location: *TextIter, start: *TextIter, end: *TextIter) glib::boolean,
	insert_emoji: *fn(text_view: *TextView) void,
	padding: [8]*opaque,
};
export type TextViewPrivate = *opaque;
export type ToggleButtonClass = struct {
	parent_class: ButtonClass,
	toggled: *fn(toggle_button: *ToggleButton) void,
	padding: [8]*opaque,
};
export type TreeDragDestIface = struct {
	g_iface: gobject::TypeInterface,
	drag_data_received: *fn(drag_dest: *TreeDragDest, dest: *TreePath, value: *gobject::Value) glib::boolean,
	row_drop_possible: *fn(drag_dest: *TreeDragDest, dest_path: *TreePath, value: *gobject::Value) glib::boolean,
};
export type TreeDragSourceIface = struct {
	g_iface: gobject::TypeInterface,
	row_draggable: *fn(drag_source: *TreeDragSource, path: *TreePath) glib::boolean,
	drag_data_get: *fn(drag_source: *TreeDragSource, path: *TreePath) *gdk4::ContentProvider,
	drag_data_delete: *fn(drag_source: *TreeDragSource, path: *TreePath) glib::boolean,
};
export type TreeExpanderClass = struct {
	parent_class: WidgetClass,
};
export type TreeIter = struct {
	stamp: int,
	user_data: *opaque,
	user_data2: *opaque,
	user_data3: *opaque,
};
export @symbol("gtk_tree_iter_copy") fn tree_iter_copy(iter: *TreeIter) *TreeIter;
export @symbol("gtk_tree_iter_free") fn tree_iter_free(iter: *TreeIter) void;
export type TreeListModelClass = struct {
	parent_class: gobject::ObjectClass,
};
export type TreeListRowClass = struct {
	parent_class: gobject::ObjectClass,
};
export type TreeListRowSorterClass = struct {
	parent_class: SorterClass,
};
export type TreeModelFilterClass = struct {
	parent_class: gobject::ObjectClass,
	visible: *fn(self: *TreeModelFilter, child_model: *TreeModel, iter: *TreeIter) glib::boolean,
	modify: *fn(self: *TreeModelFilter, child_model: *TreeModel, iter: *TreeIter, value: *gobject::Value, column: int) void,
	padding: [8]*opaque,
};
export type TreeModelFilterPrivate = *opaque;
export type TreeModelIface = struct {
	g_iface: gobject::TypeInterface,
	row_changed: *fn(tree_model: *TreeModel, path: *TreePath, iter: *TreeIter) void,
	row_inserted: *fn(tree_model: *TreeModel, path: *TreePath, iter: *TreeIter) void,
	row_has_child_toggled: *fn(tree_model: *TreeModel, path: *TreePath, iter: *TreeIter) void,
	row_deleted: *fn(tree_model: *TreeModel, path: *TreePath) void,
	rows_reordered: *fn(tree_model: *TreeModel, path: *TreePath, iter: *TreeIter, new_order: *int) void,
	get_flags: *fn(tree_model: *TreeModel) TreeModelFlags,
	get_n_columns: *fn(tree_model: *TreeModel) int,
	get_column_type: *fn(tree_model: *TreeModel, index_: int) glib::Type,
	get_iter: *fn(tree_model: *TreeModel, iter: *TreeIter, path: *TreePath) glib::boolean,
	get_path: *fn(tree_model: *TreeModel, iter: *TreeIter) *TreePath,
	get_value: *fn(tree_model: *TreeModel, iter: *TreeIter, column: int, value: *gobject::Value) void,
	iter_next: *fn(tree_model: *TreeModel, iter: *TreeIter) glib::boolean,
	iter_previous: *fn(tree_model: *TreeModel, iter: *TreeIter) glib::boolean,
	iter_children: *fn(tree_model: *TreeModel, iter: *TreeIter, parent: *TreeIter) glib::boolean,
	iter_has_child: *fn(tree_model: *TreeModel, iter: *TreeIter) glib::boolean,
	iter_n_children: *fn(tree_model: *TreeModel, iter: *TreeIter) int,
	iter_nth_child: *fn(tree_model: *TreeModel, iter: *TreeIter, parent: *TreeIter, n: int) glib::boolean,
	iter_parent: *fn(tree_model: *TreeModel, iter: *TreeIter, child: *TreeIter) glib::boolean,
	ref_node: *fn(tree_model: *TreeModel, iter: *TreeIter) void,
	unref_node: *fn(tree_model: *TreeModel, iter: *TreeIter) void,
};
export type TreeModelSortClass = struct {
	parent_class: gobject::ObjectClass,
	padding: [8]*opaque,
};
export type TreeModelSortPrivate = *opaque;
export type TreePath = *opaque;
export @symbol("gtk_tree_path_new") fn tree_path_new() *TreePath;
export @symbol("gtk_tree_path_new_first") fn tree_path_new_first() *TreePath;
export @symbol("gtk_tree_path_new_from_indices") fn tree_path_new_from_indices(first_index: int, ...) *TreePath;
export @symbol("gtk_tree_path_new_from_indicesv") fn tree_path_new_from_indicesv(indices: *int, length: size) *TreePath;
export @symbol("gtk_tree_path_new_from_string") fn tree_path_new_from_string(path: *c::char) *TreePath;
export @symbol("gtk_tree_path_append_index") fn tree_path_append_index(path: *TreePath, index_: int) void;
export @symbol("gtk_tree_path_compare") fn tree_path_compare(a: *TreePath, b: *TreePath) int;
export @symbol("gtk_tree_path_copy") fn tree_path_copy(path: *TreePath) *TreePath;
export @symbol("gtk_tree_path_down") fn tree_path_down(path: *TreePath) void;
export @symbol("gtk_tree_path_free") fn tree_path_free(path: *TreePath) void;
export @symbol("gtk_tree_path_get_depth") fn tree_path_get_depth(path: *TreePath) int;
export @symbol("gtk_tree_path_get_indices") fn tree_path_get_indices(path: *TreePath) *int;
export @symbol("gtk_tree_path_get_indices_with_depth") fn tree_path_get_indices_with_depth(path: *TreePath, depth: *int) *int;
export @symbol("gtk_tree_path_is_ancestor") fn tree_path_is_ancestor(path: *TreePath, descendant: *TreePath) glib::boolean;
export @symbol("gtk_tree_path_is_descendant") fn tree_path_is_descendant(path: *TreePath, ancestor: *TreePath) glib::boolean;
export @symbol("gtk_tree_path_next") fn tree_path_next(path: *TreePath) void;
export @symbol("gtk_tree_path_prepend_index") fn tree_path_prepend_index(path: *TreePath, index_: int) void;
export @symbol("gtk_tree_path_prev") fn tree_path_prev(path: *TreePath) glib::boolean;
export @symbol("gtk_tree_path_to_string") fn tree_path_to_string(path: *TreePath) *c::char;
export @symbol("gtk_tree_path_up") fn tree_path_up(path: *TreePath) glib::boolean;
export type TreeRowReference = *opaque;
export @symbol("gtk_tree_row_reference_new") fn tree_row_reference_new(model: *TreeModel, path: *TreePath) *TreeRowReference;
export @symbol("gtk_tree_row_reference_new_proxy") fn tree_row_reference_new_proxy(proxy: *gobject::Object, model: *TreeModel, path: *TreePath) *TreeRowReference;
export @symbol("gtk_tree_row_reference_copy") fn tree_row_reference_copy(reference: *TreeRowReference) *TreeRowReference;
export @symbol("gtk_tree_row_reference_free") fn tree_row_reference_free(reference: *TreeRowReference) void;
export @symbol("gtk_tree_row_reference_get_model") fn tree_row_reference_get_model(reference: *TreeRowReference) *TreeModel;
export @symbol("gtk_tree_row_reference_get_path") fn tree_row_reference_get_path(reference: *TreeRowReference) *TreePath;
export @symbol("gtk_tree_row_reference_valid") fn tree_row_reference_valid(reference: *TreeRowReference) glib::boolean;
export @symbol("gtk_tree_row_reference_deleted") fn tree_row_reference_deleted(proxy: *gobject::Object, path: *TreePath) void;
export @symbol("gtk_tree_row_reference_inserted") fn tree_row_reference_inserted(proxy: *gobject::Object, path: *TreePath) void;
export @symbol("gtk_tree_row_reference_reordered") fn tree_row_reference_reordered(proxy: *gobject::Object, path: *TreePath, iter: *TreeIter, new_order: *int) void;
export type TreeSortableIface = struct {
	g_iface: gobject::TypeInterface,
	sort_column_changed: *fn(sortable: *TreeSortable) void,
	get_sort_column_id: *fn(sortable: *TreeSortable, sort_column_id: *int, order: *SortType) glib::boolean,
	set_sort_column_id: *fn(sortable: *TreeSortable, sort_column_id: int, order: SortType) void,
	set_sort_func: *fn(sortable: *TreeSortable, sort_column_id: int, sort_func: TreeIterCompareFunc, user_data: *opaque, destroy: glib::DestroyNotify) void,
	set_default_sort_func: *fn(sortable: *TreeSortable, sort_func: TreeIterCompareFunc, user_data: *opaque, destroy: glib::DestroyNotify) void,
	has_default_sort_func: *fn(sortable: *TreeSortable) glib::boolean,
};
export type TreeStoreClass = struct {
	parent_class: gobject::ObjectClass,
	padding: [8]*opaque,
};
export type TreeStorePrivate = *opaque;
export type TreeViewClass = struct {
	parent_class: WidgetClass,
	row_activated: *fn(tree_view: *TreeView, path: *TreePath, column: *TreeViewColumn) void,
	test_expand_row: *fn(tree_view: *TreeView, iter: *TreeIter, path: *TreePath) glib::boolean,
	test_collapse_row: *fn(tree_view: *TreeView, iter: *TreeIter, path: *TreePath) glib::boolean,
	row_expanded: *fn(tree_view: *TreeView, iter: *TreeIter, path: *TreePath) void,
	row_collapsed: *fn(tree_view: *TreeView, iter: *TreeIter, path: *TreePath) void,
	columns_changed: *fn(tree_view: *TreeView) void,
	cursor_changed: *fn(tree_view: *TreeView) void,
	move_cursor: *fn(tree_view: *TreeView, step: MovementStep, count: int, extend: glib::boolean, modify: glib::boolean) glib::boolean,
	select_all: *fn(tree_view: *TreeView) glib::boolean,
	unselect_all: *fn(tree_view: *TreeView) glib::boolean,
	select_cursor_row: *fn(tree_view: *TreeView, start_editing: glib::boolean) glib::boolean,
	toggle_cursor_row: *fn(tree_view: *TreeView) glib::boolean,
	expand_collapse_cursor_row: *fn(tree_view: *TreeView, logical: glib::boolean, expand: glib::boolean, open_all: glib::boolean) glib::boolean,
	select_cursor_parent: *fn(tree_view: *TreeView) glib::boolean,
	start_interactive_search: *fn(tree_view: *TreeView) glib::boolean,
	_reserved: [16]*opaque,
};
export type UriLauncherClass = struct {
	parent_class: gobject::ObjectClass,
};
export type VideoClass = struct {
	parent_class: WidgetClass,
};
export type WidgetClass = struct {
	parent_class: gobject::InitiallyUnownedClass,
	show: *fn(widget: *Widget) void,
	hide: *fn(widget: *Widget) void,
	map: *fn(widget: *Widget) void,
	unmap: *fn(widget: *Widget) void,
	realize: *fn(widget: *Widget) void,
	unrealize: *fn(widget: *Widget) void,
	root: *fn(widget: *Widget) void,
	unroot: *fn(widget: *Widget) void,
	size_allocate: *fn(widget: *Widget, width: int, height: int, baseline: int) void,
	state_flags_changed: *fn(widget: *Widget, previous_state_flags: StateFlags) void,
	direction_changed: *fn(widget: *Widget, previous_direction: TextDirection) void,
	get_request_mode: *fn(widget: *Widget) SizeRequestMode,
	measure: *fn(widget: *Widget, orientation: Orientation, for_size: int, minimum: *int, natural: *int, minimum_baseline: *int, natural_baseline: *int) void,
	mnemonic_activate: *fn(widget: *Widget, group_cycling: glib::boolean) glib::boolean,
	grab_focus: *fn(widget: *Widget) glib::boolean,
	focus: *fn(widget: *Widget, direction: DirectionType) glib::boolean,
	set_focus_child: *fn(widget: *Widget, child: *Widget) void,
	move_focus: *fn(widget: *Widget, direction: DirectionType) void,
	keynav_failed: *fn(widget: *Widget, direction: DirectionType) glib::boolean,
	query_tooltip: *fn(widget: *Widget, x: int, y: int, keyboard_tooltip: glib::boolean, tooltip: *Tooltip) glib::boolean,
	compute_expand: *fn(widget: *Widget, hexpand_p: *glib::boolean, vexpand_p: *glib::boolean) void,
	css_changed: *fn(widget: *Widget, change: *CssStyleChange) void,
	system_setting_changed: *fn(widget: *Widget, settings: SystemSetting) void,
	snapshot: *fn(widget: *Widget, snapshot: *Snapshot) void,
	contains: *fn(widget: *Widget, x: f64, y: f64) glib::boolean,
	priv: *WidgetClassPrivate,
	padding: [8]*opaque,
};
export @symbol("gtk_widget_class_add_binding") fn widget_class_add_binding(widget_class: *WidgetClass, keyval: uint, mods: gdk4::ModifierType, callback: ShortcutFunc, format_string: *c::char, ...) void;
export @symbol("gtk_widget_class_add_binding_action") fn widget_class_add_binding_action(widget_class: *WidgetClass, keyval: uint, mods: gdk4::ModifierType, action_name: *c::char, format_string: *c::char, ...) void;
export @symbol("gtk_widget_class_add_binding_signal") fn widget_class_add_binding_signal(widget_class: *WidgetClass, keyval: uint, mods: gdk4::ModifierType, signal: *c::char, format_string: *c::char, ...) void;
export @symbol("gtk_widget_class_add_shortcut") fn widget_class_add_shortcut(widget_class: *WidgetClass, shortcut: *Shortcut) void;
export @symbol("gtk_widget_class_bind_template_callback_full") fn widget_class_bind_template_callback_full(widget_class: *WidgetClass, callback_name: *c::char, callback_symbol: gobject::Callback) void;
export @symbol("gtk_widget_class_bind_template_child_full") fn widget_class_bind_template_child_full(widget_class: *WidgetClass, name: *c::char, internal_child: glib::boolean, struct_offset: c::ssize) void;
export @symbol("gtk_widget_class_get_accessible_role") fn widget_class_get_accessible_role(widget_class: *WidgetClass) AccessibleRole;
export @symbol("gtk_widget_class_get_activate_signal") fn widget_class_get_activate_signal(widget_class: *WidgetClass) uint;
export @symbol("gtk_widget_class_get_css_name") fn widget_class_get_css_name(widget_class: *WidgetClass) *c::char;
export @symbol("gtk_widget_class_get_layout_manager_type") fn widget_class_get_layout_manager_type(widget_class: *WidgetClass) glib::Type;
export @symbol("gtk_widget_class_install_action") fn widget_class_install_action(widget_class: *WidgetClass, action_name: *c::char, parameter_type: *c::char, activate: WidgetActionActivateFunc) void;
export @symbol("gtk_widget_class_install_property_action") fn widget_class_install_property_action(widget_class: *WidgetClass, action_name: *c::char, property_name: *c::char) void;
export @symbol("gtk_widget_class_query_action") fn widget_class_query_action(widget_class: *WidgetClass, index_: uint, owner: *glib::Type, action_name: **c::char, parameter_type: **glib::VariantType, property_name: **c::char) glib::boolean;
export @symbol("gtk_widget_class_set_accessible_role") fn widget_class_set_accessible_role(widget_class: *WidgetClass, accessible_role: AccessibleRole) void;
export @symbol("gtk_widget_class_set_activate_signal") fn widget_class_set_activate_signal(widget_class: *WidgetClass, signal_id: uint) void;
export @symbol("gtk_widget_class_set_activate_signal_from_name") fn widget_class_set_activate_signal_from_name(widget_class: *WidgetClass, signal_name: *c::char) void;
export @symbol("gtk_widget_class_set_css_name") fn widget_class_set_css_name(widget_class: *WidgetClass, name: *c::char) void;
export @symbol("gtk_widget_class_set_layout_manager_type") fn widget_class_set_layout_manager_type(widget_class: *WidgetClass, type_: glib::Type) void;
export @symbol("gtk_widget_class_set_template") fn widget_class_set_template(widget_class: *WidgetClass, template_bytes: *glib::Bytes) void;
export @symbol("gtk_widget_class_set_template_from_resource") fn widget_class_set_template_from_resource(widget_class: *WidgetClass, resource_name: *c::char) void;
export @symbol("gtk_widget_class_set_template_scope") fn widget_class_set_template_scope(widget_class: *WidgetClass, scope: *BuilderScope) void;
export type WidgetClassPrivate = *opaque;
export type WidgetPaintableClass = struct {
	parent_class: gobject::ObjectClass,
};
export type WidgetPrivate = *opaque;
export type WindowClass = struct {
	parent_class: WidgetClass,
	activate_focus: *fn(window: *Window) void,
	activate_default: *fn(window: *Window) void,
	keys_changed: *fn(window: *Window) void,
	enable_debugging: *fn(window: *Window, toggle: glib::boolean) glib::boolean,
	close_request: *fn(window: *Window) glib::boolean,
	padding: [8]*opaque,
};
export type WindowControlsClass = struct {
	parent_class: WidgetClass,
};
export type WindowGroupClass = struct {
	parent_class: gobject::ObjectClass,
	_gtk_reserved1: *fn() void,
	_gtk_reserved2: *fn() void,
	_gtk_reserved3: *fn() void,
	_gtk_reserved4: *fn() void,
};
export type WindowGroupPrivate = *opaque;
export type WindowHandleClass = struct {
	parent_class: WidgetClass,
};
export type AccessibleAutocomplete = enum uint {
	NONE = 0,
	INLINE = 1,
	LIST = 2,
	BOTH = 3,
};
export type AccessibleInvalidState = enum uint {
	FALSE_ = 0,
	TRUE_ = 1,
	GRAMMAR = 2,
	SPELLING = 3,
};
export type AccessiblePlatformState = enum uint {
	FOCUSABLE = 0,
	FOCUSED = 1,
	ACTIVE = 2,
};
export type AccessibleProperty = enum uint {
	AUTOCOMPLETE = 0,
	DESCRIPTION = 1,
	HAS_POPUP = 2,
	KEY_SHORTCUTS = 3,
	LABEL = 4,
	LEVEL = 5,
	MODAL = 6,
	MULTI_LINE = 7,
	MULTI_SELECTABLE = 8,
	ORIENTATION = 9,
	PLACEHOLDER = 10,
	READ_ONLY = 11,
	REQUIRED = 12,
	ROLE_DESCRIPTION = 13,
	SORT = 14,
	VALUE_MAX = 15,
	VALUE_MIN = 16,
	VALUE_NOW = 17,
	VALUE_TEXT = 18,
};
export @symbol("gtk_accessible_property_init_value") fn accessible_property_init_value(property: AccessibleProperty, value: *gobject::Value) void;
export type AccessibleRelation = enum uint {
	ACTIVE_DESCENDANT = 0,
	COL_COUNT = 1,
	COL_INDEX = 2,
	COL_INDEX_TEXT = 3,
	COL_SPAN = 4,
	CONTROLS = 5,
	DESCRIBED_BY = 6,
	DETAILS = 7,
	ERROR_MESSAGE = 8,
	FLOW_TO = 9,
	LABELLED_BY = 10,
	OWNS = 11,
	POS_IN_SET = 12,
	ROW_COUNT = 13,
	ROW_INDEX = 14,
	ROW_INDEX_TEXT = 15,
	ROW_SPAN = 16,
	SET_SIZE = 17,
};
export @symbol("gtk_accessible_relation_init_value") fn accessible_relation_init_value(relation: AccessibleRelation, value: *gobject::Value) void;
export type AccessibleRole = enum uint {
	ALERT = 0,
	ALERT_DIALOG = 1,
	BANNER = 2,
	BUTTON = 3,
	CAPTION = 4,
	CELL = 5,
	CHECKBOX = 6,
	COLUMN_HEADER = 7,
	COMBO_BOX = 8,
	COMMAND = 9,
	COMPOSITE = 10,
	DIALOG = 11,
	DOCUMENT = 12,
	FEED = 13,
	FORM = 14,
	GENERIC = 15,
	GRID = 16,
	GRID_CELL = 17,
	GROUP = 18,
	HEADING = 19,
	IMG = 20,
	INPUT = 21,
	LABEL = 22,
	LANDMARK = 23,
	LEGEND = 24,
	LINK = 25,
	LIST = 26,
	LIST_BOX = 27,
	LIST_ITEM = 28,
	LOG = 29,
	MAIN = 30,
	MARQUEE = 31,
	MATH = 32,
	METER = 33,
	MENU = 34,
	MENU_BAR = 35,
	MENU_ITEM = 36,
	MENU_ITEM_CHECKBOX = 37,
	MENU_ITEM_RADIO = 38,
	NAVIGATION = 39,
	NONE = 40,
	NOTE = 41,
	OPTION = 42,
	PRESENTATION = 43,
	PROGRESS_BAR = 44,
	RADIO = 45,
	RADIO_GROUP = 46,
	RANGE = 47,
	REGION = 48,
	ROW = 49,
	ROW_GROUP = 50,
	ROW_HEADER = 51,
	SCROLLBAR = 52,
	SEARCH = 53,
	SEARCH_BOX = 54,
	SECTION = 55,
	SECTION_HEAD = 56,
	SELECT = 57,
	SEPARATOR = 58,
	SLIDER = 59,
	SPIN_BUTTON = 60,
	STATUS = 61,
	STRUCTURE = 62,
	SWITCH_ = 63,
	TAB = 64,
	TABLE = 65,
	TAB_LIST = 66,
	TAB_PANEL = 67,
	TEXT_BOX = 68,
	TIME = 69,
	TIMER = 70,
	TOOLBAR = 71,
	TOOLTIP = 72,
	TREE = 73,
	TREE_GRID = 74,
	TREE_ITEM = 75,
	WIDGET = 76,
	WINDOW = 77,
	TOGGLE_BUTTON = 78,
	APPLICATION = 79,
};
export type AccessibleSort = enum uint {
	NONE = 0,
	ASCENDING = 1,
	DESCENDING = 2,
	OTHER = 3,
};
export type AccessibleState = enum uint {
	BUSY = 0,
	CHECKED = 1,
	DISABLED = 2,
	EXPANDED = 3,
	HIDDEN = 4,
	INVALID = 5,
	PRESSED = 6,
	SELECTED = 7,
	VISITED = 8,
};
export @symbol("gtk_accessible_state_init_value") fn accessible_state_init_value(state: AccessibleState, value: *gobject::Value) void;
export type AccessibleTristate = enum uint {
	FALSE_ = 0,
	TRUE_ = 1,
	MIXED = 2,
};
export type Align = enum uint {
	FILL = 0,
	START = 1,
	END = 2,
	CENTER = 3,
	BASELINE_FILL = 4,
	BASELINE = 4,
	BASELINE_CENTER = 5,
};
export type ArrowType = enum uint {
	UP = 0,
	DOWN = 1,
	LEFT = 2,
	RIGHT = 3,
	NONE = 4,
};
export type AssistantPageType = enum uint {
	CONTENT = 0,
	INTRO = 1,
	CONFIRM = 2,
	SUMMARY = 3,
	PROGRESS = 4,
	CUSTOM = 5,
};
export type BaselinePosition = enum uint {
	TOP = 0,
	CENTER = 1,
	BOTTOM = 2,
};
export type BorderStyle = enum uint {
	NONE = 0,
	HIDDEN = 1,
	SOLID = 2,
	INSET = 3,
	OUTSET = 4,
	DOTTED = 5,
	DASHED = 6,
	DOUBLE = 7,
	GROOVE = 8,
	RIDGE = 9,
};
export type BuilderError = enum uint {
	INVALID_TYPE_FUNCTION = 0,
	UNHANDLED_TAG = 1,
	MISSING_ATTRIBUTE = 2,
	INVALID_ATTRIBUTE = 3,
	INVALID_TAG = 4,
	MISSING_PROPERTY_VALUE = 5,
	INVALID_VALUE = 6,
	VERSION_MISMATCH = 7,
	DUPLICATE_ID = 8,
	OBJECT_TYPE_REFUSED = 9,
	TEMPLATE_MISMATCH = 10,
	INVALID_PROPERTY = 11,
	INVALID_SIGNAL = 12,
	INVALID_ID = 13,
	INVALID_FUNCTION = 14,
};
export @symbol("gtk_builder_error_quark") fn builder_error_quark() glib::Quark;
export type ButtonsType = enum uint {
	NONE = 0,
	OK = 1,
	CLOSE = 2,
	CANCEL = 3,
	YES_NO = 4,
	OK_CANCEL = 5,
};
export type CellRendererAccelMode = enum uint {
	GTK = 0,
	OTHER = 1,
};
export type CellRendererMode = enum uint {
	INERT = 0,
	ACTIVATABLE = 1,
	EDITABLE = 2,
};
export type Collation = enum uint {
	NONE = 0,
	UNICODE = 1,
	FILENAME = 2,
};
export type ConstraintAttribute = enum uint {
	NONE = 0,
	LEFT = 1,
	RIGHT = 2,
	TOP = 3,
	BOTTOM = 4,
	START = 5,
	END = 6,
	WIDTH = 7,
	HEIGHT = 8,
	CENTER_X = 9,
	CENTER_Y = 10,
	BASELINE = 11,
};
export type ConstraintRelation = enum uint {
	LE = -1,
	EQ = 0,
	GE = 1,
};
export type ConstraintStrength = enum uint {
	REQUIRED = 1001001000,
	STRONG = 1000000000,
	MEDIUM = 1000,
	WEAK = 1,
};
export type ConstraintVflParserError = enum uint {
	SYMBOL = 0,
	ATTRIBUTE = 1,
	VIEW = 2,
	METRIC = 3,
	PRIORITY = 4,
	RELATION = 5,
};
export @symbol("gtk_constraint_vfl_parser_error_quark") fn constraint_vfl_parser_error_quark() glib::Quark;
export type ContentFit = enum uint {
	FILL = 0,
	CONTAIN = 1,
	COVER = 2,
	SCALE_DOWN = 3,
};
export type CornerType = enum uint {
	TOP_LEFT = 0,
	BOTTOM_LEFT = 1,
	TOP_RIGHT = 2,
	BOTTOM_RIGHT = 3,
};
export type CssParserError = enum uint {
	FAILED = 0,
	SYNTAX = 1,
	IMPORT = 2,
	NAME = 3,
	UNKNOWN_VALUE = 4,
};
export type CssParserWarning = enum uint {
	DEPRECATED = 0,
	SYNTAX = 1,
	UNIMPLEMENTED = 2,
};
export type DeleteType = enum uint {
	CHARS = 0,
	WORD_ENDS = 1,
	WORDS = 2,
	DISPLAY_LINES = 3,
	DISPLAY_LINE_ENDS = 4,
	PARAGRAPH_ENDS = 5,
	PARAGRAPHS = 6,
	WHITESPACE = 7,
};
export type DialogError = enum uint {
	FAILED = 0,
	CANCELLED = 1,
	DISMISSED = 2,
};
export @symbol("gtk_dialog_error_quark") fn dialog_error_quark() glib::Quark;
export type DirectionType = enum uint {
	TAB_FORWARD = 0,
	TAB_BACKWARD = 1,
	UP = 2,
	DOWN = 3,
	LEFT = 4,
	RIGHT = 5,
};
export type EditableProperties = enum uint {
	PROP_TEXT = 0,
	PROP_CURSOR_POSITION = 1,
	PROP_SELECTION_BOUND = 2,
	PROP_EDITABLE = 3,
	PROP_WIDTH_CHARS = 4,
	PROP_MAX_WIDTH_CHARS = 5,
	PROP_XALIGN = 6,
	PROP_ENABLE_UNDO = 7,
	NUM_PROPERTIES = 8,
};
export type EntryIconPosition = enum uint {
	PRIMARY = 0,
	SECONDARY = 1,
};
export type EventSequenceState = enum uint {
	NONE = 0,
	CLAIMED = 1,
	DENIED = 2,
};
export type FileChooserAction = enum uint {
	OPEN = 0,
	SAVE = 1,
	SELECT_FOLDER = 2,
};
export type FileChooserError = enum uint {
	NONEXISTENT = 0,
	BAD_FILENAME = 1,
	ALREADY_EXISTS = 2,
	INCOMPLETE_HOSTNAME = 3,
};
export @symbol("gtk_file_chooser_error_quark") fn file_chooser_error_quark() glib::Quark;
export type FilterChange = enum uint {
	DIFFERENT = 0,
	LESS_STRICT = 1,
	MORE_STRICT = 2,
};
export type FilterMatch = enum uint {
	SOME = 0,
	NONE = 1,
	ALL = 2,
};
export type FontLevel = enum uint {
	FAMILY = 0,
	FACE = 1,
	FONT = 2,
	FEATURES = 3,
};
export type IconSize = enum uint {
	INHERIT = 0,
	NORMAL = 1,
	LARGE = 2,
};
export type IconThemeError = enum uint {
	NOT_FOUND = 0,
	FAILED = 1,
};
export @symbol("gtk_icon_theme_error_quark") fn icon_theme_error_quark() glib::Quark;
export type IconViewDropPosition = enum uint {
	NO_DROP = 0,
	DROP_INTO = 1,
	DROP_LEFT = 2,
	DROP_RIGHT = 3,
	DROP_ABOVE = 4,
	DROP_BELOW = 5,
};
export type ImageType = enum uint {
	EMPTY = 0,
	ICON_NAME = 1,
	GICON = 2,
	PAINTABLE = 3,
};
export type InputPurpose = enum uint {
	FREE_FORM = 0,
	ALPHA = 1,
	DIGITS = 2,
	NUMBER = 3,
	PHONE = 4,
	URL = 5,
	EMAIL = 6,
	NAME = 7,
	PASSWORD = 8,
	PIN = 9,
	TERMINAL = 10,
};
export type InscriptionOverflow = enum uint {
	CLIP = 0,
	ELLIPSIZE_START = 1,
	ELLIPSIZE_MIDDLE = 2,
	ELLIPSIZE_END = 3,
};
export type Justification = enum uint {
	LEFT = 0,
	RIGHT = 1,
	CENTER = 2,
	FILL = 3,
};
export type LevelBarMode = enum uint {
	CONTINUOUS = 0,
	DISCRETE = 1,
};
export type License = enum uint {
	UNKNOWN = 0,
	CUSTOM = 1,
	GPL_2_0 = 2,
	GPL_3_0 = 3,
	LGPL_2_1 = 4,
	LGPL_3_0 = 5,
	BSD = 6,
	MIT_X11 = 7,
	ARTISTIC = 8,
	GPL_2_0_ONLY = 9,
	GPL_3_0_ONLY = 10,
	LGPL_2_1_ONLY = 11,
	LGPL_3_0_ONLY = 12,
	AGPL_3_0 = 13,
	AGPL_3_0_ONLY = 14,
	BSD_3 = 15,
	APACHE_2_0 = 16,
	MPL_2_0 = 17,
};
export type ListTabBehavior = enum uint {
	ALL = 0,
	ITEM = 1,
	CELL = 2,
};
export type MessageType = enum uint {
	INFO = 0,
	WARNING = 1,
	QUESTION = 2,
	ERROR = 3,
	OTHER = 4,
};
export type MovementStep = enum uint {
	LOGICAL_POSITIONS = 0,
	VISUAL_POSITIONS = 1,
	WORDS = 2,
	DISPLAY_LINES = 3,
	DISPLAY_LINE_ENDS = 4,
	PARAGRAPHS = 5,
	PARAGRAPH_ENDS = 6,
	PAGES = 7,
	BUFFER_ENDS = 8,
	HORIZONTAL_PAGES = 9,
};
export type NaturalWrapMode = enum uint {
	INHERIT = 0,
	NONE = 1,
	WORD = 2,
};
export type NotebookTab = enum uint {
	FIRST = 0,
	LAST = 1,
};
export type NumberUpLayout = enum uint {
	LRTB = 0,
	LRBT = 1,
	RLTB = 2,
	RLBT = 3,
	TBLR = 4,
	TBRL = 5,
	BTLR = 6,
	BTRL = 7,
};
export type Ordering = enum uint {
	SMALLER = -1,
	EQUAL = 0,
	LARGER = 1,
};
export @symbol("gtk_ordering_from_cmpfunc") fn ordering_from_cmpfunc(cmpfunc_result: int) Ordering;
export type Orientation = enum uint {
	HORIZONTAL = 0,
	VERTICAL = 1,
};
export type Overflow = enum uint {
	VISIBLE = 0,
	HIDDEN = 1,
};
export type PackType = enum uint {
	START = 0,
	END = 1,
};
export type PadActionType = enum uint {
	BUTTON = 0,
	RING = 1,
	STRIP = 2,
};
export type PageOrientation = enum uint {
	PORTRAIT = 0,
	LANDSCAPE = 1,
	REVERSE_PORTRAIT = 2,
	REVERSE_LANDSCAPE = 3,
};
export type PageSet = enum uint {
	ALL = 0,
	EVEN = 1,
	ODD = 2,
};
export type PanDirection = enum uint {
	LEFT = 0,
	RIGHT = 1,
	UP = 2,
	DOWN = 3,
};
export type PolicyType = enum uint {
	ALWAYS = 0,
	AUTOMATIC = 1,
	NEVER = 2,
	EXTERNAL = 3,
};
export type PositionType = enum uint {
	LEFT = 0,
	RIGHT = 1,
	TOP = 2,
	BOTTOM = 3,
};
export type PrintDuplex = enum uint {
	SIMPLEX = 0,
	HORIZONTAL = 1,
	VERTICAL = 2,
};
export type PrintError = enum uint {
	GENERAL = 0,
	INTERNAL_ERROR = 1,
	NOMEM = 2,
	INVALID_FILE = 3,
};
export @symbol("gtk_print_error_quark") fn print_error_quark() glib::Quark;
export type PrintOperationAction = enum uint {
	PRINT_DIALOG = 0,
	PRINT = 1,
	PREVIEW = 2,
	EXPORT_ = 3,
};
export type PrintOperationResult = enum uint {
	ERROR = 0,
	APPLY = 1,
	CANCEL = 2,
	IN_PROGRESS = 3,
};
export type PrintPages = enum uint {
	ALL = 0,
	CURRENT = 1,
	RANGES = 2,
	SELECTION = 3,
};
export type PrintQuality = enum uint {
	LOW = 0,
	NORMAL = 1,
	HIGH = 2,
	DRAFT = 3,
};
export type PrintStatus = enum uint {
	INITIAL = 0,
	PREPARING = 1,
	GENERATING_DATA = 2,
	SENDING_DATA = 3,
	PENDING = 4,
	PENDING_ISSUE = 5,
	PRINTING = 6,
	FINISHED = 7,
	FINISHED_ABORTED = 8,
};
export type PropagationLimit = enum uint {
	NONE = 0,
	SAME_NATIVE = 1,
};
export type PropagationPhase = enum uint {
	NONE = 0,
	CAPTURE = 1,
	BUBBLE = 2,
	TARGET = 3,
};
export type RecentManagerError = enum uint {
	NOT_FOUND = 0,
	INVALID_URI = 1,
	INVALID_ENCODING = 2,
	NOT_REGISTERED = 3,
	READ = 4,
	WRITE = 5,
	UNKNOWN = 6,
};
export @symbol("gtk_recent_manager_error_quark") fn recent_manager_error_quark() glib::Quark;
export type ResponseType = enum uint {
	NONE = -1,
	REJECT = -2,
	ACCEPT = -3,
	DELETE_EVENT = -4,
	OK = -5,
	CANCEL = -6,
	CLOSE = -7,
	YES = -8,
	NO = -9,
	APPLY = -10,
	HELP = -11,
};
export type RevealerTransitionType = enum uint {
	NONE = 0,
	CROSSFADE = 1,
	SLIDE_RIGHT = 2,
	SLIDE_LEFT = 3,
	SLIDE_UP = 4,
	SLIDE_DOWN = 5,
	SWING_RIGHT = 6,
	SWING_LEFT = 7,
	SWING_UP = 8,
	SWING_DOWN = 9,
};
export type ScrollStep = enum uint {
	STEPS = 0,
	PAGES = 1,
	ENDS = 2,
	HORIZONTAL_STEPS = 3,
	HORIZONTAL_PAGES = 4,
	HORIZONTAL_ENDS = 5,
};
export type ScrollType = enum uint {
	NONE = 0,
	JUMP = 1,
	STEP_BACKWARD = 2,
	STEP_FORWARD = 3,
	PAGE_BACKWARD = 4,
	PAGE_FORWARD = 5,
	STEP_UP = 6,
	STEP_DOWN = 7,
	PAGE_UP = 8,
	PAGE_DOWN = 9,
	STEP_LEFT = 10,
	STEP_RIGHT = 11,
	PAGE_LEFT = 12,
	PAGE_RIGHT = 13,
	START = 14,
	END = 15,
};
export type ScrollablePolicy = enum uint {
	MINIMUM = 0,
	NATURAL = 1,
};
export type SelectionMode = enum uint {
	NONE = 0,
	SINGLE = 1,
	BROWSE = 2,
	MULTIPLE = 3,
};
export type SensitivityType = enum uint {
	AUTO = 0,
	ON = 1,
	OFF = 2,
};
export type ShortcutScope = enum uint {
	LOCAL = 0,
	MANAGED = 1,
	GLOBAL = 2,
};
export type ShortcutType = enum uint {
	ACCELERATOR = 0,
	GESTURE_PINCH = 1,
	GESTURE_STRETCH = 2,
	GESTURE_ROTATE_CLOCKWISE = 3,
	GESTURE_ROTATE_COUNTERCLOCKWISE = 4,
	GESTURE_TWO_FINGER_SWIPE_LEFT = 5,
	GESTURE_TWO_FINGER_SWIPE_RIGHT = 6,
	GESTURE = 7,
	GESTURE_SWIPE_LEFT = 8,
	GESTURE_SWIPE_RIGHT = 9,
};
export type SizeGroupMode = enum uint {
	NONE = 0,
	HORIZONTAL = 1,
	VERTICAL = 2,
	BOTH = 3,
};
export type SizeRequestMode = enum uint {
	HEIGHT_FOR_WIDTH = 0,
	WIDTH_FOR_HEIGHT = 1,
	CONSTANT_SIZE = 2,
};
export type SortType = enum uint {
	ASCENDING = 0,
	DESCENDING = 1,
};
export type SorterChange = enum uint {
	DIFFERENT = 0,
	INVERTED = 1,
	LESS_STRICT = 2,
	MORE_STRICT = 3,
};
export type SorterOrder = enum uint {
	PARTIAL = 0,
	NONE = 1,
	TOTAL = 2,
};
export type SpinButtonUpdatePolicy = enum uint {
	ALWAYS = 0,
	IF_VALID = 1,
};
export type SpinType = enum uint {
	STEP_FORWARD = 0,
	STEP_BACKWARD = 1,
	PAGE_FORWARD = 2,
	PAGE_BACKWARD = 3,
	HOME = 4,
	END = 5,
	USER_DEFINED = 6,
};
export type StackTransitionType = enum uint {
	NONE = 0,
	CROSSFADE = 1,
	SLIDE_RIGHT = 2,
	SLIDE_LEFT = 3,
	SLIDE_UP = 4,
	SLIDE_DOWN = 5,
	SLIDE_LEFT_RIGHT = 6,
	SLIDE_UP_DOWN = 7,
	OVER_UP = 8,
	OVER_DOWN = 9,
	OVER_LEFT = 10,
	OVER_RIGHT = 11,
	UNDER_UP = 12,
	UNDER_DOWN = 13,
	UNDER_LEFT = 14,
	UNDER_RIGHT = 15,
	OVER_UP_DOWN = 16,
	OVER_DOWN_UP = 17,
	OVER_LEFT_RIGHT = 18,
	OVER_RIGHT_LEFT = 19,
	ROTATE_LEFT = 20,
	ROTATE_RIGHT = 21,
	ROTATE_LEFT_RIGHT = 22,
};
export type StringFilterMatchMode = enum uint {
	EXACT = 0,
	SUBSTRING = 1,
	PREFIX = 2,
};
export type SymbolicColor = enum uint {
	FOREGROUND = 0,
	ERROR = 1,
	WARNING = 2,
	SUCCESS = 3,
};
export type SystemSetting = enum uint {
	DPI = 0,
	FONT_NAME = 1,
	FONT_CONFIG = 2,
	DISPLAY = 3,
	ICON_THEME = 4,
};
export type TextDirection = enum uint {
	NONE = 0,
	LTR = 1,
	RTL = 2,
};
export type TextExtendSelection = enum uint {
	WORD = 0,
	LINE = 1,
};
export type TextViewLayer = enum uint {
	BELOW_TEXT = 0,
	ABOVE_TEXT = 1,
};
export type TextWindowType = enum uint {
	WIDGET = 1,
	TEXT = 2,
	LEFT = 3,
	RIGHT = 4,
	TOP = 5,
	BOTTOM = 6,
};
export type TreeViewColumnSizing = enum uint {
	GROW_ONLY = 0,
	AUTOSIZE = 1,
	FIXED = 2,
};
export type TreeViewDropPosition = enum uint {
	BEFORE = 0,
	AFTER = 1,
	INTO_OR_BEFORE = 2,
	INTO_OR_AFTER = 3,
};
export type TreeViewGridLines = enum uint {
	NONE = 0,
	HORIZONTAL = 1,
	VERTICAL = 2,
	BOTH = 3,
};
export type Unit = enum uint {
	NONE = 0,
	POINTS = 1,
	INCH = 2,
	MM = 3,
};
export type WrapMode = enum uint {
	NONE = 0,
	CHAR = 1,
	WORD = 2,
	WORD_CHAR = 3,
};
export @symbol("gtk_accelerator_get_default_mod_mask") fn accelerator_get_default_mod_mask() gdk4::ModifierType;
export @symbol("gtk_accelerator_get_label") fn accelerator_get_label(accelerator_key: uint, accelerator_mods: gdk4::ModifierType) *c::char;
export @symbol("gtk_accelerator_get_label_with_keycode") fn accelerator_get_label_with_keycode(display: *gdk4::Display, accelerator_key: uint, keycode: uint, accelerator_mods: gdk4::ModifierType) *c::char;
export @symbol("gtk_accelerator_name") fn accelerator_name(accelerator_key: uint, accelerator_mods: gdk4::ModifierType) *c::char;
export @symbol("gtk_accelerator_name_with_keycode") fn accelerator_name_with_keycode(display: *gdk4::Display, accelerator_key: uint, keycode: uint, accelerator_mods: gdk4::ModifierType) *c::char;
export @symbol("gtk_accelerator_parse") fn accelerator_parse(accelerator: *c::char, accelerator_key: *uint, accelerator_mods: *gdk4::ModifierType) glib::boolean;
export @symbol("gtk_accelerator_parse_with_keycode") fn accelerator_parse_with_keycode(accelerator: *c::char, display: *gdk4::Display, accelerator_key: *uint, accelerator_codes: **uint, accelerator_mods: *gdk4::ModifierType) glib::boolean;
export @symbol("gtk_accelerator_valid") fn accelerator_valid(keyval: uint, modifiers: gdk4::ModifierType) glib::boolean;
export @symbol("gtk_check_version") fn check_version(required_major: uint, required_minor: uint, required_micro: uint) *c::char;
export @symbol("gtk_css_parser_error_quark") fn css_parser_error_quark() glib::Quark;
export @symbol("gtk_css_parser_warning_quark") fn css_parser_warning_quark() glib::Quark;
export @symbol("gtk_disable_setlocale") fn disable_setlocale() void;
export @symbol("gtk_distribute_natural_allocation") fn distribute_natural_allocation(extra_space: int, n_requested_sizes: uint, sizes: *RequestedSize) int;
export @symbol("gtk_enumerate_printers") fn enumerate_printers(func: PrinterFunc, data: *opaque, destroy: glib::DestroyNotify, wait: glib::boolean) void;
export @symbol("gtk_get_binary_age") fn get_binary_age() uint;
export @symbol("gtk_get_debug_flags") fn get_debug_flags() DebugFlags;
export @symbol("gtk_get_default_language") fn get_default_language() *pango::Language;
export @symbol("gtk_get_interface_age") fn get_interface_age() uint;
export @symbol("gtk_get_locale_direction") fn get_locale_direction() TextDirection;
export @symbol("gtk_get_major_version") fn get_major_version() uint;
export @symbol("gtk_get_micro_version") fn get_micro_version() uint;
export @symbol("gtk_get_minor_version") fn get_minor_version() uint;
export @symbol("gtk_hsv_to_rgb") fn hsv_to_rgb(h: f32, s: f32, v: f32, r: *f32, g: *f32, b: *f32) void;
export @symbol("gtk_init") fn init() void;
export @symbol("gtk_init_check") fn init_check() glib::boolean;
export @symbol("gtk_is_initialized") fn is_initialized() glib::boolean;
export @symbol("gtk_param_spec_expression") fn param_spec_expression(name: *c::char, nick: *c::char, blurb: *c::char, flags: gobject::ParamFlags) *gobject::ParamSpec;
export @symbol("gtk_print_run_page_setup_dialog") fn print_run_page_setup_dialog(parent: *Window, page_setup: *PageSetup, settings: *PrintSettings) *PageSetup;
export @symbol("gtk_print_run_page_setup_dialog_async") fn print_run_page_setup_dialog_async(parent: *Window, page_setup: *PageSetup, settings: *PrintSettings, done_cb: PageSetupDoneFunc, data: *opaque) void;
export @symbol("gtk_render_activity") fn render_activity(context: *StyleContext, cr: *cairo::Context, x: f64, y: f64, width: f64, height: f64) void;
export @symbol("gtk_render_arrow") fn render_arrow(context: *StyleContext, cr: *cairo::Context, angle: f64, x: f64, y: f64, size_: f64) void;
export @symbol("gtk_render_background") fn render_background(context: *StyleContext, cr: *cairo::Context, x: f64, y: f64, width: f64, height: f64) void;
export @symbol("gtk_render_check") fn render_check(context: *StyleContext, cr: *cairo::Context, x: f64, y: f64, width: f64, height: f64) void;
export @symbol("gtk_render_expander") fn render_expander(context: *StyleContext, cr: *cairo::Context, x: f64, y: f64, width: f64, height: f64) void;
export @symbol("gtk_render_focus") fn render_focus(context: *StyleContext, cr: *cairo::Context, x: f64, y: f64, width: f64, height: f64) void;
export @symbol("gtk_render_frame") fn render_frame(context: *StyleContext, cr: *cairo::Context, x: f64, y: f64, width: f64, height: f64) void;
export @symbol("gtk_render_handle") fn render_handle(context: *StyleContext, cr: *cairo::Context, x: f64, y: f64, width: f64, height: f64) void;
export @symbol("gtk_render_icon") fn render_icon(context: *StyleContext, cr: *cairo::Context, texture: *gdk4::Texture, x: f64, y: f64) void;
export @symbol("gtk_render_layout") fn render_layout(context: *StyleContext, cr: *cairo::Context, x: f64, y: f64, layout: *pango::Layout) void;
export @symbol("gtk_render_line") fn render_line(context: *StyleContext, cr: *cairo::Context, x0: f64, y0: f64, x1: f64, y1: f64) void;
export @symbol("gtk_render_option") fn render_option(context: *StyleContext, cr: *cairo::Context, x: f64, y: f64, width: f64, height: f64) void;
export @symbol("gtk_rgb_to_hsv") fn rgb_to_hsv(r: f32, g: f32, b: f32, h: *f32, s: *f32, v: *f32) void;
export @symbol("gtk_set_debug_flags") fn set_debug_flags(flags: DebugFlags) void;
export @symbol("gtk_show_about_dialog") fn show_about_dialog(parent: *Window, first_property_name: *c::char, ...) void;
export @symbol("gtk_show_uri") fn show_uri(parent: *Window, uri: *c::char, timestamp: u32) void;
export @symbol("gtk_show_uri_full") fn show_uri_full(parent: *Window, uri: *c::char, timestamp: u32, cancellable: *gio::Cancellable, callback: gio::AsyncReadyCallback, user_data: *opaque) void;
export @symbol("gtk_show_uri_full_finish") fn show_uri_full_finish(parent: *Window, result: *gio::AsyncResult, error: nullable **glib::Error) glib::boolean;
export @symbol("gtk_test_accessible_assertion_message_role") fn test_accessible_assertion_message_role(domain: *c::char, file: *c::char, line: int, func: *c::char, expr: *c::char, accessible: *Accessible, expected_role: AccessibleRole, actual_role: AccessibleRole) void;
export @symbol("gtk_test_accessible_check_property") fn test_accessible_check_property(accessible: *Accessible, property: AccessibleProperty, ...) *c::char;
export @symbol("gtk_test_accessible_check_relation") fn test_accessible_check_relation(accessible: *Accessible, relation: AccessibleRelation, ...) *c::char;
export @symbol("gtk_test_accessible_check_state") fn test_accessible_check_state(accessible: *Accessible, state: AccessibleState, ...) *c::char;
export @symbol("gtk_test_accessible_has_property") fn test_accessible_has_property(accessible: *Accessible, property: AccessibleProperty) glib::boolean;
export @symbol("gtk_test_accessible_has_relation") fn test_accessible_has_relation(accessible: *Accessible, relation: AccessibleRelation) glib::boolean;
export @symbol("gtk_test_accessible_has_role") fn test_accessible_has_role(accessible: *Accessible, role: AccessibleRole) glib::boolean;
export @symbol("gtk_test_accessible_has_state") fn test_accessible_has_state(accessible: *Accessible, state: AccessibleState) glib::boolean;
export @symbol("gtk_test_init") fn test_init(argcp: *int, argvp: ***c::char, ...) void;
export @symbol("gtk_test_list_all_types") fn test_list_all_types(n_types: *uint) *glib::Type;
export @symbol("gtk_test_register_all_types") fn test_register_all_types() void;
export @symbol("gtk_test_widget_wait_for_draw") fn test_widget_wait_for_draw(widget: *Widget) void;
export @symbol("gtk_tree_create_row_drag_content") fn tree_create_row_drag_content(tree_model: *TreeModel, path: *TreePath) *gdk4::ContentProvider;
export @symbol("gtk_tree_get_row_drag_data") fn tree_get_row_drag_data(value: *gobject::Value, tree_model: **TreeModel, path: **TreePath) glib::boolean;
export @symbol("gtk_value_dup_expression") fn value_dup_expression(value: *gobject::Value) *Expression;
export @symbol("gtk_value_get_expression") fn value_get_expression(value: *gobject::Value) *Expression;
export @symbol("gtk_value_set_expression") fn value_set_expression(value: *gobject::Value, expression: *Expression) void;
export @symbol("gtk_value_take_expression") fn value_take_expression(value: *gobject::Value, expression: *Expression) void;
export type ApplicationInhibitFlags = enum uint {
	LOGOUT = 1,
	SWITCH_ = 2,
	SUSPEND = 4,
	IDLE = 8,
};
export type BuilderClosureFlags = enum uint {
	SWAPPED = 1,
};
export type CellRendererState = enum uint {
	SELECTED = 1,
	PRELIT = 2,
	INSENSITIVE = 4,
	SORTED = 8,
	FOCUSED = 16,
	EXPANDABLE = 32,
	EXPANDED = 64,
};
export type DebugFlags = enum uint {
	TEXT = 1,
	TREE = 2,
	KEYBINDINGS = 4,
	MODULES = 8,
	GEOMETRY = 16,
	ICONTHEME = 32,
	PRINTING = 64,
	BUILDER = 128,
	SIZE_REQUEST = 256,
	NO_CSS_CACHE = 512,
	INTERACTIVE = 1024,
	ACTIONS = 4096,
	LAYOUT = 8192,
	SNAPSHOT = 16384,
	CONSTRAINTS = 32768,
	BUILDER_OBJECTS = 65536,
	A11Y = 131072,
	ICONFALLBACK = 262144,
	INVERT_TEXT_DIR = 524288,
};
export type DialogFlags = enum uint {
	MODAL = 1,
	DESTROY_WITH_PARENT = 2,
	USE_HEADER_BAR = 4,
};
export type EventControllerScrollFlags = enum uint {
	NONE = 0,
	VERTICAL = 1,
	HORIZONTAL = 2,
	DISCRETE = 4,
	KINETIC = 8,
	BOTH_AXES = 3,
};
export type FontChooserLevel = enum uint {
	FAMILY = 0,
	STYLE = 1,
	SIZE_ = 2,
	VARIATIONS = 4,
	FEATURES = 8,
};
export type IconLookupFlags = enum uint {
	FORCE_REGULAR = 1,
	FORCE_SYMBOLIC = 2,
	PRELOAD = 4,
};
export type InputHints = enum uint {
	NONE = 0,
	SPELLCHECK = 1,
	NO_SPELLCHECK = 2,
	WORD_COMPLETION = 4,
	LOWERCASE = 8,
	UPPERCASE_CHARS = 16,
	UPPERCASE_WORDS = 32,
	UPPERCASE_SENTENCES = 64,
	INHIBIT_OSK = 128,
	VERTICAL_WRITING = 256,
	EMOJI = 512,
	NO_EMOJI = 1024,
	PRIVATE = 2048,
};
export type ListScrollFlags = enum uint {
	NONE = 0,
	FOCUS = 1,
	SELECT = 2,
};
export type PickFlags = enum uint {
	DEFAULT = 0,
	INSENSITIVE = 1,
	NON_TARGETABLE = 2,
};
export type PopoverMenuFlags = enum uint {
	NESTED = 1,
};
export type PrintCapabilities = enum uint {
	PAGE_SET = 1,
	COPIES = 2,
	COLLATE = 4,
	REVERSE = 8,
	SCALE = 16,
	GENERATE_PDF = 32,
	GENERATE_PS = 64,
	PREVIEW = 128,
	NUMBER_UP = 256,
	NUMBER_UP_LAYOUT = 512,
};
export type ShortcutActionFlags = enum uint {
	EXCLUSIVE = 1,
};
export type StateFlags = enum uint {
	NORMAL = 0,
	ACTIVE = 1,
	PRELIGHT = 2,
	SELECTED = 4,
	INSENSITIVE = 8,
	INCONSISTENT = 16,
	FOCUSED = 32,
	BACKDROP = 64,
	DIR_LTR = 128,
	DIR_RTL = 256,
	LINK = 512,
	VISITED = 1024,
	CHECKED = 2048,
	DROP_ACTIVE = 4096,
	FOCUS_VISIBLE = 8192,
	FOCUS_WITHIN = 16384,
};
export type StyleContextPrintFlags = enum uint {
	NONE = 0,
	RECURSE = 1,
	SHOW_STYLE = 2,
	SHOW_CHANGE = 4,
};
export type TextSearchFlags = enum uint {
	VISIBLE_ONLY = 1,
	TEXT_ONLY = 2,
	CASE_INSENSITIVE = 4,
};
export type TreeModelFlags = enum uint {
	ITERS_PERSIST = 1,
	LIST_ONLY = 2,
};
export type AssistantPageFunc = *fn(current_page: int, data: *opaque) int;
export type CellAllocCallback = *fn(renderer: *CellRenderer, cell_area: *gdk4::Rectangle, cell_background: *gdk4::Rectangle, data: *opaque) glib::boolean;
export type CellCallback = *fn(renderer: *CellRenderer, data: *opaque) glib::boolean;
export type CellLayoutDataFunc = *fn(cell_layout: *CellLayout, cell: *CellRenderer, tree_model: *TreeModel, iter: *TreeIter, data: *opaque) void;
export type CustomAllocateFunc = *fn(widget: *Widget, width: int, height: int, baseline: int) void;
export type CustomFilterFunc = *fn(item: *opaque, user_data: *opaque) glib::boolean;
export type CustomMeasureFunc = *fn(widget: *Widget, orientation: Orientation, for_size: int, minimum: *int, natural: *int, minimum_baseline: *int, natural_baseline: *int) void;
export type CustomRequestModeFunc = *fn(widget: *Widget) SizeRequestMode;
export type DrawingAreaDrawFunc = *fn(drawing_area: *DrawingArea, cr: *cairo::Context, width: int, height: int, user_data: *opaque) void;
export type EntryCompletionMatchFunc = *fn(completion: *EntryCompletion, key: *c::char, iter: *TreeIter, user_data: *opaque) glib::boolean;
export type ExpressionNotify = *fn(user_data: *opaque) void;
export type FlowBoxCreateWidgetFunc = *fn(item: *opaque, user_data: *opaque) *Widget;
export type FlowBoxFilterFunc = *fn(child: *FlowBoxChild, user_data: *opaque) glib::boolean;
export type FlowBoxForeachFunc = *fn(box: *FlowBox, child: *FlowBoxChild, user_data: *opaque) void;
export type FlowBoxSortFunc = *fn(child1: *FlowBoxChild, child2: *FlowBoxChild, user_data: *opaque) int;
export type FontFilterFunc = *fn(family: *pango::FontFamily, face: *pango::FontFace, data: *opaque) glib::boolean;
export type IconViewForeachFunc = *fn(icon_view: *IconView, path: *TreePath, data: *opaque) void;
export type ListBoxCreateWidgetFunc = *fn(item: *opaque, user_data: *opaque) *Widget;
export type ListBoxFilterFunc = *fn(row: *ListBoxRow, user_data: *opaque) glib::boolean;
export type ListBoxForeachFunc = *fn(box: *ListBox, row: *ListBoxRow, user_data: *opaque) void;
export type ListBoxSortFunc = *fn(row1: *ListBoxRow, row2: *ListBoxRow, user_data: *opaque) int;
export type ListBoxUpdateHeaderFunc = *fn(row: *ListBoxRow, before: *ListBoxRow, user_data: *opaque) void;
export type MapListModelMapFunc = *fn(item: *opaque, user_data: *opaque) *opaque;
export type MenuButtonCreatePopupFunc = *fn(menu_button: *MenuButton, user_data: *opaque) void;
export type PageSetupDoneFunc = *fn(page_setup: *PageSetup, data: *opaque) void;
export type PrintJobCompleteFunc = *fn(print_job: *PrintJob, user_data: *opaque, error: *glib::Error) void;
export type PrintSettingsFunc = *fn(key: *c::char, value: *c::char, user_data: *opaque) void;
export type PrinterFunc = *fn(printer: *Printer, data: *opaque) glib::boolean;
export type ScaleFormatValueFunc = *fn(scale: *Scale, value: f64, user_data: *opaque) *c::char;
export type ShortcutFunc = *fn(widget: *Widget, args: *glib::Variant, user_data: *opaque) glib::boolean;
export type TextCharPredicate = *fn(ch: rune, user_data: *opaque) glib::boolean;
export type TextTagTableForeach = *fn(tag: *TextTag, data: *opaque) void;
export type TickCallback = *fn(widget: *Widget, frame_clock: *gdk4::FrameClock, user_data: *opaque) glib::boolean;
export type TreeCellDataFunc = *fn(tree_column: *TreeViewColumn, cell: *CellRenderer, tree_model: *TreeModel, iter: *TreeIter, data: *opaque) void;
export type TreeIterCompareFunc = *fn(model: *TreeModel, a: *TreeIter, b: *TreeIter, user_data: *opaque) int;
export type TreeListModelCreateModelFunc = *fn(item: *opaque, user_data: *opaque) *gio::ListModel;
export type TreeModelFilterModifyFunc = *fn(model: *TreeModel, iter: *TreeIter, value: *gobject::Value, column: int, data: *opaque) void;
export type TreeModelFilterVisibleFunc = *fn(model: *TreeModel, iter: *TreeIter, data: *opaque) glib::boolean;
export type TreeModelForeachFunc = *fn(model: *TreeModel, path: *TreePath, iter: *TreeIter, data: *opaque) glib::boolean;
export type TreeSelectionForeachFunc = *fn(model: *TreeModel, path: *TreePath, iter: *TreeIter, data: *opaque) void;
export type TreeSelectionFunc = *fn(selection: *TreeSelection, model: *TreeModel, path: *TreePath, path_currently_selected: glib::boolean, data: *opaque) glib::boolean;
export type TreeViewColumnDropFunc = *fn(tree_view: *TreeView, column: *TreeViewColumn, prev_column: *TreeViewColumn, next_column: *TreeViewColumn, data: *opaque) glib::boolean;
export type TreeViewMappingFunc = *fn(tree_view: *TreeView, path: *TreePath, user_data: *opaque) void;
export type TreeViewRowSeparatorFunc = *fn(model: *TreeModel, iter: *TreeIter, data: *opaque) glib::boolean;
export type TreeViewSearchEqualFunc = *fn(model: *TreeModel, column: int, key: *c::char, iter: *TreeIter, search_data: *opaque) glib::boolean;
export type WidgetActionActivateFunc = *fn(widget: *Widget, action_name: *c::char, parameter: *glib::Variant) void;
