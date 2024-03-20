use types::c;

export type time_t = i64;

export type tm = struct {
	tm_sec: int,
	tm_min: int,
	tm_hour: int,
	tm_mday: int,
	tm_mon: int,
	tm_year: int,
	tm_wday: int,
	tm_yday: int,
	tm_isdst: int,
};

export type FILE = opaque;

export type passwd = struct {
	pw_name: *c::char,
	pw_passwd: *c::char,
	pw_uid: uint,
	pw_gid: uint,
	pw_gecos: *c::char,
	pw_dir: *c::char,
	pw_shell: *c::char,
};
