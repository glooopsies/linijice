use glib;
use types::c;
export type Module = *opaque;
export @symbol("g_module_close") fn module_close(module: *Module) glib::boolean;
export @symbol("g_module_make_resident") fn module_make_resident(module: *Module) void;
export @symbol("g_module_name") fn module_name(module: *Module) *c::char;
export @symbol("g_module_symbol") fn module_symbol(module: *Module, symbol_name: *c::char, symbol: **opaque) glib::boolean;
export @symbol("g_module_build_path") fn module_build_path(directory: *c::char, module_name: *c::char) *c::char;
export @symbol("g_module_error") fn module_error() *c::char;
export @symbol("g_module_error_quark") fn module_error_quark() glib::Quark;
export @symbol("g_module_open") fn module_open(file_name: *c::char, flags: ModuleFlags) *Module;
export @symbol("g_module_open_full") fn module_open_full(file_name: *c::char, flags: ModuleFlags, error: nullable **glib::Error) *Module;
export @symbol("g_module_supported") fn module_supported() glib::boolean;
export type ModuleError = enum uint {
	FAILED = 0,
	CHECK_FAILED = 1,
};
export type ModuleFlags = enum uint {
	LAZY = 1,
	LOCAL = 2,
	MASK = 3,
};
export type ModuleCheckInit = *fn(module: *Module) *c::char;
export type ModuleUnload = *fn(module: *Module) void;
