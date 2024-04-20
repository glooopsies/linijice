use io;
use errors;
use types::c;

use gobject;
use glib;
use gio;

fn file_rewrite(s: *io::stream, buf: const []u8) (size | io::error) = {
    let s = s: *rewritestream;
    let error = null: *glib::Error;

    if (len(buf) == 0) {
        return 0z;
    };

    const written = gio::output_stream_write(s.stream, &buf[0], len(buf), null: *gio::Cancellable, &error);
    if (error != null) { return errors::invalid; };

    return written: size;
};

fn rewrite_close(s: *io::stream) (void | io::error) = {
    let s = s: *rewritestream;
    let error = null: *glib::Error;

    gio::output_stream_close(s.stream, null: *gio::Cancellable, &error);
    if (error != null) { return errors::invalid; };
};

export type rewritestream = struct {
	vtable: io::stream,
    file:   *gio::File,
    stream: *gio::FileOutputStream,
};

const rewrite_vtable: io::vtable = io::vtable {
	writer = &file_rewrite,
    closer = &rewrite_close,
    ...
};

export fn rewrite_stream(file: *gio::File) (rewritestream | io::error) = {
    let error = null: *glib::Error;

    const stream = gio::file_replace(
        file,
        null: *c::char,
        glib::FALSE,
        gio::FileCreateFlags::NONE,
        null: *gio::Cancellable,
        &error,
    );

    if (error != null) {
        return errors::invalid;
    };

	return rewritestream {
		vtable = &rewrite_vtable,
        file   = file,
        stream = stream,
	};
};
