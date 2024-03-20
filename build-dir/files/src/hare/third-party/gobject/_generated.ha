use types::c;
use glib;
export type SignalCMarshaller = ClosureMarshal;
export type SignalCVaMarshaller = VaClosureMarshal;
export type Type = size;
export type Binding = *opaque;
export @symbol("g_binding_dup_source") fn binding_dup_source(binding: *Binding) *Object;
export @symbol("g_binding_dup_target") fn binding_dup_target(binding: *Binding) *Object;
export @symbol("g_binding_get_flags") fn binding_get_flags(binding: *Binding) BindingFlags;
export @symbol("g_binding_get_source") fn binding_get_source(binding: *Binding) *Object;
export @symbol("g_binding_get_source_property") fn binding_get_source_property(binding: *Binding) *c::char;
export @symbol("g_binding_get_target") fn binding_get_target(binding: *Binding) *Object;
export @symbol("g_binding_get_target_property") fn binding_get_target_property(binding: *Binding) *c::char;
export @symbol("g_binding_unbind") fn binding_unbind(binding: *Binding) void;
export type BindingGroup = *opaque;
export @symbol("g_binding_group_new") fn binding_group_new() *BindingGroup;
export @symbol("g_binding_group_bind") fn binding_group_bind(self: *BindingGroup, source_property: *c::char, target: *opaque, target_property: *c::char, flags: BindingFlags) void;
export @symbol("g_binding_group_bind_full") fn binding_group_bind_full(self: *BindingGroup, source_property: *c::char, target: *opaque, target_property: *c::char, flags: BindingFlags, transform_to: BindingTransformFunc, transform_from: BindingTransformFunc, user_data: *opaque, user_data_destroy: glib::DestroyNotify) void;
export @symbol("g_binding_group_bind_with_closures") fn binding_group_bind_with_closures(self: *BindingGroup, source_property: *c::char, target: *opaque, target_property: *c::char, flags: BindingFlags, transform_to: *Closure, transform_from: *Closure) void;
export @symbol("g_binding_group_dup_source") fn binding_group_dup_source(self: *BindingGroup) *opaque;
export @symbol("g_binding_group_set_source") fn binding_group_set_source(self: *BindingGroup, source: *opaque) void;
export type InitiallyUnowned = struct {
	g_type_instance: TypeInstance,
	ref_count: uint,
	qdata: *glib::Data,
};
export type Object = struct {
	g_type_instance: TypeInstance,
	ref_count: uint,
	qdata: *glib::Data,
};
export @symbol("g_object_new") fn object_new(object_type: glib::Type, first_property_name: *c::char, ...) *opaque;
export @symbol("g_object_new_valist") fn object_new_valist(object_type: glib::Type, first_property_name: *c::char, var_args: valist) *Object;
export @symbol("g_object_new_with_properties") fn object_new_with_properties(object_type: glib::Type, n_properties: uint, names: **c::char, values: *Value) *Object;
export @symbol("g_object_newv") fn object_newv(object_type: glib::Type, n_parameters: uint, parameters: *Parameter) *opaque;
export @symbol("g_object_add_toggle_ref") fn object_add_toggle_ref(object: *Object, notify: ToggleNotify, data: *opaque) void;
export @symbol("g_object_add_weak_pointer") fn object_add_weak_pointer(object: *Object, weak_pointer_location: **opaque) void;
export @symbol("g_object_bind_property") fn object_bind_property(source: *opaque, source_property: *c::char, target: *opaque, target_property: *c::char, flags: BindingFlags) *Binding;
export @symbol("g_object_bind_property_full") fn object_bind_property_full(source: *opaque, source_property: *c::char, target: *opaque, target_property: *c::char, flags: BindingFlags, transform_to: BindingTransformFunc, transform_from: BindingTransformFunc, user_data: *opaque, notify: glib::DestroyNotify) *Binding;
export @symbol("g_object_bind_property_with_closures") fn object_bind_property_with_closures(source: *opaque, source_property: *c::char, target: *opaque, target_property: *c::char, flags: BindingFlags, transform_to: *Closure, transform_from: *Closure) *Binding;
export @symbol("g_object_connect") fn object_connect(object: *opaque, signal_spec: *c::char, ...) *opaque;
export @symbol("g_object_disconnect") fn object_disconnect(object: *opaque, signal_spec: *c::char, ...) void;
export @symbol("g_object_dup_data") fn object_dup_data(object: *Object, key: *c::char, dup_func: glib::DuplicateFunc, user_data: *opaque) *opaque;
export @symbol("g_object_dup_qdata") fn object_dup_qdata(object: *Object, quark: glib::Quark, dup_func: glib::DuplicateFunc, user_data: *opaque) *opaque;
export @symbol("g_object_force_floating") fn object_force_floating(object: *Object) void;
export @symbol("g_object_freeze_notify") fn object_freeze_notify(object: *Object) void;
export @symbol("g_object_get") fn object_get(object: *opaque, first_property_name: *c::char, ...) void;
export @symbol("g_object_get_data") fn object_get_data(object: *Object, key: *c::char) *opaque;
export @symbol("g_object_get_property") fn object_get_property(object: *Object, property_name: *c::char, value: *Value) void;
export @symbol("g_object_get_qdata") fn object_get_qdata(object: *Object, quark: glib::Quark) *opaque;
export @symbol("g_object_get_valist") fn object_get_valist(object: *Object, first_property_name: *c::char, var_args: valist) void;
export @symbol("g_object_getv") fn object_getv(object: *Object, n_properties: uint, names: **c::char, values: *Value) void;
export @symbol("g_object_is_floating") fn object_is_floating(object: *opaque) glib::boolean;
export @symbol("g_object_notify") fn object_notify(object: *Object, property_name: *c::char) void;
export @symbol("g_object_notify_by_pspec") fn object_notify_by_pspec(object: *Object, pspec: *ParamSpec) void;
export @symbol("g_object_ref") fn object_ref(object: *opaque) *opaque;
export @symbol("g_object_ref_sink") fn object_ref_sink(object: *opaque) *opaque;
export @symbol("g_object_remove_toggle_ref") fn object_remove_toggle_ref(object: *Object, notify: ToggleNotify, data: *opaque) void;
export @symbol("g_object_remove_weak_pointer") fn object_remove_weak_pointer(object: *Object, weak_pointer_location: **opaque) void;
export @symbol("g_object_replace_data") fn object_replace_data(object: *Object, key: *c::char, oldval: *opaque, newval: *opaque, destroy: glib::DestroyNotify, old_destroy: *glib::DestroyNotify) glib::boolean;
export @symbol("g_object_replace_qdata") fn object_replace_qdata(object: *Object, quark: glib::Quark, oldval: *opaque, newval: *opaque, destroy: glib::DestroyNotify, old_destroy: *glib::DestroyNotify) glib::boolean;
export @symbol("g_object_run_dispose") fn object_run_dispose(object: *Object) void;
export @symbol("g_object_set") fn object_set(object: *opaque, first_property_name: *c::char, ...) void;
export @symbol("g_object_set_data") fn object_set_data(object: *Object, key: *c::char, data: *opaque) void;
export @symbol("g_object_set_data_full") fn object_set_data_full(object: *Object, key: *c::char, data: *opaque, destroy: glib::DestroyNotify) void;
export @symbol("g_object_set_property") fn object_set_property(object: *Object, property_name: *c::char, value: *Value) void;
export @symbol("g_object_set_qdata") fn object_set_qdata(object: *Object, quark: glib::Quark, data: *opaque) void;
export @symbol("g_object_set_qdata_full") fn object_set_qdata_full(object: *Object, quark: glib::Quark, data: *opaque, destroy: glib::DestroyNotify) void;
export @symbol("g_object_set_valist") fn object_set_valist(object: *Object, first_property_name: *c::char, var_args: valist) void;
export @symbol("g_object_setv") fn object_setv(object: *Object, n_properties: uint, names: **c::char, values: *Value) void;
export @symbol("g_object_steal_data") fn object_steal_data(object: *Object, key: *c::char) *opaque;
export @symbol("g_object_steal_qdata") fn object_steal_qdata(object: *Object, quark: glib::Quark) *opaque;
export @symbol("g_object_take_ref") fn object_take_ref(object: *opaque) *opaque;
export @symbol("g_object_thaw_notify") fn object_thaw_notify(object: *Object) void;
export @symbol("g_object_unref") fn object_unref(object: *opaque) void;
export @symbol("g_object_watch_closure") fn object_watch_closure(object: *Object, closure: *Closure) void;
export @symbol("g_object_weak_ref") fn object_weak_ref(object: *Object, notify: WeakNotify, data: *opaque) void;
export @symbol("g_object_weak_unref") fn object_weak_unref(object: *Object, notify: WeakNotify, data: *opaque) void;
export @symbol("g_object_compat_control") fn object_compat_control(what: size, data: *opaque) size;
export @symbol("g_object_interface_find_property") fn object_interface_find_property(g_iface: *opaque, property_name: *c::char) *ParamSpec;
export @symbol("g_object_interface_install_property") fn object_interface_install_property(g_iface: *opaque, pspec: *ParamSpec) void;
export @symbol("g_object_interface_list_properties") fn object_interface_list_properties(g_iface: *opaque, n_properties_p: *uint) **ParamSpec;
export fn object_connect_notify(
	instance: *Object,
	handler: *fn(instance: *Object, pspec: *ParamSpec, data: *opaque) void,
	data: nullable *opaque,
) u64 = signal_connect_data(
	instance,
	*(&"notify\0": *[]u8): *[*]u8: *c::char,
	handler: Callback,
	data: *opaque,
	null: ClosureNotify, 0,
);
export type ParamSpec = struct {
	g_type_instance: TypeInstance,
	name: *c::char,
	flags: ParamFlags,
	value_type: glib::Type,
	owner_type: glib::Type,
	_nick: *c::char,
	_blurb: *c::char,
	qdata: *glib::Data,
	ref_count: uint,
	param_id: uint,
};
export @symbol("g_param_spec_get_blurb") fn param_spec_get_blurb(pspec: *ParamSpec) *c::char;
export @symbol("g_param_spec_get_default_value") fn param_spec_get_default_value(pspec: *ParamSpec) *Value;
export @symbol("g_param_spec_get_name") fn param_spec_get_name(pspec: *ParamSpec) *c::char;
export @symbol("g_param_spec_get_name_quark") fn param_spec_get_name_quark(pspec: *ParamSpec) glib::Quark;
export @symbol("g_param_spec_get_nick") fn param_spec_get_nick(pspec: *ParamSpec) *c::char;
export @symbol("g_param_spec_get_qdata") fn param_spec_get_qdata(pspec: *ParamSpec, quark: glib::Quark) *opaque;
export @symbol("g_param_spec_get_redirect_target") fn param_spec_get_redirect_target(pspec: *ParamSpec) *ParamSpec;
export @symbol("g_param_spec_ref") fn param_spec_ref(pspec: *ParamSpec) *ParamSpec;
export @symbol("g_param_spec_ref_sink") fn param_spec_ref_sink(pspec: *ParamSpec) *ParamSpec;
export @symbol("g_param_spec_set_qdata") fn param_spec_set_qdata(pspec: *ParamSpec, quark: glib::Quark, data: *opaque) void;
export @symbol("g_param_spec_set_qdata_full") fn param_spec_set_qdata_full(pspec: *ParamSpec, quark: glib::Quark, data: *opaque, destroy: glib::DestroyNotify) void;
export @symbol("g_param_spec_sink") fn param_spec_sink(pspec: *ParamSpec) void;
export @symbol("g_param_spec_steal_qdata") fn param_spec_steal_qdata(pspec: *ParamSpec, quark: glib::Quark) *opaque;
export @symbol("g_param_spec_unref") fn param_spec_unref(pspec: *ParamSpec) void;
export @symbol("g_param_spec_internal") fn param_spec_internal(param_type: glib::Type, name: *c::char, nick: *c::char, blurb: *c::char, flags: ParamFlags) *opaque;
export @symbol("g_param_spec_is_valid_name") fn param_spec_is_valid_name(name: *c::char) glib::boolean;
export type ParamSpecBoolean = struct {
	parent_instance: ParamSpec,
	default_value: glib::boolean,
};
export type ParamSpecBoxed = struct {
	parent_instance: ParamSpec,
};
export type ParamSpecChar = struct {
	parent_instance: ParamSpec,
	minimum: i8,
	maximum: i8,
	default_value: i8,
};
export type ParamSpecDouble = struct {
	parent_instance: ParamSpec,
	minimum: f64,
	maximum: f64,
	default_value: f64,
	epsilon: f64,
};
export type ParamSpecEnum = struct {
	parent_instance: ParamSpec,
	enum_class: *EnumClass,
	default_value: int,
};
export type ParamSpecFlags = struct {
	parent_instance: ParamSpec,
	flags_class: *FlagsClass,
	default_value: uint,
};
export type ParamSpecFloat = struct {
	parent_instance: ParamSpec,
	minimum: f32,
	maximum: f32,
	default_value: f32,
	epsilon: f32,
};
export type ParamSpecGType = struct {
	parent_instance: ParamSpec,
	is_a_type: glib::Type,
};
export type ParamSpecInt = struct {
	parent_instance: ParamSpec,
	minimum: int,
	maximum: int,
	default_value: int,
};
export type ParamSpecInt64 = struct {
	parent_instance: ParamSpec,
	minimum: i64,
	maximum: i64,
	default_value: i64,
};
export type ParamSpecLong = struct {
	parent_instance: ParamSpec,
	minimum: c::long,
	maximum: c::long,
	default_value: c::long,
};
export type ParamSpecObject = struct {
	parent_instance: ParamSpec,
};
export type ParamSpecOverride = struct {
	parent_instance: ParamSpec,
	overridden: *ParamSpec,
};
export type ParamSpecParam = struct {
	parent_instance: ParamSpec,
};
export type ParamSpecPointer = struct {
	parent_instance: ParamSpec,
};
export type ParamSpecString = struct {
	parent_instance: ParamSpec,
	default_value: *c::char,
	cset_first: *c::char,
	cset_nth: *c::char,
	substitutor: c::char,
	null_fold_if_empty: uint,
	ensure_non_null: uint,
};
export type ParamSpecUChar = struct {
	parent_instance: ParamSpec,
	minimum: u8,
	maximum: u8,
	default_value: u8,
};
export type ParamSpecUInt = struct {
	parent_instance: ParamSpec,
	minimum: uint,
	maximum: uint,
	default_value: uint,
};
export type ParamSpecUInt64 = struct {
	parent_instance: ParamSpec,
	minimum: u64,
	maximum: u64,
	default_value: u64,
};
export type ParamSpecULong = struct {
	parent_instance: ParamSpec,
	minimum: c::ulong,
	maximum: c::ulong,
	default_value: c::ulong,
};
export type ParamSpecUnichar = struct {
	parent_instance: ParamSpec,
	default_value: rune,
};
export type ParamSpecValueArray = struct {
	parent_instance: ParamSpec,
	element_spec: *ParamSpec,
	fixed_n_elements: uint,
};
export type ParamSpecVariant = struct {
	parent_instance: ParamSpec,
	type_: *glib::VariantType,
	default_value: *glib::Variant,
	padding: [4]*opaque,
};
export type SignalGroup = *opaque;
export @symbol("g_signal_group_new") fn signal_group_new(target_type: glib::Type) *SignalGroup;
export @symbol("g_signal_group_block") fn signal_group_block(self: *SignalGroup) void;
export @symbol("g_signal_group_connect") fn signal_group_connect(self: *SignalGroup, detailed_signal: *c::char, c_handler: Callback, data: *opaque) void;
export @symbol("g_signal_group_connect_after") fn signal_group_connect_after(self: *SignalGroup, detailed_signal: *c::char, c_handler: Callback, data: *opaque) void;
export @symbol("g_signal_group_connect_closure") fn signal_group_connect_closure(self: *SignalGroup, detailed_signal: *c::char, closure: *Closure, after: glib::boolean) void;
export @symbol("g_signal_group_connect_data") fn signal_group_connect_data(self: *SignalGroup, detailed_signal: *c::char, c_handler: Callback, data: *opaque, notify: ClosureNotify, flags: ConnectFlags) void;
export @symbol("g_signal_group_connect_object") fn signal_group_connect_object(self: *SignalGroup, detailed_signal: *c::char, c_handler: Callback, object: *opaque, flags: ConnectFlags) void;
export @symbol("g_signal_group_connect_swapped") fn signal_group_connect_swapped(self: *SignalGroup, detailed_signal: *c::char, c_handler: Callback, data: *opaque) void;
export @symbol("g_signal_group_dup_target") fn signal_group_dup_target(self: *SignalGroup) *opaque;
export @symbol("g_signal_group_set_target") fn signal_group_set_target(self: *SignalGroup, target: *opaque) void;
export @symbol("g_signal_group_unblock") fn signal_group_unblock(self: *SignalGroup) void;
export fn signal_group_connect_bind(
	instance: *SignalGroup,
	handler: *fn(instance: *SignalGroup, instance: *Object, data: *opaque) void,
	data: nullable *opaque,
) u64 = signal_connect_data(
	instance,
	*(&"bind\0": *[]u8): *[*]u8: *c::char,
	handler: Callback,
	data: *opaque,
	null: ClosureNotify, 0,
);
export fn signal_group_connect_unbind(
	instance: *SignalGroup,
	handler: *fn(instance: *SignalGroup, data: *opaque) void,
	data: nullable *opaque,
) u64 = signal_connect_data(
	instance,
	*(&"unbind\0": *[]u8): *[*]u8: *c::char,
	handler: Callback,
	data: *opaque,
	null: ClosureNotify, 0,
);
export type TypeModule = struct {
	parent_instance: Object,
	use_count: uint,
	type_infos: *glib::SList,
	interface_infos: *glib::SList,
	name: *c::char,
};
export @symbol("g_type_module_add_interface") fn type_module_add_interface(module: *TypeModule, instance_type: glib::Type, interface_type: glib::Type, interface_info: *InterfaceInfo) void;
export @symbol("g_type_module_register_enum") fn type_module_register_enum(module: *TypeModule, name: *c::char, const_static_values: *EnumValue) glib::Type;
export @symbol("g_type_module_register_flags") fn type_module_register_flags(module: *TypeModule, name: *c::char, const_static_values: *FlagsValue) glib::Type;
export @symbol("g_type_module_register_type") fn type_module_register_type(module: *TypeModule, parent_type: glib::Type, type_name: *c::char, type_info: *TypeInfo, flags: TypeFlags) glib::Type;
export @symbol("g_type_module_set_name") fn type_module_set_name(module: *TypeModule, name: *c::char) void;
export @symbol("g_type_module_unuse") fn type_module_unuse(module: *TypeModule) void;
export @symbol("g_type_module_use") fn type_module_use(module: *TypeModule) glib::boolean;
export type TypePlugin = *opaque;
export @symbol("g_type_plugin_complete_interface_info") fn type_plugin_complete_interface_info(plugin: *TypePlugin, instance_type: glib::Type, interface_type: glib::Type, info: *InterfaceInfo) void;
export @symbol("g_type_plugin_complete_type_info") fn type_plugin_complete_type_info(plugin: *TypePlugin, g_type: glib::Type, info: *TypeInfo, value_table: *TypeValueTable) void;
export @symbol("g_type_plugin_unuse") fn type_plugin_unuse(plugin: *TypePlugin) void;
export @symbol("g_type_plugin_use") fn type_plugin_use(plugin: *TypePlugin) void;
export type CClosure = struct {
	closure: Closure,
	callback: *opaque,
};
export @symbol("g_cclosure_marshal_BOOLEAN__BOXED_BOXED") fn cclosure_marshal_BOOLEAN__BOXED_BOXED(closure: *Closure, return_value: *Value, n_param_values: uint, param_values: *Value, invocation_hint: *opaque, marshal_data: *opaque) void;
export @symbol("g_cclosure_marshal_BOOLEAN__BOXED_BOXEDv") fn cclosure_marshal_BOOLEAN__BOXED_BOXEDv(closure: *Closure, return_value: *Value, instance: *opaque, args: valist, marshal_data: *opaque, n_params: int, param_types: *glib::Type) void;
export @symbol("g_cclosure_marshal_BOOLEAN__FLAGS") fn cclosure_marshal_BOOLEAN__FLAGS(closure: *Closure, return_value: *Value, n_param_values: uint, param_values: *Value, invocation_hint: *opaque, marshal_data: *opaque) void;
export @symbol("g_cclosure_marshal_BOOLEAN__FLAGSv") fn cclosure_marshal_BOOLEAN__FLAGSv(closure: *Closure, return_value: *Value, instance: *opaque, args: valist, marshal_data: *opaque, n_params: int, param_types: *glib::Type) void;
export @symbol("g_cclosure_marshal_STRING__OBJECT_POINTER") fn cclosure_marshal_STRING__OBJECT_POINTER(closure: *Closure, return_value: *Value, n_param_values: uint, param_values: *Value, invocation_hint: *opaque, marshal_data: *opaque) void;
export @symbol("g_cclosure_marshal_STRING__OBJECT_POINTERv") fn cclosure_marshal_STRING__OBJECT_POINTERv(closure: *Closure, return_value: *Value, instance: *opaque, args: valist, marshal_data: *opaque, n_params: int, param_types: *glib::Type) void;
export @symbol("g_cclosure_marshal_VOID__BOOLEAN") fn cclosure_marshal_VOID__BOOLEAN(closure: *Closure, return_value: *Value, n_param_values: uint, param_values: *Value, invocation_hint: *opaque, marshal_data: *opaque) void;
export @symbol("g_cclosure_marshal_VOID__BOOLEANv") fn cclosure_marshal_VOID__BOOLEANv(closure: *Closure, return_value: *Value, instance: *opaque, args: valist, marshal_data: *opaque, n_params: int, param_types: *glib::Type) void;
export @symbol("g_cclosure_marshal_VOID__BOXED") fn cclosure_marshal_VOID__BOXED(closure: *Closure, return_value: *Value, n_param_values: uint, param_values: *Value, invocation_hint: *opaque, marshal_data: *opaque) void;
export @symbol("g_cclosure_marshal_VOID__BOXEDv") fn cclosure_marshal_VOID__BOXEDv(closure: *Closure, return_value: *Value, instance: *opaque, args: valist, marshal_data: *opaque, n_params: int, param_types: *glib::Type) void;
export @symbol("g_cclosure_marshal_VOID__CHAR") fn cclosure_marshal_VOID__CHAR(closure: *Closure, return_value: *Value, n_param_values: uint, param_values: *Value, invocation_hint: *opaque, marshal_data: *opaque) void;
export @symbol("g_cclosure_marshal_VOID__CHARv") fn cclosure_marshal_VOID__CHARv(closure: *Closure, return_value: *Value, instance: *opaque, args: valist, marshal_data: *opaque, n_params: int, param_types: *glib::Type) void;
export @symbol("g_cclosure_marshal_VOID__DOUBLE") fn cclosure_marshal_VOID__DOUBLE(closure: *Closure, return_value: *Value, n_param_values: uint, param_values: *Value, invocation_hint: *opaque, marshal_data: *opaque) void;
export @symbol("g_cclosure_marshal_VOID__DOUBLEv") fn cclosure_marshal_VOID__DOUBLEv(closure: *Closure, return_value: *Value, instance: *opaque, args: valist, marshal_data: *opaque, n_params: int, param_types: *glib::Type) void;
export @symbol("g_cclosure_marshal_VOID__ENUM") fn cclosure_marshal_VOID__ENUM(closure: *Closure, return_value: *Value, n_param_values: uint, param_values: *Value, invocation_hint: *opaque, marshal_data: *opaque) void;
export @symbol("g_cclosure_marshal_VOID__ENUMv") fn cclosure_marshal_VOID__ENUMv(closure: *Closure, return_value: *Value, instance: *opaque, args: valist, marshal_data: *opaque, n_params: int, param_types: *glib::Type) void;
export @symbol("g_cclosure_marshal_VOID__FLAGS") fn cclosure_marshal_VOID__FLAGS(closure: *Closure, return_value: *Value, n_param_values: uint, param_values: *Value, invocation_hint: *opaque, marshal_data: *opaque) void;
export @symbol("g_cclosure_marshal_VOID__FLAGSv") fn cclosure_marshal_VOID__FLAGSv(closure: *Closure, return_value: *Value, instance: *opaque, args: valist, marshal_data: *opaque, n_params: int, param_types: *glib::Type) void;
export @symbol("g_cclosure_marshal_VOID__FLOAT") fn cclosure_marshal_VOID__FLOAT(closure: *Closure, return_value: *Value, n_param_values: uint, param_values: *Value, invocation_hint: *opaque, marshal_data: *opaque) void;
export @symbol("g_cclosure_marshal_VOID__FLOATv") fn cclosure_marshal_VOID__FLOATv(closure: *Closure, return_value: *Value, instance: *opaque, args: valist, marshal_data: *opaque, n_params: int, param_types: *glib::Type) void;
export @symbol("g_cclosure_marshal_VOID__INT") fn cclosure_marshal_VOID__INT(closure: *Closure, return_value: *Value, n_param_values: uint, param_values: *Value, invocation_hint: *opaque, marshal_data: *opaque) void;
export @symbol("g_cclosure_marshal_VOID__INTv") fn cclosure_marshal_VOID__INTv(closure: *Closure, return_value: *Value, instance: *opaque, args: valist, marshal_data: *opaque, n_params: int, param_types: *glib::Type) void;
export @symbol("g_cclosure_marshal_VOID__LONG") fn cclosure_marshal_VOID__LONG(closure: *Closure, return_value: *Value, n_param_values: uint, param_values: *Value, invocation_hint: *opaque, marshal_data: *opaque) void;
export @symbol("g_cclosure_marshal_VOID__LONGv") fn cclosure_marshal_VOID__LONGv(closure: *Closure, return_value: *Value, instance: *opaque, args: valist, marshal_data: *opaque, n_params: int, param_types: *glib::Type) void;
export @symbol("g_cclosure_marshal_VOID__OBJECT") fn cclosure_marshal_VOID__OBJECT(closure: *Closure, return_value: *Value, n_param_values: uint, param_values: *Value, invocation_hint: *opaque, marshal_data: *opaque) void;
export @symbol("g_cclosure_marshal_VOID__OBJECTv") fn cclosure_marshal_VOID__OBJECTv(closure: *Closure, return_value: *Value, instance: *opaque, args: valist, marshal_data: *opaque, n_params: int, param_types: *glib::Type) void;
export @symbol("g_cclosure_marshal_VOID__PARAM") fn cclosure_marshal_VOID__PARAM(closure: *Closure, return_value: *Value, n_param_values: uint, param_values: *Value, invocation_hint: *opaque, marshal_data: *opaque) void;
export @symbol("g_cclosure_marshal_VOID__PARAMv") fn cclosure_marshal_VOID__PARAMv(closure: *Closure, return_value: *Value, instance: *opaque, args: valist, marshal_data: *opaque, n_params: int, param_types: *glib::Type) void;
export @symbol("g_cclosure_marshal_VOID__POINTER") fn cclosure_marshal_VOID__POINTER(closure: *Closure, return_value: *Value, n_param_values: uint, param_values: *Value, invocation_hint: *opaque, marshal_data: *opaque) void;
export @symbol("g_cclosure_marshal_VOID__POINTERv") fn cclosure_marshal_VOID__POINTERv(closure: *Closure, return_value: *Value, instance: *opaque, args: valist, marshal_data: *opaque, n_params: int, param_types: *glib::Type) void;
export @symbol("g_cclosure_marshal_VOID__STRING") fn cclosure_marshal_VOID__STRING(closure: *Closure, return_value: *Value, n_param_values: uint, param_values: *Value, invocation_hint: *opaque, marshal_data: *opaque) void;
export @symbol("g_cclosure_marshal_VOID__STRINGv") fn cclosure_marshal_VOID__STRINGv(closure: *Closure, return_value: *Value, instance: *opaque, args: valist, marshal_data: *opaque, n_params: int, param_types: *glib::Type) void;
export @symbol("g_cclosure_marshal_VOID__UCHAR") fn cclosure_marshal_VOID__UCHAR(closure: *Closure, return_value: *Value, n_param_values: uint, param_values: *Value, invocation_hint: *opaque, marshal_data: *opaque) void;
export @symbol("g_cclosure_marshal_VOID__UCHARv") fn cclosure_marshal_VOID__UCHARv(closure: *Closure, return_value: *Value, instance: *opaque, args: valist, marshal_data: *opaque, n_params: int, param_types: *glib::Type) void;
export @symbol("g_cclosure_marshal_VOID__UINT") fn cclosure_marshal_VOID__UINT(closure: *Closure, return_value: *Value, n_param_values: uint, param_values: *Value, invocation_hint: *opaque, marshal_data: *opaque) void;
export @symbol("g_cclosure_marshal_VOID__UINT_POINTER") fn cclosure_marshal_VOID__UINT_POINTER(closure: *Closure, return_value: *Value, n_param_values: uint, param_values: *Value, invocation_hint: *opaque, marshal_data: *opaque) void;
export @symbol("g_cclosure_marshal_VOID__UINT_POINTERv") fn cclosure_marshal_VOID__UINT_POINTERv(closure: *Closure, return_value: *Value, instance: *opaque, args: valist, marshal_data: *opaque, n_params: int, param_types: *glib::Type) void;
export @symbol("g_cclosure_marshal_VOID__UINTv") fn cclosure_marshal_VOID__UINTv(closure: *Closure, return_value: *Value, instance: *opaque, args: valist, marshal_data: *opaque, n_params: int, param_types: *glib::Type) void;
export @symbol("g_cclosure_marshal_VOID__ULONG") fn cclosure_marshal_VOID__ULONG(closure: *Closure, return_value: *Value, n_param_values: uint, param_values: *Value, invocation_hint: *opaque, marshal_data: *opaque) void;
export @symbol("g_cclosure_marshal_VOID__ULONGv") fn cclosure_marshal_VOID__ULONGv(closure: *Closure, return_value: *Value, instance: *opaque, args: valist, marshal_data: *opaque, n_params: int, param_types: *glib::Type) void;
export @symbol("g_cclosure_marshal_VOID__VARIANT") fn cclosure_marshal_VOID__VARIANT(closure: *Closure, return_value: *Value, n_param_values: uint, param_values: *Value, invocation_hint: *opaque, marshal_data: *opaque) void;
export @symbol("g_cclosure_marshal_VOID__VARIANTv") fn cclosure_marshal_VOID__VARIANTv(closure: *Closure, return_value: *Value, instance: *opaque, args: valist, marshal_data: *opaque, n_params: int, param_types: *glib::Type) void;
export @symbol("g_cclosure_marshal_VOID__VOID") fn cclosure_marshal_VOID__VOID(closure: *Closure, return_value: *Value, n_param_values: uint, param_values: *Value, invocation_hint: *opaque, marshal_data: *opaque) void;
export @symbol("g_cclosure_marshal_VOID__VOIDv") fn cclosure_marshal_VOID__VOIDv(closure: *Closure, return_value: *Value, instance: *opaque, args: valist, marshal_data: *opaque, n_params: int, param_types: *glib::Type) void;
export @symbol("g_cclosure_marshal_generic") fn cclosure_marshal_generic(closure: *Closure, return_gvalue: *Value, n_param_values: uint, param_values: *Value, invocation_hint: *opaque, marshal_data: *opaque) void;
export @symbol("g_cclosure_marshal_generic_va") fn cclosure_marshal_generic_va(closure: *Closure, return_value: *Value, instance: *opaque, args_list: valist, marshal_data: *opaque, n_params: int, param_types: *glib::Type) void;
export @symbol("g_cclosure_new") fn cclosure_new(callback_func: Callback, user_data: *opaque, destroy_data: ClosureNotify) *Closure;
export @symbol("g_cclosure_new_object") fn cclosure_new_object(callback_func: Callback, object: *Object) *Closure;
export @symbol("g_cclosure_new_object_swap") fn cclosure_new_object_swap(callback_func: Callback, object: *Object) *Closure;
export @symbol("g_cclosure_new_swap") fn cclosure_new_swap(callback_func: Callback, user_data: *opaque, destroy_data: ClosureNotify) *Closure;
export type Closure = struct {
	ref_count: uint,
	meta_marshal_nouse: uint,
	n_guards: uint,
	n_fnotifiers: uint,
	n_inotifiers: uint,
	in_inotify: uint,
	floating: uint,
	derivative_flag: uint,
	in_marshal: uint,
	is_invalid: uint,
	marshal: *fn(closure: *Closure, return_value: *Value, n_param_values: uint, param_values: *Value, invocation_hint: *opaque, marshal_data: *opaque) void,
	data: *opaque,
	notifiers: *ClosureNotifyData,
};
export @symbol("g_closure_new_object") fn closure_new_object(sizeof_closure: uint, object: *Object) *Closure;
export @symbol("g_closure_new_simple") fn closure_new_simple(sizeof_closure: uint, data: *opaque) *Closure;
export @symbol("g_closure_add_finalize_notifier") fn closure_add_finalize_notifier(closure: *Closure, notify_data: *opaque, notify_func: ClosureNotify) void;
export @symbol("g_closure_add_invalidate_notifier") fn closure_add_invalidate_notifier(closure: *Closure, notify_data: *opaque, notify_func: ClosureNotify) void;
export @symbol("g_closure_add_marshal_guards") fn closure_add_marshal_guards(closure: *Closure, pre_marshal_data: *opaque, pre_marshal_notify: ClosureNotify, post_marshal_data: *opaque, post_marshal_notify: ClosureNotify) void;
export @symbol("g_closure_invalidate") fn closure_invalidate(closure: *Closure) void;
export @symbol("g_closure_invoke") fn closure_invoke(closure: *Closure, return_value: *Value, n_param_values: uint, param_values: *Value, invocation_hint: *opaque) void;
export @symbol("g_closure_ref") fn closure_ref(closure: *Closure) *Closure;
export @symbol("g_closure_remove_finalize_notifier") fn closure_remove_finalize_notifier(closure: *Closure, notify_data: *opaque, notify_func: ClosureNotify) void;
export @symbol("g_closure_remove_invalidate_notifier") fn closure_remove_invalidate_notifier(closure: *Closure, notify_data: *opaque, notify_func: ClosureNotify) void;
export @symbol("g_closure_set_marshal") fn closure_set_marshal(closure: *Closure, marshal: ClosureMarshal) void;
export @symbol("g_closure_set_meta_marshal") fn closure_set_meta_marshal(closure: *Closure, marshal_data: *opaque, meta_marshal: ClosureMarshal) void;
export @symbol("g_closure_sink") fn closure_sink(closure: *Closure) void;
export @symbol("g_closure_unref") fn closure_unref(closure: *Closure) void;
export type ClosureNotifyData = struct {
	data: *opaque,
	notify: ClosureNotify,
};
export type EnumClass = struct {
	g_type_class: TypeClass,
	minimum: int,
	maximum: int,
	n_values: uint,
	values: *EnumValue,
};
export type EnumValue = struct {
	value: int,
	value_name: *c::char,
	value_nick: *c::char,
};
export type FlagsClass = struct {
	g_type_class: TypeClass,
	mask: uint,
	n_values: uint,
	values: *FlagsValue,
};
export type FlagsValue = struct {
	value: uint,
	value_name: *c::char,
	value_nick: *c::char,
};
export type InitiallyUnownedClass = struct {
	g_type_class: TypeClass,
	construct_properties: *glib::SList,
	constructor: *fn(type_: glib::Type, n_construct_properties: uint, construct_properties: *ObjectConstructParam) *Object,
	set_property: *fn(object: *Object, property_id: uint, value: *Value, pspec: *ParamSpec) void,
	get_property: *fn(object: *Object, property_id: uint, value: *Value, pspec: *ParamSpec) void,
	dispose: *fn(object: *Object) void,
	finalize: *fn(object: *Object) void,
	dispatch_properties_changed: *fn(object: *Object, n_pspecs: uint, pspecs: **ParamSpec) void,
	notify: *fn(object: *Object, pspec: *ParamSpec) void,
	constructed: *fn(object: *Object) void,
	flags: size,
	n_construct_properties: size,
	pspecs: *opaque,
	n_pspecs: size,
	pdummy: [3]*opaque,
};
export type InterfaceInfo = struct {
	interface_init: InterfaceInitFunc,
	interface_finalize: InterfaceFinalizeFunc,
	interface_data: *opaque,
};
export type ObjectClass = struct {
	g_type_class: TypeClass,
	construct_properties: *glib::SList,
	constructor: *fn(type_: glib::Type, n_construct_properties: uint, construct_properties: *ObjectConstructParam) *Object,
	set_property: *fn(object: *Object, property_id: uint, value: *Value, pspec: *ParamSpec) void,
	get_property: *fn(object: *Object, property_id: uint, value: *Value, pspec: *ParamSpec) void,
	dispose: *fn(object: *Object) void,
	finalize: *fn(object: *Object) void,
	dispatch_properties_changed: *fn(object: *Object, n_pspecs: uint, pspecs: **ParamSpec) void,
	notify: *fn(object: *Object, pspec: *ParamSpec) void,
	constructed: *fn(object: *Object) void,
	flags: size,
	n_construct_properties: size,
	pspecs: *opaque,
	n_pspecs: size,
	pdummy: [3]*opaque,
};
export @symbol("g_object_class_find_property") fn object_class_find_property(oclass: *ObjectClass, property_name: *c::char) *ParamSpec;
export @symbol("g_object_class_install_properties") fn object_class_install_properties(oclass: *ObjectClass, n_pspecs: uint, pspecs: **ParamSpec) void;
export @symbol("g_object_class_install_property") fn object_class_install_property(oclass: *ObjectClass, property_id: uint, pspec: *ParamSpec) void;
export @symbol("g_object_class_list_properties") fn object_class_list_properties(oclass: *ObjectClass, n_properties: *uint) **ParamSpec;
export @symbol("g_object_class_override_property") fn object_class_override_property(oclass: *ObjectClass, property_id: uint, name: *c::char) void;
export type ObjectConstructParam = struct {
	pspec: *ParamSpec,
	value: *Value,
};
export type ParamSpecClass = struct {
	g_type_class: TypeClass,
	value_type: glib::Type,
	finalize: *fn(pspec: *ParamSpec) void,
	value_set_default: *fn(pspec: *ParamSpec, value: *Value) void,
	value_validate: *fn(pspec: *ParamSpec, value: *Value) glib::boolean,
	values_cmp: *fn(pspec: *ParamSpec, value1: *Value, value2: *Value) int,
	value_is_valid: *fn(pspec: *ParamSpec, value: *Value) glib::boolean,
	dummy: [3]*opaque,
};
export type ParamSpecPool = *opaque;
export @symbol("g_param_spec_pool_insert") fn param_spec_pool_insert(pool: *ParamSpecPool, pspec: *ParamSpec, owner_type: glib::Type) void;
export @symbol("g_param_spec_pool_list") fn param_spec_pool_list(pool: *ParamSpecPool, owner_type: glib::Type, n_pspecs_p: *uint) **ParamSpec;
export @symbol("g_param_spec_pool_list_owned") fn param_spec_pool_list_owned(pool: *ParamSpecPool, owner_type: glib::Type) *glib::List;
export @symbol("g_param_spec_pool_lookup") fn param_spec_pool_lookup(pool: *ParamSpecPool, param_name: *c::char, owner_type: glib::Type, walk_ancestors: glib::boolean) *ParamSpec;
export @symbol("g_param_spec_pool_remove") fn param_spec_pool_remove(pool: *ParamSpecPool, pspec: *ParamSpec) void;
export @symbol("g_param_spec_pool_new") fn param_spec_pool_new(type_prefixing: glib::boolean) *ParamSpecPool;
export type ParamSpecTypeInfo = struct {
	instance_size: u16,
	n_preallocs: u16,
	instance_init: *fn(pspec: *ParamSpec) void,
	value_type: glib::Type,
	finalize: *fn(pspec: *ParamSpec) void,
	value_set_default: *fn(pspec: *ParamSpec, value: *Value) void,
	value_validate: *fn(pspec: *ParamSpec, value: *Value) glib::boolean,
	values_cmp: *fn(pspec: *ParamSpec, value1: *Value, value2: *Value) int,
};
export type Parameter = struct {
	name: *c::char,
	value: Value,
};
export type SignalInvocationHint = struct {
	signal_id: uint,
	detail: glib::Quark,
	run_type: SignalFlags,
};
export type SignalQuery = struct {
	signal_id: uint,
	signal_name: *c::char,
	itype: glib::Type,
	signal_flags: SignalFlags,
	return_type: glib::Type,
	n_params: uint,
	param_types: *glib::Type,
};
export type TypeClass = struct {
	g_type: glib::Type,
};
export @symbol("g_type_class_add_private") fn type_class_add_private(g_class: *opaque, private_size: size) void;
export @symbol("g_type_class_get_instance_private_offset") fn type_class_get_instance_private_offset(g_class: *opaque) int;
export @symbol("g_type_class_get_private") fn type_class_get_private(klass: *TypeClass, private_type: glib::Type) *opaque;
export @symbol("g_type_class_peek_parent") fn type_class_peek_parent(g_class: *opaque) *opaque;
export @symbol("g_type_class_unref") fn type_class_unref(g_class: *opaque) void;
export @symbol("g_type_class_unref_uncached") fn type_class_unref_uncached(g_class: *opaque) void;
export @symbol("g_type_class_adjust_private_offset") fn type_class_adjust_private_offset(g_class: *opaque, private_size_or_offset: *int) void;
export @symbol("g_type_class_peek") fn type_class_peek(type_: glib::Type) *opaque;
export @symbol("g_type_class_peek_static") fn type_class_peek_static(type_: glib::Type) *opaque;
export @symbol("g_type_class_ref") fn type_class_ref(type_: glib::Type) *opaque;
export type TypeFundamentalInfo = struct {
	type_flags: TypeFundamentalFlags,
};
export type TypeInfo = struct {
	class_size: u16,
	base_init: BaseInitFunc,
	base_finalize: BaseFinalizeFunc,
	class_init: ClassInitFunc,
	class_finalize: ClassFinalizeFunc,
	class_data: *opaque,
	instance_size: u16,
	n_preallocs: u16,
	instance_init: InstanceInitFunc,
	value_table: *TypeValueTable,
};
export type TypeInstance = struct {
	g_class: *TypeClass,
};
export @symbol("g_type_instance_get_private") fn type_instance_get_private(instance: *TypeInstance, private_type: glib::Type) *opaque;
export type TypeInterface = struct {
	g_type: glib::Type,
	g_instance_type: glib::Type,
};
export @symbol("g_type_interface_peek_parent") fn type_interface_peek_parent(g_iface: *opaque) *opaque;
export @symbol("g_type_interface_add_prerequisite") fn type_interface_add_prerequisite(interface_type: glib::Type, prerequisite_type: glib::Type) void;
export @symbol("g_type_interface_get_plugin") fn type_interface_get_plugin(instance_type: glib::Type, interface_type: glib::Type) *TypePlugin;
export @symbol("g_type_interface_instantiatable_prerequisite") fn type_interface_instantiatable_prerequisite(interface_type: glib::Type) glib::Type;
export @symbol("g_type_interface_peek") fn type_interface_peek(instance_class: *opaque, iface_type: glib::Type) *opaque;
export @symbol("g_type_interface_prerequisites") fn type_interface_prerequisites(interface_type: glib::Type, n_prerequisites: *uint) *glib::Type;
export type TypeModuleClass = struct {
	parent_class: ObjectClass,
	load: *fn(module: *TypeModule) glib::boolean,
	unload: *fn(module: *TypeModule) void,
	reserved1: *fn() void,
	reserved2: *fn() void,
	reserved3: *fn() void,
	reserved4: *fn() void,
};
export type TypePluginClass = struct {
	base_iface: TypeInterface,
	use_plugin: TypePluginUse,
	unuse_plugin: TypePluginUnuse,
	complete_type_info: TypePluginCompleteTypeInfo,
	complete_interface_info: TypePluginCompleteInterfaceInfo,
};
export type TypeQuery = struct {
	type_: glib::Type,
	type_name: *c::char,
	class_size: uint,
	instance_size: uint,
};
export type TypeValueTable = struct {
	value_init: TypeValueInitFunc,
	value_free: TypeValueFreeFunc,
	value_copy: TypeValueCopyFunc,
	value_peek_pointer: TypeValuePeekPointerFunc,
	collect_format: *c::char,
	collect_value: TypeValueCollectFunc,
	lcopy_format: *c::char,
	lcopy_value: TypeValueLCopyFunc,
};
export @symbol("g_type_value_table_peek") fn type_value_table_peek(type_: glib::Type) *TypeValueTable;
export type Value = struct {
	g_type: glib::Type,
	data: [2]ValueUnion,
};
export @symbol("g_value_copy") fn value_copy(src_value: *Value, dest_value: *Value) void;
export @symbol("g_value_dup_boxed") fn value_dup_boxed(value: *Value) *opaque;
export @symbol("g_value_dup_object") fn value_dup_object(value: *Value) *opaque;
export @symbol("g_value_dup_param") fn value_dup_param(value: *Value) *ParamSpec;
export @symbol("g_value_dup_string") fn value_dup_string(value: *Value) *c::char;
export @symbol("g_value_dup_variant") fn value_dup_variant(value: *Value) *glib::Variant;
export @symbol("g_value_fits_pointer") fn value_fits_pointer(value: *Value) glib::boolean;
export @symbol("g_value_get_boolean") fn value_get_boolean(value: *Value) glib::boolean;
export @symbol("g_value_get_boxed") fn value_get_boxed(value: *Value) *opaque;
export @symbol("g_value_get_char") fn value_get_char(value: *Value) c::char;
export @symbol("g_value_get_double") fn value_get_double(value: *Value) f64;
export @symbol("g_value_get_enum") fn value_get_enum(value: *Value) int;
export @symbol("g_value_get_flags") fn value_get_flags(value: *Value) uint;
export @symbol("g_value_get_float") fn value_get_float(value: *Value) f32;
export @symbol("g_value_get_gtype") fn value_get_gtype(value: *Value) glib::Type;
export @symbol("g_value_get_int") fn value_get_int(value: *Value) int;
export @symbol("g_value_get_int64") fn value_get_int64(value: *Value) i64;
export @symbol("g_value_get_long") fn value_get_long(value: *Value) c::long;
export @symbol("g_value_get_object") fn value_get_object(value: *Value) *opaque;
export @symbol("g_value_get_param") fn value_get_param(value: *Value) *ParamSpec;
export @symbol("g_value_get_pointer") fn value_get_pointer(value: *Value) *opaque;
export @symbol("g_value_get_schar") fn value_get_schar(value: *Value) i8;
export @symbol("g_value_get_string") fn value_get_string(value: *Value) *c::char;
export @symbol("g_value_get_uchar") fn value_get_uchar(value: *Value) c::uchar;
export @symbol("g_value_get_uint") fn value_get_uint(value: *Value) uint;
export @symbol("g_value_get_uint64") fn value_get_uint64(value: *Value) u64;
export @symbol("g_value_get_ulong") fn value_get_ulong(value: *Value) c::ulong;
export @symbol("g_value_get_variant") fn value_get_variant(value: *Value) *glib::Variant;
export @symbol("g_value_init") fn value_init(value: *Value, g_type: glib::Type) *Value;
export @symbol("g_value_init_from_instance") fn value_init_from_instance(value: *Value, instance: *opaque) void;
export @symbol("g_value_peek_pointer") fn value_peek_pointer(value: *Value) *opaque;
export @symbol("g_value_reset") fn value_reset(value: *Value) *Value;
export @symbol("g_value_set_boolean") fn value_set_boolean(value: *Value, v_boolean: glib::boolean) void;
export @symbol("g_value_set_boxed") fn value_set_boxed(value: *Value, v_boxed: *opaque) void;
export @symbol("g_value_set_boxed_take_ownership") fn value_set_boxed_take_ownership(value: *Value, v_boxed: *opaque) void;
export @symbol("g_value_set_char") fn value_set_char(value: *Value, v_char: c::char) void;
export @symbol("g_value_set_double") fn value_set_double(value: *Value, v_double: f64) void;
export @symbol("g_value_set_enum") fn value_set_enum(value: *Value, v_enum: int) void;
export @symbol("g_value_set_flags") fn value_set_flags(value: *Value, v_flags: uint) void;
export @symbol("g_value_set_float") fn value_set_float(value: *Value, v_float: f32) void;
export @symbol("g_value_set_gtype") fn value_set_gtype(value: *Value, v_gtype: glib::Type) void;
export @symbol("g_value_set_instance") fn value_set_instance(value: *Value, instance: *opaque) void;
export @symbol("g_value_set_int") fn value_set_int(value: *Value, v_int: int) void;
export @symbol("g_value_set_int64") fn value_set_int64(value: *Value, v_int64: i64) void;
export @symbol("g_value_set_interned_string") fn value_set_interned_string(value: *Value, v_string: *c::char) void;
export @symbol("g_value_set_long") fn value_set_long(value: *Value, v_long: c::long) void;
export @symbol("g_value_set_object") fn value_set_object(value: *Value, v_object: *opaque) void;
export @symbol("g_value_set_object_take_ownership") fn value_set_object_take_ownership(value: *Value, v_object: *opaque) void;
export @symbol("g_value_set_param") fn value_set_param(value: *Value, param: *ParamSpec) void;
export @symbol("g_value_set_param_take_ownership") fn value_set_param_take_ownership(value: *Value, param: *ParamSpec) void;
export @symbol("g_value_set_pointer") fn value_set_pointer(value: *Value, v_pointer: *opaque) void;
export @symbol("g_value_set_schar") fn value_set_schar(value: *Value, v_char: i8) void;
export @symbol("g_value_set_static_boxed") fn value_set_static_boxed(value: *Value, v_boxed: *opaque) void;
export @symbol("g_value_set_static_string") fn value_set_static_string(value: *Value, v_string: *c::char) void;
export @symbol("g_value_set_string") fn value_set_string(value: *Value, v_string: *c::char) void;
export @symbol("g_value_set_string_take_ownership") fn value_set_string_take_ownership(value: *Value, v_string: *c::char) void;
export @symbol("g_value_set_uchar") fn value_set_uchar(value: *Value, v_uchar: c::uchar) void;
export @symbol("g_value_set_uint") fn value_set_uint(value: *Value, v_uint: uint) void;
export @symbol("g_value_set_uint64") fn value_set_uint64(value: *Value, v_uint64: u64) void;
export @symbol("g_value_set_ulong") fn value_set_ulong(value: *Value, v_ulong: c::ulong) void;
export @symbol("g_value_set_variant") fn value_set_variant(value: *Value, variant: *glib::Variant) void;
export @symbol("g_value_take_boxed") fn value_take_boxed(value: *Value, v_boxed: *opaque) void;
export @symbol("g_value_take_object") fn value_take_object(value: *Value, v_object: *opaque) void;
export @symbol("g_value_take_param") fn value_take_param(value: *Value, param: *ParamSpec) void;
export @symbol("g_value_take_string") fn value_take_string(value: *Value, v_string: *c::char) void;
export @symbol("g_value_take_variant") fn value_take_variant(value: *Value, variant: *glib::Variant) void;
export @symbol("g_value_transform") fn value_transform(src_value: *Value, dest_value: *Value) glib::boolean;
export @symbol("g_value_unset") fn value_unset(value: *Value) void;
export @symbol("g_value_register_transform_func") fn value_register_transform_func(src_type: glib::Type, dest_type: glib::Type, transform_func: ValueTransform) void;
export @symbol("g_value_type_compatible") fn value_type_compatible(src_type: glib::Type, dest_type: glib::Type) glib::boolean;
export @symbol("g_value_type_transformable") fn value_type_transformable(src_type: glib::Type, dest_type: glib::Type) glib::boolean;
export type ValueArray = struct {
	n_values: uint,
	values: *Value,
	n_prealloced: uint,
};
export @symbol("g_value_array_new") fn value_array_new(n_prealloced: uint) *ValueArray;
export @symbol("g_value_array_append") fn value_array_append(value_array: *ValueArray, value: *Value) *ValueArray;
export @symbol("g_value_array_copy") fn value_array_copy(value_array: *ValueArray) *ValueArray;
export @symbol("g_value_array_free") fn value_array_free(value_array: *ValueArray) void;
export @symbol("g_value_array_get_nth") fn value_array_get_nth(value_array: *ValueArray, index_: uint) *Value;
export @symbol("g_value_array_insert") fn value_array_insert(value_array: *ValueArray, index_: uint, value: *Value) *ValueArray;
export @symbol("g_value_array_prepend") fn value_array_prepend(value_array: *ValueArray, value: *Value) *ValueArray;
export @symbol("g_value_array_remove") fn value_array_remove(value_array: *ValueArray, index_: uint) *ValueArray;
export @symbol("g_value_array_sort") fn value_array_sort(value_array: *ValueArray, compare_func: glib::CompareFunc) *ValueArray;
export @symbol("g_value_array_sort_with_data") fn value_array_sort_with_data(value_array: *ValueArray, compare_func: glib::CompareDataFunc, user_data: *opaque) *ValueArray;
export type WeakRef = struct {
	priv: union {
	p: *opaque,
},
};
export @symbol("g_weak_ref_clear") fn weak_ref_clear(weak_ref: *WeakRef) void;
export @symbol("g_weak_ref_get") fn weak_ref_get(weak_ref: *WeakRef) *opaque;
export @symbol("g_weak_ref_init") fn weak_ref_init(weak_ref: *WeakRef, object: *opaque) void;
export @symbol("g_weak_ref_set") fn weak_ref_set(weak_ref: *WeakRef, object: *opaque) void;
export @symbol("g_boxed_copy") fn boxed_copy(boxed_type: glib::Type, src_boxed: *opaque) *opaque;
export @symbol("g_boxed_free") fn boxed_free(boxed_type: glib::Type, boxed: *opaque) void;
export @symbol("g_boxed_type_register_static") fn boxed_type_register_static(name: *c::char, boxed_copy: BoxedCopyFunc, boxed_free: BoxedFreeFunc) glib::Type;
export @symbol("g_clear_object") fn clear_object(object_ptr: **Object) void;
export @symbol("g_clear_signal_handler") fn clear_signal_handler(handler_id_ptr: *c::ulong, instance: *opaque) void;
export @symbol("g_enum_complete_type_info") fn enum_complete_type_info(g_enum_type: glib::Type, info: *TypeInfo, const_values: *EnumValue) void;
export @symbol("g_enum_get_value") fn enum_get_value(enum_class: *EnumClass, value: int) *EnumValue;
export @symbol("g_enum_get_value_by_name") fn enum_get_value_by_name(enum_class: *EnumClass, name: *c::char) *EnumValue;
export @symbol("g_enum_get_value_by_nick") fn enum_get_value_by_nick(enum_class: *EnumClass, nick: *c::char) *EnumValue;
export @symbol("g_enum_register_static") fn enum_register_static(name: *c::char, const_static_values: *EnumValue) glib::Type;
export @symbol("g_enum_to_string") fn enum_to_string(g_enum_type: glib::Type, value: int) *c::char;
export @symbol("g_flags_complete_type_info") fn flags_complete_type_info(g_flags_type: glib::Type, info: *TypeInfo, const_values: *FlagsValue) void;
export @symbol("g_flags_get_first_value") fn flags_get_first_value(flags_class: *FlagsClass, value: uint) *FlagsValue;
export @symbol("g_flags_get_value_by_name") fn flags_get_value_by_name(flags_class: *FlagsClass, name: *c::char) *FlagsValue;
export @symbol("g_flags_get_value_by_nick") fn flags_get_value_by_nick(flags_class: *FlagsClass, nick: *c::char) *FlagsValue;
export @symbol("g_flags_register_static") fn flags_register_static(name: *c::char, const_static_values: *FlagsValue) glib::Type;
export @symbol("g_flags_to_string") fn flags_to_string(flags_type: glib::Type, value: uint) *c::char;
export @symbol("g_gtype_get_type") fn gtype_get_type() glib::Type;
export @symbol("g_param_spec_boolean") fn param_spec_boolean(name: *c::char, nick: *c::char, blurb: *c::char, default_value: glib::boolean, flags: ParamFlags) *ParamSpec;
export @symbol("g_param_spec_boxed") fn param_spec_boxed(name: *c::char, nick: *c::char, blurb: *c::char, boxed_type: glib::Type, flags: ParamFlags) *ParamSpec;
export @symbol("g_param_spec_char") fn param_spec_char(name: *c::char, nick: *c::char, blurb: *c::char, minimum: i8, maximum: i8, default_value: i8, flags: ParamFlags) *ParamSpec;
export @symbol("g_param_spec_double") fn param_spec_double(name: *c::char, nick: *c::char, blurb: *c::char, minimum: f64, maximum: f64, default_value: f64, flags: ParamFlags) *ParamSpec;
export @symbol("g_param_spec_enum") fn param_spec_enum(name: *c::char, nick: *c::char, blurb: *c::char, enum_type: glib::Type, default_value: int, flags: ParamFlags) *ParamSpec;
export @symbol("g_param_spec_flags") fn param_spec_flags(name: *c::char, nick: *c::char, blurb: *c::char, flags_type: glib::Type, default_value: uint, flags: ParamFlags) *ParamSpec;
export @symbol("g_param_spec_float") fn param_spec_float(name: *c::char, nick: *c::char, blurb: *c::char, minimum: f32, maximum: f32, default_value: f32, flags: ParamFlags) *ParamSpec;
export @symbol("g_param_spec_gtype") fn param_spec_gtype(name: *c::char, nick: *c::char, blurb: *c::char, is_a_type: glib::Type, flags: ParamFlags) *ParamSpec;
export @symbol("g_param_spec_int") fn param_spec_int(name: *c::char, nick: *c::char, blurb: *c::char, minimum: int, maximum: int, default_value: int, flags: ParamFlags) *ParamSpec;
export @symbol("g_param_spec_int64") fn param_spec_int64(name: *c::char, nick: *c::char, blurb: *c::char, minimum: i64, maximum: i64, default_value: i64, flags: ParamFlags) *ParamSpec;
export @symbol("g_param_spec_long") fn param_spec_long(name: *c::char, nick: *c::char, blurb: *c::char, minimum: c::long, maximum: c::long, default_value: c::long, flags: ParamFlags) *ParamSpec;
export @symbol("g_param_spec_object") fn param_spec_object(name: *c::char, nick: *c::char, blurb: *c::char, object_type: glib::Type, flags: ParamFlags) *ParamSpec;
export @symbol("g_param_spec_override") fn param_spec_override(name: *c::char, overridden: *ParamSpec) *ParamSpec;
export @symbol("g_param_spec_param") fn param_spec_param(name: *c::char, nick: *c::char, blurb: *c::char, param_type: glib::Type, flags: ParamFlags) *ParamSpec;
export @symbol("g_param_spec_pointer") fn param_spec_pointer(name: *c::char, nick: *c::char, blurb: *c::char, flags: ParamFlags) *ParamSpec;
export @symbol("g_param_spec_string") fn param_spec_string(name: *c::char, nick: *c::char, blurb: *c::char, default_value: *c::char, flags: ParamFlags) *ParamSpec;
export @symbol("g_param_spec_uchar") fn param_spec_uchar(name: *c::char, nick: *c::char, blurb: *c::char, minimum: u8, maximum: u8, default_value: u8, flags: ParamFlags) *ParamSpec;
export @symbol("g_param_spec_uint") fn param_spec_uint(name: *c::char, nick: *c::char, blurb: *c::char, minimum: uint, maximum: uint, default_value: uint, flags: ParamFlags) *ParamSpec;
export @symbol("g_param_spec_uint64") fn param_spec_uint64(name: *c::char, nick: *c::char, blurb: *c::char, minimum: u64, maximum: u64, default_value: u64, flags: ParamFlags) *ParamSpec;
export @symbol("g_param_spec_ulong") fn param_spec_ulong(name: *c::char, nick: *c::char, blurb: *c::char, minimum: c::ulong, maximum: c::ulong, default_value: c::ulong, flags: ParamFlags) *ParamSpec;
export @symbol("g_param_spec_unichar") fn param_spec_unichar(name: *c::char, nick: *c::char, blurb: *c::char, default_value: rune, flags: ParamFlags) *ParamSpec;
export @symbol("g_param_spec_value_array") fn param_spec_value_array(name: *c::char, nick: *c::char, blurb: *c::char, element_spec: *ParamSpec, flags: ParamFlags) *ParamSpec;
export @symbol("g_param_spec_variant") fn param_spec_variant(name: *c::char, nick: *c::char, blurb: *c::char, type_: *glib::VariantType, default_value: *glib::Variant, flags: ParamFlags) *ParamSpec;
export @symbol("g_param_type_register_static") fn param_type_register_static(name: *c::char, pspec_info: *ParamSpecTypeInfo) glib::Type;
export @symbol("g_param_value_convert") fn param_value_convert(pspec: *ParamSpec, src_value: *Value, dest_value: *Value, strict_validation: glib::boolean) glib::boolean;
export @symbol("g_param_value_defaults") fn param_value_defaults(pspec: *ParamSpec, value: *Value) glib::boolean;
export @symbol("g_param_value_is_valid") fn param_value_is_valid(pspec: *ParamSpec, value: *Value) glib::boolean;
export @symbol("g_param_value_set_default") fn param_value_set_default(pspec: *ParamSpec, value: *Value) void;
export @symbol("g_param_value_validate") fn param_value_validate(pspec: *ParamSpec, value: *Value) glib::boolean;
export @symbol("g_param_values_cmp") fn param_values_cmp(pspec: *ParamSpec, value1: *Value, value2: *Value) int;
export @symbol("g_pointer_type_register_static") fn pointer_type_register_static(name: *c::char) glib::Type;
export @symbol("g_signal_accumulator_first_wins") fn signal_accumulator_first_wins(ihint: *SignalInvocationHint, return_accu: *Value, handler_return: *Value, dummy: *opaque) glib::boolean;
export @symbol("g_signal_accumulator_true_handled") fn signal_accumulator_true_handled(ihint: *SignalInvocationHint, return_accu: *Value, handler_return: *Value, dummy: *opaque) glib::boolean;
export @symbol("g_signal_add_emission_hook") fn signal_add_emission_hook(signal_id: uint, detail: glib::Quark, hook_func: SignalEmissionHook, hook_data: *opaque, data_destroy: glib::DestroyNotify) c::ulong;
export @symbol("g_signal_chain_from_overridden") fn signal_chain_from_overridden(instance_and_params: *Value, return_value: *Value) void;
export @symbol("g_signal_chain_from_overridden_handler") fn signal_chain_from_overridden_handler(instance: *opaque, ...) void;
export @symbol("g_signal_connect_closure") fn signal_connect_closure(instance: *opaque, detailed_signal: *c::char, closure: *Closure, after: glib::boolean) c::ulong;
export @symbol("g_signal_connect_closure_by_id") fn signal_connect_closure_by_id(instance: *opaque, signal_id: uint, detail: glib::Quark, closure: *Closure, after: glib::boolean) c::ulong;
export @symbol("g_signal_connect_data") fn signal_connect_data(instance: *opaque, detailed_signal: *c::char, c_handler: Callback, data: *opaque, destroy_data: ClosureNotify, connect_flags: ConnectFlags) c::ulong;
export @symbol("g_signal_connect_object") fn signal_connect_object(instance: *opaque, detailed_signal: *c::char, c_handler: Callback, gobject: *opaque, connect_flags: ConnectFlags) c::ulong;
export @symbol("g_signal_emit") fn signal_emit(instance: *opaque, signal_id: uint, detail: glib::Quark, ...) void;
export @symbol("g_signal_emit_by_name") fn signal_emit_by_name(instance: *opaque, detailed_signal: *c::char, ...) void;
export @symbol("g_signal_emit_valist") fn signal_emit_valist(instance: *opaque, signal_id: uint, detail: glib::Quark, var_args: valist) void;
export @symbol("g_signal_emitv") fn signal_emitv(instance_and_params: *Value, signal_id: uint, detail: glib::Quark, return_value: *Value) void;
export @symbol("g_signal_get_invocation_hint") fn signal_get_invocation_hint(instance: *opaque) *SignalInvocationHint;
export @symbol("g_signal_handler_block") fn signal_handler_block(instance: *opaque, handler_id: c::ulong) void;
export @symbol("g_signal_handler_disconnect") fn signal_handler_disconnect(instance: *opaque, handler_id: c::ulong) void;
export @symbol("g_signal_handler_find") fn signal_handler_find(instance: *opaque, mask: SignalMatchType, signal_id: uint, detail: glib::Quark, closure: *Closure, func: *opaque, data: *opaque) c::ulong;
export @symbol("g_signal_handler_is_connected") fn signal_handler_is_connected(instance: *opaque, handler_id: c::ulong) glib::boolean;
export @symbol("g_signal_handler_unblock") fn signal_handler_unblock(instance: *opaque, handler_id: c::ulong) void;
export @symbol("g_signal_handlers_block_matched") fn signal_handlers_block_matched(instance: *opaque, mask: SignalMatchType, signal_id: uint, detail: glib::Quark, closure: *Closure, func: *opaque, data: *opaque) uint;
export @symbol("g_signal_handlers_destroy") fn signal_handlers_destroy(instance: *opaque) void;
export @symbol("g_signal_handlers_disconnect_matched") fn signal_handlers_disconnect_matched(instance: *opaque, mask: SignalMatchType, signal_id: uint, detail: glib::Quark, closure: *Closure, func: *opaque, data: *opaque) uint;
export @symbol("g_signal_handlers_unblock_matched") fn signal_handlers_unblock_matched(instance: *opaque, mask: SignalMatchType, signal_id: uint, detail: glib::Quark, closure: *Closure, func: *opaque, data: *opaque) uint;
export @symbol("g_signal_has_handler_pending") fn signal_has_handler_pending(instance: *opaque, signal_id: uint, detail: glib::Quark, may_be_blocked: glib::boolean) glib::boolean;
export @symbol("g_signal_is_valid_name") fn signal_is_valid_name(name: *c::char) glib::boolean;
export @symbol("g_signal_list_ids") fn signal_list_ids(itype: glib::Type, n_ids: *uint) *uint;
export @symbol("g_signal_lookup") fn signal_lookup(name: *c::char, itype: glib::Type) uint;
export @symbol("g_signal_name") fn signal_name(signal_id: uint) *c::char;
export @symbol("g_signal_new") fn signal_new(signal_name: *c::char, itype: glib::Type, signal_flags: SignalFlags, class_offset: uint, accumulator: SignalAccumulator, accu_data: *opaque, c_marshaller: SignalCMarshaller, return_type: glib::Type, n_params: uint, ...) uint;
export @symbol("g_signal_new_class_handler") fn signal_new_class_handler(signal_name: *c::char, itype: glib::Type, signal_flags: SignalFlags, class_handler: Callback, accumulator: SignalAccumulator, accu_data: *opaque, c_marshaller: SignalCMarshaller, return_type: glib::Type, n_params: uint, ...) uint;
export @symbol("g_signal_new_valist") fn signal_new_valist(signal_name: *c::char, itype: glib::Type, signal_flags: SignalFlags, class_closure: *Closure, accumulator: SignalAccumulator, accu_data: *opaque, c_marshaller: SignalCMarshaller, return_type: glib::Type, n_params: uint, args: valist) uint;
export @symbol("g_signal_newv") fn signal_newv(signal_name: *c::char, itype: glib::Type, signal_flags: SignalFlags, class_closure: *Closure, accumulator: SignalAccumulator, accu_data: *opaque, c_marshaller: SignalCMarshaller, return_type: glib::Type, n_params: uint, param_types: *glib::Type) uint;
export @symbol("g_signal_override_class_closure") fn signal_override_class_closure(signal_id: uint, instance_type: glib::Type, class_closure: *Closure) void;
export @symbol("g_signal_override_class_handler") fn signal_override_class_handler(signal_name: *c::char, instance_type: glib::Type, class_handler: Callback) void;
export @symbol("g_signal_parse_name") fn signal_parse_name(detailed_signal: *c::char, itype: glib::Type, signal_id_p: *uint, detail_p: *glib::Quark, force_detail_quark: glib::boolean) glib::boolean;
export @symbol("g_signal_query") fn signal_query(signal_id: uint, query: *SignalQuery) void;
export @symbol("g_signal_remove_emission_hook") fn signal_remove_emission_hook(signal_id: uint, hook_id: c::ulong) void;
export @symbol("g_signal_set_va_marshaller") fn signal_set_va_marshaller(signal_id: uint, instance_type: glib::Type, va_marshaller: SignalCVaMarshaller) void;
export @symbol("g_signal_stop_emission") fn signal_stop_emission(instance: *opaque, signal_id: uint, detail: glib::Quark) void;
export @symbol("g_signal_stop_emission_by_name") fn signal_stop_emission_by_name(instance: *opaque, detailed_signal: *c::char) void;
export @symbol("g_signal_type_cclosure_new") fn signal_type_cclosure_new(itype: glib::Type, struct_offset: uint) *Closure;
export @symbol("g_source_set_closure") fn source_set_closure(source: *glib::Source, closure: *Closure) void;
export @symbol("g_source_set_dummy_callback") fn source_set_dummy_callback(source: *glib::Source) void;
export @symbol("g_strdup_value_contents") fn strdup_value_contents(value: *Value) *c::char;
export @symbol("g_type_add_class_cache_func") fn type_add_class_cache_func(cache_data: *opaque, cache_func: TypeClassCacheFunc) void;
export @symbol("g_type_add_class_private") fn type_add_class_private(class_type: glib::Type, private_size: size) void;
export @symbol("g_type_add_instance_private") fn type_add_instance_private(class_type: glib::Type, private_size: size) int;
export @symbol("g_type_add_interface_check") fn type_add_interface_check(check_data: *opaque, check_func: TypeInterfaceCheckFunc) void;
export @symbol("g_type_add_interface_dynamic") fn type_add_interface_dynamic(instance_type: glib::Type, interface_type: glib::Type, plugin: *TypePlugin) void;
export @symbol("g_type_add_interface_static") fn type_add_interface_static(instance_type: glib::Type, interface_type: glib::Type, info: *InterfaceInfo) void;
export @symbol("g_type_check_class_cast") fn type_check_class_cast(g_class: *TypeClass, is_a_type: glib::Type) *TypeClass;
export @symbol("g_type_check_class_is_a") fn type_check_class_is_a(g_class: *TypeClass, is_a_type: glib::Type) glib::boolean;
export @symbol("g_type_check_instance") fn type_check_instance(instance: *TypeInstance) glib::boolean;
export @symbol("g_type_check_instance_cast") fn type_check_instance_cast(instance: *TypeInstance, iface_type: glib::Type) *TypeInstance;
export @symbol("g_type_check_instance_is_a") fn type_check_instance_is_a(instance: *TypeInstance, iface_type: glib::Type) glib::boolean;
export @symbol("g_type_check_instance_is_fundamentally_a") fn type_check_instance_is_fundamentally_a(instance: *TypeInstance, fundamental_type: glib::Type) glib::boolean;
export @symbol("g_type_check_is_value_type") fn type_check_is_value_type(type_: glib::Type) glib::boolean;
export @symbol("g_type_check_value") fn type_check_value(value: *Value) glib::boolean;
export @symbol("g_type_check_value_holds") fn type_check_value_holds(value: *Value, type_: glib::Type) glib::boolean;
export @symbol("g_type_children") fn type_children(type_: glib::Type, n_children: *uint) *glib::Type;
export @symbol("g_type_create_instance") fn type_create_instance(type_: glib::Type) *TypeInstance;
export @symbol("g_type_default_interface_peek") fn type_default_interface_peek(g_type: glib::Type) *opaque;
export @symbol("g_type_default_interface_ref") fn type_default_interface_ref(g_type: glib::Type) *opaque;
export @symbol("g_type_default_interface_unref") fn type_default_interface_unref(g_iface: *opaque) void;
export @symbol("g_type_depth") fn type_depth(type_: glib::Type) uint;
export @symbol("g_type_ensure") fn type_ensure(type_: glib::Type) void;
export @symbol("g_type_free_instance") fn type_free_instance(instance: *TypeInstance) void;
export @symbol("g_type_from_name") fn type_from_name(name: *c::char) glib::Type;
export @symbol("g_type_fundamental") fn type_fundamental(type_id: glib::Type) glib::Type;
export @symbol("g_type_fundamental_next") fn type_fundamental_next() glib::Type;
export @symbol("g_type_get_instance_count") fn type_get_instance_count(type_: glib::Type) int;
export @symbol("g_type_get_plugin") fn type_get_plugin(type_: glib::Type) *TypePlugin;
export @symbol("g_type_get_qdata") fn type_get_qdata(type_: glib::Type, quark: glib::Quark) *opaque;
export @symbol("g_type_get_type_registration_serial") fn type_get_type_registration_serial() uint;
export @symbol("g_type_init") fn type_init() void;
export @symbol("g_type_init_with_debug_flags") fn type_init_with_debug_flags(debug_flags: TypeDebugFlags) void;
export @symbol("g_type_interfaces") fn type_interfaces(type_: glib::Type, n_interfaces: *uint) *glib::Type;
export @symbol("g_type_is_a") fn type_is_a(type_: glib::Type, is_a_type: glib::Type) glib::boolean;
export @symbol("g_type_name") fn type_name(type_: glib::Type) *c::char;
export @symbol("g_type_name_from_class") fn type_name_from_class(g_class: *TypeClass) *c::char;
export @symbol("g_type_name_from_instance") fn type_name_from_instance(instance: *TypeInstance) *c::char;
export @symbol("g_type_next_base") fn type_next_base(leaf_type: glib::Type, root_type: glib::Type) glib::Type;
export @symbol("g_type_parent") fn type_parent(type_: glib::Type) glib::Type;
export @symbol("g_type_qname") fn type_qname(type_: glib::Type) glib::Quark;
export @symbol("g_type_query") fn type_query(type_: glib::Type, query: *TypeQuery) void;
export @symbol("g_type_register_dynamic") fn type_register_dynamic(parent_type: glib::Type, type_name: *c::char, plugin: *TypePlugin, flags: TypeFlags) glib::Type;
export @symbol("g_type_register_fundamental") fn type_register_fundamental(type_id: glib::Type, type_name: *c::char, info: *TypeInfo, finfo: *TypeFundamentalInfo, flags: TypeFlags) glib::Type;
export @symbol("g_type_register_static") fn type_register_static(parent_type: glib::Type, type_name: *c::char, info: *TypeInfo, flags: TypeFlags) glib::Type;
export @symbol("g_type_register_static_simple") fn type_register_static_simple(parent_type: glib::Type, type_name: *c::char, class_size: uint, class_init: ClassInitFunc, instance_size: uint, instance_init: InstanceInitFunc, flags: TypeFlags) glib::Type;
export @symbol("g_type_remove_class_cache_func") fn type_remove_class_cache_func(cache_data: *opaque, cache_func: TypeClassCacheFunc) void;
export @symbol("g_type_remove_interface_check") fn type_remove_interface_check(check_data: *opaque, check_func: TypeInterfaceCheckFunc) void;
export @symbol("g_type_set_qdata") fn type_set_qdata(type_: glib::Type, quark: glib::Quark, data: *opaque) void;
export @symbol("g_type_test_flags") fn type_test_flags(type_: glib::Type, flags: uint) glib::boolean;
export type TypeCValue = opaque;
export type _Value__data__union = union {
	v_int: int,
	v_uint: uint,
	v_long: c::long,
	v_ulong: c::ulong,
	v_int64: i64,
	v_uint64: u64,
	v_float: f32,
	v_double: f64,
	v_pointer: *opaque,
};
export type BindingFlags = enum uint {
	DEFAULT = 0,
	BIDIRECTIONAL = 1,
	SYNC_CREATE = 2,
	INVERT_BOOLEAN = 4,
};
export type ConnectFlags = enum uint {
	DEFAULT = 0,
	AFTER = 1,
	SWAPPED = 2,
};
export type ParamFlags = enum uint {
	READABLE = 1,
	WRITABLE = 2,
	READWRITE = 3,
	CONSTRUCT = 4,
	CONSTRUCT_ONLY = 8,
	LAX_VALIDATION = 16,
	STATIC_NAME = 32,
	PRIVATE = 32,
	STATIC_NICK = 64,
	STATIC_BLURB = 128,
	EXPLICIT_NOTIFY = 1073741824,
	DEPRECATED = 2147483648,
};
export type SignalFlags = enum uint {
	RUN_FIRST = 1,
	RUN_LAST = 2,
	RUN_CLEANUP = 4,
	NO_RECURSE = 8,
	DETAILED = 16,
	ACTION = 32,
	NO_HOOKS = 64,
	MUST_COLLECT = 128,
	DEPRECATED = 256,
	ACCUMULATOR_FIRST_RUN = 131072,
};
export type SignalMatchType = enum uint {
	ID = 1,
	DETAIL = 2,
	CLOSURE = 4,
	FUNC = 8,
	DATA = 16,
	UNBLOCKED = 32,
};
export type TypeDebugFlags = enum uint {
	NONE = 0,
	OBJECTS = 1,
	SIGNALS = 2,
	INSTANCE_COUNT = 4,
	MASK = 7,
};
export type TypeFlags = enum uint {
	NONE = 0,
	ABSTRACT = 16,
	VALUE_ABSTRACT = 32,
	FINAL = 64,
	DEPRECATED = 128,
};
export type TypeFundamentalFlags = enum uint {
	CLASSED = 1,
	INSTANTIATABLE = 2,
	DERIVABLE = 4,
	DEEP_DERIVABLE = 8,
};
export type BaseFinalizeFunc = *fn(g_class: *opaque) void;
export type BaseInitFunc = *fn(g_class: *opaque) void;
export type BindingTransformFunc = *fn(binding: *Binding, from_value: *Value, to_value: *Value, user_data: *opaque) glib::boolean;
export type BoxedCopyFunc = *fn(boxed: *opaque) *opaque;
export type BoxedFreeFunc = *fn(boxed: *opaque) void;
export type Callback = *fn() void;
export type ClassFinalizeFunc = *fn(g_class: *opaque, class_data: *opaque) void;
export type ClassInitFunc = *fn(g_class: *opaque, class_data: *opaque) void;
export type ClosureMarshal = *fn(closure: *Closure, return_value: *Value, n_param_values: uint, param_values: *Value, invocation_hint: *opaque, marshal_data: *opaque) void;
export type ClosureNotify = *fn(data: *opaque, closure: *Closure) void;
export type InstanceInitFunc = *fn(instance: *TypeInstance, g_class: *opaque) void;
export type InterfaceFinalizeFunc = *fn(g_iface: *opaque, iface_data: *opaque) void;
export type InterfaceInitFunc = *fn(g_iface: *opaque, iface_data: *opaque) void;
export type ObjectFinalizeFunc = *fn(object: *Object) void;
export type ObjectGetPropertyFunc = *fn(object: *Object, property_id: uint, value: *Value, pspec: *ParamSpec) void;
export type ObjectSetPropertyFunc = *fn(object: *Object, property_id: uint, value: *Value, pspec: *ParamSpec) void;
export type SignalAccumulator = *fn(ihint: *SignalInvocationHint, return_accu: *Value, handler_return: *Value, data: *opaque) glib::boolean;
export type SignalEmissionHook = *fn(ihint: *SignalInvocationHint, n_param_values: uint, param_values: *Value, data: *opaque) glib::boolean;
export type ToggleNotify = *fn(data: *opaque, object: *Object, is_last_ref: glib::boolean) void;
export type TypeClassCacheFunc = *fn(cache_data: *opaque, g_class: *TypeClass) glib::boolean;
export type TypeInterfaceCheckFunc = *fn(check_data: *opaque, g_iface: *opaque) void;
export type TypePluginCompleteInterfaceInfo = *fn(plugin: *TypePlugin, instance_type: glib::Type, interface_type: glib::Type, info: *InterfaceInfo) void;
export type TypePluginCompleteTypeInfo = *fn(plugin: *TypePlugin, g_type: glib::Type, info: *TypeInfo, value_table: *TypeValueTable) void;
export type TypePluginUnuse = *fn(plugin: *TypePlugin) void;
export type TypePluginUse = *fn(plugin: *TypePlugin) void;
export type TypeValueCollectFunc = *fn(value: *Value, n_collect_values: uint, collect_values: *TypeCValue, collect_flags: uint) *c::char;
export type TypeValueCopyFunc = *fn(src_value: *Value, dest_value: *Value) void;
export type TypeValueFreeFunc = *fn(value: *Value) void;
export type TypeValueInitFunc = *fn(value: *Value) void;
export type TypeValueLCopyFunc = *fn(value: *Value, n_collect_values: uint, collect_values: *TypeCValue, collect_flags: uint) *c::char;
export type TypeValuePeekPointerFunc = *fn(value: *Value) *opaque;
export type VaClosureMarshal = *fn(closure: *Closure, return_value: *Value, instance: *opaque, args: valist, marshal_data: *opaque, n_params: int, param_types: *glib::Type) void;
export type ValueTransform = *fn(src_value: *Value, dest_value: *Value) void;
export type WeakNotify = *fn(data: *opaque, where_the_object_was: *Object) void;
