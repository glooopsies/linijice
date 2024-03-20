use glib;
use gobject;
use types::c;
export type AttributeSet = glib::SList;
export type State = u64;
export type GObjectAccessible = struct {
	parent: Object,
};
export @symbol("atk_gobject_accessible_get_object") fn gobject_accessible_get_object(obj: *GObjectAccessible) *gobject::Object;
export @symbol("atk_gobject_accessible_for_object") fn gobject_accessible_for_object(obj: *gobject::Object) *Object;
export type Hyperlink = struct {
	parent: gobject::Object,
};
export @symbol("atk_hyperlink_get_end_index") fn hyperlink_get_end_index(link_: *Hyperlink) int;
export @symbol("atk_hyperlink_get_n_anchors") fn hyperlink_get_n_anchors(link_: *Hyperlink) int;
export @symbol("atk_hyperlink_get_object") fn hyperlink_get_object(link_: *Hyperlink, i: int) *Object;
export @symbol("atk_hyperlink_get_start_index") fn hyperlink_get_start_index(link_: *Hyperlink) int;
export @symbol("atk_hyperlink_get_uri") fn hyperlink_get_uri(link_: *Hyperlink, i: int) *c::char;
export @symbol("atk_hyperlink_is_inline") fn hyperlink_is_inline(link_: *Hyperlink) glib::boolean;
export @symbol("atk_hyperlink_is_selected_link") fn hyperlink_is_selected_link(link_: *Hyperlink) glib::boolean;
export @symbol("atk_hyperlink_is_valid") fn hyperlink_is_valid(link_: *Hyperlink) glib::boolean;
export fn hyperlink_connect_link_activated(
	instance: *Hyperlink,
	handler: *fn(instance: *Hyperlink, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"link-activated\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export type Misc = struct {
	parent: gobject::Object,
};
export @symbol("atk_misc_threads_enter") fn misc_threads_enter(misc: *Misc) void;
export @symbol("atk_misc_threads_leave") fn misc_threads_leave(misc: *Misc) void;
export @symbol("atk_misc_get_instance") fn misc_get_instance() *Misc;
export type NoOpObject = struct {
	parent: Object,
};
export @symbol("atk_no_op_object_new") fn no_op_object_new(obj: *gobject::Object) *Object;
export type NoOpObjectFactory = struct {
	parent: ObjectFactory,
};
export @symbol("atk_no_op_object_factory_new") fn no_op_object_factory_new() *ObjectFactory;
export type Object = struct {
	parent: gobject::Object,
	description: *c::char,
	name: *c::char,
	accessible_parent: *Object,
	role: Role,
	relation_set: *RelationSet,
	layer: Layer,
};
export @symbol("atk_object_add_relationship") fn object_add_relationship(object: *Object, relationship: RelationType, target: *Object) glib::boolean;
export @symbol("atk_object_connect_property_change_handler") fn object_connect_property_change_handler(accessible: *Object, handler: *PropertyChangeHandler) uint;
export @symbol("atk_object_get_accessible_id") fn object_get_accessible_id(accessible: *Object) *c::char;
export @symbol("atk_object_get_attributes") fn object_get_attributes(accessible: *Object) *AttributeSet;
export @symbol("atk_object_get_description") fn object_get_description(accessible: *Object) *c::char;
export @symbol("atk_object_get_index_in_parent") fn object_get_index_in_parent(accessible: *Object) int;
export @symbol("atk_object_get_layer") fn object_get_layer(accessible: *Object) Layer;
export @symbol("atk_object_get_mdi_zorder") fn object_get_mdi_zorder(accessible: *Object) int;
export @symbol("atk_object_get_n_accessible_children") fn object_get_n_accessible_children(accessible: *Object) int;
export @symbol("atk_object_get_name") fn object_get_name(accessible: *Object) *c::char;
export @symbol("atk_object_get_object_locale") fn object_get_object_locale(accessible: *Object) *c::char;
export @symbol("atk_object_get_parent") fn object_get_parent(accessible: *Object) *Object;
export @symbol("atk_object_get_role") fn object_get_role(accessible: *Object) Role;
export @symbol("atk_object_initialize") fn object_initialize(accessible: *Object, data: *opaque) void;
export @symbol("atk_object_notify_state_change") fn object_notify_state_change(accessible: *Object, state: State, value: glib::boolean) void;
export @symbol("atk_object_peek_parent") fn object_peek_parent(accessible: *Object) *Object;
export @symbol("atk_object_ref_accessible_child") fn object_ref_accessible_child(accessible: *Object, i: int) *Object;
export @symbol("atk_object_ref_relation_set") fn object_ref_relation_set(accessible: *Object) *RelationSet;
export @symbol("atk_object_ref_state_set") fn object_ref_state_set(accessible: *Object) *StateSet;
export @symbol("atk_object_remove_property_change_handler") fn object_remove_property_change_handler(accessible: *Object, handler_id: uint) void;
export @symbol("atk_object_remove_relationship") fn object_remove_relationship(object: *Object, relationship: RelationType, target: *Object) glib::boolean;
export @symbol("atk_object_set_accessible_id") fn object_set_accessible_id(accessible: *Object, name: *c::char) void;
export @symbol("atk_object_set_description") fn object_set_description(accessible: *Object, description: *c::char) void;
export @symbol("atk_object_set_name") fn object_set_name(accessible: *Object, name: *c::char) void;
export @symbol("atk_object_set_parent") fn object_set_parent(accessible: *Object, parent: *Object) void;
export @symbol("atk_object_set_role") fn object_set_role(accessible: *Object, role: Role) void;
export fn object_connect_active_descendant_changed(
	instance: *Object,
	handler: *fn(instance: *Object, arg1: *opaque, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"active-descendant-changed\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn object_connect_announcement(
	instance: *Object,
	handler: *fn(instance: *Object, arg1: *c::char, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"announcement\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn object_connect_children_changed(
	instance: *Object,
	handler: *fn(instance: *Object, arg1: uint, arg2: *opaque, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"children-changed\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn object_connect_focus_event(
	instance: *Object,
	handler: *fn(instance: *Object, arg1: glib::boolean, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"focus-event\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn object_connect_notification(
	instance: *Object,
	handler: *fn(instance: *Object, arg1: *c::char, arg2: int, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"notification\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn object_connect_property_change(
	instance: *Object,
	handler: *fn(instance: *Object, arg1: *opaque, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"property-change\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn object_connect_state_change(
	instance: *Object,
	handler: *fn(instance: *Object, arg1: *c::char, arg2: glib::boolean, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"state-change\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn object_connect_visible_data_changed(
	instance: *Object,
	handler: *fn(instance: *Object, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"visible-data-changed\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export type ObjectFactory = struct {
	parent: gobject::Object,
};
export @symbol("atk_object_factory_create_accessible") fn object_factory_create_accessible(factory: *ObjectFactory, obj: *gobject::Object) *Object;
export @symbol("atk_object_factory_get_accessible_type") fn object_factory_get_accessible_type(factory: *ObjectFactory) glib::Type;
export @symbol("atk_object_factory_invalidate") fn object_factory_invalidate(factory: *ObjectFactory) void;
export type Plug = struct {
	parent: Object,
};
export @symbol("atk_plug_new") fn plug_new() *Object;
export @symbol("atk_plug_get_id") fn plug_get_id(plug: *Plug) *c::char;
export @symbol("atk_plug_set_child") fn plug_set_child(plug: *Plug, child: *Object) void;
export type Registry = struct {
	parent: gobject::Object,
	factory_type_registry: *glib::HashTable,
	factory_singleton_cache: *glib::HashTable,
};
export @symbol("atk_registry_get_factory") fn registry_get_factory(registry: *Registry, type_: glib::Type) *ObjectFactory;
export @symbol("atk_registry_get_factory_type") fn registry_get_factory_type(registry: *Registry, type_: glib::Type) glib::Type;
export @symbol("atk_registry_set_factory_type") fn registry_set_factory_type(registry: *Registry, type_: glib::Type, factory_type: glib::Type) void;
export type Relation = struct {
	parent: gobject::Object,
	target: *glib::PtrArray,
	relationship: RelationType,
};
export @symbol("atk_relation_new") fn relation_new(targets: **Object, n_targets: int, relationship: RelationType) *Relation;
export @symbol("atk_relation_add_target") fn relation_add_target(relation: *Relation, target: *Object) void;
export @symbol("atk_relation_get_relation_type") fn relation_get_relation_type(relation: *Relation) RelationType;
export @symbol("atk_relation_get_target") fn relation_get_target(relation: *Relation) *glib::PtrArray;
export @symbol("atk_relation_remove_target") fn relation_remove_target(relation: *Relation, target: *Object) glib::boolean;
export type RelationSet = struct {
	parent: gobject::Object,
	relations: *glib::PtrArray,
};
export @symbol("atk_relation_set_new") fn relation_set_new() *RelationSet;
export @symbol("atk_relation_set_add") fn relation_set_add(set: *RelationSet, relation: *Relation) void;
export @symbol("atk_relation_set_add_relation_by_type") fn relation_set_add_relation_by_type(set: *RelationSet, relationship: RelationType, target: *Object) void;
export @symbol("atk_relation_set_contains") fn relation_set_contains(set: *RelationSet, relationship: RelationType) glib::boolean;
export @symbol("atk_relation_set_contains_target") fn relation_set_contains_target(set: *RelationSet, relationship: RelationType, target: *Object) glib::boolean;
export @symbol("atk_relation_set_get_n_relations") fn relation_set_get_n_relations(set: *RelationSet) int;
export @symbol("atk_relation_set_get_relation") fn relation_set_get_relation(set: *RelationSet, i: int) *Relation;
export @symbol("atk_relation_set_get_relation_by_type") fn relation_set_get_relation_by_type(set: *RelationSet, relationship: RelationType) *Relation;
export @symbol("atk_relation_set_remove") fn relation_set_remove(set: *RelationSet, relation: *Relation) void;
export type Socket = struct {
	parent: Object,
	embedded_plug_id: *c::char,
};
export @symbol("atk_socket_new") fn socket_new() *Object;
export @symbol("atk_socket_embed") fn socket_embed(obj: *Socket, plug_id: *c::char) void;
export @symbol("atk_socket_is_occupied") fn socket_is_occupied(obj: *Socket) glib::boolean;
export type StateSet = struct {
	parent: gobject::Object,
};
export @symbol("atk_state_set_new") fn state_set_new() *StateSet;
export @symbol("atk_state_set_add_state") fn state_set_add_state(set: *StateSet, type_: StateType) glib::boolean;
export @symbol("atk_state_set_add_states") fn state_set_add_states(set: *StateSet, types: *StateType, n_types: int) void;
export @symbol("atk_state_set_and_sets") fn state_set_and_sets(set: *StateSet, compare_set: *StateSet) *StateSet;
export @symbol("atk_state_set_clear_states") fn state_set_clear_states(set: *StateSet) void;
export @symbol("atk_state_set_contains_state") fn state_set_contains_state(set: *StateSet, type_: StateType) glib::boolean;
export @symbol("atk_state_set_contains_states") fn state_set_contains_states(set: *StateSet, types: *StateType, n_types: int) glib::boolean;
export @symbol("atk_state_set_is_empty") fn state_set_is_empty(set: *StateSet) glib::boolean;
export @symbol("atk_state_set_or_sets") fn state_set_or_sets(set: *StateSet, compare_set: *StateSet) *StateSet;
export @symbol("atk_state_set_remove_state") fn state_set_remove_state(set: *StateSet, type_: StateType) glib::boolean;
export @symbol("atk_state_set_xor_sets") fn state_set_xor_sets(set: *StateSet, compare_set: *StateSet) *StateSet;
export type Util = struct {
	parent: gobject::Object,
};
export type Action = *opaque;
export @symbol("atk_action_do_action") fn action_do_action(action: *Action, i: int) glib::boolean;
export @symbol("atk_action_get_description") fn action_get_description(action: *Action, i: int) *c::char;
export @symbol("atk_action_get_keybinding") fn action_get_keybinding(action: *Action, i: int) *c::char;
export @symbol("atk_action_get_localized_name") fn action_get_localized_name(action: *Action, i: int) *c::char;
export @symbol("atk_action_get_n_actions") fn action_get_n_actions(action: *Action) int;
export @symbol("atk_action_get_name") fn action_get_name(action: *Action, i: int) *c::char;
export @symbol("atk_action_set_description") fn action_set_description(action: *Action, i: int, desc: *c::char) glib::boolean;
export type Component = *opaque;
export @symbol("atk_component_add_focus_handler") fn component_add_focus_handler(component: *Component, handler: FocusHandler) uint;
export @symbol("atk_component_contains") fn component_contains(component: *Component, x: int, y: int, coord_type: CoordType) glib::boolean;
export @symbol("atk_component_get_alpha") fn component_get_alpha(component: *Component) f64;
export @symbol("atk_component_get_extents") fn component_get_extents(component: *Component, x: *int, y: *int, width: *int, height: *int, coord_type: CoordType) void;
export @symbol("atk_component_get_layer") fn component_get_layer(component: *Component) Layer;
export @symbol("atk_component_get_mdi_zorder") fn component_get_mdi_zorder(component: *Component) int;
export @symbol("atk_component_get_position") fn component_get_position(component: *Component, x: *int, y: *int, coord_type: CoordType) void;
export @symbol("atk_component_get_size") fn component_get_size(component: *Component, width: *int, height: *int) void;
export @symbol("atk_component_grab_focus") fn component_grab_focus(component: *Component) glib::boolean;
export @symbol("atk_component_ref_accessible_at_point") fn component_ref_accessible_at_point(component: *Component, x: int, y: int, coord_type: CoordType) *Object;
export @symbol("atk_component_remove_focus_handler") fn component_remove_focus_handler(component: *Component, handler_id: uint) void;
export @symbol("atk_component_scroll_to") fn component_scroll_to(component: *Component, type_: ScrollType) glib::boolean;
export @symbol("atk_component_scroll_to_point") fn component_scroll_to_point(component: *Component, coords: CoordType, x: int, y: int) glib::boolean;
export @symbol("atk_component_set_extents") fn component_set_extents(component: *Component, x: int, y: int, width: int, height: int, coord_type: CoordType) glib::boolean;
export @symbol("atk_component_set_position") fn component_set_position(component: *Component, x: int, y: int, coord_type: CoordType) glib::boolean;
export @symbol("atk_component_set_size") fn component_set_size(component: *Component, width: int, height: int) glib::boolean;
export fn component_connect_bounds_changed(
	instance: *Component,
	handler: *fn(instance: *Component, arg1: *Rectangle, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"bounds-changed\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export type Document = *opaque;
export @symbol("atk_document_get_attribute_value") fn document_get_attribute_value(document: *Document, attribute_name: *c::char) *c::char;
export @symbol("atk_document_get_attributes") fn document_get_attributes(document: *Document) *AttributeSet;
export @symbol("atk_document_get_current_page_number") fn document_get_current_page_number(document: *Document) int;
export @symbol("atk_document_get_document") fn document_get_document(document: *Document) *opaque;
export @symbol("atk_document_get_document_type") fn document_get_document_type(document: *Document) *c::char;
export @symbol("atk_document_get_locale") fn document_get_locale(document: *Document) *c::char;
export @symbol("atk_document_get_page_count") fn document_get_page_count(document: *Document) int;
export @symbol("atk_document_set_attribute_value") fn document_set_attribute_value(document: *Document, attribute_name: *c::char, attribute_value: *c::char) glib::boolean;
export fn document_connect_load_complete(
	instance: *Document,
	handler: *fn(instance: *Document, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"load-complete\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn document_connect_load_stopped(
	instance: *Document,
	handler: *fn(instance: *Document, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"load-stopped\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn document_connect_page_changed(
	instance: *Document,
	handler: *fn(instance: *Document, page_number: int, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"page-changed\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn document_connect_reload(
	instance: *Document,
	handler: *fn(instance: *Document, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"reload\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export type EditableText = *opaque;
export @symbol("atk_editable_text_copy_text") fn editable_text_copy_text(text: *EditableText, start_pos: int, end_pos: int) void;
export @symbol("atk_editable_text_cut_text") fn editable_text_cut_text(text: *EditableText, start_pos: int, end_pos: int) void;
export @symbol("atk_editable_text_delete_text") fn editable_text_delete_text(text: *EditableText, start_pos: int, end_pos: int) void;
export @symbol("atk_editable_text_insert_text") fn editable_text_insert_text(text: *EditableText, string: *c::char, length: int, position: *int) void;
export @symbol("atk_editable_text_paste_text") fn editable_text_paste_text(text: *EditableText, position: int) void;
export @symbol("atk_editable_text_set_run_attributes") fn editable_text_set_run_attributes(text: *EditableText, attrib_set: *AttributeSet, start_offset: int, end_offset: int) glib::boolean;
export @symbol("atk_editable_text_set_text_contents") fn editable_text_set_text_contents(text: *EditableText, string: *c::char) void;
export type HyperlinkImpl = *opaque;
export @symbol("atk_hyperlink_impl_get_hyperlink") fn hyperlink_impl_get_hyperlink(impl: *HyperlinkImpl) *Hyperlink;
export type Hypertext = *opaque;
export @symbol("atk_hypertext_get_link") fn hypertext_get_link(hypertext: *Hypertext, link_index: int) *Hyperlink;
export @symbol("atk_hypertext_get_link_index") fn hypertext_get_link_index(hypertext: *Hypertext, char_index: int) int;
export @symbol("atk_hypertext_get_n_links") fn hypertext_get_n_links(hypertext: *Hypertext) int;
export fn hypertext_connect_link_selected(
	instance: *Hypertext,
	handler: *fn(instance: *Hypertext, arg1: int, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"link-selected\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export type Image = *opaque;
export @symbol("atk_image_get_image_description") fn image_get_image_description(image: *Image) *c::char;
export @symbol("atk_image_get_image_locale") fn image_get_image_locale(image: *Image) *c::char;
export @symbol("atk_image_get_image_position") fn image_get_image_position(image: *Image, x: *int, y: *int, coord_type: CoordType) void;
export @symbol("atk_image_get_image_size") fn image_get_image_size(image: *Image, width: *int, height: *int) void;
export @symbol("atk_image_set_image_description") fn image_set_image_description(image: *Image, description: *c::char) glib::boolean;
export type ImplementorIface = *opaque;
export type Selection = *opaque;
export @symbol("atk_selection_add_selection") fn selection_add_selection(selection: *Selection, i: int) glib::boolean;
export @symbol("atk_selection_clear_selection") fn selection_clear_selection(selection: *Selection) glib::boolean;
export @symbol("atk_selection_get_selection_count") fn selection_get_selection_count(selection: *Selection) int;
export @symbol("atk_selection_is_child_selected") fn selection_is_child_selected(selection: *Selection, i: int) glib::boolean;
export @symbol("atk_selection_ref_selection") fn selection_ref_selection(selection: *Selection, i: int) *Object;
export @symbol("atk_selection_remove_selection") fn selection_remove_selection(selection: *Selection, i: int) glib::boolean;
export @symbol("atk_selection_select_all_selection") fn selection_select_all_selection(selection: *Selection) glib::boolean;
export fn selection_connect_selection_changed(
	instance: *Selection,
	handler: *fn(instance: *Selection, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"selection-changed\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export type StreamableContent = *opaque;
export @symbol("atk_streamable_content_get_mime_type") fn streamable_content_get_mime_type(streamable: *StreamableContent, i: int) *c::char;
export @symbol("atk_streamable_content_get_n_mime_types") fn streamable_content_get_n_mime_types(streamable: *StreamableContent) int;
export @symbol("atk_streamable_content_get_stream") fn streamable_content_get_stream(streamable: *StreamableContent, mime_type: *c::char) *glib::IOChannel;
export @symbol("atk_streamable_content_get_uri") fn streamable_content_get_uri(streamable: *StreamableContent, mime_type: *c::char) *c::char;
export type Table = *opaque;
export @symbol("atk_table_add_column_selection") fn table_add_column_selection(table: *Table, column: int) glib::boolean;
export @symbol("atk_table_add_row_selection") fn table_add_row_selection(table: *Table, row: int) glib::boolean;
export @symbol("atk_table_get_caption") fn table_get_caption(table: *Table) *Object;
export @symbol("atk_table_get_column_at_index") fn table_get_column_at_index(table: *Table, index_: int) int;
export @symbol("atk_table_get_column_description") fn table_get_column_description(table: *Table, column: int) *c::char;
export @symbol("atk_table_get_column_extent_at") fn table_get_column_extent_at(table: *Table, row: int, column: int) int;
export @symbol("atk_table_get_column_header") fn table_get_column_header(table: *Table, column: int) *Object;
export @symbol("atk_table_get_index_at") fn table_get_index_at(table: *Table, row: int, column: int) int;
export @symbol("atk_table_get_n_columns") fn table_get_n_columns(table: *Table) int;
export @symbol("atk_table_get_n_rows") fn table_get_n_rows(table: *Table) int;
export @symbol("atk_table_get_row_at_index") fn table_get_row_at_index(table: *Table, index_: int) int;
export @symbol("atk_table_get_row_description") fn table_get_row_description(table: *Table, row: int) *c::char;
export @symbol("atk_table_get_row_extent_at") fn table_get_row_extent_at(table: *Table, row: int, column: int) int;
export @symbol("atk_table_get_row_header") fn table_get_row_header(table: *Table, row: int) *Object;
export @symbol("atk_table_get_selected_columns") fn table_get_selected_columns(table: *Table, selected: **int) int;
export @symbol("atk_table_get_selected_rows") fn table_get_selected_rows(table: *Table, selected: **int) int;
export @symbol("atk_table_get_summary") fn table_get_summary(table: *Table) *Object;
export @symbol("atk_table_is_column_selected") fn table_is_column_selected(table: *Table, column: int) glib::boolean;
export @symbol("atk_table_is_row_selected") fn table_is_row_selected(table: *Table, row: int) glib::boolean;
export @symbol("atk_table_is_selected") fn table_is_selected(table: *Table, row: int, column: int) glib::boolean;
export @symbol("atk_table_ref_at") fn table_ref_at(table: *Table, row: int, column: int) *Object;
export @symbol("atk_table_remove_column_selection") fn table_remove_column_selection(table: *Table, column: int) glib::boolean;
export @symbol("atk_table_remove_row_selection") fn table_remove_row_selection(table: *Table, row: int) glib::boolean;
export @symbol("atk_table_set_caption") fn table_set_caption(table: *Table, caption: *Object) void;
export @symbol("atk_table_set_column_description") fn table_set_column_description(table: *Table, column: int, description: *c::char) void;
export @symbol("atk_table_set_column_header") fn table_set_column_header(table: *Table, column: int, header: *Object) void;
export @symbol("atk_table_set_row_description") fn table_set_row_description(table: *Table, row: int, description: *c::char) void;
export @symbol("atk_table_set_row_header") fn table_set_row_header(table: *Table, row: int, header: *Object) void;
export @symbol("atk_table_set_summary") fn table_set_summary(table: *Table, accessible: *Object) void;
export fn table_connect_column_deleted(
	instance: *Table,
	handler: *fn(instance: *Table, arg1: int, arg2: int, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"column-deleted\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn table_connect_column_inserted(
	instance: *Table,
	handler: *fn(instance: *Table, arg1: int, arg2: int, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"column-inserted\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn table_connect_column_reordered(
	instance: *Table,
	handler: *fn(instance: *Table, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"column-reordered\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn table_connect_model_changed(
	instance: *Table,
	handler: *fn(instance: *Table, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"model-changed\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn table_connect_row_deleted(
	instance: *Table,
	handler: *fn(instance: *Table, arg1: int, arg2: int, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"row-deleted\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn table_connect_row_inserted(
	instance: *Table,
	handler: *fn(instance: *Table, arg1: int, arg2: int, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"row-inserted\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn table_connect_row_reordered(
	instance: *Table,
	handler: *fn(instance: *Table, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"row-reordered\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export type TableCell = *opaque;
export @symbol("atk_table_cell_get_column_header_cells") fn table_cell_get_column_header_cells(cell: *TableCell) *glib::PtrArray;
export @symbol("atk_table_cell_get_column_span") fn table_cell_get_column_span(cell: *TableCell) int;
export @symbol("atk_table_cell_get_position") fn table_cell_get_position(cell: *TableCell, row: *int, column: *int) glib::boolean;
export @symbol("atk_table_cell_get_row_column_span") fn table_cell_get_row_column_span(cell: *TableCell, row: *int, column: *int, row_span: *int, column_span: *int) glib::boolean;
export @symbol("atk_table_cell_get_row_header_cells") fn table_cell_get_row_header_cells(cell: *TableCell) *glib::PtrArray;
export @symbol("atk_table_cell_get_row_span") fn table_cell_get_row_span(cell: *TableCell) int;
export @symbol("atk_table_cell_get_table") fn table_cell_get_table(cell: *TableCell) *Object;
export type Text = *opaque;
export @symbol("atk_text_add_selection") fn text_add_selection(text: *Text, start_offset: int, end_offset: int) glib::boolean;
export @symbol("atk_text_get_bounded_ranges") fn text_get_bounded_ranges(text: *Text, rect: *TextRectangle, coord_type: CoordType, x_clip_type: TextClipType, y_clip_type: TextClipType) **TextRange;
export @symbol("atk_text_get_caret_offset") fn text_get_caret_offset(text: *Text) int;
export @symbol("atk_text_get_character_at_offset") fn text_get_character_at_offset(text: *Text, offset_: int) rune;
export @symbol("atk_text_get_character_count") fn text_get_character_count(text: *Text) int;
export @symbol("atk_text_get_character_extents") fn text_get_character_extents(text: *Text, offset_: int, x: *int, y: *int, width: *int, height: *int, coords: CoordType) void;
export @symbol("atk_text_get_default_attributes") fn text_get_default_attributes(text: *Text) *AttributeSet;
export @symbol("atk_text_get_n_selections") fn text_get_n_selections(text: *Text) int;
export @symbol("atk_text_get_offset_at_point") fn text_get_offset_at_point(text: *Text, x: int, y: int, coords: CoordType) int;
export @symbol("atk_text_get_range_extents") fn text_get_range_extents(text: *Text, start_offset: int, end_offset: int, coord_type: CoordType, rect: *TextRectangle) void;
export @symbol("atk_text_get_run_attributes") fn text_get_run_attributes(text: *Text, offset_: int, start_offset: *int, end_offset: *int) *AttributeSet;
export @symbol("atk_text_get_selection") fn text_get_selection(text: *Text, selection_num: int, start_offset: *int, end_offset: *int) *c::char;
export @symbol("atk_text_get_string_at_offset") fn text_get_string_at_offset(text: *Text, offset_: int, granularity: TextGranularity, start_offset: *int, end_offset: *int) *c::char;
export @symbol("atk_text_get_text") fn text_get_text(text: *Text, start_offset: int, end_offset: int) *c::char;
export @symbol("atk_text_get_text_after_offset") fn text_get_text_after_offset(text: *Text, offset_: int, boundary_type: TextBoundary, start_offset: *int, end_offset: *int) *c::char;
export @symbol("atk_text_get_text_at_offset") fn text_get_text_at_offset(text: *Text, offset_: int, boundary_type: TextBoundary, start_offset: *int, end_offset: *int) *c::char;
export @symbol("atk_text_get_text_before_offset") fn text_get_text_before_offset(text: *Text, offset_: int, boundary_type: TextBoundary, start_offset: *int, end_offset: *int) *c::char;
export @symbol("atk_text_remove_selection") fn text_remove_selection(text: *Text, selection_num: int) glib::boolean;
export @symbol("atk_text_scroll_substring_to") fn text_scroll_substring_to(text: *Text, start_offset: int, end_offset: int, type_: ScrollType) glib::boolean;
export @symbol("atk_text_scroll_substring_to_point") fn text_scroll_substring_to_point(text: *Text, start_offset: int, end_offset: int, coords: CoordType, x: int, y: int) glib::boolean;
export @symbol("atk_text_set_caret_offset") fn text_set_caret_offset(text: *Text, offset_: int) glib::boolean;
export @symbol("atk_text_set_selection") fn text_set_selection(text: *Text, selection_num: int, start_offset: int, end_offset: int) glib::boolean;
export @symbol("atk_text_free_ranges") fn text_free_ranges(ranges: **TextRange) void;
export fn text_connect_text_attributes_changed(
	instance: *Text,
	handler: *fn(instance: *Text, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"text-attributes-changed\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn text_connect_text_caret_moved(
	instance: *Text,
	handler: *fn(instance: *Text, arg1: int, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"text-caret-moved\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn text_connect_text_changed(
	instance: *Text,
	handler: *fn(instance: *Text, arg1: int, arg2: int, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"text-changed\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn text_connect_text_insert(
	instance: *Text,
	handler: *fn(instance: *Text, arg1: int, arg2: int, arg3: *c::char, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"text-insert\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn text_connect_text_remove(
	instance: *Text,
	handler: *fn(instance: *Text, arg1: int, arg2: int, arg3: *c::char, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"text-remove\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn text_connect_text_selection_changed(
	instance: *Text,
	handler: *fn(instance: *Text, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"text-selection-changed\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export type Value = *opaque;
export @symbol("atk_value_get_current_value") fn value_get_current_value(obj: *Value, value: *gobject::Value) void;
export @symbol("atk_value_get_increment") fn value_get_increment(obj: *Value) f64;
export @symbol("atk_value_get_maximum_value") fn value_get_maximum_value(obj: *Value, value: *gobject::Value) void;
export @symbol("atk_value_get_minimum_increment") fn value_get_minimum_increment(obj: *Value, value: *gobject::Value) void;
export @symbol("atk_value_get_minimum_value") fn value_get_minimum_value(obj: *Value, value: *gobject::Value) void;
export @symbol("atk_value_get_range") fn value_get_range(obj: *Value) *Range;
export @symbol("atk_value_get_sub_ranges") fn value_get_sub_ranges(obj: *Value) *glib::SList;
export @symbol("atk_value_get_value_and_text") fn value_get_value_and_text(obj: *Value, value: *f64, text: **c::char) void;
export @symbol("atk_value_set_current_value") fn value_set_current_value(obj: *Value, value: *gobject::Value) glib::boolean;
export @symbol("atk_value_set_value") fn value_set_value(obj: *Value, new_value: f64) void;
export fn value_connect_value_changed(
	instance: *Value,
	handler: *fn(instance: *Value, value: f64, text: *c::char, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"value-changed\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export type Window = *opaque;
export fn window_connect_activate(
	instance: *Window,
	handler: *fn(instance: *Window, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"activate\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn window_connect_create(
	instance: *Window,
	handler: *fn(instance: *Window, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"create\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn window_connect_deactivate(
	instance: *Window,
	handler: *fn(instance: *Window, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"deactivate\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn window_connect_destroy(
	instance: *Window,
	handler: *fn(instance: *Window, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"destroy\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn window_connect_maximize(
	instance: *Window,
	handler: *fn(instance: *Window, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"maximize\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn window_connect_minimize(
	instance: *Window,
	handler: *fn(instance: *Window, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"minimize\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn window_connect_move(
	instance: *Window,
	handler: *fn(instance: *Window, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"move\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn window_connect_resize(
	instance: *Window,
	handler: *fn(instance: *Window, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"resize\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export fn window_connect_restore(
	instance: *Window,
	handler: *fn(instance: *Window, data: *opaque) void,
	data: nullable *opaque,
) u64 = gobject::signal_connect_data(
	instance,
	*(&"restore\0": *[]u8): *[*]u8: *c::char,
	handler: gobject::Callback,
	data: *opaque,
	null: gobject::ClosureNotify, 0,
);
export type ActionIface = struct {
	parent: gobject::TypeInterface,
	do_action: *fn(action: *Action, i: int) glib::boolean,
	get_n_actions: *fn(action: *Action) int,
	get_description: *fn(action: *Action, i: int) *c::char,
	get_name: *fn(action: *Action, i: int) *c::char,
	get_keybinding: *fn(action: *Action, i: int) *c::char,
	set_description: *fn(action: *Action, i: int, desc: *c::char) glib::boolean,
	get_localized_name: *fn(action: *Action, i: int) *c::char,
};
export type Attribute = struct {
	name: *c::char,
	value: *c::char,
};
export @symbol("atk_attribute_set_free") fn attribute_set_free(attrib_set: *AttributeSet) void;
export type ComponentIface = struct {
	parent: gobject::TypeInterface,
	add_focus_handler: *fn(component: *Component, handler: FocusHandler) uint,
	contains: *fn(component: *Component, x: int, y: int, coord_type: CoordType) glib::boolean,
	ref_accessible_at_point: *fn(component: *Component, x: int, y: int, coord_type: CoordType) *Object,
	get_extents: *fn(component: *Component, x: *int, y: *int, width: *int, height: *int, coord_type: CoordType) void,
	get_position: *fn(component: *Component, x: *int, y: *int, coord_type: CoordType) void,
	get_size: *fn(component: *Component, width: *int, height: *int) void,
	grab_focus: *fn(component: *Component) glib::boolean,
	remove_focus_handler: *fn(component: *Component, handler_id: uint) void,
	set_extents: *fn(component: *Component, x: int, y: int, width: int, height: int, coord_type: CoordType) glib::boolean,
	set_position: *fn(component: *Component, x: int, y: int, coord_type: CoordType) glib::boolean,
	set_size: *fn(component: *Component, width: int, height: int) glib::boolean,
	get_layer: *fn(component: *Component) Layer,
	get_mdi_zorder: *fn(component: *Component) int,
	bounds_changed: *fn(component: *Component, bounds: *Rectangle) void,
	get_alpha: *fn(component: *Component) f64,
	scroll_to: *fn(component: *Component, type_: ScrollType) glib::boolean,
	scroll_to_point: *fn(component: *Component, coords: CoordType, x: int, y: int) glib::boolean,
};
export type DocumentIface = struct {
	parent: gobject::TypeInterface,
	get_document_type: *fn(document: *Document) *c::char,
	get_document: *fn(document: *Document) *opaque,
	get_document_locale: *fn(document: *Document) *c::char,
	get_document_attributes: *fn(document: *Document) *AttributeSet,
	get_document_attribute_value: *fn(document: *Document, attribute_name: *c::char) *c::char,
	set_document_attribute: *fn(document: *Document, attribute_name: *c::char, attribute_value: *c::char) glib::boolean,
	get_current_page_number: *fn(document: *Document) int,
	get_page_count: *fn(document: *Document) int,
};
export type EditableTextIface = struct {
	parent_interface: gobject::TypeInterface,
	set_run_attributes: *fn(text: *EditableText, attrib_set: *AttributeSet, start_offset: int, end_offset: int) glib::boolean,
	set_text_contents: *fn(text: *EditableText, string: *c::char) void,
	insert_text: *fn(text: *EditableText, string: *c::char, length: int, position: *int) void,
	copy_text: *fn(text: *EditableText, start_pos: int, end_pos: int) void,
	cut_text: *fn(text: *EditableText, start_pos: int, end_pos: int) void,
	delete_text: *fn(text: *EditableText, start_pos: int, end_pos: int) void,
	paste_text: *fn(text: *EditableText, position: int) void,
};
export type GObjectAccessibleClass = struct {
	parent_class: ObjectClass,
	pad1: Function,
	pad2: Function,
};
export type HyperlinkClass = struct {
	parent: gobject::ObjectClass,
	get_uri: *fn(link_: *Hyperlink, i: int) *c::char,
	get_object: *fn(link_: *Hyperlink, i: int) *Object,
	get_end_index: *fn(link_: *Hyperlink) int,
	get_start_index: *fn(link_: *Hyperlink) int,
	is_valid: *fn(link_: *Hyperlink) glib::boolean,
	get_n_anchors: *fn(link_: *Hyperlink) int,
	link_state: *fn(link_: *Hyperlink) uint,
	is_selected_link: *fn(link_: *Hyperlink) glib::boolean,
	link_activated: *fn(link_: *Hyperlink) void,
	pad1: Function,
};
export type HyperlinkImplIface = struct {
	parent: gobject::TypeInterface,
	get_hyperlink: *fn(impl: *HyperlinkImpl) *Hyperlink,
};
export type HypertextIface = struct {
	parent: gobject::TypeInterface,
	get_link: *fn(hypertext: *Hypertext, link_index: int) *Hyperlink,
	get_n_links: *fn(hypertext: *Hypertext) int,
	get_link_index: *fn(hypertext: *Hypertext, char_index: int) int,
	link_selected: *fn(hypertext: *Hypertext, link_index: int) void,
};
export type ImageIface = struct {
	parent: gobject::TypeInterface,
	get_image_position: *fn(image: *Image, x: *int, y: *int, coord_type: CoordType) void,
	get_image_description: *fn(image: *Image) *c::char,
	get_image_size: *fn(image: *Image, width: *int, height: *int) void,
	set_image_description: *fn(image: *Image, description: *c::char) glib::boolean,
	get_image_locale: *fn(image: *Image) *c::char,
};
export type Implementor = *opaque;
export @symbol("atk_implementor_ref_accessible") fn implementor_ref_accessible(implementor: *Implementor) *Object;
export type KeyEventStruct = struct {
	type_: int,
	state: uint,
	keyval: uint,
	length: int,
	string: *c::char,
	keycode: u16,
	timestamp: u32,
};
export type MiscClass = struct {
	parent: gobject::ObjectClass,
	threads_enter: *fn(misc: *Misc) void,
	threads_leave: *fn(misc: *Misc) void,
	vfuncs: [32]*opaque,
};
export type NoOpObjectClass = struct {
	parent_class: ObjectClass,
};
export type NoOpObjectFactoryClass = struct {
	parent_class: ObjectFactoryClass,
};
export type ObjectClass = struct {
	parent: gobject::ObjectClass,
	get_name: *fn(accessible: *Object) *c::char,
	get_description: *fn(accessible: *Object) *c::char,
	get_parent: *fn(accessible: *Object) *Object,
	get_n_children: *fn(accessible: *Object) int,
	ref_child: *fn(accessible: *Object, i: int) *Object,
	get_index_in_parent: *fn(accessible: *Object) int,
	ref_relation_set: *fn(accessible: *Object) *RelationSet,
	get_role: *fn(accessible: *Object) Role,
	get_layer: *fn(accessible: *Object) Layer,
	get_mdi_zorder: *fn(accessible: *Object) int,
	ref_state_set: *fn(accessible: *Object) *StateSet,
	set_name: *fn(accessible: *Object, name: *c::char) void,
	set_description: *fn(accessible: *Object, description: *c::char) void,
	set_parent: *fn(accessible: *Object, parent: *Object) void,
	set_role: *fn(accessible: *Object, role: Role) void,
	connect_property_change_handler: *fn(accessible: *Object, handler: *PropertyChangeHandler) uint,
	remove_property_change_handler: *fn(accessible: *Object, handler_id: uint) void,
	initialize: *fn(accessible: *Object, data: *opaque) void,
	children_changed: *fn(accessible: *Object, change_index: uint, changed_child: *opaque) void,
	focus_event: *fn(accessible: *Object, focus_in: glib::boolean) void,
	property_change: *fn(accessible: *Object, values: *PropertyValues) void,
	state_change: *fn(accessible: *Object, name: *c::char, state_set: glib::boolean) void,
	visible_data_changed: *fn(accessible: *Object) void,
	active_descendant_changed: *fn(accessible: *Object, child: **opaque) void,
	get_attributes: *fn(accessible: *Object) *AttributeSet,
	get_object_locale: *fn(accessible: *Object) *c::char,
	pad1: Function,
};
export type ObjectFactoryClass = struct {
	parent_class: gobject::ObjectClass,
	create_accessible: *fn(obj: *gobject::Object) *Object,
	invalidate: *fn(factory: *ObjectFactory) void,
	get_accessible_type: *fn() glib::Type,
	pad1: Function,
	pad2: Function,
};
export type PlugClass = struct {
	parent_class: ObjectClass,
	get_object_id: *fn(obj: *Plug) *c::char,
};
export type PropertyValues = struct {
	property_name: *c::char,
	old_value: gobject::Value,
	new_value: gobject::Value,
};
export type Range = *opaque;
export @symbol("atk_range_new") fn range_new(lower_limit: f64, upper_limit: f64, description: *c::char) *Range;
export @symbol("atk_range_copy") fn range_copy(src: *Range) *Range;
export @symbol("atk_range_free") fn range_free(range: *Range) void;
export @symbol("atk_range_get_description") fn range_get_description(range: *Range) *c::char;
export @symbol("atk_range_get_lower_limit") fn range_get_lower_limit(range: *Range) f64;
export @symbol("atk_range_get_upper_limit") fn range_get_upper_limit(range: *Range) f64;
export type Rectangle = struct {
	x: int,
	y: int,
	width: int,
	height: int,
};
export type RegistryClass = struct {
	parent_class: gobject::ObjectClass,
};
export type RelationClass = struct {
	parent: gobject::ObjectClass,
};
export type RelationSetClass = struct {
	parent: gobject::ObjectClass,
	pad1: Function,
	pad2: Function,
};
export type SelectionIface = struct {
	parent: gobject::TypeInterface,
	add_selection: *fn(selection: *Selection, i: int) glib::boolean,
	clear_selection: *fn(selection: *Selection) glib::boolean,
	ref_selection: *fn(selection: *Selection, i: int) *Object,
	get_selection_count: *fn(selection: *Selection) int,
	is_child_selected: *fn(selection: *Selection, i: int) glib::boolean,
	remove_selection: *fn(selection: *Selection, i: int) glib::boolean,
	select_all_selection: *fn(selection: *Selection) glib::boolean,
	selection_changed: *fn(selection: *Selection) void,
};
export type SocketClass = struct {
	parent_class: ObjectClass,
	embed: *fn(obj: *Socket, plug_id: *c::char) void,
};
export type StateSetClass = struct {
	parent: gobject::ObjectClass,
};
export type StreamableContentIface = struct {
	parent: gobject::TypeInterface,
	get_n_mime_types: *fn(streamable: *StreamableContent) int,
	get_mime_type: *fn(streamable: *StreamableContent, i: int) *c::char,
	get_stream: *fn(streamable: *StreamableContent, mime_type: *c::char) *glib::IOChannel,
	get_uri: *fn(streamable: *StreamableContent, mime_type: *c::char) *c::char,
	pad1: Function,
	pad2: Function,
	pad3: Function,
};
export type TableCellIface = struct {
	parent: gobject::TypeInterface,
	get_column_span: *fn(cell: *TableCell) int,
	get_column_header_cells: *fn(cell: *TableCell) *glib::PtrArray,
	get_position: *fn(cell: *TableCell, row: *int, column: *int) glib::boolean,
	get_row_span: *fn(cell: *TableCell) int,
	get_row_header_cells: *fn(cell: *TableCell) *glib::PtrArray,
	get_row_column_span: *fn(cell: *TableCell, row: *int, column: *int, row_span: *int, column_span: *int) glib::boolean,
	get_table: *fn(cell: *TableCell) *Object,
};
export type TableIface = struct {
	parent: gobject::TypeInterface,
	ref_at: *fn(table: *Table, row: int, column: int) *Object,
	get_index_at: *fn(table: *Table, row: int, column: int) int,
	get_column_at_index: *fn(table: *Table, index_: int) int,
	get_row_at_index: *fn(table: *Table, index_: int) int,
	get_n_columns: *fn(table: *Table) int,
	get_n_rows: *fn(table: *Table) int,
	get_column_extent_at: *fn(table: *Table, row: int, column: int) int,
	get_row_extent_at: *fn(table: *Table, row: int, column: int) int,
	get_caption: *fn(table: *Table) *Object,
	get_column_description: *fn(table: *Table, column: int) *c::char,
	get_column_header: *fn(table: *Table, column: int) *Object,
	get_row_description: *fn(table: *Table, row: int) *c::char,
	get_row_header: *fn(table: *Table, row: int) *Object,
	get_summary: *fn(table: *Table) *Object,
	set_caption: *fn(table: *Table, caption: *Object) void,
	set_column_description: *fn(table: *Table, column: int, description: *c::char) void,
	set_column_header: *fn(table: *Table, column: int, header: *Object) void,
	set_row_description: *fn(table: *Table, row: int, description: *c::char) void,
	set_row_header: *fn(table: *Table, row: int, header: *Object) void,
	set_summary: *fn(table: *Table, accessible: *Object) void,
	get_selected_columns: *fn(table: *Table, selected: **int) int,
	get_selected_rows: *fn(table: *Table, selected: **int) int,
	is_column_selected: *fn(table: *Table, column: int) glib::boolean,
	is_row_selected: *fn(table: *Table, row: int) glib::boolean,
	is_selected: *fn(table: *Table, row: int, column: int) glib::boolean,
	add_row_selection: *fn(table: *Table, row: int) glib::boolean,
	remove_row_selection: *fn(table: *Table, row: int) glib::boolean,
	add_column_selection: *fn(table: *Table, column: int) glib::boolean,
	remove_column_selection: *fn(table: *Table, column: int) glib::boolean,
	row_inserted: *fn(table: *Table, row: int, num_inserted: int) void,
	column_inserted: *fn(table: *Table, column: int, num_inserted: int) void,
	row_deleted: *fn(table: *Table, row: int, num_deleted: int) void,
	column_deleted: *fn(table: *Table, column: int, num_deleted: int) void,
	row_reordered: *fn(table: *Table) void,
	column_reordered: *fn(table: *Table) void,
	model_changed: *fn(table: *Table) void,
};
export type TextIface = struct {
	parent: gobject::TypeInterface,
	get_text: *fn(text: *Text, start_offset: int, end_offset: int) *c::char,
	get_text_after_offset: *fn(text: *Text, offset_: int, boundary_type: TextBoundary, start_offset: *int, end_offset: *int) *c::char,
	get_text_at_offset: *fn(text: *Text, offset_: int, boundary_type: TextBoundary, start_offset: *int, end_offset: *int) *c::char,
	get_character_at_offset: *fn(text: *Text, offset_: int) rune,
	get_text_before_offset: *fn(text: *Text, offset_: int, boundary_type: TextBoundary, start_offset: *int, end_offset: *int) *c::char,
	get_caret_offset: *fn(text: *Text) int,
	get_run_attributes: *fn(text: *Text, offset_: int, start_offset: *int, end_offset: *int) *AttributeSet,
	get_default_attributes: *fn(text: *Text) *AttributeSet,
	get_character_extents: *fn(text: *Text, offset_: int, x: *int, y: *int, width: *int, height: *int, coords: CoordType) void,
	get_character_count: *fn(text: *Text) int,
	get_offset_at_point: *fn(text: *Text, x: int, y: int, coords: CoordType) int,
	get_n_selections: *fn(text: *Text) int,
	get_selection: *fn(text: *Text, selection_num: int, start_offset: *int, end_offset: *int) *c::char,
	add_selection: *fn(text: *Text, start_offset: int, end_offset: int) glib::boolean,
	remove_selection: *fn(text: *Text, selection_num: int) glib::boolean,
	set_selection: *fn(text: *Text, selection_num: int, start_offset: int, end_offset: int) glib::boolean,
	set_caret_offset: *fn(text: *Text, offset_: int) glib::boolean,
	text_changed: *fn(text: *Text, position: int, length: int) void,
	text_caret_moved: *fn(text: *Text, location: int) void,
	text_selection_changed: *fn(text: *Text) void,
	text_attributes_changed: *fn(text: *Text) void,
	get_range_extents: *fn(text: *Text, start_offset: int, end_offset: int, coord_type: CoordType, rect: *TextRectangle) void,
	get_bounded_ranges: *fn(text: *Text, rect: *TextRectangle, coord_type: CoordType, x_clip_type: TextClipType, y_clip_type: TextClipType) **TextRange,
	get_string_at_offset: *fn(text: *Text, offset_: int, granularity: TextGranularity, start_offset: *int, end_offset: *int) *c::char,
	scroll_substring_to: *fn(text: *Text, start_offset: int, end_offset: int, type_: ScrollType) glib::boolean,
	scroll_substring_to_point: *fn(text: *Text, start_offset: int, end_offset: int, coords: CoordType, x: int, y: int) glib::boolean,
};
export type TextRange = struct {
	bounds: TextRectangle,
	start_offset: int,
	end_offset: int,
	content: *c::char,
};
export type TextRectangle = struct {
	x: int,
	y: int,
	width: int,
	height: int,
};
export type UtilClass = struct {
	parent: gobject::ObjectClass,
	add_global_event_listener: *fn(listener: gobject::SignalEmissionHook, event_type: *c::char) uint,
	remove_global_event_listener: *fn(listener_id: uint) void,
	add_key_event_listener: *fn(listener: KeySnoopFunc, data: *opaque) uint,
	remove_key_event_listener: *fn(listener_id: uint) void,
	get_root: *fn() *Object,
	get_toolkit_name: *fn() *c::char,
	get_toolkit_version: *fn() *c::char,
};
export type ValueIface = struct {
	parent: gobject::TypeInterface,
	get_current_value: *fn(obj: *Value, value: *gobject::Value) void,
	get_maximum_value: *fn(obj: *Value, value: *gobject::Value) void,
	get_minimum_value: *fn(obj: *Value, value: *gobject::Value) void,
	set_current_value: *fn(obj: *Value, value: *gobject::Value) glib::boolean,
	get_minimum_increment: *fn(obj: *Value, value: *gobject::Value) void,
	get_value_and_text: *fn(obj: *Value, value: *f64, text: **c::char) void,
	get_range: *fn(obj: *Value) *Range,
	get_increment: *fn(obj: *Value) f64,
	get_sub_ranges: *fn(obj: *Value) *glib::SList,
	set_value: *fn(obj: *Value, new_value: f64) void,
};
export type WindowIface = struct {
	parent: gobject::TypeInterface,
};
export type CoordType = enum uint {
	SCREEN = 0,
	WINDOW = 1,
	PARENT = 2,
};
export type KeyEventType = enum uint {
	PRESS = 0,
	RELEASE = 1,
	LAST_DEFINED = 2,
};
export type Layer = enum uint {
	INVALID = 0,
	BACKGROUND = 1,
	CANVAS = 2,
	WIDGET = 3,
	MDI = 4,
	POPUP = 5,
	OVERLAY = 6,
	WINDOW = 7,
};
export type Live = enum uint {
	NONE = 0,
	POLITE = 1,
	ASSERTIVE = 2,
};
export type RelationType = enum uint {
	NULL_ = 0,
	CONTROLLED_BY = 1,
	CONTROLLER_FOR = 2,
	LABEL_FOR = 3,
	LABELLED_BY = 4,
	MEMBER_OF = 5,
	NODE_CHILD_OF = 6,
	FLOWS_TO = 7,
	FLOWS_FROM = 8,
	SUBWINDOW_OF = 9,
	EMBEDS = 10,
	EMBEDDED_BY = 11,
	POPUP_FOR = 12,
	PARENT_WINDOW_OF = 13,
	DESCRIBED_BY = 14,
	DESCRIPTION_FOR = 15,
	NODE_PARENT_OF = 16,
	DETAILS = 17,
	DETAILS_FOR = 18,
	ERROR_MESSAGE = 19,
	ERROR_FOR = 20,
	LAST_DEFINED = 21,
};
export @symbol("atk_relation_type_for_name") fn relation_type_for_name(name: *c::char) RelationType;
export @symbol("atk_relation_type_get_name") fn relation_type_get_name(type_: RelationType) *c::char;
export @symbol("atk_relation_type_register") fn relation_type_register(name: *c::char) RelationType;
export type Role = enum uint {
	INVALID = 0,
	ACCELERATOR_LABEL = 1,
	ALERT = 2,
	ANIMATION = 3,
	ARROW = 4,
	CALENDAR = 5,
	CANVAS = 6,
	CHECK_BOX = 7,
	CHECK_MENU_ITEM = 8,
	COLOR_CHOOSER = 9,
	COLUMN_HEADER = 10,
	COMBO_BOX = 11,
	DATE_EDITOR = 12,
	DESKTOP_ICON = 13,
	DESKTOP_FRAME = 14,
	DIAL = 15,
	DIALOG = 16,
	DIRECTORY_PANE = 17,
	DRAWING_AREA = 18,
	FILE_CHOOSER = 19,
	FILLER = 20,
	FONT_CHOOSER = 21,
	FRAME = 22,
	GLASS_PANE = 23,
	HTML_CONTAINER = 24,
	ICON = 25,
	IMAGE = 26,
	INTERNAL_FRAME = 27,
	LABEL = 28,
	LAYERED_PANE = 29,
	LIST = 30,
	LIST_ITEM = 31,
	MENU = 32,
	MENU_BAR = 33,
	MENU_ITEM = 34,
	OPTION_PANE = 35,
	PAGE_TAB = 36,
	PAGE_TAB_LIST = 37,
	PANEL = 38,
	PASSWORD_TEXT = 39,
	POPUP_MENU = 40,
	PROGRESS_BAR = 41,
	PUSH_BUTTON = 42,
	RADIO_BUTTON = 43,
	RADIO_MENU_ITEM = 44,
	ROOT_PANE = 45,
	ROW_HEADER = 46,
	SCROLL_BAR = 47,
	SCROLL_PANE = 48,
	SEPARATOR = 49,
	SLIDER = 50,
	SPLIT_PANE = 51,
	SPIN_BUTTON = 52,
	STATUSBAR = 53,
	TABLE = 54,
	TABLE_CELL = 55,
	TABLE_COLUMN_HEADER = 56,
	TABLE_ROW_HEADER = 57,
	TEAR_OFF_MENU_ITEM = 58,
	TERMINAL = 59,
	TEXT = 60,
	TOGGLE_BUTTON = 61,
	TOOL_BAR = 62,
	TOOL_TIP = 63,
	TREE = 64,
	TREE_TABLE = 65,
	UNKNOWN = 66,
	VIEWPORT = 67,
	WINDOW = 68,
	HEADER = 69,
	FOOTER = 70,
	PARAGRAPH = 71,
	RULER = 72,
	APPLICATION = 73,
	AUTOCOMPLETE = 74,
	EDIT_BAR = 75,
	EMBEDDED = 76,
	ENTRY = 77,
	CHART = 78,
	CAPTION = 79,
	DOCUMENT_FRAME = 80,
	HEADING = 81,
	PAGE = 82,
	SECTION = 83,
	REDUNDANT_OBJECT = 84,
	FORM = 85,
	LINK = 86,
	INPUT_METHOD_WINDOW = 87,
	TABLE_ROW = 88,
	TREE_ITEM = 89,
	DOCUMENT_SPREADSHEET = 90,
	DOCUMENT_PRESENTATION = 91,
	DOCUMENT_TEXT = 92,
	DOCUMENT_WEB = 93,
	DOCUMENT_EMAIL = 94,
	COMMENT = 95,
	LIST_BOX = 96,
	GROUPING = 97,
	IMAGE_MAP = 98,
	NOTIFICATION = 99,
	INFO_BAR = 100,
	LEVEL_BAR = 101,
	TITLE_BAR = 102,
	BLOCK_QUOTE = 103,
	AUDIO = 104,
	VIDEO = 105,
	DEFINITION = 106,
	ARTICLE = 107,
	LANDMARK = 108,
	LOG = 109,
	MARQUEE = 110,
	MATH = 111,
	RATING = 112,
	TIMER = 113,
	DESCRIPTION_LIST = 114,
	DESCRIPTION_TERM = 115,
	DESCRIPTION_VALUE = 116,
	STATIC_ = 117,
	MATH_FRACTION = 118,
	MATH_ROOT = 119,
	SUBSCRIPT = 120,
	SUPERSCRIPT = 121,
	FOOTNOTE = 122,
	CONTENT_DELETION = 123,
	CONTENT_INSERTION = 124,
	MARK = 125,
	SUGGESTION = 126,
	PUSH_BUTTON_MENU = 127,
	LAST_DEFINED = 128,
};
export @symbol("atk_role_for_name") fn role_for_name(name: *c::char) Role;
export @symbol("atk_role_get_localized_name") fn role_get_localized_name(role: Role) *c::char;
export @symbol("atk_role_get_name") fn role_get_name(role: Role) *c::char;
export @symbol("atk_role_register") fn role_register(name: *c::char) Role;
export type ScrollType = enum uint {
	TOP_LEFT = 0,
	BOTTOM_RIGHT = 1,
	TOP_EDGE = 2,
	BOTTOM_EDGE = 3,
	LEFT_EDGE = 4,
	RIGHT_EDGE = 5,
	ANYWHERE = 6,
};
export type StateType = enum uint {
	INVALID = 0,
	ACTIVE = 1,
	ARMED = 2,
	BUSY = 3,
	CHECKED = 4,
	DEFUNCT = 5,
	EDITABLE = 6,
	ENABLED = 7,
	EXPANDABLE = 8,
	EXPANDED = 9,
	FOCUSABLE = 10,
	FOCUSED = 11,
	HORIZONTAL = 12,
	ICONIFIED = 13,
	MODAL = 14,
	MULTI_LINE = 15,
	MULTISELECTABLE = 16,
	OPAQUE = 17,
	PRESSED = 18,
	RESIZABLE = 19,
	SELECTABLE = 20,
	SELECTED = 21,
	SENSITIVE = 22,
	SHOWING = 23,
	SINGLE_LINE = 24,
	STALE = 25,
	TRANSIENT = 26,
	VERTICAL = 27,
	VISIBLE = 28,
	MANAGES_DESCENDANTS = 29,
	INDETERMINATE = 30,
	TRUNCATED = 31,
	REQUIRED = 32,
	INVALID_ENTRY = 33,
	SUPPORTS_AUTOCOMPLETION = 34,
	SELECTABLE_TEXT = 35,
	DEFAULT = 36,
	ANIMATED = 37,
	VISITED = 38,
	CHECKABLE = 39,
	HAS_POPUP = 40,
	HAS_TOOLTIP = 41,
	READ_ONLY = 42,
	COLLAPSED = 43,
	LAST_DEFINED = 44,
};
export @symbol("atk_state_type_for_name") fn state_type_for_name(name: *c::char) StateType;
export @symbol("atk_state_type_get_name") fn state_type_get_name(type_: StateType) *c::char;
export @symbol("atk_state_type_register") fn state_type_register(name: *c::char) StateType;
export type TextAttribute = enum uint {
	INVALID = 0,
	LEFT_MARGIN = 1,
	RIGHT_MARGIN = 2,
	INDENT = 3,
	INVISIBLE = 4,
	EDITABLE = 5,
	PIXELS_ABOVE_LINES = 6,
	PIXELS_BELOW_LINES = 7,
	PIXELS_INSIDE_WRAP = 8,
	BG_FULL_HEIGHT = 9,
	RISE = 10,
	UNDERLINE = 11,
	STRIKETHROUGH = 12,
	SIZE_ = 13,
	SCALE = 14,
	WEIGHT = 15,
	LANGUAGE = 16,
	FAMILY_NAME = 17,
	BG_COLOR = 18,
	FG_COLOR = 19,
	BG_STIPPLE = 20,
	FG_STIPPLE = 21,
	WRAP_MODE = 22,
	DIRECTION = 23,
	JUSTIFICATION = 24,
	STRETCH = 25,
	VARIANT = 26,
	STYLE = 27,
	TEXT_POSITION = 28,
	LAST_DEFINED = 29,
};
export @symbol("atk_text_attribute_for_name") fn text_attribute_for_name(name: *c::char) TextAttribute;
export @symbol("atk_text_attribute_get_name") fn text_attribute_get_name(attr: TextAttribute) *c::char;
export @symbol("atk_text_attribute_get_value") fn text_attribute_get_value(attr: TextAttribute, index_: int) *c::char;
export @symbol("atk_text_attribute_register") fn text_attribute_register(name: *c::char) TextAttribute;
export type TextBoundary = enum uint {
	CHAR = 0,
	WORD_START = 1,
	WORD_END = 2,
	SENTENCE_START = 3,
	SENTENCE_END = 4,
	LINE_START = 5,
	LINE_END = 6,
};
export type TextClipType = enum uint {
	NONE = 0,
	MIN = 1,
	MAX = 2,
	BOTH = 3,
};
export type TextGranularity = enum uint {
	CHAR = 0,
	WORD = 1,
	SENTENCE = 2,
	LINE = 3,
	PARAGRAPH = 4,
};
export type ValueType = enum uint {
	VERY_WEAK = 0,
	WEAK = 1,
	ACCEPTABLE = 2,
	STRONG = 3,
	VERY_STRONG = 4,
	VERY_LOW = 5,
	LOW = 6,
	MEDIUM = 7,
	HIGH = 8,
	VERY_HIGH = 9,
	VERY_BAD = 10,
	BAD = 11,
	GOOD = 12,
	VERY_GOOD = 13,
	BEST = 14,
	LAST_DEFINED = 15,
};
export @symbol("atk_value_type_get_localized_name") fn value_type_get_localized_name(value_type: ValueType) *c::char;
export @symbol("atk_value_type_get_name") fn value_type_get_name(value_type: ValueType) *c::char;
export @symbol("atk_add_focus_tracker") fn add_focus_tracker(focus_tracker: EventListener) uint;
export @symbol("atk_add_global_event_listener") fn add_global_event_listener(listener: gobject::SignalEmissionHook, event_type: *c::char) uint;
export @symbol("atk_add_key_event_listener") fn add_key_event_listener(listener: KeySnoopFunc, data: *opaque) uint;
export @symbol("atk_focus_tracker_init") fn focus_tracker_init(init: EventListenerInit) void;
export @symbol("atk_focus_tracker_notify") fn focus_tracker_notify(object: *Object) void;
export @symbol("atk_get_binary_age") fn get_binary_age() uint;
export @symbol("atk_get_default_registry") fn get_default_registry() *Registry;
export @symbol("atk_get_focus_object") fn get_focus_object() *Object;
export @symbol("atk_get_interface_age") fn get_interface_age() uint;
export @symbol("atk_get_major_version") fn get_major_version() uint;
export @symbol("atk_get_micro_version") fn get_micro_version() uint;
export @symbol("atk_get_minor_version") fn get_minor_version() uint;
export @symbol("atk_get_root") fn get_root() *Object;
export @symbol("atk_get_toolkit_name") fn get_toolkit_name() *c::char;
export @symbol("atk_get_toolkit_version") fn get_toolkit_version() *c::char;
export @symbol("atk_get_version") fn get_version() *c::char;
export @symbol("atk_remove_focus_tracker") fn remove_focus_tracker(tracker_id: uint) void;
export @symbol("atk_remove_global_event_listener") fn remove_global_event_listener(listener_id: uint) void;
export @symbol("atk_remove_key_event_listener") fn remove_key_event_listener(listener_id: uint) void;
export type HyperlinkStateFlags = enum uint {
	INLINE = 1,
};
export type EventListener = *fn(obj: *Object) void;
export type EventListenerInit = *fn() void;
export type FocusHandler = *fn(object: *Object, focus_in: glib::boolean) void;
export type Function = *fn(user_data: *opaque) glib::boolean;
export type KeySnoopFunc = *fn(event: *KeyEventStruct, user_data: *opaque) int;
export type PropertyChangeHandler = *fn(obj: *Object, vals: *PropertyValues) void;
