use io;
use errors;
use types::c;

use gobject;
use glib;
use gio;

fn file_read(s: *io::stream, buf: []u8) (size | io::EOF | io::error) = {
    let s = s: *filestream;
    let error = null: *glib::Error;

    const istream = gio::iostream_get_input_stream(s.stream);
    const read = gio::input_stream_read(istream, &buf[0], len(buf), null: *gio::Cancellable, &error);
    if (error != null) { return errors::invalid; };

    if (read == 0) { return io::EOF; };

    return read: size;
};

fn file_write(s: *io::stream, buf: const []u8) (size | io::error) = {
    let s = s: *filestream;
    let error = null: *glib::Error;

    const ostream = gio::iostream_get_output_stream(s.stream);
    const written = gio::output_stream_write(ostream, &buf[0], len(buf), null: *gio::Cancellable, &error);
    if (error != null) { return errors::invalid; };

    return written: size;
};

fn file_close(s: *io::stream) (void | io::error) = {
    let s = s: *filestream;
    let error = null: *glib::Error;

    gio::iostream_close(s.stream, null: *gio::Cancellable, &error);
    if (error != null) { return errors::invalid; };
};

fn file_seek(s: *io::stream, off: io::off, w: io::whence) (io::off | io::error) = {
    let s = s: *filestream;
    let error = null: *glib::Error;

    if (gio::seekable_can_seek(s.stream: *gio::Seekable) == glib::FALSE) {
        return errors::unsupported;
    };

    gio::seekable_seek(
        s.stream: *gio::Seekable,
        off,
        switch(w) {
            case io::whence::CUR => yield glib::SeekType::CUR;
            case io::whence::SET => yield glib::SeekType::SET;
            case io::whence::END => yield glib::SeekType::END;
        },
        null: *gio::Cancellable,
        &error,
    );

    return gio::seekable_tell(s.stream: *gio::Seekable);
};

export type filestream = struct {
	vtable: io::stream,
    file:   *gio::File,
    stream: *gio::FileIOStream,
};

const file_vtable: io::vtable = io::vtable {
	reader = &file_read,
	writer = &file_write,
    closer = &file_close,
    seeker = &file_seek,
    ...
};

export fn file_stream(file: *gio::File) (filestream | io::error) = {
    let error = null: *glib::Error;

    const stream = gio::file_open_readwrite(
        file, null: *gio::Cancellable, &error,
    );

    if (error != null) {
        return errors::invalid;
    };

	return filestream {
		vtable = &file_vtable,
        file   = file,
        stream = stream,
	};
};
