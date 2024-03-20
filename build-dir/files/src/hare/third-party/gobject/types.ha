use types::c;

export type ValueUnion = union {
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
