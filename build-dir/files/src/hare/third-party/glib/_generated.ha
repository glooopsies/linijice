use types::c;
use types::libc;
export type DateDay = u8;
export type DateYear = u16;
export type MainContextPusher = opaque;
export type MutexLocker = opaque;
export type Pid = int;
export type Quark = u32;
export type RWLockReaderLocker = opaque;
export type RWLockWriterLocker = opaque;
export type RecMutexLocker = opaque;
export type RefString = c::char;
export type Strv = **c::char;
export type Time = i32;
export type TimeSpan = i64;
export type Type = size;
export type Array = struct {
	data: *c::char,
	len_: uint,
};
export @symbol("g_array_append_vals") fn array_append_vals(array: *Array, data: *opaque, len_: uint) *Array;
export @symbol("g_array_binary_search") fn array_binary_search(array: *Array, target: *opaque, compare_func: CompareFunc, out_match_index: *uint) boolean;
export @symbol("g_array_copy") fn array_copy(array: *Array) *Array;
export @symbol("g_array_free") fn array_free(array: *Array, free_segment: boolean) *c::char;
export @symbol("g_array_get_element_size") fn array_get_element_size(array: *Array) uint;
export @symbol("g_array_insert_vals") fn array_insert_vals(array: *Array, index_: uint, data: *opaque, len_: uint) *Array;
export @symbol("g_array_new") fn array_new(zero_terminated: boolean, clear_: boolean, element_size: uint) *Array;
export @symbol("g_array_new_take") fn array_new_take(data: *opaque, len_: size, clear: boolean, element_size: size) *Array;
export @symbol("g_array_new_take_zero_terminated") fn array_new_take_zero_terminated(data: *opaque, clear: boolean, element_size: size) *Array;
export @symbol("g_array_prepend_vals") fn array_prepend_vals(array: *Array, data: *opaque, len_: uint) *Array;
export @symbol("g_array_ref") fn array_ref(array: *Array) *Array;
export @symbol("g_array_remove_index") fn array_remove_index(array: *Array, index_: uint) *Array;
export @symbol("g_array_remove_index_fast") fn array_remove_index_fast(array: *Array, index_: uint) *Array;
export @symbol("g_array_remove_range") fn array_remove_range(array: *Array, index_: uint, length: uint) *Array;
export @symbol("g_array_set_clear_func") fn array_set_clear_func(array: *Array, clear_func: DestroyNotify) void;
export @symbol("g_array_set_size") fn array_set_size(array: *Array, length: uint) *Array;
export @symbol("g_array_sized_new") fn array_sized_new(zero_terminated: boolean, clear_: boolean, element_size: uint, reserved_size: uint) *Array;
export @symbol("g_array_sort") fn array_sort(array: *Array, compare_func: CompareFunc) void;
export @symbol("g_array_sort_with_data") fn array_sort_with_data(array: *Array, compare_func: CompareDataFunc, user_data: *opaque) void;
export @symbol("g_array_steal") fn array_steal(array: *Array, len_: *size) *opaque;
export @symbol("g_array_unref") fn array_unref(array: *Array) void;
export type AsyncQueue = *opaque;
export @symbol("g_async_queue_length") fn async_queue_length(queue: *AsyncQueue) int;
export @symbol("g_async_queue_length_unlocked") fn async_queue_length_unlocked(queue: *AsyncQueue) int;
export @symbol("g_async_queue_lock") fn async_queue_lock(queue: *AsyncQueue) void;
export @symbol("g_async_queue_pop") fn async_queue_pop(queue: *AsyncQueue) *opaque;
export @symbol("g_async_queue_pop_unlocked") fn async_queue_pop_unlocked(queue: *AsyncQueue) *opaque;
export @symbol("g_async_queue_push") fn async_queue_push(queue: *AsyncQueue, data: *opaque) void;
export @symbol("g_async_queue_push_front") fn async_queue_push_front(queue: *AsyncQueue, item: *opaque) void;
export @symbol("g_async_queue_push_front_unlocked") fn async_queue_push_front_unlocked(queue: *AsyncQueue, item: *opaque) void;
export @symbol("g_async_queue_push_sorted") fn async_queue_push_sorted(queue: *AsyncQueue, data: *opaque, func: CompareDataFunc, user_data: *opaque) void;
export @symbol("g_async_queue_push_sorted_unlocked") fn async_queue_push_sorted_unlocked(queue: *AsyncQueue, data: *opaque, func: CompareDataFunc, user_data: *opaque) void;
export @symbol("g_async_queue_push_unlocked") fn async_queue_push_unlocked(queue: *AsyncQueue, data: *opaque) void;
export @symbol("g_async_queue_ref") fn async_queue_ref(queue: *AsyncQueue) *AsyncQueue;
export @symbol("g_async_queue_ref_unlocked") fn async_queue_ref_unlocked(queue: *AsyncQueue) void;
export @symbol("g_async_queue_remove") fn async_queue_remove(queue: *AsyncQueue, item: *opaque) boolean;
export @symbol("g_async_queue_remove_unlocked") fn async_queue_remove_unlocked(queue: *AsyncQueue, item: *opaque) boolean;
export @symbol("g_async_queue_sort") fn async_queue_sort(queue: *AsyncQueue, func: CompareDataFunc, user_data: *opaque) void;
export @symbol("g_async_queue_sort_unlocked") fn async_queue_sort_unlocked(queue: *AsyncQueue, func: CompareDataFunc, user_data: *opaque) void;
export @symbol("g_async_queue_timed_pop") fn async_queue_timed_pop(queue: *AsyncQueue, end_time: *TimeVal) *opaque;
export @symbol("g_async_queue_timed_pop_unlocked") fn async_queue_timed_pop_unlocked(queue: *AsyncQueue, end_time: *TimeVal) *opaque;
export @symbol("g_async_queue_timeout_pop") fn async_queue_timeout_pop(queue: *AsyncQueue, timeout: u64) *opaque;
export @symbol("g_async_queue_timeout_pop_unlocked") fn async_queue_timeout_pop_unlocked(queue: *AsyncQueue, timeout: u64) *opaque;
export @symbol("g_async_queue_try_pop") fn async_queue_try_pop(queue: *AsyncQueue) *opaque;
export @symbol("g_async_queue_try_pop_unlocked") fn async_queue_try_pop_unlocked(queue: *AsyncQueue) *opaque;
export @symbol("g_async_queue_unlock") fn async_queue_unlock(queue: *AsyncQueue) void;
export @symbol("g_async_queue_unref") fn async_queue_unref(queue: *AsyncQueue) void;
export @symbol("g_async_queue_unref_and_unlock") fn async_queue_unref_and_unlock(queue: *AsyncQueue) void;
export @symbol("g_async_queue_new") fn async_queue_new() *AsyncQueue;
export @symbol("g_async_queue_new_full") fn async_queue_new_full(item_free_func: DestroyNotify) *AsyncQueue;
export type BookmarkFile = *opaque;
export @symbol("g_bookmark_file_new") fn bookmark_file_new() *BookmarkFile;
export @symbol("g_bookmark_file_add_application") fn bookmark_file_add_application(bookmark: *BookmarkFile, uri: *c::char, name: *c::char, exec: *c::char) void;
export @symbol("g_bookmark_file_add_group") fn bookmark_file_add_group(bookmark: *BookmarkFile, uri: *c::char, group: *c::char) void;
export @symbol("g_bookmark_file_copy") fn bookmark_file_copy(bookmark: *BookmarkFile) *BookmarkFile;
export @symbol("g_bookmark_file_free") fn bookmark_file_free(bookmark: *BookmarkFile) void;
export @symbol("g_bookmark_file_get_added") fn bookmark_file_get_added(bookmark: *BookmarkFile, uri: *c::char, error: nullable **Error) libc::time_t;
export @symbol("g_bookmark_file_get_added_date_time") fn bookmark_file_get_added_date_time(bookmark: *BookmarkFile, uri: *c::char, error: nullable **Error) *DateTime;
export @symbol("g_bookmark_file_get_app_info") fn bookmark_file_get_app_info(bookmark: *BookmarkFile, uri: *c::char, name: *c::char, exec: **c::char, count: *uint, stamp: *libc::time_t, error: nullable **Error) boolean;
export @symbol("g_bookmark_file_get_application_info") fn bookmark_file_get_application_info(bookmark: *BookmarkFile, uri: *c::char, name: *c::char, exec: **c::char, count: *uint, stamp: **DateTime, error: nullable **Error) boolean;
export @symbol("g_bookmark_file_get_applications") fn bookmark_file_get_applications(bookmark: *BookmarkFile, uri: *c::char, length: *size, error: nullable **Error) **c::char;
export @symbol("g_bookmark_file_get_description") fn bookmark_file_get_description(bookmark: *BookmarkFile, uri: *c::char, error: nullable **Error) *c::char;
export @symbol("g_bookmark_file_get_groups") fn bookmark_file_get_groups(bookmark: *BookmarkFile, uri: *c::char, length: *size, error: nullable **Error) **c::char;
export @symbol("g_bookmark_file_get_icon") fn bookmark_file_get_icon(bookmark: *BookmarkFile, uri: *c::char, href: **c::char, mime_type: **c::char, error: nullable **Error) boolean;
export @symbol("g_bookmark_file_get_is_private") fn bookmark_file_get_is_private(bookmark: *BookmarkFile, uri: *c::char, error: nullable **Error) boolean;
export @symbol("g_bookmark_file_get_mime_type") fn bookmark_file_get_mime_type(bookmark: *BookmarkFile, uri: *c::char, error: nullable **Error) *c::char;
export @symbol("g_bookmark_file_get_modified") fn bookmark_file_get_modified(bookmark: *BookmarkFile, uri: *c::char, error: nullable **Error) libc::time_t;
export @symbol("g_bookmark_file_get_modified_date_time") fn bookmark_file_get_modified_date_time(bookmark: *BookmarkFile, uri: *c::char, error: nullable **Error) *DateTime;
export @symbol("g_bookmark_file_get_size") fn bookmark_file_get_size(bookmark: *BookmarkFile) int;
export @symbol("g_bookmark_file_get_title") fn bookmark_file_get_title(bookmark: *BookmarkFile, uri: *c::char, error: nullable **Error) *c::char;
export @symbol("g_bookmark_file_get_uris") fn bookmark_file_get_uris(bookmark: *BookmarkFile, length: *size) **c::char;
export @symbol("g_bookmark_file_get_visited") fn bookmark_file_get_visited(bookmark: *BookmarkFile, uri: *c::char, error: nullable **Error) libc::time_t;
export @symbol("g_bookmark_file_get_visited_date_time") fn bookmark_file_get_visited_date_time(bookmark: *BookmarkFile, uri: *c::char, error: nullable **Error) *DateTime;
export @symbol("g_bookmark_file_has_application") fn bookmark_file_has_application(bookmark: *BookmarkFile, uri: *c::char, name: *c::char, error: nullable **Error) boolean;
export @symbol("g_bookmark_file_has_group") fn bookmark_file_has_group(bookmark: *BookmarkFile, uri: *c::char, group: *c::char, error: nullable **Error) boolean;
export @symbol("g_bookmark_file_has_item") fn bookmark_file_has_item(bookmark: *BookmarkFile, uri: *c::char) boolean;
export @symbol("g_bookmark_file_load_from_data") fn bookmark_file_load_from_data(bookmark: *BookmarkFile, data: *c::char, length: size, error: nullable **Error) boolean;
export @symbol("g_bookmark_file_load_from_data_dirs") fn bookmark_file_load_from_data_dirs(bookmark: *BookmarkFile, file: *c::char, full_path: **c::char, error: nullable **Error) boolean;
export @symbol("g_bookmark_file_load_from_file") fn bookmark_file_load_from_file(bookmark: *BookmarkFile, filename: *c::char, error: nullable **Error) boolean;
export @symbol("g_bookmark_file_move_item") fn bookmark_file_move_item(bookmark: *BookmarkFile, old_uri: *c::char, new_uri: *c::char, error: nullable **Error) boolean;
export @symbol("g_bookmark_file_remove_application") fn bookmark_file_remove_application(bookmark: *BookmarkFile, uri: *c::char, name: *c::char, error: nullable **Error) boolean;
export @symbol("g_bookmark_file_remove_group") fn bookmark_file_remove_group(bookmark: *BookmarkFile, uri: *c::char, group: *c::char, error: nullable **Error) boolean;
export @symbol("g_bookmark_file_remove_item") fn bookmark_file_remove_item(bookmark: *BookmarkFile, uri: *c::char, error: nullable **Error) boolean;
export @symbol("g_bookmark_file_set_added") fn bookmark_file_set_added(bookmark: *BookmarkFile, uri: *c::char, added: libc::time_t) void;
export @symbol("g_bookmark_file_set_added_date_time") fn bookmark_file_set_added_date_time(bookmark: *BookmarkFile, uri: *c::char, added: *DateTime) void;
export @symbol("g_bookmark_file_set_app_info") fn bookmark_file_set_app_info(bookmark: *BookmarkFile, uri: *c::char, name: *c::char, exec: *c::char, count: int, stamp: libc::time_t, error: nullable **Error) boolean;
export @symbol("g_bookmark_file_set_application_info") fn bookmark_file_set_application_info(bookmark: *BookmarkFile, uri: *c::char, name: *c::char, exec: *c::char, count: int, stamp: *DateTime, error: nullable **Error) boolean;
export @symbol("g_bookmark_file_set_description") fn bookmark_file_set_description(bookmark: *BookmarkFile, uri: *c::char, description: *c::char) void;
export @symbol("g_bookmark_file_set_groups") fn bookmark_file_set_groups(bookmark: *BookmarkFile, uri: *c::char, groups: **c::char, length: size) void;
export @symbol("g_bookmark_file_set_icon") fn bookmark_file_set_icon(bookmark: *BookmarkFile, uri: *c::char, href: *c::char, mime_type: *c::char) void;
export @symbol("g_bookmark_file_set_is_private") fn bookmark_file_set_is_private(bookmark: *BookmarkFile, uri: *c::char, is_private: boolean) void;
export @symbol("g_bookmark_file_set_mime_type") fn bookmark_file_set_mime_type(bookmark: *BookmarkFile, uri: *c::char, mime_type: *c::char) void;
export @symbol("g_bookmark_file_set_modified") fn bookmark_file_set_modified(bookmark: *BookmarkFile, uri: *c::char, modified: libc::time_t) void;
export @symbol("g_bookmark_file_set_modified_date_time") fn bookmark_file_set_modified_date_time(bookmark: *BookmarkFile, uri: *c::char, modified: *DateTime) void;
export @symbol("g_bookmark_file_set_title") fn bookmark_file_set_title(bookmark: *BookmarkFile, uri: *c::char, title: *c::char) void;
export @symbol("g_bookmark_file_set_visited") fn bookmark_file_set_visited(bookmark: *BookmarkFile, uri: *c::char, visited: libc::time_t) void;
export @symbol("g_bookmark_file_set_visited_date_time") fn bookmark_file_set_visited_date_time(bookmark: *BookmarkFile, uri: *c::char, visited: *DateTime) void;
export @symbol("g_bookmark_file_to_data") fn bookmark_file_to_data(bookmark: *BookmarkFile, length: *size, error: nullable **Error) *c::char;
export @symbol("g_bookmark_file_to_file") fn bookmark_file_to_file(bookmark: *BookmarkFile, filename: *c::char, error: nullable **Error) boolean;
export @symbol("g_bookmark_file_error_quark") fn bookmark_file_error_quark() Quark;
export type ByteArray = struct {
	data: *u8,
	len_: uint,
};
export @symbol("g_byte_array_append") fn byte_array_append(array: *ByteArray, data: *u8, len_: uint) *ByteArray;
export @symbol("g_byte_array_free") fn byte_array_free(array: *ByteArray, free_segment: boolean) *u8;
export @symbol("g_byte_array_free_to_bytes") fn byte_array_free_to_bytes(array: *ByteArray) *Bytes;
export @symbol("g_byte_array_new") fn byte_array_new() *ByteArray;
export @symbol("g_byte_array_new_take") fn byte_array_new_take(data: *u8, len_: size) *ByteArray;
export @symbol("g_byte_array_prepend") fn byte_array_prepend(array: *ByteArray, data: *u8, len_: uint) *ByteArray;
export @symbol("g_byte_array_ref") fn byte_array_ref(array: *ByteArray) *ByteArray;
export @symbol("g_byte_array_remove_index") fn byte_array_remove_index(array: *ByteArray, index_: uint) *ByteArray;
export @symbol("g_byte_array_remove_index_fast") fn byte_array_remove_index_fast(array: *ByteArray, index_: uint) *ByteArray;
export @symbol("g_byte_array_remove_range") fn byte_array_remove_range(array: *ByteArray, index_: uint, length: uint) *ByteArray;
export @symbol("g_byte_array_set_size") fn byte_array_set_size(array: *ByteArray, length: uint) *ByteArray;
export @symbol("g_byte_array_sized_new") fn byte_array_sized_new(reserved_size: uint) *ByteArray;
export @symbol("g_byte_array_sort") fn byte_array_sort(array: *ByteArray, compare_func: CompareFunc) void;
export @symbol("g_byte_array_sort_with_data") fn byte_array_sort_with_data(array: *ByteArray, compare_func: CompareDataFunc, user_data: *opaque) void;
export @symbol("g_byte_array_steal") fn byte_array_steal(array: *ByteArray, len_: *size) *u8;
export @symbol("g_byte_array_unref") fn byte_array_unref(array: *ByteArray) void;
export type Bytes = *opaque;
export @symbol("g_bytes_new") fn bytes_new(data: *opaque, size_: size) *Bytes;
export @symbol("g_bytes_new_static") fn bytes_new_static(data: *opaque, size_: size) *Bytes;
export @symbol("g_bytes_new_take") fn bytes_new_take(data: *opaque, size_: size) *Bytes;
export @symbol("g_bytes_new_with_free_func") fn bytes_new_with_free_func(data: *opaque, size_: size, free_func: DestroyNotify, user_data: *opaque) *Bytes;
export @symbol("g_bytes_compare") fn bytes_compare(bytes1: *opaque, bytes2: *opaque) int;
export @symbol("g_bytes_equal") fn bytes_equal(bytes1: *opaque, bytes2: *opaque) boolean;
export @symbol("g_bytes_get_data") fn bytes_get_data(bytes: *Bytes, size_: *size) *opaque;
export @symbol("g_bytes_get_region") fn bytes_get_region(bytes: *Bytes, element_size: size, offset_: size, n_elements: size) *opaque;
export @symbol("g_bytes_get_size") fn bytes_get_size(bytes: *Bytes) size;
export @symbol("g_bytes_hash") fn bytes_hash(bytes: *opaque) uint;
export @symbol("g_bytes_new_from_bytes") fn bytes_new_from_bytes(bytes: *Bytes, offset_: size, length: size) *Bytes;
export @symbol("g_bytes_ref") fn bytes_ref(bytes: *Bytes) *Bytes;
export @symbol("g_bytes_unref") fn bytes_unref(bytes: *Bytes) void;
export @symbol("g_bytes_unref_to_array") fn bytes_unref_to_array(bytes: *Bytes) *ByteArray;
export @symbol("g_bytes_unref_to_data") fn bytes_unref_to_data(bytes: *Bytes, size_: *size) *opaque;
export type Checksum = *opaque;
export @symbol("g_checksum_new") fn checksum_new(checksum_type: ChecksumType) *Checksum;
export @symbol("g_checksum_copy") fn checksum_copy(checksum: *Checksum) *Checksum;
export @symbol("g_checksum_free") fn checksum_free(checksum: *Checksum) void;
export @symbol("g_checksum_get_digest") fn checksum_get_digest(checksum: *Checksum, buffer: *u8, digest_len: *size) void;
export @symbol("g_checksum_get_string") fn checksum_get_string(checksum: *Checksum) *c::char;
export @symbol("g_checksum_reset") fn checksum_reset(checksum: *Checksum) void;
export @symbol("g_checksum_update") fn checksum_update(checksum: *Checksum, data: *c::uchar, length: c::ssize) void;
export @symbol("g_checksum_type_get_length") fn checksum_type_get_length(checksum_type: ChecksumType) c::ssize;
export type Cond = struct {
	p: *opaque,
	i: [2]uint,
};
export @symbol("g_cond_broadcast") fn cond_broadcast(cond: *Cond) void;
export @symbol("g_cond_clear") fn cond_clear(cond: *Cond) void;
export @symbol("g_cond_init") fn cond_init(cond: *Cond) void;
export @symbol("g_cond_signal") fn cond_signal(cond: *Cond) void;
export @symbol("g_cond_wait") fn cond_wait(cond: *Cond, mutex: *Mutex) void;
export @symbol("g_cond_wait_until") fn cond_wait_until(cond: *Cond, mutex: *Mutex, end_time: i64) boolean;
export type Data = *opaque;
export type Date = struct {
	julian_days: uint,
	julian: uint,
	dmy: uint,
	day: uint,
	month: uint,
	year: uint,
};
export @symbol("g_date_new") fn date_new() *Date;
export @symbol("g_date_new_dmy") fn date_new_dmy(day: DateDay, month: DateMonth, year: DateYear) *Date;
export @symbol("g_date_new_julian") fn date_new_julian(julian_day: u32) *Date;
export @symbol("g_date_add_days") fn date_add_days(date: *Date, n_days: uint) void;
export @symbol("g_date_add_months") fn date_add_months(date: *Date, n_months: uint) void;
export @symbol("g_date_add_years") fn date_add_years(date: *Date, n_years: uint) void;
export @symbol("g_date_clamp") fn date_clamp(date: *Date, min_date: *Date, max_date: *Date) void;
export @symbol("g_date_clear") fn date_clear(date: *Date, n_dates: uint) void;
export @symbol("g_date_compare") fn date_compare(lhs: *Date, rhs: *Date) int;
export @symbol("g_date_copy") fn date_copy(date: *Date) *Date;
export @symbol("g_date_days_between") fn date_days_between(date1: *Date, date2: *Date) int;
export @symbol("g_date_free") fn date_free(date: *Date) void;
export @symbol("g_date_get_day") fn date_get_day(date: *Date) DateDay;
export @symbol("g_date_get_day_of_year") fn date_get_day_of_year(date: *Date) uint;
export @symbol("g_date_get_iso8601_week_of_year") fn date_get_iso8601_week_of_year(date: *Date) uint;
export @symbol("g_date_get_julian") fn date_get_julian(date: *Date) u32;
export @symbol("g_date_get_monday_week_of_year") fn date_get_monday_week_of_year(date: *Date) uint;
export @symbol("g_date_get_month") fn date_get_month(date: *Date) DateMonth;
export @symbol("g_date_get_sunday_week_of_year") fn date_get_sunday_week_of_year(date: *Date) uint;
export @symbol("g_date_get_weekday") fn date_get_weekday(date: *Date) DateWeekday;
export @symbol("g_date_get_year") fn date_get_year(date: *Date) DateYear;
export @symbol("g_date_is_first_of_month") fn date_is_first_of_month(date: *Date) boolean;
export @symbol("g_date_is_last_of_month") fn date_is_last_of_month(date: *Date) boolean;
export @symbol("g_date_order") fn date_order(date1: *Date, date2: *Date) void;
export @symbol("g_date_set_day") fn date_set_day(date: *Date, day: DateDay) void;
export @symbol("g_date_set_dmy") fn date_set_dmy(date: *Date, day: DateDay, month: DateMonth, y: DateYear) void;
export @symbol("g_date_set_julian") fn date_set_julian(date: *Date, julian_date: u32) void;
export @symbol("g_date_set_month") fn date_set_month(date: *Date, month: DateMonth) void;
export @symbol("g_date_set_parse") fn date_set_parse(date: *Date, str_: *c::char) void;
export @symbol("g_date_set_time") fn date_set_time(date: *Date, time_: Time) void;
export @symbol("g_date_set_time_t") fn date_set_time_t(date: *Date, timet: libc::time_t) void;
export @symbol("g_date_set_time_val") fn date_set_time_val(date: *Date, timeval: *TimeVal) void;
export @symbol("g_date_set_year") fn date_set_year(date: *Date, year: DateYear) void;
export @symbol("g_date_subtract_days") fn date_subtract_days(date: *Date, n_days: uint) void;
export @symbol("g_date_subtract_months") fn date_subtract_months(date: *Date, n_months: uint) void;
export @symbol("g_date_subtract_years") fn date_subtract_years(date: *Date, n_years: uint) void;
export @symbol("g_date_to_struct_tm") fn date_to_struct_tm(date: *Date, tm: *libc::tm) void;
export @symbol("g_date_valid") fn date_valid(date: *Date) boolean;
export @symbol("g_date_get_days_in_month") fn date_get_days_in_month(month: DateMonth, year: DateYear) u8;
export @symbol("g_date_get_monday_weeks_in_year") fn date_get_monday_weeks_in_year(year: DateYear) u8;
export @symbol("g_date_get_sunday_weeks_in_year") fn date_get_sunday_weeks_in_year(year: DateYear) u8;
export @symbol("g_date_is_leap_year") fn date_is_leap_year(year: DateYear) boolean;
export @symbol("g_date_strftime") fn date_strftime(s: *c::char, slen: size, format: *c::char, date: *Date) size;
export @symbol("g_date_valid_day") fn date_valid_day(day: DateDay) boolean;
export @symbol("g_date_valid_dmy") fn date_valid_dmy(day: DateDay, month: DateMonth, year: DateYear) boolean;
export @symbol("g_date_valid_julian") fn date_valid_julian(julian_date: u32) boolean;
export @symbol("g_date_valid_month") fn date_valid_month(month: DateMonth) boolean;
export @symbol("g_date_valid_weekday") fn date_valid_weekday(weekday: DateWeekday) boolean;
export @symbol("g_date_valid_year") fn date_valid_year(year: DateYear) boolean;
export type DateTime = *opaque;
export @symbol("g_date_time_new") fn date_time_new(tz: *TimeZone, year: int, month: int, day: int, hour: int, minute: int, seconds: f64) *DateTime;
export @symbol("g_date_time_new_from_iso8601") fn date_time_new_from_iso8601(text: *c::char, default_tz: *TimeZone) *DateTime;
export @symbol("g_date_time_new_from_timeval_local") fn date_time_new_from_timeval_local(tv: *TimeVal) *DateTime;
export @symbol("g_date_time_new_from_timeval_utc") fn date_time_new_from_timeval_utc(tv: *TimeVal) *DateTime;
export @symbol("g_date_time_new_from_unix_local") fn date_time_new_from_unix_local(t: i64) *DateTime;
export @symbol("g_date_time_new_from_unix_utc") fn date_time_new_from_unix_utc(t: i64) *DateTime;
export @symbol("g_date_time_new_local") fn date_time_new_local(year: int, month: int, day: int, hour: int, minute: int, seconds: f64) *DateTime;
export @symbol("g_date_time_new_now") fn date_time_new_now(tz: *TimeZone) *DateTime;
export @symbol("g_date_time_new_now_local") fn date_time_new_now_local() *DateTime;
export @symbol("g_date_time_new_now_utc") fn date_time_new_now_utc() *DateTime;
export @symbol("g_date_time_new_utc") fn date_time_new_utc(year: int, month: int, day: int, hour: int, minute: int, seconds: f64) *DateTime;
export @symbol("g_date_time_add") fn date_time_add(datetime: *DateTime, timespan: TimeSpan) *DateTime;
export @symbol("g_date_time_add_days") fn date_time_add_days(datetime: *DateTime, days: int) *DateTime;
export @symbol("g_date_time_add_full") fn date_time_add_full(datetime: *DateTime, years: int, months: int, days: int, hours: int, minutes: int, seconds: f64) *DateTime;
export @symbol("g_date_time_add_hours") fn date_time_add_hours(datetime: *DateTime, hours: int) *DateTime;
export @symbol("g_date_time_add_minutes") fn date_time_add_minutes(datetime: *DateTime, minutes: int) *DateTime;
export @symbol("g_date_time_add_months") fn date_time_add_months(datetime: *DateTime, months: int) *DateTime;
export @symbol("g_date_time_add_seconds") fn date_time_add_seconds(datetime: *DateTime, seconds: f64) *DateTime;
export @symbol("g_date_time_add_weeks") fn date_time_add_weeks(datetime: *DateTime, weeks: int) *DateTime;
export @symbol("g_date_time_add_years") fn date_time_add_years(datetime: *DateTime, years: int) *DateTime;
export @symbol("g_date_time_compare") fn date_time_compare(dt1: *opaque, dt2: *opaque) int;
export @symbol("g_date_time_difference") fn date_time_difference(end: *DateTime, begin: *DateTime) TimeSpan;
export @symbol("g_date_time_equal") fn date_time_equal(dt1: *opaque, dt2: *opaque) boolean;
export @symbol("g_date_time_format") fn date_time_format(datetime: *DateTime, format: *c::char) *c::char;
export @symbol("g_date_time_format_iso8601") fn date_time_format_iso8601(datetime: *DateTime) *c::char;
export @symbol("g_date_time_get_day_of_month") fn date_time_get_day_of_month(datetime: *DateTime) int;
export @symbol("g_date_time_get_day_of_week") fn date_time_get_day_of_week(datetime: *DateTime) int;
export @symbol("g_date_time_get_day_of_year") fn date_time_get_day_of_year(datetime: *DateTime) int;
export @symbol("g_date_time_get_hour") fn date_time_get_hour(datetime: *DateTime) int;
export @symbol("g_date_time_get_microsecond") fn date_time_get_microsecond(datetime: *DateTime) int;
export @symbol("g_date_time_get_minute") fn date_time_get_minute(datetime: *DateTime) int;
export @symbol("g_date_time_get_month") fn date_time_get_month(datetime: *DateTime) int;
export @symbol("g_date_time_get_second") fn date_time_get_second(datetime: *DateTime) int;
export @symbol("g_date_time_get_seconds") fn date_time_get_seconds(datetime: *DateTime) f64;
export @symbol("g_date_time_get_timezone") fn date_time_get_timezone(datetime: *DateTime) *TimeZone;
export @symbol("g_date_time_get_timezone_abbreviation") fn date_time_get_timezone_abbreviation(datetime: *DateTime) *c::char;
export @symbol("g_date_time_get_utc_offset") fn date_time_get_utc_offset(datetime: *DateTime) TimeSpan;
export @symbol("g_date_time_get_week_numbering_year") fn date_time_get_week_numbering_year(datetime: *DateTime) int;
export @symbol("g_date_time_get_week_of_year") fn date_time_get_week_of_year(datetime: *DateTime) int;
export @symbol("g_date_time_get_year") fn date_time_get_year(datetime: *DateTime) int;
export @symbol("g_date_time_get_ymd") fn date_time_get_ymd(datetime: *DateTime, year: *int, month: *int, day: *int) void;
export @symbol("g_date_time_hash") fn date_time_hash(datetime: *opaque) uint;
export @symbol("g_date_time_is_daylight_savings") fn date_time_is_daylight_savings(datetime: *DateTime) boolean;
export @symbol("g_date_time_ref") fn date_time_ref(datetime: *DateTime) *DateTime;
export @symbol("g_date_time_to_local") fn date_time_to_local(datetime: *DateTime) *DateTime;
export @symbol("g_date_time_to_timeval") fn date_time_to_timeval(datetime: *DateTime, tv: *TimeVal) boolean;
export @symbol("g_date_time_to_timezone") fn date_time_to_timezone(datetime: *DateTime, tz: *TimeZone) *DateTime;
export @symbol("g_date_time_to_unix") fn date_time_to_unix(datetime: *DateTime) i64;
export @symbol("g_date_time_to_utc") fn date_time_to_utc(datetime: *DateTime) *DateTime;
export @symbol("g_date_time_unref") fn date_time_unref(datetime: *DateTime) void;
export type DebugKey = struct {
	key: *c::char,
	value: uint,
};
export type Dir = *opaque;
export @symbol("g_dir_close") fn dir_close(dir: *Dir) void;
export @symbol("g_dir_read_name") fn dir_read_name(dir: *Dir) *c::char;
export @symbol("g_dir_rewind") fn dir_rewind(dir: *Dir) void;
export @symbol("g_dir_make_tmp") fn dir_make_tmp(tmpl: *c::char, error: nullable **Error) *c::char;
export @symbol("g_dir_open") fn dir_open(path: *c::char, flags: uint, error: nullable **Error) *Dir;
export type Error = struct {
	domain: Quark,
	code: int,
	message: *c::char,
};
export @symbol("g_error_new") fn error_new(domain: Quark, code: int, format: *c::char, ...) *Error;
export @symbol("g_error_new_literal") fn error_new_literal(domain: Quark, code: int, message: *c::char) *Error;
export @symbol("g_error_new_valist") fn error_new_valist(domain: Quark, code: int, format: *c::char, args: valist) *Error;
export @symbol("g_error_copy") fn error_copy(error: *Error) *Error;
export @symbol("g_error_free") fn error_free(error: *Error) void;
export @symbol("g_error_matches") fn error_matches(error: *Error, domain: Quark, code: int) boolean;
export @symbol("g_error_domain_register") fn error_domain_register(error_type_name: *c::char, error_type_private_size: size, error_type_init: ErrorInitFunc, error_type_copy: ErrorCopyFunc, error_type_clear: ErrorClearFunc) Quark;
export @symbol("g_error_domain_register_static") fn error_domain_register_static(error_type_name: *c::char, error_type_private_size: size, error_type_init: ErrorInitFunc, error_type_copy: ErrorCopyFunc, error_type_clear: ErrorClearFunc) Quark;
export type HashTable = *opaque;
export @symbol("g_hash_table_add") fn hash_table_add(hash_table: *HashTable, key: *opaque) boolean;
export @symbol("g_hash_table_contains") fn hash_table_contains(hash_table: *HashTable, key: *opaque) boolean;
export @symbol("g_hash_table_destroy") fn hash_table_destroy(hash_table: *HashTable) void;
export @symbol("g_hash_table_find") fn hash_table_find(hash_table: *HashTable, predicate: HRFunc, user_data: *opaque) *opaque;
export @symbol("g_hash_table_foreach") fn hash_table_foreach(hash_table: *HashTable, func: HFunc, user_data: *opaque) void;
export @symbol("g_hash_table_foreach_remove") fn hash_table_foreach_remove(hash_table: *HashTable, func: HRFunc, user_data: *opaque) uint;
export @symbol("g_hash_table_foreach_steal") fn hash_table_foreach_steal(hash_table: *HashTable, func: HRFunc, user_data: *opaque) uint;
export @symbol("g_hash_table_get_keys") fn hash_table_get_keys(hash_table: *HashTable) *List;
export @symbol("g_hash_table_get_keys_as_array") fn hash_table_get_keys_as_array(hash_table: *HashTable, length: *uint) **opaque;
export @symbol("g_hash_table_get_keys_as_ptr_array") fn hash_table_get_keys_as_ptr_array(hash_table: *HashTable) *PtrArray;
export @symbol("g_hash_table_get_values") fn hash_table_get_values(hash_table: *HashTable) *List;
export @symbol("g_hash_table_get_values_as_ptr_array") fn hash_table_get_values_as_ptr_array(hash_table: *HashTable) *PtrArray;
export @symbol("g_hash_table_insert") fn hash_table_insert(hash_table: *HashTable, key: *opaque, value: *opaque) boolean;
export @symbol("g_hash_table_lookup") fn hash_table_lookup(hash_table: *HashTable, key: *opaque) *opaque;
export @symbol("g_hash_table_lookup_extended") fn hash_table_lookup_extended(hash_table: *HashTable, lookup_key: *opaque, orig_key: **opaque, value: **opaque) boolean;
export @symbol("g_hash_table_new") fn hash_table_new(hash_func: HashFunc, key_equal_func: EqualFunc) *HashTable;
export @symbol("g_hash_table_new_full") fn hash_table_new_full(hash_func: HashFunc, key_equal_func: EqualFunc, key_destroy_func: DestroyNotify, value_destroy_func: DestroyNotify) *HashTable;
export @symbol("g_hash_table_new_similar") fn hash_table_new_similar(other_hash_table: *HashTable) *HashTable;
export @symbol("g_hash_table_ref") fn hash_table_ref(hash_table: *HashTable) *HashTable;
export @symbol("g_hash_table_remove") fn hash_table_remove(hash_table: *HashTable, key: *opaque) boolean;
export @symbol("g_hash_table_remove_all") fn hash_table_remove_all(hash_table: *HashTable) void;
export @symbol("g_hash_table_replace") fn hash_table_replace(hash_table: *HashTable, key: *opaque, value: *opaque) boolean;
export @symbol("g_hash_table_size") fn hash_table_size(hash_table: *HashTable) uint;
export @symbol("g_hash_table_steal") fn hash_table_steal(hash_table: *HashTable, key: *opaque) boolean;
export @symbol("g_hash_table_steal_all") fn hash_table_steal_all(hash_table: *HashTable) void;
export @symbol("g_hash_table_steal_all_keys") fn hash_table_steal_all_keys(hash_table: *HashTable) *PtrArray;
export @symbol("g_hash_table_steal_all_values") fn hash_table_steal_all_values(hash_table: *HashTable) *PtrArray;
export @symbol("g_hash_table_steal_extended") fn hash_table_steal_extended(hash_table: *HashTable, lookup_key: *opaque, stolen_key: **opaque, stolen_value: **opaque) boolean;
export @symbol("g_hash_table_unref") fn hash_table_unref(hash_table: *HashTable) void;
export type HashTableIter = struct {
	dummy1: *opaque,
	dummy2: *opaque,
	dummy3: *opaque,
	dummy4: int,
	dummy5: boolean,
	dummy6: *opaque,
};
export @symbol("g_hash_table_iter_get_hash_table") fn hash_table_iter_get_hash_table(iter: *HashTableIter) *HashTable;
export @symbol("g_hash_table_iter_init") fn hash_table_iter_init(iter: *HashTableIter, hash_table: *HashTable) void;
export @symbol("g_hash_table_iter_next") fn hash_table_iter_next(iter: *HashTableIter, key: **opaque, value: **opaque) boolean;
export @symbol("g_hash_table_iter_remove") fn hash_table_iter_remove(iter: *HashTableIter) void;
export @symbol("g_hash_table_iter_replace") fn hash_table_iter_replace(iter: *HashTableIter, value: *opaque) void;
export @symbol("g_hash_table_iter_steal") fn hash_table_iter_steal(iter: *HashTableIter) void;
export type Hmac = *opaque;
export @symbol("g_hmac_copy") fn hmac_copy(hmac: *Hmac) *Hmac;
export @symbol("g_hmac_get_digest") fn hmac_get_digest(hmac: *Hmac, buffer: *u8, digest_len: *size) void;
export @symbol("g_hmac_get_string") fn hmac_get_string(hmac: *Hmac) *c::char;
export @symbol("g_hmac_ref") fn hmac_ref(hmac: *Hmac) *Hmac;
export @symbol("g_hmac_unref") fn hmac_unref(hmac: *Hmac) void;
export @symbol("g_hmac_update") fn hmac_update(hmac: *Hmac, data: *c::uchar, length: c::ssize) void;
export @symbol("g_hmac_new") fn hmac_new(digest_type: ChecksumType, key: *c::uchar, key_len: size) *Hmac;
export type Hook = struct {
	data: *opaque,
	next: *Hook,
	prev: *Hook,
	ref_count: uint,
	hook_id: c::ulong,
	flags: uint,
	func: *opaque,
	destroy: DestroyNotify,
};
export @symbol("g_hook_compare_ids") fn hook_compare_ids(new_hook: *Hook, sibling: *Hook) int;
export @symbol("g_hook_alloc") fn hook_alloc(hook_list: *HookList) *Hook;
export @symbol("g_hook_destroy") fn hook_destroy(hook_list: *HookList, hook_id: c::ulong) boolean;
export @symbol("g_hook_destroy_link") fn hook_destroy_link(hook_list: *HookList, hook: *Hook) void;
export @symbol("g_hook_find") fn hook_find(hook_list: *HookList, need_valids: boolean, func: HookFindFunc, data: *opaque) *Hook;
export @symbol("g_hook_find_data") fn hook_find_data(hook_list: *HookList, need_valids: boolean, data: *opaque) *Hook;
export @symbol("g_hook_find_func") fn hook_find_func(hook_list: *HookList, need_valids: boolean, func: *opaque) *Hook;
export @symbol("g_hook_find_func_data") fn hook_find_func_data(hook_list: *HookList, need_valids: boolean, func: *opaque, data: *opaque) *Hook;
export @symbol("g_hook_first_valid") fn hook_first_valid(hook_list: *HookList, may_be_in_call: boolean) *Hook;
export @symbol("g_hook_free") fn hook_free(hook_list: *HookList, hook: *Hook) void;
export @symbol("g_hook_get") fn hook_get(hook_list: *HookList, hook_id: c::ulong) *Hook;
export @symbol("g_hook_insert_before") fn hook_insert_before(hook_list: *HookList, sibling: *Hook, hook: *Hook) void;
export @symbol("g_hook_insert_sorted") fn hook_insert_sorted(hook_list: *HookList, hook: *Hook, func: HookCompareFunc) void;
export @symbol("g_hook_next_valid") fn hook_next_valid(hook_list: *HookList, hook: *Hook, may_be_in_call: boolean) *Hook;
export @symbol("g_hook_prepend") fn hook_prepend(hook_list: *HookList, hook: *Hook) void;
export @symbol("g_hook_ref") fn hook_ref(hook_list: *HookList, hook: *Hook) *Hook;
export @symbol("g_hook_unref") fn hook_unref(hook_list: *HookList, hook: *Hook) void;
export type HookList = struct {
	seq_id: c::ulong,
	hook_size: uint,
	is_setup: uint,
	hooks: *Hook,
	dummy3: *opaque,
	finalize_hook: HookFinalizeFunc,
	dummy: [2]*opaque,
};
export @symbol("g_hook_list_clear") fn hook_list_clear(hook_list: *HookList) void;
export @symbol("g_hook_list_init") fn hook_list_init(hook_list: *HookList, hook_size: uint) void;
export @symbol("g_hook_list_invoke") fn hook_list_invoke(hook_list: *HookList, may_recurse: boolean) void;
export @symbol("g_hook_list_invoke_check") fn hook_list_invoke_check(hook_list: *HookList, may_recurse: boolean) void;
export @symbol("g_hook_list_marshal") fn hook_list_marshal(hook_list: *HookList, may_recurse: boolean, marshaller: HookMarshaller, marshal_data: *opaque) void;
export @symbol("g_hook_list_marshal_check") fn hook_list_marshal_check(hook_list: *HookList, may_recurse: boolean, marshaller: HookCheckMarshaller, marshal_data: *opaque) void;
export type IConv = *opaque;
export @symbol("g_iconv") fn iconv_(converter: IConv, inbuf: **c::char, inbytes_left: *size, outbuf: **c::char, outbytes_left: *size) size;
export @symbol("g_iconv_close") fn iconv_close(converter: IConv) int;
export @symbol("g_iconv_open") fn iconv_open(to_codeset: *c::char, from_codeset: *c::char) IConv;
export type IOChannel = struct {
	ref_count: int,
	funcs: *IOFuncs,
	encoding: *c::char,
	read_cd: IConv,
	write_cd: IConv,
	line_term: *c::char,
	line_term_len: uint,
	buf_size: size,
	read_buf: *String,
	encoded_read_buf: *String,
	write_buf: *String,
	partial_write_buf: [6]c::char,
	use_buffer: uint,
	do_encode: uint,
	close_on_unref: uint,
	is_readable: uint,
	is_writeable: uint,
	is_seekable: uint,
	reserved1: *opaque,
	reserved2: *opaque,
};
export @symbol("g_io_channel_new_file") fn iochannel_new_file(filename: *c::char, mode: *c::char, error: nullable **Error) *IOChannel;
export @symbol("g_io_channel_unix_new") fn iochannel_unix_new(fd: int) *IOChannel;
export @symbol("g_io_channel_close") fn iochannel_close(channel: *IOChannel) void;
export @symbol("g_io_channel_flush") fn iochannel_flush(channel: *IOChannel, error: nullable **Error) IOStatus;
export @symbol("g_io_channel_get_buffer_condition") fn iochannel_get_buffer_condition(channel: *IOChannel) IOCondition;
export @symbol("g_io_channel_get_buffer_size") fn iochannel_get_buffer_size(channel: *IOChannel) size;
export @symbol("g_io_channel_get_buffered") fn iochannel_get_buffered(channel: *IOChannel) boolean;
export @symbol("g_io_channel_get_close_on_unref") fn iochannel_get_close_on_unref(channel: *IOChannel) boolean;
export @symbol("g_io_channel_get_encoding") fn iochannel_get_encoding(channel: *IOChannel) *c::char;
export @symbol("g_io_channel_get_flags") fn iochannel_get_flags(channel: *IOChannel) IOFlags;
export @symbol("g_io_channel_get_line_term") fn iochannel_get_line_term(channel: *IOChannel, length: *int) *c::char;
export @symbol("g_io_channel_init") fn iochannel_init(channel: *IOChannel) void;
export @symbol("g_io_channel_read") fn iochannel_read(channel: *IOChannel, buf: *c::char, count: size, bytes_read: *size) IOError;
export @symbol("g_io_channel_read_chars") fn iochannel_read_chars(channel: *IOChannel, buf: *c::char, count: size, bytes_read: *size, error: nullable **Error) IOStatus;
export @symbol("g_io_channel_read_line") fn iochannel_read_line(channel: *IOChannel, str_return: **c::char, length: *size, terminator_pos: *size, error: nullable **Error) IOStatus;
export @symbol("g_io_channel_read_line_string") fn iochannel_read_line_string(channel: *IOChannel, buffer: *String, terminator_pos: *size, error: nullable **Error) IOStatus;
export @symbol("g_io_channel_read_to_end") fn iochannel_read_to_end(channel: *IOChannel, str_return: **c::char, length: *size, error: nullable **Error) IOStatus;
export @symbol("g_io_channel_read_unichar") fn iochannel_read_unichar(channel: *IOChannel, thechar: *rune, error: nullable **Error) IOStatus;
export @symbol("g_io_channel_ref") fn iochannel_ref(channel: *IOChannel) *IOChannel;
export @symbol("g_io_channel_seek") fn iochannel_seek(channel: *IOChannel, offset_: i64, type_: SeekType) IOError;
export @symbol("g_io_channel_seek_position") fn iochannel_seek_position(channel: *IOChannel, offset_: i64, type_: SeekType, error: nullable **Error) IOStatus;
export @symbol("g_io_channel_set_buffer_size") fn iochannel_set_buffer_size(channel: *IOChannel, size_: size) void;
export @symbol("g_io_channel_set_buffered") fn iochannel_set_buffered(channel: *IOChannel, buffered: boolean) void;
export @symbol("g_io_channel_set_close_on_unref") fn iochannel_set_close_on_unref(channel: *IOChannel, do_close: boolean) void;
export @symbol("g_io_channel_set_encoding") fn iochannel_set_encoding(channel: *IOChannel, encoding: *c::char, error: nullable **Error) IOStatus;
export @symbol("g_io_channel_set_flags") fn iochannel_set_flags(channel: *IOChannel, flags: IOFlags, error: nullable **Error) IOStatus;
export @symbol("g_io_channel_set_line_term") fn iochannel_set_line_term(channel: *IOChannel, line_term: *c::char, length: int) void;
export @symbol("g_io_channel_shutdown") fn iochannel_shutdown(channel: *IOChannel, flush: boolean, error: nullable **Error) IOStatus;
export @symbol("g_io_channel_unix_get_fd") fn iochannel_unix_get_fd(channel: *IOChannel) int;
export @symbol("g_io_channel_unref") fn iochannel_unref(channel: *IOChannel) void;
export @symbol("g_io_channel_write") fn iochannel_write(channel: *IOChannel, buf: *c::char, count: size, bytes_written: *size) IOError;
export @symbol("g_io_channel_write_chars") fn iochannel_write_chars(channel: *IOChannel, buf: *c::char, count: c::ssize, bytes_written: *size, error: nullable **Error) IOStatus;
export @symbol("g_io_channel_write_unichar") fn iochannel_write_unichar(channel: *IOChannel, thechar: rune, error: nullable **Error) IOStatus;
export @symbol("g_io_channel_error_from_errno") fn iochannel_error_from_errno(en: int) IOChannelError;
export @symbol("g_io_channel_error_quark") fn iochannel_error_quark() Quark;
export type IOFuncs = struct {
	io_read: *fn(channel: *IOChannel, buf: *c::char, count: size, bytes_read: *size, error: nullable **Error) IOStatus,
	io_write: *fn(channel: *IOChannel, buf: *c::char, count: size, bytes_written: *size, error: nullable **Error) IOStatus,
	io_seek: *fn(channel: *IOChannel, offset_: i64, type_: SeekType, error: nullable **Error) IOStatus,
	io_close: *fn(channel: *IOChannel, error: nullable **Error) IOStatus,
	io_create_watch: *fn(channel: *IOChannel, condition: IOCondition) *Source,
	io_free: *fn(channel: *IOChannel) void,
	io_set_flags: *fn(channel: *IOChannel, flags: IOFlags, error: nullable **Error) IOStatus,
	io_get_flags: *fn(channel: *IOChannel) IOFlags,
};
export type KeyFile = *opaque;
export @symbol("g_key_file_new") fn key_file_new() *KeyFile;
export @symbol("g_key_file_free") fn key_file_free(key_file: *KeyFile) void;
export @symbol("g_key_file_get_boolean") fn key_file_get_boolean(key_file: *KeyFile, group_name: *c::char, key: *c::char, error: nullable **Error) boolean;
export @symbol("g_key_file_get_boolean_list") fn key_file_get_boolean_list(key_file: *KeyFile, group_name: *c::char, key: *c::char, length: *size, error: nullable **Error) *boolean;
export @symbol("g_key_file_get_comment") fn key_file_get_comment(key_file: *KeyFile, group_name: *c::char, key: *c::char, error: nullable **Error) *c::char;
export @symbol("g_key_file_get_double") fn key_file_get_double(key_file: *KeyFile, group_name: *c::char, key: *c::char, error: nullable **Error) f64;
export @symbol("g_key_file_get_double_list") fn key_file_get_double_list(key_file: *KeyFile, group_name: *c::char, key: *c::char, length: *size, error: nullable **Error) *f64;
export @symbol("g_key_file_get_groups") fn key_file_get_groups(key_file: *KeyFile, length: *size) **c::char;
export @symbol("g_key_file_get_int64") fn key_file_get_int64(key_file: *KeyFile, group_name: *c::char, key: *c::char, error: nullable **Error) i64;
export @symbol("g_key_file_get_integer") fn key_file_get_integer(key_file: *KeyFile, group_name: *c::char, key: *c::char, error: nullable **Error) int;
export @symbol("g_key_file_get_integer_list") fn key_file_get_integer_list(key_file: *KeyFile, group_name: *c::char, key: *c::char, length: *size, error: nullable **Error) *int;
export @symbol("g_key_file_get_keys") fn key_file_get_keys(key_file: *KeyFile, group_name: *c::char, length: *size, error: nullable **Error) **c::char;
export @symbol("g_key_file_get_locale_for_key") fn key_file_get_locale_for_key(key_file: *KeyFile, group_name: *c::char, key: *c::char, locale: *c::char) *c::char;
export @symbol("g_key_file_get_locale_string") fn key_file_get_locale_string(key_file: *KeyFile, group_name: *c::char, key: *c::char, locale: *c::char, error: nullable **Error) *c::char;
export @symbol("g_key_file_get_locale_string_list") fn key_file_get_locale_string_list(key_file: *KeyFile, group_name: *c::char, key: *c::char, locale: *c::char, length: *size, error: nullable **Error) **c::char;
export @symbol("g_key_file_get_start_group") fn key_file_get_start_group(key_file: *KeyFile) *c::char;
export @symbol("g_key_file_get_string") fn key_file_get_string(key_file: *KeyFile, group_name: *c::char, key: *c::char, error: nullable **Error) *c::char;
export @symbol("g_key_file_get_string_list") fn key_file_get_string_list(key_file: *KeyFile, group_name: *c::char, key: *c::char, length: *size, error: nullable **Error) **c::char;
export @symbol("g_key_file_get_uint64") fn key_file_get_uint64(key_file: *KeyFile, group_name: *c::char, key: *c::char, error: nullable **Error) u64;
export @symbol("g_key_file_get_value") fn key_file_get_value(key_file: *KeyFile, group_name: *c::char, key: *c::char, error: nullable **Error) *c::char;
export @symbol("g_key_file_has_group") fn key_file_has_group(key_file: *KeyFile, group_name: *c::char) boolean;
export @symbol("g_key_file_has_key") fn key_file_has_key(key_file: *KeyFile, group_name: *c::char, key: *c::char, error: nullable **Error) boolean;
export @symbol("g_key_file_load_from_bytes") fn key_file_load_from_bytes(key_file: *KeyFile, bytes: *Bytes, flags: KeyFileFlags, error: nullable **Error) boolean;
export @symbol("g_key_file_load_from_data") fn key_file_load_from_data(key_file: *KeyFile, data: *c::char, length: size, flags: KeyFileFlags, error: nullable **Error) boolean;
export @symbol("g_key_file_load_from_data_dirs") fn key_file_load_from_data_dirs(key_file: *KeyFile, file: *c::char, full_path: **c::char, flags: KeyFileFlags, error: nullable **Error) boolean;
export @symbol("g_key_file_load_from_dirs") fn key_file_load_from_dirs(key_file: *KeyFile, file: *c::char, search_dirs: **c::char, full_path: **c::char, flags: KeyFileFlags, error: nullable **Error) boolean;
export @symbol("g_key_file_load_from_file") fn key_file_load_from_file(key_file: *KeyFile, file: *c::char, flags: KeyFileFlags, error: nullable **Error) boolean;
export @symbol("g_key_file_ref") fn key_file_ref(key_file: *KeyFile) *KeyFile;
export @symbol("g_key_file_remove_comment") fn key_file_remove_comment(key_file: *KeyFile, group_name: *c::char, key: *c::char, error: nullable **Error) boolean;
export @symbol("g_key_file_remove_group") fn key_file_remove_group(key_file: *KeyFile, group_name: *c::char, error: nullable **Error) boolean;
export @symbol("g_key_file_remove_key") fn key_file_remove_key(key_file: *KeyFile, group_name: *c::char, key: *c::char, error: nullable **Error) boolean;
export @symbol("g_key_file_save_to_file") fn key_file_save_to_file(key_file: *KeyFile, filename: *c::char, error: nullable **Error) boolean;
export @symbol("g_key_file_set_boolean") fn key_file_set_boolean(key_file: *KeyFile, group_name: *c::char, key: *c::char, value: boolean) void;
export @symbol("g_key_file_set_boolean_list") fn key_file_set_boolean_list(key_file: *KeyFile, group_name: *c::char, key: *c::char, list: *boolean, length: size) void;
export @symbol("g_key_file_set_comment") fn key_file_set_comment(key_file: *KeyFile, group_name: *c::char, key: *c::char, comment: *c::char, error: nullable **Error) boolean;
export @symbol("g_key_file_set_double") fn key_file_set_double(key_file: *KeyFile, group_name: *c::char, key: *c::char, value: f64) void;
export @symbol("g_key_file_set_double_list") fn key_file_set_double_list(key_file: *KeyFile, group_name: *c::char, key: *c::char, list: *f64, length: size) void;
export @symbol("g_key_file_set_int64") fn key_file_set_int64(key_file: *KeyFile, group_name: *c::char, key: *c::char, value: i64) void;
export @symbol("g_key_file_set_integer") fn key_file_set_integer(key_file: *KeyFile, group_name: *c::char, key: *c::char, value: int) void;
export @symbol("g_key_file_set_integer_list") fn key_file_set_integer_list(key_file: *KeyFile, group_name: *c::char, key: *c::char, list: *int, length: size) void;
export @symbol("g_key_file_set_list_separator") fn key_file_set_list_separator(key_file: *KeyFile, separator: c::char) void;
export @symbol("g_key_file_set_locale_string") fn key_file_set_locale_string(key_file: *KeyFile, group_name: *c::char, key: *c::char, locale: *c::char, string: *c::char) void;
export @symbol("g_key_file_set_locale_string_list") fn key_file_set_locale_string_list(key_file: *KeyFile, group_name: *c::char, key: *c::char, locale: *c::char, list: **c::char, length: size) void;
export @symbol("g_key_file_set_string") fn key_file_set_string(key_file: *KeyFile, group_name: *c::char, key: *c::char, string: *c::char) void;
export @symbol("g_key_file_set_string_list") fn key_file_set_string_list(key_file: *KeyFile, group_name: *c::char, key: *c::char, list: **c::char, length: size) void;
export @symbol("g_key_file_set_uint64") fn key_file_set_uint64(key_file: *KeyFile, group_name: *c::char, key: *c::char, value: u64) void;
export @symbol("g_key_file_set_value") fn key_file_set_value(key_file: *KeyFile, group_name: *c::char, key: *c::char, value: *c::char) void;
export @symbol("g_key_file_to_data") fn key_file_to_data(key_file: *KeyFile, length: *size, error: nullable **Error) *c::char;
export @symbol("g_key_file_unref") fn key_file_unref(key_file: *KeyFile) void;
export @symbol("g_key_file_error_quark") fn key_file_error_quark() Quark;
export type List = struct {
	data: *opaque,
	next: *List,
	prev: *List,
};
export @symbol("g_list_alloc") fn list_alloc() *List;
export @symbol("g_list_append") fn list_append(list: *List, data: *opaque) *List;
export @symbol("g_list_concat") fn list_concat(list1: *List, list2: *List) *List;
export @symbol("g_list_copy") fn list_copy(list: *List) *List;
export @symbol("g_list_copy_deep") fn list_copy_deep(list: *List, func: CopyFunc, user_data: *opaque) *List;
export @symbol("g_list_delete_link") fn list_delete_link(list: *List, link_: *List) *List;
export @symbol("g_list_find") fn list_find(list: *List, data: *opaque) *List;
export @symbol("g_list_find_custom") fn list_find_custom(list: *List, data: *opaque, func: CompareFunc) *List;
export @symbol("g_list_first") fn list_first(list: *List) *List;
export @symbol("g_list_foreach") fn list_foreach(list: *List, func: Func, user_data: *opaque) void;
export @symbol("g_list_free") fn list_free(list: *List) void;
export @symbol("g_list_free_1") fn list_free_1(list: *List) void;
export @symbol("g_list_free_full") fn list_free_full(list: *List, free_func: DestroyNotify) void;
export @symbol("g_list_index") fn list_index(list: *List, data: *opaque) int;
export @symbol("g_list_insert") fn list_insert(list: *List, data: *opaque, position: int) *List;
export @symbol("g_list_insert_before") fn list_insert_before(list: *List, sibling: *List, data: *opaque) *List;
export @symbol("g_list_insert_before_link") fn list_insert_before_link(list: *List, sibling: *List, link_: *List) *List;
export @symbol("g_list_insert_sorted") fn list_insert_sorted(list: *List, data: *opaque, func: CompareFunc) *List;
export @symbol("g_list_insert_sorted_with_data") fn list_insert_sorted_with_data(list: *List, data: *opaque, func: CompareDataFunc, user_data: *opaque) *List;
export @symbol("g_list_last") fn list_last(list: *List) *List;
export @symbol("g_list_length") fn list_length(list: *List) uint;
export @symbol("g_list_nth") fn list_nth(list: *List, n: uint) *List;
export @symbol("g_list_nth_data") fn list_nth_data(list: *List, n: uint) *opaque;
export @symbol("g_list_nth_prev") fn list_nth_prev(list: *List, n: uint) *List;
export @symbol("g_list_position") fn list_position(list: *List, llink: *List) int;
export @symbol("g_list_prepend") fn list_prepend(list: *List, data: *opaque) *List;
export @symbol("g_list_remove") fn list_remove(list: *List, data: *opaque) *List;
export @symbol("g_list_remove_all") fn list_remove_all(list: *List, data: *opaque) *List;
export @symbol("g_list_remove_link") fn list_remove_link(list: *List, llink: *List) *List;
export @symbol("g_list_reverse") fn list_reverse(list: *List) *List;
export @symbol("g_list_sort") fn list_sort(list: *List, compare_func: CompareFunc) *List;
export @symbol("g_list_sort_with_data") fn list_sort_with_data(list: *List, compare_func: CompareDataFunc, user_data: *opaque) *List;
export type LogField = struct {
	key: *c::char,
	value: *opaque,
	length: c::ssize,
};
export type MainContext = *opaque;
export @symbol("g_main_context_new") fn main_context_new() *MainContext;
export @symbol("g_main_context_new_with_flags") fn main_context_new_with_flags(flags: MainContextFlags) *MainContext;
export @symbol("g_main_context_acquire") fn main_context_acquire(context: *MainContext) boolean;
export @symbol("g_main_context_add_poll") fn main_context_add_poll(context: *MainContext, fd: *PollFD, priority: int) void;
export @symbol("g_main_context_check") fn main_context_check(context: *MainContext, max_priority: int, fds: *PollFD, n_fds: int) boolean;
export @symbol("g_main_context_dispatch") fn main_context_dispatch(context: *MainContext) void;
export @symbol("g_main_context_find_source_by_funcs_user_data") fn main_context_find_source_by_funcs_user_data(context: *MainContext, funcs: *SourceFuncs, user_data: *opaque) *Source;
export @symbol("g_main_context_find_source_by_id") fn main_context_find_source_by_id(context: *MainContext, source_id: uint) *Source;
export @symbol("g_main_context_find_source_by_user_data") fn main_context_find_source_by_user_data(context: *MainContext, user_data: *opaque) *Source;
export @symbol("g_main_context_get_poll_func") fn main_context_get_poll_func(context: *MainContext) PollFunc;
export @symbol("g_main_context_invoke") fn main_context_invoke(context: *MainContext, function: SourceFunc, data: *opaque) void;
export @symbol("g_main_context_invoke_full") fn main_context_invoke_full(context: *MainContext, priority: int, function: SourceFunc, data: *opaque, notify: DestroyNotify) void;
export @symbol("g_main_context_is_owner") fn main_context_is_owner(context: *MainContext) boolean;
export @symbol("g_main_context_iteration") fn main_context_iteration(context: *MainContext, may_block: boolean) boolean;
export @symbol("g_main_context_pending") fn main_context_pending(context: *MainContext) boolean;
export @symbol("g_main_context_pop_thread_default") fn main_context_pop_thread_default(context: *MainContext) void;
export @symbol("g_main_context_prepare") fn main_context_prepare(context: *MainContext, priority: *int) boolean;
export @symbol("g_main_context_push_thread_default") fn main_context_push_thread_default(context: *MainContext) void;
export @symbol("g_main_context_query") fn main_context_query(context: *MainContext, max_priority: int, timeout_: *int, fds: *PollFD, n_fds: int) int;
export @symbol("g_main_context_ref") fn main_context_ref(context: *MainContext) *MainContext;
export @symbol("g_main_context_release") fn main_context_release(context: *MainContext) void;
export @symbol("g_main_context_remove_poll") fn main_context_remove_poll(context: *MainContext, fd: *PollFD) void;
export @symbol("g_main_context_set_poll_func") fn main_context_set_poll_func(context: *MainContext, func: PollFunc) void;
export @symbol("g_main_context_unref") fn main_context_unref(context: *MainContext) void;
export @symbol("g_main_context_wait") fn main_context_wait(context: *MainContext, cond: *Cond, mutex: *Mutex) boolean;
export @symbol("g_main_context_wakeup") fn main_context_wakeup(context: *MainContext) void;
export @symbol("g_main_context_default") fn main_context_default() *MainContext;
export @symbol("g_main_context_get_thread_default") fn main_context_get_thread_default() *MainContext;
export @symbol("g_main_context_ref_thread_default") fn main_context_ref_thread_default() *MainContext;
export type MainLoop = *opaque;
export @symbol("g_main_loop_new") fn main_loop_new(context: *MainContext, is_running: boolean) *MainLoop;
export @symbol("g_main_loop_get_context") fn main_loop_get_context(loop: *MainLoop) *MainContext;
export @symbol("g_main_loop_is_running") fn main_loop_is_running(loop: *MainLoop) boolean;
export @symbol("g_main_loop_quit") fn main_loop_quit(loop: *MainLoop) void;
export @symbol("g_main_loop_ref") fn main_loop_ref(loop: *MainLoop) *MainLoop;
export @symbol("g_main_loop_run") fn main_loop_run(loop: *MainLoop) void;
export @symbol("g_main_loop_unref") fn main_loop_unref(loop: *MainLoop) void;
export type MappedFile = *opaque;
export @symbol("g_mapped_file_new") fn mapped_file_new(filename: *c::char, writable: boolean, error: nullable **Error) *MappedFile;
export @symbol("g_mapped_file_new_from_fd") fn mapped_file_new_from_fd(fd: int, writable: boolean, error: nullable **Error) *MappedFile;
export @symbol("g_mapped_file_free") fn mapped_file_free(file: *MappedFile) void;
export @symbol("g_mapped_file_get_bytes") fn mapped_file_get_bytes(file: *MappedFile) *Bytes;
export @symbol("g_mapped_file_get_contents") fn mapped_file_get_contents(file: *MappedFile) *c::char;
export @symbol("g_mapped_file_get_length") fn mapped_file_get_length(file: *MappedFile) size;
export @symbol("g_mapped_file_ref") fn mapped_file_ref(file: *MappedFile) *MappedFile;
export @symbol("g_mapped_file_unref") fn mapped_file_unref(file: *MappedFile) void;
export type MarkupParseContext = *opaque;
export @symbol("g_markup_parse_context_new") fn markup_parse_context_new(parser: *MarkupParser, flags: MarkupParseFlags, user_data: *opaque, user_data_dnotify: DestroyNotify) *MarkupParseContext;
export @symbol("g_markup_parse_context_end_parse") fn markup_parse_context_end_parse(context: *MarkupParseContext, error: nullable **Error) boolean;
export @symbol("g_markup_parse_context_free") fn markup_parse_context_free(context: *MarkupParseContext) void;
export @symbol("g_markup_parse_context_get_element") fn markup_parse_context_get_element(context: *MarkupParseContext) *c::char;
export @symbol("g_markup_parse_context_get_element_stack") fn markup_parse_context_get_element_stack(context: *MarkupParseContext) *SList;
export @symbol("g_markup_parse_context_get_position") fn markup_parse_context_get_position(context: *MarkupParseContext, line_number: *int, char_number: *int) void;
export @symbol("g_markup_parse_context_get_user_data") fn markup_parse_context_get_user_data(context: *MarkupParseContext) *opaque;
export @symbol("g_markup_parse_context_parse") fn markup_parse_context_parse(context: *MarkupParseContext, text: *c::char, text_len: c::ssize, error: nullable **Error) boolean;
export @symbol("g_markup_parse_context_pop") fn markup_parse_context_pop(context: *MarkupParseContext) *opaque;
export @symbol("g_markup_parse_context_push") fn markup_parse_context_push(context: *MarkupParseContext, parser: *MarkupParser, user_data: *opaque) void;
export @symbol("g_markup_parse_context_ref") fn markup_parse_context_ref(context: *MarkupParseContext) *MarkupParseContext;
export @symbol("g_markup_parse_context_unref") fn markup_parse_context_unref(context: *MarkupParseContext) void;
export type MarkupParser = struct {
	start_element: *fn(context: *MarkupParseContext, element_name: *c::char, attribute_names: **c::char, attribute_values: **c::char, user_data: *opaque, error: nullable **Error) void,
	end_element: *fn(context: *MarkupParseContext, element_name: *c::char, user_data: *opaque, error: nullable **Error) void,
	text: *fn(context: *MarkupParseContext, text: *c::char, text_len: size, user_data: *opaque, error: nullable **Error) void,
	passthrough: *fn(context: *MarkupParseContext, passthrough_text: *c::char, text_len: size, user_data: *opaque, error: nullable **Error) void,
	error: *fn(context: *MarkupParseContext, error: *Error, user_data: *opaque) void,
};
export type MatchInfo = *opaque;
export @symbol("g_match_info_expand_references") fn match_info_expand_references(match_info: *MatchInfo, string_to_expand: *c::char, error: nullable **Error) *c::char;
export @symbol("g_match_info_fetch") fn match_info_fetch(match_info: *MatchInfo, match_num: int) *c::char;
export @symbol("g_match_info_fetch_all") fn match_info_fetch_all(match_info: *MatchInfo) **c::char;
export @symbol("g_match_info_fetch_named") fn match_info_fetch_named(match_info: *MatchInfo, name: *c::char) *c::char;
export @symbol("g_match_info_fetch_named_pos") fn match_info_fetch_named_pos(match_info: *MatchInfo, name: *c::char, start_pos: *int, end_pos: *int) boolean;
export @symbol("g_match_info_fetch_pos") fn match_info_fetch_pos(match_info: *MatchInfo, match_num: int, start_pos: *int, end_pos: *int) boolean;
export @symbol("g_match_info_free") fn match_info_free(match_info: *MatchInfo) void;
export @symbol("g_match_info_get_match_count") fn match_info_get_match_count(match_info: *MatchInfo) int;
export @symbol("g_match_info_get_regex") fn match_info_get_regex(match_info: *MatchInfo) *Regex;
export @symbol("g_match_info_get_string") fn match_info_get_string(match_info: *MatchInfo) *c::char;
export @symbol("g_match_info_is_partial_match") fn match_info_is_partial_match(match_info: *MatchInfo) boolean;
export @symbol("g_match_info_matches") fn match_info_matches(match_info: *MatchInfo) boolean;
export @symbol("g_match_info_next") fn match_info_next(match_info: *MatchInfo, error: nullable **Error) boolean;
export @symbol("g_match_info_ref") fn match_info_ref(match_info: *MatchInfo) *MatchInfo;
export @symbol("g_match_info_unref") fn match_info_unref(match_info: *MatchInfo) void;
export type MemVTable = struct {
	malloc: *fn(n_bytes: size) *opaque,
	realloc: *fn(mem: *opaque, n_bytes: size) *opaque,
	free_: *fn(mem: *opaque) void,
	calloc: *fn(n_blocks: size, n_block_bytes: size) *opaque,
	try_malloc: *fn(n_bytes: size) *opaque,
	try_realloc: *fn(mem: *opaque, n_bytes: size) *opaque,
};
export type Node = struct {
	data: *opaque,
	next: *Node,
	prev: *Node,
	parent: *Node,
	children: *Node,
};
export @symbol("g_node_child_index") fn node_child_index(node: *Node, data: *opaque) int;
export @symbol("g_node_child_position") fn node_child_position(node: *Node, child: *Node) int;
export @symbol("g_node_children_foreach") fn node_children_foreach(node: *Node, flags: TraverseFlags, func: NodeForeachFunc, data: *opaque) void;
export @symbol("g_node_copy") fn node_copy(node: *Node) *Node;
export @symbol("g_node_copy_deep") fn node_copy_deep(node: *Node, copy_func: CopyFunc, data: *opaque) *Node;
export @symbol("g_node_depth") fn node_depth(node: *Node) uint;
export @symbol("g_node_destroy") fn node_destroy(root: *Node) void;
export @symbol("g_node_find") fn node_find(root: *Node, order: TraverseType, flags: TraverseFlags, data: *opaque) *Node;
export @symbol("g_node_find_child") fn node_find_child(node: *Node, flags: TraverseFlags, data: *opaque) *Node;
export @symbol("g_node_first_sibling") fn node_first_sibling(node: *Node) *Node;
export @symbol("g_node_get_root") fn node_get_root(node: *Node) *Node;
export @symbol("g_node_insert") fn node_insert(parent: *Node, position: int, node: *Node) *Node;
export @symbol("g_node_insert_after") fn node_insert_after(parent: *Node, sibling: *Node, node: *Node) *Node;
export @symbol("g_node_insert_before") fn node_insert_before(parent: *Node, sibling: *Node, node: *Node) *Node;
export @symbol("g_node_is_ancestor") fn node_is_ancestor(node: *Node, descendant: *Node) boolean;
export @symbol("g_node_last_child") fn node_last_child(node: *Node) *Node;
export @symbol("g_node_last_sibling") fn node_last_sibling(node: *Node) *Node;
export @symbol("g_node_max_height") fn node_max_height(root: *Node) uint;
export @symbol("g_node_n_children") fn node_n_children(node: *Node) uint;
export @symbol("g_node_n_nodes") fn node_n_nodes(root: *Node, flags: TraverseFlags) uint;
export @symbol("g_node_nth_child") fn node_nth_child(node: *Node, n: uint) *Node;
export @symbol("g_node_prepend") fn node_prepend(parent: *Node, node: *Node) *Node;
export @symbol("g_node_reverse_children") fn node_reverse_children(node: *Node) void;
export @symbol("g_node_traverse") fn node_traverse(root: *Node, order: TraverseType, flags: TraverseFlags, max_depth: int, func: NodeTraverseFunc, data: *opaque) void;
export @symbol("g_node_unlink") fn node_unlink(node: *Node) void;
export @symbol("g_node_new") fn node_new(data: *opaque) *Node;
export type Once = struct {
	status: OnceStatus,
	retval: *opaque,
};
export @symbol("g_once_impl") fn once_impl(once: *Once, func: ThreadFunc, arg: *opaque) *opaque;
export @symbol("g_once_init_enter") fn once_init_enter(location: *opaque) boolean;
export @symbol("g_once_init_leave") fn once_init_leave(location: *opaque, result: size) void;
export type OptionContext = *opaque;
export @symbol("g_option_context_add_group") fn option_context_add_group(context: *OptionContext, group: *OptionGroup) void;
export @symbol("g_option_context_add_main_entries") fn option_context_add_main_entries(context: *OptionContext, entries: *OptionEntry, translation_domain: *c::char) void;
export @symbol("g_option_context_free") fn option_context_free(context: *OptionContext) void;
export @symbol("g_option_context_get_description") fn option_context_get_description(context: *OptionContext) *c::char;
export @symbol("g_option_context_get_help") fn option_context_get_help(context: *OptionContext, main_help: boolean, group: *OptionGroup) *c::char;
export @symbol("g_option_context_get_help_enabled") fn option_context_get_help_enabled(context: *OptionContext) boolean;
export @symbol("g_option_context_get_ignore_unknown_options") fn option_context_get_ignore_unknown_options(context: *OptionContext) boolean;
export @symbol("g_option_context_get_main_group") fn option_context_get_main_group(context: *OptionContext) *OptionGroup;
export @symbol("g_option_context_get_strict_posix") fn option_context_get_strict_posix(context: *OptionContext) boolean;
export @symbol("g_option_context_get_summary") fn option_context_get_summary(context: *OptionContext) *c::char;
export @symbol("g_option_context_parse") fn option_context_parse(context: *OptionContext, argc: *int, argv: ***c::char, error: nullable **Error) boolean;
export @symbol("g_option_context_parse_strv") fn option_context_parse_strv(context: *OptionContext, arguments: ***c::char, error: nullable **Error) boolean;
export @symbol("g_option_context_set_description") fn option_context_set_description(context: *OptionContext, description: *c::char) void;
export @symbol("g_option_context_set_help_enabled") fn option_context_set_help_enabled(context: *OptionContext, help_enabled: boolean) void;
export @symbol("g_option_context_set_ignore_unknown_options") fn option_context_set_ignore_unknown_options(context: *OptionContext, ignore_unknown: boolean) void;
export @symbol("g_option_context_set_main_group") fn option_context_set_main_group(context: *OptionContext, group: *OptionGroup) void;
export @symbol("g_option_context_set_strict_posix") fn option_context_set_strict_posix(context: *OptionContext, strict_posix: boolean) void;
export @symbol("g_option_context_set_summary") fn option_context_set_summary(context: *OptionContext, summary: *c::char) void;
export @symbol("g_option_context_set_translate_func") fn option_context_set_translate_func(context: *OptionContext, func: TranslateFunc, data: *opaque, destroy_notify: DestroyNotify) void;
export @symbol("g_option_context_set_translation_domain") fn option_context_set_translation_domain(context: *OptionContext, domain: *c::char) void;
export @symbol("g_option_context_new") fn option_context_new(parameter_string: *c::char) *OptionContext;
export type OptionEntry = struct {
	long_name: *c::char,
	short_name: c::char,
	flags: int,
	arg: OptionArg,
	arg_data: *opaque,
	description: *c::char,
	arg_description: *c::char,
};
export type OptionGroup = *opaque;
export @symbol("g_option_group_new") fn option_group_new(name: *c::char, description: *c::char, help_description: *c::char, user_data: *opaque, destroy: DestroyNotify) *OptionGroup;
export @symbol("g_option_group_add_entries") fn option_group_add_entries(group: *OptionGroup, entries: *OptionEntry) void;
export @symbol("g_option_group_free") fn option_group_free(group: *OptionGroup) void;
export @symbol("g_option_group_ref") fn option_group_ref(group: *OptionGroup) *OptionGroup;
export @symbol("g_option_group_set_error_hook") fn option_group_set_error_hook(group: *OptionGroup, error_func: OptionErrorFunc) void;
export @symbol("g_option_group_set_parse_hooks") fn option_group_set_parse_hooks(group: *OptionGroup, pre_parse_func: OptionParseFunc, post_parse_func: OptionParseFunc) void;
export @symbol("g_option_group_set_translate_func") fn option_group_set_translate_func(group: *OptionGroup, func: TranslateFunc, data: *opaque, destroy_notify: DestroyNotify) void;
export @symbol("g_option_group_set_translation_domain") fn option_group_set_translation_domain(group: *OptionGroup, domain: *c::char) void;
export @symbol("g_option_group_unref") fn option_group_unref(group: *OptionGroup) void;
export type PathBuf = struct {
	dummy: [8]*opaque,
};
export @symbol("g_path_buf_clear") fn path_buf_clear(buf: *PathBuf) void;
export @symbol("g_path_buf_clear_to_path") fn path_buf_clear_to_path(buf: *PathBuf) *c::char;
export @symbol("g_path_buf_copy") fn path_buf_copy(buf: *PathBuf) *PathBuf;
export @symbol("g_path_buf_free") fn path_buf_free(buf: *PathBuf) void;
export @symbol("g_path_buf_free_to_path") fn path_buf_free_to_path(buf: *PathBuf) *c::char;
export @symbol("g_path_buf_init") fn path_buf_init(buf: *PathBuf) *PathBuf;
export @symbol("g_path_buf_init_from_path") fn path_buf_init_from_path(buf: *PathBuf, path: *c::char) *PathBuf;
export @symbol("g_path_buf_pop") fn path_buf_pop(buf: *PathBuf) boolean;
export @symbol("g_path_buf_push") fn path_buf_push(buf: *PathBuf, path: *c::char) *PathBuf;
export @symbol("g_path_buf_set_extension") fn path_buf_set_extension(buf: *PathBuf, extension: *c::char) boolean;
export @symbol("g_path_buf_set_filename") fn path_buf_set_filename(buf: *PathBuf, file_name: *c::char) boolean;
export @symbol("g_path_buf_to_path") fn path_buf_to_path(buf: *PathBuf) *c::char;
export @symbol("g_path_buf_equal") fn path_buf_equal(v1: *opaque, v2: *opaque) boolean;
export @symbol("g_path_buf_new") fn path_buf_new() *PathBuf;
export @symbol("g_path_buf_new_from_path") fn path_buf_new_from_path(path: *c::char) *PathBuf;
export type PatternSpec = *opaque;
export @symbol("g_pattern_spec_new") fn pattern_spec_new(pattern: *c::char) *PatternSpec;
export @symbol("g_pattern_spec_copy") fn pattern_spec_copy(pspec: *PatternSpec) *PatternSpec;
export @symbol("g_pattern_spec_equal") fn pattern_spec_equal(pspec1: *PatternSpec, pspec2: *PatternSpec) boolean;
export @symbol("g_pattern_spec_free") fn pattern_spec_free(pspec: *PatternSpec) void;
export @symbol("g_pattern_spec_match") fn pattern_spec_match(pspec: *PatternSpec, string_length: size, string: *c::char, string_reversed: *c::char) boolean;
export @symbol("g_pattern_spec_match_string") fn pattern_spec_match_string(pspec: *PatternSpec, string: *c::char) boolean;
export type PollFD = struct {
	fd: int,
	events: c::ushort,
	revents: c::ushort,
};
export type Private = struct {
	p: *opaque,
	notify: DestroyNotify,
	future: [2]*opaque,
};
export @symbol("g_private_get") fn private_get(key: *Private) *opaque;
export @symbol("g_private_replace") fn private_replace(key: *Private, value: *opaque) void;
export @symbol("g_private_set") fn private_set(key: *Private, value: *opaque) void;
export type PtrArray = struct {
	pdata: **opaque,
	len_: uint,
};
export @symbol("g_ptr_array_add") fn ptr_array_add(array: *PtrArray, data: *opaque) void;
export @symbol("g_ptr_array_copy") fn ptr_array_copy(array: *PtrArray, func: CopyFunc, user_data: *opaque) *PtrArray;
export @symbol("g_ptr_array_extend") fn ptr_array_extend(array_to_extend: *PtrArray, array: *PtrArray, func: CopyFunc, user_data: *opaque) void;
export @symbol("g_ptr_array_extend_and_steal") fn ptr_array_extend_and_steal(array_to_extend: *PtrArray, array: *PtrArray) void;
export @symbol("g_ptr_array_find") fn ptr_array_find(haystack: *PtrArray, needle: *opaque, index_: *uint) boolean;
export @symbol("g_ptr_array_find_with_equal_func") fn ptr_array_find_with_equal_func(haystack: *PtrArray, needle: *opaque, equal_func: EqualFunc, index_: *uint) boolean;
export @symbol("g_ptr_array_foreach") fn ptr_array_foreach(array: *PtrArray, func: Func, user_data: *opaque) void;
export @symbol("g_ptr_array_free") fn ptr_array_free(array: *PtrArray, free_seg: boolean) **opaque;
export @symbol("g_ptr_array_insert") fn ptr_array_insert(array: *PtrArray, index_: int, data: *opaque) void;
export @symbol("g_ptr_array_is_null_terminated") fn ptr_array_is_null_terminated(array: *PtrArray) boolean;
export @symbol("g_ptr_array_new") fn ptr_array_new() *PtrArray;
export @symbol("g_ptr_array_new_from_array") fn ptr_array_new_from_array(data: **opaque, len_: size, copy_func: CopyFunc, copy_func_user_data: *opaque, element_free_func: DestroyNotify) *PtrArray;
export @symbol("g_ptr_array_new_from_null_terminated_array") fn ptr_array_new_from_null_terminated_array(data: **opaque, copy_func: CopyFunc, copy_func_user_data: *opaque, element_free_func: DestroyNotify) *PtrArray;
export @symbol("g_ptr_array_new_full") fn ptr_array_new_full(reserved_size: uint, element_free_func: DestroyNotify) *PtrArray;
export @symbol("g_ptr_array_new_null_terminated") fn ptr_array_new_null_terminated(reserved_size: uint, element_free_func: DestroyNotify, null_terminated: boolean) *PtrArray;
export @symbol("g_ptr_array_new_take") fn ptr_array_new_take(data: **opaque, len_: size, element_free_func: DestroyNotify) *PtrArray;
export @symbol("g_ptr_array_new_take_null_terminated") fn ptr_array_new_take_null_terminated(data: **opaque, element_free_func: DestroyNotify) *PtrArray;
export @symbol("g_ptr_array_new_with_free_func") fn ptr_array_new_with_free_func(element_free_func: DestroyNotify) *PtrArray;
export @symbol("g_ptr_array_ref") fn ptr_array_ref(array: *PtrArray) *PtrArray;
export @symbol("g_ptr_array_remove") fn ptr_array_remove(array: *PtrArray, data: *opaque) boolean;
export @symbol("g_ptr_array_remove_fast") fn ptr_array_remove_fast(array: *PtrArray, data: *opaque) boolean;
export @symbol("g_ptr_array_remove_index") fn ptr_array_remove_index(array: *PtrArray, index_: uint) *opaque;
export @symbol("g_ptr_array_remove_index_fast") fn ptr_array_remove_index_fast(array: *PtrArray, index_: uint) *opaque;
export @symbol("g_ptr_array_remove_range") fn ptr_array_remove_range(array: *PtrArray, index_: uint, length: uint) *PtrArray;
export @symbol("g_ptr_array_set_free_func") fn ptr_array_set_free_func(array: *PtrArray, element_free_func: DestroyNotify) void;
export @symbol("g_ptr_array_set_size") fn ptr_array_set_size(array: *PtrArray, length: int) void;
export @symbol("g_ptr_array_sized_new") fn ptr_array_sized_new(reserved_size: uint) *PtrArray;
export @symbol("g_ptr_array_sort") fn ptr_array_sort(array: *PtrArray, compare_func: CompareFunc) void;
export @symbol("g_ptr_array_sort_values") fn ptr_array_sort_values(array: *PtrArray, compare_func: CompareFunc) void;
export @symbol("g_ptr_array_sort_values_with_data") fn ptr_array_sort_values_with_data(array: *PtrArray, compare_func: CompareDataFunc, user_data: *opaque) void;
export @symbol("g_ptr_array_sort_with_data") fn ptr_array_sort_with_data(array: *PtrArray, compare_func: CompareDataFunc, user_data: *opaque) void;
export @symbol("g_ptr_array_steal") fn ptr_array_steal(array: *PtrArray, len_: *size) **opaque;
export @symbol("g_ptr_array_steal_index") fn ptr_array_steal_index(array: *PtrArray, index_: uint) *opaque;
export @symbol("g_ptr_array_steal_index_fast") fn ptr_array_steal_index_fast(array: *PtrArray, index_: uint) *opaque;
export @symbol("g_ptr_array_unref") fn ptr_array_unref(array: *PtrArray) void;
export type Queue = struct {
	head: *List,
	tail: *List,
	length: uint,
};
export @symbol("g_queue_clear") fn queue_clear(queue: *Queue) void;
export @symbol("g_queue_clear_full") fn queue_clear_full(queue: *Queue, free_func: DestroyNotify) void;
export @symbol("g_queue_copy") fn queue_copy(queue: *Queue) *Queue;
export @symbol("g_queue_delete_link") fn queue_delete_link(queue: *Queue, link_: *List) void;
export @symbol("g_queue_find") fn queue_find(queue: *Queue, data: *opaque) *List;
export @symbol("g_queue_find_custom") fn queue_find_custom(queue: *Queue, data: *opaque, func: CompareFunc) *List;
export @symbol("g_queue_foreach") fn queue_foreach(queue: *Queue, func: Func, user_data: *opaque) void;
export @symbol("g_queue_free") fn queue_free(queue: *Queue) void;
export @symbol("g_queue_free_full") fn queue_free_full(queue: *Queue, free_func: DestroyNotify) void;
export @symbol("g_queue_get_length") fn queue_get_length(queue: *Queue) uint;
export @symbol("g_queue_index") fn queue_index(queue: *Queue, data: *opaque) int;
export @symbol("g_queue_init") fn queue_init(queue: *Queue) void;
export @symbol("g_queue_insert_after") fn queue_insert_after(queue: *Queue, sibling: *List, data: *opaque) void;
export @symbol("g_queue_insert_after_link") fn queue_insert_after_link(queue: *Queue, sibling: *List, link_: *List) void;
export @symbol("g_queue_insert_before") fn queue_insert_before(queue: *Queue, sibling: *List, data: *opaque) void;
export @symbol("g_queue_insert_before_link") fn queue_insert_before_link(queue: *Queue, sibling: *List, link_: *List) void;
export @symbol("g_queue_insert_sorted") fn queue_insert_sorted(queue: *Queue, data: *opaque, func: CompareDataFunc, user_data: *opaque) void;
export @symbol("g_queue_is_empty") fn queue_is_empty(queue: *Queue) boolean;
export @symbol("g_queue_link_index") fn queue_link_index(queue: *Queue, link_: *List) int;
export @symbol("g_queue_peek_head") fn queue_peek_head(queue: *Queue) *opaque;
export @symbol("g_queue_peek_head_link") fn queue_peek_head_link(queue: *Queue) *List;
export @symbol("g_queue_peek_nth") fn queue_peek_nth(queue: *Queue, n: uint) *opaque;
export @symbol("g_queue_peek_nth_link") fn queue_peek_nth_link(queue: *Queue, n: uint) *List;
export @symbol("g_queue_peek_tail") fn queue_peek_tail(queue: *Queue) *opaque;
export @symbol("g_queue_peek_tail_link") fn queue_peek_tail_link(queue: *Queue) *List;
export @symbol("g_queue_pop_head") fn queue_pop_head(queue: *Queue) *opaque;
export @symbol("g_queue_pop_head_link") fn queue_pop_head_link(queue: *Queue) *List;
export @symbol("g_queue_pop_nth") fn queue_pop_nth(queue: *Queue, n: uint) *opaque;
export @symbol("g_queue_pop_nth_link") fn queue_pop_nth_link(queue: *Queue, n: uint) *List;
export @symbol("g_queue_pop_tail") fn queue_pop_tail(queue: *Queue) *opaque;
export @symbol("g_queue_pop_tail_link") fn queue_pop_tail_link(queue: *Queue) *List;
export @symbol("g_queue_push_head") fn queue_push_head(queue: *Queue, data: *opaque) void;
export @symbol("g_queue_push_head_link") fn queue_push_head_link(queue: *Queue, link_: *List) void;
export @symbol("g_queue_push_nth") fn queue_push_nth(queue: *Queue, data: *opaque, n: int) void;
export @symbol("g_queue_push_nth_link") fn queue_push_nth_link(queue: *Queue, n: int, link_: *List) void;
export @symbol("g_queue_push_tail") fn queue_push_tail(queue: *Queue, data: *opaque) void;
export @symbol("g_queue_push_tail_link") fn queue_push_tail_link(queue: *Queue, link_: *List) void;
export @symbol("g_queue_remove") fn queue_remove(queue: *Queue, data: *opaque) boolean;
export @symbol("g_queue_remove_all") fn queue_remove_all(queue: *Queue, data: *opaque) uint;
export @symbol("g_queue_reverse") fn queue_reverse(queue: *Queue) void;
export @symbol("g_queue_sort") fn queue_sort(queue: *Queue, compare_func: CompareDataFunc, user_data: *opaque) void;
export @symbol("g_queue_unlink") fn queue_unlink(queue: *Queue, link_: *List) void;
export @symbol("g_queue_new") fn queue_new() *Queue;
export type RWLock = struct {
	p: *opaque,
	i: [2]uint,
};
export @symbol("g_rw_lock_clear") fn rwlock_clear(rw_lock: *RWLock) void;
export @symbol("g_rw_lock_init") fn rwlock_init(rw_lock: *RWLock) void;
export @symbol("g_rw_lock_reader_lock") fn rwlock_reader_lock(rw_lock: *RWLock) void;
export @symbol("g_rw_lock_reader_trylock") fn rwlock_reader_trylock(rw_lock: *RWLock) boolean;
export @symbol("g_rw_lock_reader_unlock") fn rwlock_reader_unlock(rw_lock: *RWLock) void;
export @symbol("g_rw_lock_writer_lock") fn rwlock_writer_lock(rw_lock: *RWLock) void;
export @symbol("g_rw_lock_writer_trylock") fn rwlock_writer_trylock(rw_lock: *RWLock) boolean;
export @symbol("g_rw_lock_writer_unlock") fn rwlock_writer_unlock(rw_lock: *RWLock) void;
export type Rand = *opaque;
export @symbol("g_rand_copy") fn rand_copy(rand_: *Rand) *Rand;
export @symbol("g_rand_double") fn rand_double(rand_: *Rand) f64;
export @symbol("g_rand_double_range") fn rand_double_range(rand_: *Rand, begin: f64, end: f64) f64;
export @symbol("g_rand_free") fn rand_free(rand_: *Rand) void;
export @symbol("g_rand_int") fn rand_int(rand_: *Rand) u32;
export @symbol("g_rand_int_range") fn rand_int_range(rand_: *Rand, begin: i32, end: i32) i32;
export @symbol("g_rand_set_seed") fn rand_set_seed(rand_: *Rand, seed: u32) void;
export @symbol("g_rand_set_seed_array") fn rand_set_seed_array(rand_: *Rand, seed: *u32, seed_length: uint) void;
export @symbol("g_rand_new") fn rand_new() *Rand;
export @symbol("g_rand_new_with_seed") fn rand_new_with_seed(seed: u32) *Rand;
export @symbol("g_rand_new_with_seed_array") fn rand_new_with_seed_array(seed: *u32, seed_length: uint) *Rand;
export type RecMutex = struct {
	p: *opaque,
	i: [2]uint,
};
export @symbol("g_rec_mutex_clear") fn rec_mutex_clear(rec_mutex: *RecMutex) void;
export @symbol("g_rec_mutex_init") fn rec_mutex_init(rec_mutex: *RecMutex) void;
export @symbol("g_rec_mutex_lock") fn rec_mutex_lock(rec_mutex: *RecMutex) void;
export @symbol("g_rec_mutex_trylock") fn rec_mutex_trylock(rec_mutex: *RecMutex) boolean;
export @symbol("g_rec_mutex_unlock") fn rec_mutex_unlock(rec_mutex: *RecMutex) void;
export type Regex = *opaque;
export @symbol("g_regex_new") fn regex_new(pattern: *c::char, compile_options: RegexCompileFlags, match_options: RegexMatchFlags, error: nullable **Error) *Regex;
export @symbol("g_regex_get_capture_count") fn regex_get_capture_count(regex: *Regex) int;
export @symbol("g_regex_get_compile_flags") fn regex_get_compile_flags(regex: *Regex) RegexCompileFlags;
export @symbol("g_regex_get_has_cr_or_lf") fn regex_get_has_cr_or_lf(regex: *Regex) boolean;
export @symbol("g_regex_get_match_flags") fn regex_get_match_flags(regex: *Regex) RegexMatchFlags;
export @symbol("g_regex_get_max_backref") fn regex_get_max_backref(regex: *Regex) int;
export @symbol("g_regex_get_max_lookbehind") fn regex_get_max_lookbehind(regex: *Regex) int;
export @symbol("g_regex_get_pattern") fn regex_get_pattern(regex: *Regex) *c::char;
export @symbol("g_regex_get_string_number") fn regex_get_string_number(regex: *Regex, name: *c::char) int;
export @symbol("g_regex_match") fn regex_match(regex: *Regex, string: *c::char, match_options: RegexMatchFlags, match_info: **MatchInfo) boolean;
export @symbol("g_regex_match_all") fn regex_match_all(regex: *Regex, string: *c::char, match_options: RegexMatchFlags, match_info: **MatchInfo) boolean;
export @symbol("g_regex_match_all_full") fn regex_match_all_full(regex: *Regex, string: *c::char, string_len: c::ssize, start_position: int, match_options: RegexMatchFlags, match_info: **MatchInfo, error: nullable **Error) boolean;
export @symbol("g_regex_match_full") fn regex_match_full(regex: *Regex, string: *c::char, string_len: c::ssize, start_position: int, match_options: RegexMatchFlags, match_info: **MatchInfo, error: nullable **Error) boolean;
export @symbol("g_regex_ref") fn regex_ref(regex: *Regex) *Regex;
export @symbol("g_regex_replace") fn regex_replace(regex: *Regex, string: *c::char, string_len: c::ssize, start_position: int, replacement: *c::char, match_options: RegexMatchFlags, error: nullable **Error) *c::char;
export @symbol("g_regex_replace_eval") fn regex_replace_eval(regex: *Regex, string: *c::char, string_len: c::ssize, start_position: int, match_options: RegexMatchFlags, eval: RegexEvalCallback, user_data: *opaque, error: nullable **Error) *c::char;
export @symbol("g_regex_replace_literal") fn regex_replace_literal(regex: *Regex, string: *c::char, string_len: c::ssize, start_position: int, replacement: *c::char, match_options: RegexMatchFlags, error: nullable **Error) *c::char;
export @symbol("g_regex_split") fn regex_split(regex: *Regex, string: *c::char, match_options: RegexMatchFlags) **c::char;
export @symbol("g_regex_split_full") fn regex_split_full(regex: *Regex, string: *c::char, string_len: c::ssize, start_position: int, match_options: RegexMatchFlags, max_tokens: int, error: nullable **Error) **c::char;
export @symbol("g_regex_unref") fn regex_unref(regex: *Regex) void;
export @symbol("g_regex_check_replacement") fn regex_check_replacement(replacement: *c::char, has_references: *boolean, error: nullable **Error) boolean;
export @symbol("g_regex_error_quark") fn regex_error_quark() Quark;
export @symbol("g_regex_escape_nul") fn regex_escape_nul(string: *c::char, length: int) *c::char;
export @symbol("g_regex_escape_string") fn regex_escape_string(string: *c::char, length: int) *c::char;
export @symbol("g_regex_match_simple") fn regex_match_simple(pattern: *c::char, string: *c::char, compile_options: RegexCompileFlags, match_options: RegexMatchFlags) boolean;
export @symbol("g_regex_split_simple") fn regex_split_simple(pattern: *c::char, string: *c::char, compile_options: RegexCompileFlags, match_options: RegexMatchFlags) **c::char;
export type SList = struct {
	data: *opaque,
	next: *SList,
};
export @symbol("g_slist_alloc") fn slist_alloc() *SList;
export @symbol("g_slist_append") fn slist_append(list: *SList, data: *opaque) *SList;
export @symbol("g_slist_concat") fn slist_concat(list1: *SList, list2: *SList) *SList;
export @symbol("g_slist_copy") fn slist_copy(list: *SList) *SList;
export @symbol("g_slist_copy_deep") fn slist_copy_deep(list: *SList, func: CopyFunc, user_data: *opaque) *SList;
export @symbol("g_slist_delete_link") fn slist_delete_link(list: *SList, link_: *SList) *SList;
export @symbol("g_slist_find") fn slist_find(list: *SList, data: *opaque) *SList;
export @symbol("g_slist_find_custom") fn slist_find_custom(list: *SList, data: *opaque, func: CompareFunc) *SList;
export @symbol("g_slist_foreach") fn slist_foreach(list: *SList, func: Func, user_data: *opaque) void;
export @symbol("g_slist_free") fn slist_free(list: *SList) void;
export @symbol("g_slist_free_1") fn slist_free_1(list: *SList) void;
export @symbol("g_slist_free_full") fn slist_free_full(list: *SList, free_func: DestroyNotify) void;
export @symbol("g_slist_index") fn slist_index(list: *SList, data: *opaque) int;
export @symbol("g_slist_insert") fn slist_insert(list: *SList, data: *opaque, position: int) *SList;
export @symbol("g_slist_insert_before") fn slist_insert_before(slist: *SList, sibling: *SList, data: *opaque) *SList;
export @symbol("g_slist_insert_sorted") fn slist_insert_sorted(list: *SList, data: *opaque, func: CompareFunc) *SList;
export @symbol("g_slist_insert_sorted_with_data") fn slist_insert_sorted_with_data(list: *SList, data: *opaque, func: CompareDataFunc, user_data: *opaque) *SList;
export @symbol("g_slist_last") fn slist_last(list: *SList) *SList;
export @symbol("g_slist_length") fn slist_length(list: *SList) uint;
export @symbol("g_slist_nth") fn slist_nth(list: *SList, n: uint) *SList;
export @symbol("g_slist_nth_data") fn slist_nth_data(list: *SList, n: uint) *opaque;
export @symbol("g_slist_position") fn slist_position(list: *SList, llink: *SList) int;
export @symbol("g_slist_prepend") fn slist_prepend(list: *SList, data: *opaque) *SList;
export @symbol("g_slist_remove") fn slist_remove(list: *SList, data: *opaque) *SList;
export @symbol("g_slist_remove_all") fn slist_remove_all(list: *SList, data: *opaque) *SList;
export @symbol("g_slist_remove_link") fn slist_remove_link(list: *SList, link_: *SList) *SList;
export @symbol("g_slist_reverse") fn slist_reverse(list: *SList) *SList;
export @symbol("g_slist_sort") fn slist_sort(list: *SList, compare_func: CompareFunc) *SList;
export @symbol("g_slist_sort_with_data") fn slist_sort_with_data(list: *SList, compare_func: CompareDataFunc, user_data: *opaque) *SList;
export type Scanner = struct {
	user_data: *opaque,
	max_parse_errors: uint,
	parse_errors: uint,
	input_name: *c::char,
	qdata: *Data,
	config: *ScannerConfig,
	token: TokenType,
	value: TokenValue,
	line: uint,
	position: uint,
	next_token: TokenType,
	next_value: TokenValue,
	next_line: uint,
	next_position: uint,
	symbol_table: *HashTable,
	input_fd: int,
	text: *c::char,
	text_end: *c::char,
	buffer: *c::char,
	scope_id: uint,
	msg_handler: ScannerMsgFunc,
};
export @symbol("g_scanner_cur_line") fn scanner_cur_line(scanner: *Scanner) uint;
export @symbol("g_scanner_cur_position") fn scanner_cur_position(scanner: *Scanner) uint;
export @symbol("g_scanner_cur_token") fn scanner_cur_token(scanner: *Scanner) TokenType;
export @symbol("g_scanner_cur_value") fn scanner_cur_value(scanner: *Scanner) TokenValue;
export @symbol("g_scanner_destroy") fn scanner_destroy(scanner: *Scanner) void;
export @symbol("g_scanner_eof") fn scanner_eof(scanner: *Scanner) boolean;
export @symbol("g_scanner_error") fn scanner_error(scanner: *Scanner, format: *c::char, ...) void;
export @symbol("g_scanner_get_next_token") fn scanner_get_next_token(scanner: *Scanner) TokenType;
export @symbol("g_scanner_input_file") fn scanner_input_file(scanner: *Scanner, input_fd: int) void;
export @symbol("g_scanner_input_text") fn scanner_input_text(scanner: *Scanner, text: *c::char, text_len: uint) void;
export @symbol("g_scanner_lookup_symbol") fn scanner_lookup_symbol(scanner: *Scanner, symbol: *c::char) *opaque;
export @symbol("g_scanner_peek_next_token") fn scanner_peek_next_token(scanner: *Scanner) TokenType;
export @symbol("g_scanner_scope_add_symbol") fn scanner_scope_add_symbol(scanner: *Scanner, scope_id: uint, symbol: *c::char, value: *opaque) void;
export @symbol("g_scanner_scope_foreach_symbol") fn scanner_scope_foreach_symbol(scanner: *Scanner, scope_id: uint, func: HFunc, user_data: *opaque) void;
export @symbol("g_scanner_scope_lookup_symbol") fn scanner_scope_lookup_symbol(scanner: *Scanner, scope_id: uint, symbol: *c::char) *opaque;
export @symbol("g_scanner_scope_remove_symbol") fn scanner_scope_remove_symbol(scanner: *Scanner, scope_id: uint, symbol: *c::char) void;
export @symbol("g_scanner_set_scope") fn scanner_set_scope(scanner: *Scanner, scope_id: uint) uint;
export @symbol("g_scanner_sync_file_offset") fn scanner_sync_file_offset(scanner: *Scanner) void;
export @symbol("g_scanner_unexp_token") fn scanner_unexp_token(scanner: *Scanner, expected_token: TokenType, identifier_spec: *c::char, symbol_spec: *c::char, symbol_name: *c::char, message: *c::char, is_error: int) void;
export @symbol("g_scanner_warn") fn scanner_warn(scanner: *Scanner, format: *c::char, ...) void;
export @symbol("g_scanner_new") fn scanner_new(config_templ: *ScannerConfig) *Scanner;
export type ScannerConfig = struct {
	cset_skip_characters: *c::char,
	cset_identifier_first: *c::char,
	cset_identifier_nth: *c::char,
	cpair_comment_single: *c::char,
	case_sensitive: uint,
	skip_comment_multi: uint,
	skip_comment_single: uint,
	scan_comment_multi: uint,
	scan_identifier: uint,
	scan_identifier_1char: uint,
	scan_identifier_NULL: uint,
	scan_symbols: uint,
	scan_binary: uint,
	scan_octal: uint,
	scan_float: uint,
	scan_hex: uint,
	scan_hex_dollar: uint,
	scan_string_sq: uint,
	scan_string_dq: uint,
	numbers_2_int: uint,
	int_2_float: uint,
	identifier_2_string: uint,
	char_2_token: uint,
	symbol_2_token: uint,
	scope_0_fallback: uint,
	store_int64: uint,
	padding_dummy: uint,
};
export type Sequence = *opaque;
export @symbol("g_sequence_append") fn sequence_append(seq: *Sequence, data: *opaque) *SequenceIter;
export @symbol("g_sequence_foreach") fn sequence_foreach(seq: *Sequence, func: Func, user_data: *opaque) void;
export @symbol("g_sequence_free") fn sequence_free(seq: *Sequence) void;
export @symbol("g_sequence_get_begin_iter") fn sequence_get_begin_iter(seq: *Sequence) *SequenceIter;
export @symbol("g_sequence_get_end_iter") fn sequence_get_end_iter(seq: *Sequence) *SequenceIter;
export @symbol("g_sequence_get_iter_at_pos") fn sequence_get_iter_at_pos(seq: *Sequence, pos: int) *SequenceIter;
export @symbol("g_sequence_get_length") fn sequence_get_length(seq: *Sequence) int;
export @symbol("g_sequence_insert_sorted") fn sequence_insert_sorted(seq: *Sequence, data: *opaque, cmp_func: CompareDataFunc, cmp_data: *opaque) *SequenceIter;
export @symbol("g_sequence_insert_sorted_iter") fn sequence_insert_sorted_iter(seq: *Sequence, data: *opaque, iter_cmp: SequenceIterCompareFunc, cmp_data: *opaque) *SequenceIter;
export @symbol("g_sequence_is_empty") fn sequence_is_empty(seq: *Sequence) boolean;
export @symbol("g_sequence_lookup") fn sequence_lookup(seq: *Sequence, data: *opaque, cmp_func: CompareDataFunc, cmp_data: *opaque) *SequenceIter;
export @symbol("g_sequence_lookup_iter") fn sequence_lookup_iter(seq: *Sequence, data: *opaque, iter_cmp: SequenceIterCompareFunc, cmp_data: *opaque) *SequenceIter;
export @symbol("g_sequence_prepend") fn sequence_prepend(seq: *Sequence, data: *opaque) *SequenceIter;
export @symbol("g_sequence_search") fn sequence_search(seq: *Sequence, data: *opaque, cmp_func: CompareDataFunc, cmp_data: *opaque) *SequenceIter;
export @symbol("g_sequence_search_iter") fn sequence_search_iter(seq: *Sequence, data: *opaque, iter_cmp: SequenceIterCompareFunc, cmp_data: *opaque) *SequenceIter;
export @symbol("g_sequence_sort") fn sequence_sort(seq: *Sequence, cmp_func: CompareDataFunc, cmp_data: *opaque) void;
export @symbol("g_sequence_sort_iter") fn sequence_sort_iter(seq: *Sequence, cmp_func: SequenceIterCompareFunc, cmp_data: *opaque) void;
export @symbol("g_sequence_foreach_range") fn sequence_foreach_range(begin: *SequenceIter, end: *SequenceIter, func: Func, user_data: *opaque) void;
export @symbol("g_sequence_get") fn sequence_get(iter: *SequenceIter) *opaque;
export @symbol("g_sequence_insert_before") fn sequence_insert_before(iter: *SequenceIter, data: *opaque) *SequenceIter;
export @symbol("g_sequence_move") fn sequence_move(src: *SequenceIter, dest: *SequenceIter) void;
export @symbol("g_sequence_move_range") fn sequence_move_range(dest: *SequenceIter, begin: *SequenceIter, end: *SequenceIter) void;
export @symbol("g_sequence_new") fn sequence_new(data_destroy: DestroyNotify) *Sequence;
export @symbol("g_sequence_range_get_midpoint") fn sequence_range_get_midpoint(begin: *SequenceIter, end: *SequenceIter) *SequenceIter;
export @symbol("g_sequence_remove") fn sequence_remove(iter: *SequenceIter) void;
export @symbol("g_sequence_remove_range") fn sequence_remove_range(begin: *SequenceIter, end: *SequenceIter) void;
export @symbol("g_sequence_set") fn sequence_set(iter: *SequenceIter, data: *opaque) void;
export @symbol("g_sequence_sort_changed") fn sequence_sort_changed(iter: *SequenceIter, cmp_func: CompareDataFunc, cmp_data: *opaque) void;
export @symbol("g_sequence_sort_changed_iter") fn sequence_sort_changed_iter(iter: *SequenceIter, iter_cmp: SequenceIterCompareFunc, cmp_data: *opaque) void;
export @symbol("g_sequence_swap") fn sequence_swap(a: *SequenceIter, b: *SequenceIter) void;
export type SequenceIter = *opaque;
export @symbol("g_sequence_iter_compare") fn sequence_iter_compare(a: *SequenceIter, b: *SequenceIter) int;
export @symbol("g_sequence_iter_get_position") fn sequence_iter_get_position(iter: *SequenceIter) int;
export @symbol("g_sequence_iter_get_sequence") fn sequence_iter_get_sequence(iter: *SequenceIter) *Sequence;
export @symbol("g_sequence_iter_is_begin") fn sequence_iter_is_begin(iter: *SequenceIter) boolean;
export @symbol("g_sequence_iter_is_end") fn sequence_iter_is_end(iter: *SequenceIter) boolean;
export @symbol("g_sequence_iter_move") fn sequence_iter_move(iter: *SequenceIter, delta: int) *SequenceIter;
export @symbol("g_sequence_iter_next") fn sequence_iter_next(iter: *SequenceIter) *SequenceIter;
export @symbol("g_sequence_iter_prev") fn sequence_iter_prev(iter: *SequenceIter) *SequenceIter;
export type Source = struct {
	callback_data: *opaque,
	callback_funcs: *SourceCallbackFuncs,
	source_funcs: *SourceFuncs,
	ref_count: uint,
	context: *MainContext,
	priority: int,
	flags: uint,
	source_id: uint,
	poll_fds: *SList,
	prev: *Source,
	next: *Source,
	name: *c::char,
	priv: *SourcePrivate,
};
export @symbol("g_source_new") fn source_new(source_funcs: *SourceFuncs, struct_size: uint) *Source;
export @symbol("g_source_add_child_source") fn source_add_child_source(source: *Source, child_source: *Source) void;
export @symbol("g_source_add_poll") fn source_add_poll(source: *Source, fd: *PollFD) void;
export @symbol("g_source_add_unix_fd") fn source_add_unix_fd(source: *Source, fd: int, events: IOCondition) *opaque;
export @symbol("g_source_attach") fn source_attach(source: *Source, context: *MainContext) uint;
export @symbol("g_source_destroy") fn source_destroy(source: *Source) void;
export @symbol("g_source_get_can_recurse") fn source_get_can_recurse(source: *Source) boolean;
export @symbol("g_source_get_context") fn source_get_context(source: *Source) *MainContext;
export @symbol("g_source_get_current_time") fn source_get_current_time(source: *Source, timeval: *TimeVal) void;
export @symbol("g_source_get_id") fn source_get_id(source: *Source) uint;
export @symbol("g_source_get_name") fn source_get_name(source: *Source) *c::char;
export @symbol("g_source_get_priority") fn source_get_priority(source: *Source) int;
export @symbol("g_source_get_ready_time") fn source_get_ready_time(source: *Source) i64;
export @symbol("g_source_get_time") fn source_get_time(source: *Source) i64;
export @symbol("g_source_is_destroyed") fn source_is_destroyed(source: *Source) boolean;
export @symbol("g_source_modify_unix_fd") fn source_modify_unix_fd(source: *Source, tag: *opaque, new_events: IOCondition) void;
export @symbol("g_source_query_unix_fd") fn source_query_unix_fd(source: *Source, tag: *opaque) IOCondition;
export @symbol("g_source_ref") fn source_ref(source: *Source) *Source;
export @symbol("g_source_remove_child_source") fn source_remove_child_source(source: *Source, child_source: *Source) void;
export @symbol("g_source_remove_poll") fn source_remove_poll(source: *Source, fd: *PollFD) void;
export @symbol("g_source_remove_unix_fd") fn source_remove_unix_fd(source: *Source, tag: *opaque) void;
export @symbol("g_source_set_callback") fn source_set_callback(source: *Source, func: SourceFunc, data: *opaque, notify: DestroyNotify) void;
export @symbol("g_source_set_callback_indirect") fn source_set_callback_indirect(source: *Source, callback_data: *opaque, callback_funcs: *SourceCallbackFuncs) void;
export @symbol("g_source_set_can_recurse") fn source_set_can_recurse(source: *Source, can_recurse: boolean) void;
export @symbol("g_source_set_dispose_function") fn source_set_dispose_function(source: *Source, dispose: SourceDisposeFunc) void;
export @symbol("g_source_set_funcs") fn source_set_funcs(source: *Source, funcs: *SourceFuncs) void;
export @symbol("g_source_set_name") fn source_set_name(source: *Source, name: *c::char) void;
export @symbol("g_source_set_priority") fn source_set_priority(source: *Source, priority: int) void;
export @symbol("g_source_set_ready_time") fn source_set_ready_time(source: *Source, ready_time: i64) void;
export @symbol("g_source_set_static_name") fn source_set_static_name(source: *Source, name: *c::char) void;
export @symbol("g_source_unref") fn source_unref(source: *Source) void;
export @symbol("g_source_remove") fn source_remove(tag: uint) boolean;
export @symbol("g_source_remove_by_funcs_user_data") fn source_remove_by_funcs_user_data(funcs: *SourceFuncs, user_data: *opaque) boolean;
export @symbol("g_source_remove_by_user_data") fn source_remove_by_user_data(user_data: *opaque) boolean;
export @symbol("g_source_set_name_by_id") fn source_set_name_by_id(tag: uint, name: *c::char) void;
export type SourceCallbackFuncs = struct {
	ref: *fn(cb_data: *opaque) void,
	unref: *fn(cb_data: *opaque) void,
	get: *fn(cb_data: *opaque, source: *Source, func: *SourceFunc, data: **opaque) void,
};
export type SourceFuncs = struct {
	prepare: *fn(source: *Source, timeout_: *int) boolean,
	check: *fn(source: *Source) boolean,
	dispatch: *fn(source: *Source, callback: SourceFunc, user_data: *opaque) boolean,
	finalize: *fn(source: *Source) void,
	closure_callback: SourceFunc,
	closure_marshal: SourceDummyMarshal,
};
export type SourcePrivate = *opaque;
export type StatBuf = *opaque;
export type String = struct {
	str_: *c::char,
	len_: size,
	allocated_len: size,
};
export @symbol("g_string_new") fn string_new(init: *c::char) *String;
export @symbol("g_string_new_len") fn string_new_len(init: *c::char, len_: c::ssize) *String;
export @symbol("g_string_new_take") fn string_new_take(init: *c::char) *String;
export @symbol("g_string_sized_new") fn string_sized_new(dfl_size: size) *String;
export @symbol("g_string_append") fn string_append(string: *String, val: *c::char) *String;
export @symbol("g_string_append_c") fn string_append_c(string: *String, c: c::char) *String;
export @symbol("g_string_append_len") fn string_append_len(string: *String, val: *c::char, len_: c::ssize) *String;
export @symbol("g_string_append_printf") fn string_append_printf(string: *String, format: *c::char, ...) void;
export @symbol("g_string_append_unichar") fn string_append_unichar(string: *String, wc: rune) *String;
export @symbol("g_string_append_uri_escaped") fn string_append_uri_escaped(string: *String, unescaped: *c::char, reserved_chars_allowed: *c::char, allow_utf8: boolean) *String;
export @symbol("g_string_append_vprintf") fn string_append_vprintf(string: *String, format: *c::char, args: valist) void;
export @symbol("g_string_ascii_down") fn string_ascii_down(string: *String) *String;
export @symbol("g_string_ascii_up") fn string_ascii_up(string: *String) *String;
export @symbol("g_string_assign") fn string_assign(string: *String, rval: *c::char) *String;
export @symbol("g_string_down") fn string_down(string: *String) *String;
export @symbol("g_string_equal") fn string_equal(v: *String, v2: *String) boolean;
export @symbol("g_string_erase") fn string_erase(string: *String, pos: c::ssize, len_: c::ssize) *String;
export @symbol("g_string_free") fn string_free(string: *String, free_segment: boolean) *c::char;
export @symbol("g_string_free_and_steal") fn string_free_and_steal(string: *String) *c::char;
export @symbol("g_string_free_to_bytes") fn string_free_to_bytes(string: *String) *Bytes;
export @symbol("g_string_hash") fn string_hash(str_: *String) uint;
export @symbol("g_string_insert") fn string_insert(string: *String, pos: c::ssize, val: *c::char) *String;
export @symbol("g_string_insert_c") fn string_insert_c(string: *String, pos: c::ssize, c: c::char) *String;
export @symbol("g_string_insert_len") fn string_insert_len(string: *String, pos: c::ssize, val: *c::char, len_: c::ssize) *String;
export @symbol("g_string_insert_unichar") fn string_insert_unichar(string: *String, pos: c::ssize, wc: rune) *String;
export @symbol("g_string_overwrite") fn string_overwrite(string: *String, pos: size, val: *c::char) *String;
export @symbol("g_string_overwrite_len") fn string_overwrite_len(string: *String, pos: size, val: *c::char, len_: c::ssize) *String;
export @symbol("g_string_prepend") fn string_prepend(string: *String, val: *c::char) *String;
export @symbol("g_string_prepend_c") fn string_prepend_c(string: *String, c: c::char) *String;
export @symbol("g_string_prepend_len") fn string_prepend_len(string: *String, val: *c::char, len_: c::ssize) *String;
export @symbol("g_string_prepend_unichar") fn string_prepend_unichar(string: *String, wc: rune) *String;
export @symbol("g_string_printf") fn string_printf(string: *String, format: *c::char, ...) void;
export @symbol("g_string_replace") fn string_replace(string: *String, find: *c::char, replace: *c::char, limit: uint) uint;
export @symbol("g_string_set_size") fn string_set_size(string: *String, len_: size) *String;
export @symbol("g_string_truncate") fn string_truncate(string: *String, len_: size) *String;
export @symbol("g_string_up") fn string_up(string: *String) *String;
export @symbol("g_string_vprintf") fn string_vprintf(string: *String, format: *c::char, args: valist) void;
export type StringChunk = *opaque;
export @symbol("g_string_chunk_clear") fn string_chunk_clear(chunk: *StringChunk) void;
export @symbol("g_string_chunk_free") fn string_chunk_free(chunk: *StringChunk) void;
export @symbol("g_string_chunk_insert") fn string_chunk_insert(chunk: *StringChunk, string: *c::char) *c::char;
export @symbol("g_string_chunk_insert_const") fn string_chunk_insert_const(chunk: *StringChunk, string: *c::char) *c::char;
export @symbol("g_string_chunk_insert_len") fn string_chunk_insert_len(chunk: *StringChunk, string: *c::char, len_: c::ssize) *c::char;
export @symbol("g_string_chunk_new") fn string_chunk_new(size_: size) *StringChunk;
export type StrvBuilder = *opaque;
export @symbol("g_strv_builder_add") fn strv_builder_add(builder: *StrvBuilder, value: *c::char) void;
export @symbol("g_strv_builder_add_many") fn strv_builder_add_many(builder: *StrvBuilder, ...) void;
export @symbol("g_strv_builder_addv") fn strv_builder_addv(builder: *StrvBuilder, value: **c::char) void;
export @symbol("g_strv_builder_end") fn strv_builder_end(builder: *StrvBuilder) Strv;
export @symbol("g_strv_builder_ref") fn strv_builder_ref(builder: *StrvBuilder) *StrvBuilder;
export @symbol("g_strv_builder_unref") fn strv_builder_unref(builder: *StrvBuilder) void;
export @symbol("g_strv_builder_new") fn strv_builder_new() *StrvBuilder;
export type TestCase = *opaque;
export @symbol("g_test_case_free") fn test_case_free(test_case: *TestCase) void;
export type TestConfig = struct {
	test_initialized: boolean,
	test_quick: boolean,
	test_perf: boolean,
	test_verbose: boolean,
	test_quiet: boolean,
	test_undefined: boolean,
};
export type TestLogBuffer = struct {
	data: *String,
	msgs: *SList,
};
export @symbol("g_test_log_buffer_free") fn test_log_buffer_free(tbuffer: *TestLogBuffer) void;
export @symbol("g_test_log_buffer_pop") fn test_log_buffer_pop(tbuffer: *TestLogBuffer) *TestLogMsg;
export @symbol("g_test_log_buffer_push") fn test_log_buffer_push(tbuffer: *TestLogBuffer, n_bytes: uint, bytes: *u8) void;
export @symbol("g_test_log_buffer_new") fn test_log_buffer_new() *TestLogBuffer;
export type TestLogMsg = struct {
	log_type: TestLogType,
	n_strings: uint,
	strings: **c::char,
	n_nums: uint,
	nums: *f64,
};
export @symbol("g_test_log_msg_free") fn test_log_msg_free(tmsg: *TestLogMsg) void;
export type TestSuite = *opaque;
export @symbol("g_test_suite_add") fn test_suite_add(suite: *TestSuite, test_case: *TestCase) void;
export @symbol("g_test_suite_add_suite") fn test_suite_add_suite(suite: *TestSuite, nestedsuite: *TestSuite) void;
export @symbol("g_test_suite_free") fn test_suite_free(suite: *TestSuite) void;
export type Thread = *opaque;
export @symbol("g_thread_new") fn thread_new(name: *c::char, func: ThreadFunc, data: *opaque) *Thread;
export @symbol("g_thread_try_new") fn thread_try_new(name: *c::char, func: ThreadFunc, data: *opaque, error: nullable **Error) *Thread;
export @symbol("g_thread_join") fn thread_join(thread: *Thread) *opaque;
export @symbol("g_thread_ref") fn thread_ref(thread: *Thread) *Thread;
export @symbol("g_thread_unref") fn thread_unref(thread: *Thread) void;
export @symbol("g_thread_error_quark") fn thread_error_quark() Quark;
export @symbol("g_thread_exit") fn thread_exit(retval: *opaque) void;
export @symbol("g_thread_self") fn thread_self() *Thread;
export @symbol("g_thread_yield") fn thread_yield() void;
export type ThreadPool = struct {
	func: Func,
	user_data: *opaque,
	exclusive: boolean,
};
export @symbol("g_thread_pool_free") fn thread_pool_free(pool: *ThreadPool, immediate: boolean, wait_: boolean) void;
export @symbol("g_thread_pool_get_max_threads") fn thread_pool_get_max_threads(pool: *ThreadPool) int;
export @symbol("g_thread_pool_get_num_threads") fn thread_pool_get_num_threads(pool: *ThreadPool) uint;
export @symbol("g_thread_pool_move_to_front") fn thread_pool_move_to_front(pool: *ThreadPool, data: *opaque) boolean;
export @symbol("g_thread_pool_push") fn thread_pool_push(pool: *ThreadPool, data: *opaque, error: nullable **Error) boolean;
export @symbol("g_thread_pool_set_max_threads") fn thread_pool_set_max_threads(pool: *ThreadPool, max_threads: int, error: nullable **Error) boolean;
export @symbol("g_thread_pool_set_sort_function") fn thread_pool_set_sort_function(pool: *ThreadPool, func: CompareDataFunc, user_data: *opaque) void;
export @symbol("g_thread_pool_unprocessed") fn thread_pool_unprocessed(pool: *ThreadPool) uint;
export @symbol("g_thread_pool_get_max_idle_time") fn thread_pool_get_max_idle_time() uint;
export @symbol("g_thread_pool_get_max_unused_threads") fn thread_pool_get_max_unused_threads() int;
export @symbol("g_thread_pool_get_num_unused_threads") fn thread_pool_get_num_unused_threads() uint;
export @symbol("g_thread_pool_new") fn thread_pool_new(func: Func, user_data: *opaque, max_threads: int, exclusive: boolean, error: nullable **Error) *ThreadPool;
export @symbol("g_thread_pool_new_full") fn thread_pool_new_full(func: Func, user_data: *opaque, item_free_func: DestroyNotify, max_threads: int, exclusive: boolean, error: nullable **Error) *ThreadPool;
export @symbol("g_thread_pool_set_max_idle_time") fn thread_pool_set_max_idle_time(interval: uint) void;
export @symbol("g_thread_pool_set_max_unused_threads") fn thread_pool_set_max_unused_threads(max_threads: int) void;
export @symbol("g_thread_pool_stop_unused_threads") fn thread_pool_stop_unused_threads() void;
export type TimeVal = struct {
	tv_sec: c::long,
	tv_usec: c::long,
};
export @symbol("g_time_val_add") fn time_val_add(time_: *TimeVal, microseconds: c::long) void;
export @symbol("g_time_val_to_iso8601") fn time_val_to_iso8601(time_: *TimeVal) *c::char;
export @symbol("g_time_val_from_iso8601") fn time_val_from_iso8601(iso_date: *c::char, time_: *TimeVal) boolean;
export type TimeZone = *opaque;
export @symbol("g_time_zone_new") fn time_zone_new(identifier: *c::char) *TimeZone;
export @symbol("g_time_zone_new_identifier") fn time_zone_new_identifier(identifier: *c::char) *TimeZone;
export @symbol("g_time_zone_new_local") fn time_zone_new_local() *TimeZone;
export @symbol("g_time_zone_new_offset") fn time_zone_new_offset(seconds: i32) *TimeZone;
export @symbol("g_time_zone_new_utc") fn time_zone_new_utc() *TimeZone;
export @symbol("g_time_zone_adjust_time") fn time_zone_adjust_time(tz: *TimeZone, type_: TimeType, time_: *i64) int;
export @symbol("g_time_zone_find_interval") fn time_zone_find_interval(tz: *TimeZone, type_: TimeType, time_: i64) int;
export @symbol("g_time_zone_get_abbreviation") fn time_zone_get_abbreviation(tz: *TimeZone, interval: int) *c::char;
export @symbol("g_time_zone_get_identifier") fn time_zone_get_identifier(tz: *TimeZone) *c::char;
export @symbol("g_time_zone_get_offset") fn time_zone_get_offset(tz: *TimeZone, interval: int) i32;
export @symbol("g_time_zone_is_dst") fn time_zone_is_dst(tz: *TimeZone, interval: int) boolean;
export @symbol("g_time_zone_ref") fn time_zone_ref(tz: *TimeZone) *TimeZone;
export @symbol("g_time_zone_unref") fn time_zone_unref(tz: *TimeZone) void;
export type Timer = *opaque;
export @symbol("g_timer_continue") fn timer_continue(timer: *Timer) void;
export @symbol("g_timer_destroy") fn timer_destroy(timer: *Timer) void;
export @symbol("g_timer_elapsed") fn timer_elapsed(timer: *Timer, microseconds: *c::ulong) f64;
export @symbol("g_timer_is_active") fn timer_is_active(timer: *Timer) boolean;
export @symbol("g_timer_reset") fn timer_reset(timer: *Timer) void;
export @symbol("g_timer_start") fn timer_start(timer: *Timer) void;
export @symbol("g_timer_stop") fn timer_stop(timer: *Timer) void;
export @symbol("g_timer_new") fn timer_new() *Timer;
export type TrashStack = struct {
	next: *TrashStack,
};
export @symbol("g_trash_stack_height") fn trash_stack_height(stack_p: **TrashStack) uint;
export @symbol("g_trash_stack_peek") fn trash_stack_peek(stack_p: **TrashStack) *opaque;
export @symbol("g_trash_stack_pop") fn trash_stack_pop(stack_p: **TrashStack) *opaque;
export @symbol("g_trash_stack_push") fn trash_stack_push(stack_p: **TrashStack, data_p: *opaque) void;
export type Tree = *opaque;
export @symbol("g_tree_new") fn tree_new(key_compare_func: CompareFunc) *Tree;
export @symbol("g_tree_new_full") fn tree_new_full(key_compare_func: CompareDataFunc, key_compare_data: *opaque, key_destroy_func: DestroyNotify, value_destroy_func: DestroyNotify) *Tree;
export @symbol("g_tree_new_with_data") fn tree_new_with_data(key_compare_func: CompareDataFunc, key_compare_data: *opaque) *Tree;
export @symbol("g_tree_destroy") fn tree_destroy(tree: *Tree) void;
export @symbol("g_tree_foreach") fn tree_foreach(tree: *Tree, func: TraverseFunc, user_data: *opaque) void;
export @symbol("g_tree_foreach_node") fn tree_foreach_node(tree: *Tree, func: TraverseNodeFunc, user_data: *opaque) void;
export @symbol("g_tree_height") fn tree_height(tree: *Tree) int;
export @symbol("g_tree_insert") fn tree_insert(tree: *Tree, key: *opaque, value: *opaque) void;
export @symbol("g_tree_insert_node") fn tree_insert_node(tree: *Tree, key: *opaque, value: *opaque) *TreeNode;
export @symbol("g_tree_lookup") fn tree_lookup(tree: *Tree, key: *opaque) *opaque;
export @symbol("g_tree_lookup_extended") fn tree_lookup_extended(tree: *Tree, lookup_key: *opaque, orig_key: **opaque, value: **opaque) boolean;
export @symbol("g_tree_lookup_node") fn tree_lookup_node(tree: *Tree, key: *opaque) *TreeNode;
export @symbol("g_tree_lower_bound") fn tree_lower_bound(tree: *Tree, key: *opaque) *TreeNode;
export @symbol("g_tree_nnodes") fn tree_nnodes(tree: *Tree) int;
export @symbol("g_tree_node_first") fn tree_node_first(tree: *Tree) *TreeNode;
export @symbol("g_tree_node_last") fn tree_node_last(tree: *Tree) *TreeNode;
export @symbol("g_tree_ref") fn tree_ref(tree: *Tree) *Tree;
export @symbol("g_tree_remove") fn tree_remove(tree: *Tree, key: *opaque) boolean;
export @symbol("g_tree_remove_all") fn tree_remove_all(tree: *Tree) void;
export @symbol("g_tree_replace") fn tree_replace(tree: *Tree, key: *opaque, value: *opaque) void;
export @symbol("g_tree_replace_node") fn tree_replace_node(tree: *Tree, key: *opaque, value: *opaque) *TreeNode;
export @symbol("g_tree_search") fn tree_search(tree: *Tree, search_func: CompareFunc, user_data: *opaque) *opaque;
export @symbol("g_tree_search_node") fn tree_search_node(tree: *Tree, search_func: CompareFunc, user_data: *opaque) *TreeNode;
export @symbol("g_tree_steal") fn tree_steal(tree: *Tree, key: *opaque) boolean;
export @symbol("g_tree_traverse") fn tree_traverse(tree: *Tree, traverse_func: TraverseFunc, traverse_type: TraverseType, user_data: *opaque) void;
export @symbol("g_tree_unref") fn tree_unref(tree: *Tree) void;
export @symbol("g_tree_upper_bound") fn tree_upper_bound(tree: *Tree, key: *opaque) *TreeNode;
export type TreeNode = *opaque;
export @symbol("g_tree_node_key") fn tree_node_key(node: *TreeNode) *opaque;
export @symbol("g_tree_node_next") fn tree_node_next(node: *TreeNode) *TreeNode;
export @symbol("g_tree_node_previous") fn tree_node_previous(node: *TreeNode) *TreeNode;
export @symbol("g_tree_node_value") fn tree_node_value(node: *TreeNode) *opaque;
export type Uri = *opaque;
export @symbol("g_uri_get_auth_params") fn uri_get_auth_params(uri: *Uri) *c::char;
export @symbol("g_uri_get_flags") fn uri_get_flags(uri: *Uri) UriFlags;
export @symbol("g_uri_get_fragment") fn uri_get_fragment(uri: *Uri) *c::char;
export @symbol("g_uri_get_host") fn uri_get_host(uri: *Uri) *c::char;
export @symbol("g_uri_get_password") fn uri_get_password(uri: *Uri) *c::char;
export @symbol("g_uri_get_path") fn uri_get_path(uri: *Uri) *c::char;
export @symbol("g_uri_get_port") fn uri_get_port(uri: *Uri) int;
export @symbol("g_uri_get_query") fn uri_get_query(uri: *Uri) *c::char;
export @symbol("g_uri_get_scheme") fn uri_get_scheme(uri: *Uri) *c::char;
export @symbol("g_uri_get_user") fn uri_get_user(uri: *Uri) *c::char;
export @symbol("g_uri_get_userinfo") fn uri_get_userinfo(uri: *Uri) *c::char;
export @symbol("g_uri_parse_relative") fn uri_parse_relative(base_uri: *Uri, uri_ref: *c::char, flags: UriFlags, error: nullable **Error) *Uri;
export @symbol("g_uri_ref") fn uri_ref(uri: *Uri) *Uri;
export @symbol("g_uri_to_string") fn uri_to_string(uri: *Uri) *c::char;
export @symbol("g_uri_to_string_partial") fn uri_to_string_partial(uri: *Uri, flags: UriHideFlags) *c::char;
export @symbol("g_uri_unref") fn uri_unref(uri: *Uri) void;
export @symbol("g_uri_build") fn uri_build(flags: UriFlags, scheme: *c::char, userinfo: *c::char, host: *c::char, port: int, path: *c::char, query: *c::char, fragment: *c::char) *Uri;
export @symbol("g_uri_build_with_user") fn uri_build_with_user(flags: UriFlags, scheme: *c::char, user: *c::char, password: *c::char, auth_params: *c::char, host: *c::char, port: int, path: *c::char, query: *c::char, fragment: *c::char) *Uri;
export @symbol("g_uri_error_quark") fn uri_error_quark() Quark;
export @symbol("g_uri_escape_bytes") fn uri_escape_bytes(unescaped: *u8, length: size, reserved_chars_allowed: *c::char) *c::char;
export @symbol("g_uri_escape_string") fn uri_escape_string(unescaped: *c::char, reserved_chars_allowed: *c::char, allow_utf8: boolean) *c::char;
export @symbol("g_uri_is_valid") fn uri_is_valid(uri_string: *c::char, flags: UriFlags, error: nullable **Error) boolean;
export @symbol("g_uri_join") fn uri_join(flags: UriFlags, scheme: *c::char, userinfo: *c::char, host: *c::char, port: int, path: *c::char, query: *c::char, fragment: *c::char) *c::char;
export @symbol("g_uri_join_with_user") fn uri_join_with_user(flags: UriFlags, scheme: *c::char, user: *c::char, password: *c::char, auth_params: *c::char, host: *c::char, port: int, path: *c::char, query: *c::char, fragment: *c::char) *c::char;
export @symbol("g_uri_list_extract_uris") fn uri_list_extract_uris(uri_list: *c::char) **c::char;
export @symbol("g_uri_parse") fn uri_parse(uri_string: *c::char, flags: UriFlags, error: nullable **Error) *Uri;
export @symbol("g_uri_parse_params") fn uri_parse_params(params: *c::char, length: c::ssize, separators: *c::char, flags: UriParamsFlags, error: nullable **Error) *HashTable;
export @symbol("g_uri_parse_scheme") fn uri_parse_scheme(uri: *c::char) *c::char;
export @symbol("g_uri_peek_scheme") fn uri_peek_scheme(uri: *c::char) *c::char;
export @symbol("g_uri_resolve_relative") fn uri_resolve_relative(base_uri_string: *c::char, uri_ref: *c::char, flags: UriFlags, error: nullable **Error) *c::char;
export @symbol("g_uri_split") fn uri_split(uri_ref: *c::char, flags: UriFlags, scheme: **c::char, userinfo: **c::char, host: **c::char, port: *int, path: **c::char, query: **c::char, fragment: **c::char, error: nullable **Error) boolean;
export @symbol("g_uri_split_network") fn uri_split_network(uri_string: *c::char, flags: UriFlags, scheme: **c::char, host: **c::char, port: *int, error: nullable **Error) boolean;
export @symbol("g_uri_split_with_user") fn uri_split_with_user(uri_ref: *c::char, flags: UriFlags, scheme: **c::char, user: **c::char, password: **c::char, auth_params: **c::char, host: **c::char, port: *int, path: **c::char, query: **c::char, fragment: **c::char, error: nullable **Error) boolean;
export @symbol("g_uri_unescape_bytes") fn uri_unescape_bytes(escaped_string: *c::char, length: c::ssize, illegal_characters: *c::char, error: nullable **Error) *Bytes;
export @symbol("g_uri_unescape_segment") fn uri_unescape_segment(escaped_string: *c::char, escaped_string_end: *c::char, illegal_characters: *c::char) *c::char;
export @symbol("g_uri_unescape_string") fn uri_unescape_string(escaped_string: *c::char, illegal_characters: *c::char) *c::char;
export type UriParamsIter = struct {
	dummy0: int,
	dummy1: *opaque,
	dummy2: *opaque,
	dummy3: [256]u8,
};
export @symbol("g_uri_params_iter_init") fn uri_params_iter_init(iter: *UriParamsIter, params: *c::char, length: c::ssize, separators: *c::char, flags: UriParamsFlags) void;
export @symbol("g_uri_params_iter_next") fn uri_params_iter_next(iter: *UriParamsIter, attribute: **c::char, value: **c::char, error: nullable **Error) boolean;
export type Variant = *opaque;
export @symbol("g_variant_new") fn variant_new(format_string: *c::char, ...) *Variant;
export @symbol("g_variant_new_array") fn variant_new_array(child_type: *VariantType, children: **Variant, n_children: size) *Variant;
export @symbol("g_variant_new_boolean") fn variant_new_boolean(value: boolean) *Variant;
export @symbol("g_variant_new_byte") fn variant_new_byte(value: u8) *Variant;
export @symbol("g_variant_new_bytestring") fn variant_new_bytestring(string: *c::char) *Variant;
export @symbol("g_variant_new_bytestring_array") fn variant_new_bytestring_array(strv: **c::char, length: c::ssize) *Variant;
export @symbol("g_variant_new_dict_entry") fn variant_new_dict_entry(key: *Variant, value: *Variant) *Variant;
export @symbol("g_variant_new_double") fn variant_new_double(value: f64) *Variant;
export @symbol("g_variant_new_fixed_array") fn variant_new_fixed_array(element_type: *VariantType, elements: *opaque, n_elements: size, element_size: size) *Variant;
export @symbol("g_variant_new_from_bytes") fn variant_new_from_bytes(type_: *VariantType, bytes: *Bytes, trusted: boolean) *Variant;
export @symbol("g_variant_new_from_data") fn variant_new_from_data(type_: *VariantType, data: *opaque, size_: size, trusted: boolean, notify: DestroyNotify, user_data: *opaque) *Variant;
export @symbol("g_variant_new_handle") fn variant_new_handle(value: i32) *Variant;
export @symbol("g_variant_new_int16") fn variant_new_int16(value: i16) *Variant;
export @symbol("g_variant_new_int32") fn variant_new_int32(value: i32) *Variant;
export @symbol("g_variant_new_int64") fn variant_new_int64(value: i64) *Variant;
export @symbol("g_variant_new_maybe") fn variant_new_maybe(child_type: *VariantType, child: *Variant) *Variant;
export @symbol("g_variant_new_object_path") fn variant_new_object_path(object_path: *c::char) *Variant;
export @symbol("g_variant_new_objv") fn variant_new_objv(strv: **c::char, length: c::ssize) *Variant;
export @symbol("g_variant_new_parsed") fn variant_new_parsed(format: *c::char, ...) *Variant;
export @symbol("g_variant_new_parsed_va") fn variant_new_parsed_va(format: *c::char, app: *valist) *Variant;
export @symbol("g_variant_new_printf") fn variant_new_printf(format_string: *c::char, ...) *Variant;
export @symbol("g_variant_new_signature") fn variant_new_signature(signature: *c::char) *Variant;
export @symbol("g_variant_new_string") fn variant_new_string(string: *c::char) *Variant;
export @symbol("g_variant_new_strv") fn variant_new_strv(strv: **c::char, length: c::ssize) *Variant;
export @symbol("g_variant_new_take_string") fn variant_new_take_string(string: *c::char) *Variant;
export @symbol("g_variant_new_tuple") fn variant_new_tuple(children: **Variant, n_children: size) *Variant;
export @symbol("g_variant_new_uint16") fn variant_new_uint16(value: u16) *Variant;
export @symbol("g_variant_new_uint32") fn variant_new_uint32(value: u32) *Variant;
export @symbol("g_variant_new_uint64") fn variant_new_uint64(value: u64) *Variant;
export @symbol("g_variant_new_va") fn variant_new_va(format_string: *c::char, endptr: **c::char, app: *valist) *Variant;
export @symbol("g_variant_new_variant") fn variant_new_variant(value: *Variant) *Variant;
export @symbol("g_variant_byteswap") fn variant_byteswap(value: *Variant) *Variant;
export @symbol("g_variant_check_format_string") fn variant_check_format_string(value: *Variant, format_string: *c::char, copy_only: boolean) boolean;
export @symbol("g_variant_classify") fn variant_classify(value: *Variant) VariantClass;
export @symbol("g_variant_compare") fn variant_compare(one: *opaque, two: *opaque) int;
export @symbol("g_variant_dup_bytestring") fn variant_dup_bytestring(value: *Variant, length: *size) *c::char;
export @symbol("g_variant_dup_bytestring_array") fn variant_dup_bytestring_array(value: *Variant, length: *size) **c::char;
export @symbol("g_variant_dup_objv") fn variant_dup_objv(value: *Variant, length: *size) **c::char;
export @symbol("g_variant_dup_string") fn variant_dup_string(value: *Variant, length: *size) *c::char;
export @symbol("g_variant_dup_strv") fn variant_dup_strv(value: *Variant, length: *size) **c::char;
export @symbol("g_variant_equal") fn variant_equal(one: *opaque, two: *opaque) boolean;
export @symbol("g_variant_get") fn variant_get(value: *Variant, format_string: *c::char, ...) void;
export @symbol("g_variant_get_boolean") fn variant_get_boolean(value: *Variant) boolean;
export @symbol("g_variant_get_byte") fn variant_get_byte(value: *Variant) u8;
export @symbol("g_variant_get_bytestring") fn variant_get_bytestring(value: *Variant) *c::char;
export @symbol("g_variant_get_bytestring_array") fn variant_get_bytestring_array(value: *Variant, length: *size) **c::char;
export @symbol("g_variant_get_child") fn variant_get_child(value: *Variant, index_: size, format_string: *c::char, ...) void;
export @symbol("g_variant_get_child_value") fn variant_get_child_value(value: *Variant, index_: size) *Variant;
export @symbol("g_variant_get_data") fn variant_get_data(value: *Variant) *opaque;
export @symbol("g_variant_get_data_as_bytes") fn variant_get_data_as_bytes(value: *Variant) *Bytes;
export @symbol("g_variant_get_double") fn variant_get_double(value: *Variant) f64;
export @symbol("g_variant_get_fixed_array") fn variant_get_fixed_array(value: *Variant, n_elements: *size, element_size: size) *opaque;
export @symbol("g_variant_get_handle") fn variant_get_handle(value: *Variant) i32;
export @symbol("g_variant_get_int16") fn variant_get_int16(value: *Variant) i16;
export @symbol("g_variant_get_int32") fn variant_get_int32(value: *Variant) i32;
export @symbol("g_variant_get_int64") fn variant_get_int64(value: *Variant) i64;
export @symbol("g_variant_get_maybe") fn variant_get_maybe(value: *Variant) *Variant;
export @symbol("g_variant_get_normal_form") fn variant_get_normal_form(value: *Variant) *Variant;
export @symbol("g_variant_get_objv") fn variant_get_objv(value: *Variant, length: *size) **c::char;
export @symbol("g_variant_get_size") fn variant_get_size(value: *Variant) size;
export @symbol("g_variant_get_string") fn variant_get_string(value: *Variant, length: *size) *c::char;
export @symbol("g_variant_get_strv") fn variant_get_strv(value: *Variant, length: *size) **c::char;
export @symbol("g_variant_get_type") fn variant_get_type(value: *Variant) *VariantType;
export @symbol("g_variant_get_type_string") fn variant_get_type_string(value: *Variant) *c::char;
export @symbol("g_variant_get_uint16") fn variant_get_uint16(value: *Variant) u16;
export @symbol("g_variant_get_uint32") fn variant_get_uint32(value: *Variant) u32;
export @symbol("g_variant_get_uint64") fn variant_get_uint64(value: *Variant) u64;
export @symbol("g_variant_get_va") fn variant_get_va(value: *Variant, format_string: *c::char, endptr: **c::char, app: *valist) void;
export @symbol("g_variant_get_variant") fn variant_get_variant(value: *Variant) *Variant;
export @symbol("g_variant_hash") fn variant_hash(value: *opaque) uint;
export @symbol("g_variant_is_container") fn variant_is_container(value: *Variant) boolean;
export @symbol("g_variant_is_floating") fn variant_is_floating(value: *Variant) boolean;
export @symbol("g_variant_is_normal_form") fn variant_is_normal_form(value: *Variant) boolean;
export @symbol("g_variant_is_of_type") fn variant_is_of_type(value: *Variant, type_: *VariantType) boolean;
export @symbol("g_variant_iter_new") fn variant_iter_new(value: *Variant) *VariantIter;
export @symbol("g_variant_lookup") fn variant_lookup(dictionary: *Variant, key: *c::char, format_string: *c::char, ...) boolean;
export @symbol("g_variant_lookup_value") fn variant_lookup_value(dictionary: *Variant, key: *c::char, expected_type: *VariantType) *Variant;
export @symbol("g_variant_n_children") fn variant_n_children(value: *Variant) size;
export @symbol("g_variant_print") fn variant_print(value: *Variant, type_annotate: boolean) *c::char;
export @symbol("g_variant_print_string") fn variant_print_string(value: *Variant, string: *String, type_annotate: boolean) *String;
export @symbol("g_variant_ref") fn variant_ref(value: *Variant) *Variant;
export @symbol("g_variant_ref_sink") fn variant_ref_sink(value: *Variant) *Variant;
export @symbol("g_variant_store") fn variant_store(value: *Variant, data: *opaque) void;
export @symbol("g_variant_take_ref") fn variant_take_ref(value: *Variant) *Variant;
export @symbol("g_variant_unref") fn variant_unref(value: *Variant) void;
export @symbol("g_variant_is_object_path") fn variant_is_object_path(string: *c::char) boolean;
export @symbol("g_variant_is_signature") fn variant_is_signature(string: *c::char) boolean;
export @symbol("g_variant_parse") fn variant_parse(type_: *VariantType, text: *c::char, limit: *c::char, endptr: **c::char, error: nullable **Error) *Variant;
export @symbol("g_variant_parse_error_print_context") fn variant_parse_error_print_context(error: *Error, source_str: *c::char) *c::char;
export @symbol("g_variant_parse_error_quark") fn variant_parse_error_quark() Quark;
export @symbol("g_variant_parser_get_error_quark") fn variant_parser_get_error_quark() Quark;
export type VariantBuilder = struct {
	u: union {
	s: struct {
	partial_magic: size,
	type_: *VariantType,
	y: [14]uintptr,
},
	x: [16]uintptr,
},
};
export @symbol("g_variant_builder_new") fn variant_builder_new(type_: *VariantType) *VariantBuilder;
export @symbol("g_variant_builder_add") fn variant_builder_add(builder: *VariantBuilder, format_string: *c::char, ...) void;
export @symbol("g_variant_builder_add_parsed") fn variant_builder_add_parsed(builder: *VariantBuilder, format: *c::char, ...) void;
export @symbol("g_variant_builder_add_value") fn variant_builder_add_value(builder: *VariantBuilder, value: *Variant) void;
export @symbol("g_variant_builder_clear") fn variant_builder_clear(builder: *VariantBuilder) void;
export @symbol("g_variant_builder_close") fn variant_builder_close(builder: *VariantBuilder) void;
export @symbol("g_variant_builder_end") fn variant_builder_end(builder: *VariantBuilder) *Variant;
export @symbol("g_variant_builder_init") fn variant_builder_init(builder: *VariantBuilder, type_: *VariantType) void;
export @symbol("g_variant_builder_open") fn variant_builder_open(builder: *VariantBuilder, type_: *VariantType) void;
export @symbol("g_variant_builder_ref") fn variant_builder_ref(builder: *VariantBuilder) *VariantBuilder;
export @symbol("g_variant_builder_unref") fn variant_builder_unref(builder: *VariantBuilder) void;
export type VariantDict = struct {
	u: union {
	s: struct {
	asv: *Variant,
	partial_magic: size,
	y: [14]uintptr,
},
	x: [16]uintptr,
},
};
export @symbol("g_variant_dict_new") fn variant_dict_new(from_asv: *Variant) *VariantDict;
export @symbol("g_variant_dict_clear") fn variant_dict_clear(dict: *VariantDict) void;
export @symbol("g_variant_dict_contains") fn variant_dict_contains(dict: *VariantDict, key: *c::char) boolean;
export @symbol("g_variant_dict_end") fn variant_dict_end(dict: *VariantDict) *Variant;
export @symbol("g_variant_dict_init") fn variant_dict_init(dict: *VariantDict, from_asv: *Variant) void;
export @symbol("g_variant_dict_insert") fn variant_dict_insert(dict: *VariantDict, key: *c::char, format_string: *c::char, ...) void;
export @symbol("g_variant_dict_insert_value") fn variant_dict_insert_value(dict: *VariantDict, key: *c::char, value: *Variant) void;
export @symbol("g_variant_dict_lookup") fn variant_dict_lookup(dict: *VariantDict, key: *c::char, format_string: *c::char, ...) boolean;
export @symbol("g_variant_dict_lookup_value") fn variant_dict_lookup_value(dict: *VariantDict, key: *c::char, expected_type: *VariantType) *Variant;
export @symbol("g_variant_dict_ref") fn variant_dict_ref(dict: *VariantDict) *VariantDict;
export @symbol("g_variant_dict_remove") fn variant_dict_remove(dict: *VariantDict, key: *c::char) boolean;
export @symbol("g_variant_dict_unref") fn variant_dict_unref(dict: *VariantDict) void;
export type VariantIter = struct {
	x: [16]uintptr,
};
export @symbol("g_variant_iter_copy") fn variant_iter_copy(iter: *VariantIter) *VariantIter;
export @symbol("g_variant_iter_free") fn variant_iter_free(iter: *VariantIter) void;
export @symbol("g_variant_iter_init") fn variant_iter_init(iter: *VariantIter, value: *Variant) size;
export @symbol("g_variant_iter_loop") fn variant_iter_loop(iter: *VariantIter, format_string: *c::char, ...) boolean;
export @symbol("g_variant_iter_n_children") fn variant_iter_n_children(iter: *VariantIter) size;
export @symbol("g_variant_iter_next") fn variant_iter_next(iter: *VariantIter, format_string: *c::char, ...) boolean;
export @symbol("g_variant_iter_next_value") fn variant_iter_next_value(iter: *VariantIter) *Variant;
export type VariantType = *opaque;
export @symbol("g_variant_type_new") fn variant_type_new(type_string: *c::char) *VariantType;
export @symbol("g_variant_type_new_array") fn variant_type_new_array(element: *VariantType) *VariantType;
export @symbol("g_variant_type_new_dict_entry") fn variant_type_new_dict_entry(key: *VariantType, value: *VariantType) *VariantType;
export @symbol("g_variant_type_new_maybe") fn variant_type_new_maybe(element: *VariantType) *VariantType;
export @symbol("g_variant_type_new_tuple") fn variant_type_new_tuple(items: **VariantType, length: int) *VariantType;
export @symbol("g_variant_type_copy") fn variant_type_copy(type_: *VariantType) *VariantType;
export @symbol("g_variant_type_dup_string") fn variant_type_dup_string(type_: *VariantType) *c::char;
export @symbol("g_variant_type_element") fn variant_type_element(type_: *VariantType) *VariantType;
export @symbol("g_variant_type_equal") fn variant_type_equal(type1: *opaque, type2: *opaque) boolean;
export @symbol("g_variant_type_first") fn variant_type_first(type_: *VariantType) *VariantType;
export @symbol("g_variant_type_free") fn variant_type_free(type_: *VariantType) void;
export @symbol("g_variant_type_get_string_length") fn variant_type_get_string_length(type_: *VariantType) size;
export @symbol("g_variant_type_hash") fn variant_type_hash(type_: *opaque) uint;
export @symbol("g_variant_type_is_array") fn variant_type_is_array(type_: *VariantType) boolean;
export @symbol("g_variant_type_is_basic") fn variant_type_is_basic(type_: *VariantType) boolean;
export @symbol("g_variant_type_is_container") fn variant_type_is_container(type_: *VariantType) boolean;
export @symbol("g_variant_type_is_definite") fn variant_type_is_definite(type_: *VariantType) boolean;
export @symbol("g_variant_type_is_dict_entry") fn variant_type_is_dict_entry(type_: *VariantType) boolean;
export @symbol("g_variant_type_is_maybe") fn variant_type_is_maybe(type_: *VariantType) boolean;
export @symbol("g_variant_type_is_subtype_of") fn variant_type_is_subtype_of(type_: *VariantType, supertype: *VariantType) boolean;
export @symbol("g_variant_type_is_tuple") fn variant_type_is_tuple(type_: *VariantType) boolean;
export @symbol("g_variant_type_is_variant") fn variant_type_is_variant(type_: *VariantType) boolean;
export @symbol("g_variant_type_key") fn variant_type_key(type_: *VariantType) *VariantType;
export @symbol("g_variant_type_n_items") fn variant_type_n_items(type_: *VariantType) size;
export @symbol("g_variant_type_next") fn variant_type_next(type_: *VariantType) *VariantType;
export @symbol("g_variant_type_peek_string") fn variant_type_peek_string(type_: *VariantType) *c::char;
export @symbol("g_variant_type_value") fn variant_type_value(type_: *VariantType) *VariantType;
export @symbol("g_variant_type_checked_") fn variant_type_checked_(arg0: *c::char) *VariantType;
export @symbol("g_variant_type_string_get_depth_") fn variant_type_string_get_depth_(type_string: *c::char) size;
export @symbol("g_variant_type_string_is_valid") fn variant_type_string_is_valid(type_string: *c::char) boolean;
export @symbol("g_variant_type_string_scan") fn variant_type_string_scan(string: *c::char, limit: *c::char, endptr: **c::char) boolean;
export type BookmarkFileError = enum uint {
	INVALID_URI = 0,
	INVALID_VALUE = 1,
	APP_NOT_REGISTERED = 2,
	URI_NOT_FOUND = 3,
	READ = 4,
	UNKNOWN_ENCODING = 5,
	WRITE = 6,
	FILE_NOT_FOUND = 7,
};
export type ChecksumType = enum uint {
	MD5 = 0,
	SHA1 = 1,
	SHA256 = 2,
	SHA512 = 3,
	SHA384 = 4,
};
export type ConvertError = enum uint {
	NO_CONVERSION = 0,
	ILLEGAL_SEQUENCE = 1,
	FAILED = 2,
	PARTIAL_INPUT = 3,
	BAD_URI = 4,
	NOT_ABSOLUTE_PATH = 5,
	NO_MEMORY = 6,
	EMBEDDED_NUL = 7,
};
export type DateDMY = enum uint {
	DAY = 0,
	MONTH = 1,
	YEAR = 2,
};
export type DateMonth = enum uint {
	BAD_MONTH = 0,
	JANUARY = 1,
	FEBRUARY = 2,
	MARCH = 3,
	APRIL = 4,
	MAY = 5,
	JUNE = 6,
	JULY = 7,
	AUGUST = 8,
	SEPTEMBER = 9,
	OCTOBER = 10,
	NOVEMBER = 11,
	DECEMBER = 12,
};
export type DateWeekday = enum uint {
	BAD_WEEKDAY = 0,
	MONDAY = 1,
	TUESDAY = 2,
	WEDNESDAY = 3,
	THURSDAY = 4,
	FRIDAY = 5,
	SATURDAY = 6,
	SUNDAY = 7,
};
export type ErrorType = enum uint {
	UNKNOWN = 0,
	UNEXP_EOF = 1,
	UNEXP_EOF_IN_STRING = 2,
	UNEXP_EOF_IN_COMMENT = 3,
	NON_DIGIT_IN_CONST = 4,
	DIGIT_RADIX = 5,
	FLOAT_RADIX = 6,
	FLOAT_MALFORMED = 7,
};
export type FileError = enum uint {
	EXIST = 0,
	ISDIR = 1,
	ACCES = 2,
	NAMETOOLONG = 3,
	NOENT = 4,
	NOTDIR = 5,
	NXIO = 6,
	NODEV = 7,
	ROFS = 8,
	TXTBSY = 9,
	FAULT = 10,
	LOOP = 11,
	NOSPC = 12,
	NOMEM = 13,
	MFILE = 14,
	NFILE = 15,
	BADF = 16,
	INVAL = 17,
	PIPE = 18,
	AGAIN = 19,
	INTR = 20,
	IO = 21,
	PERM = 22,
	NOSYS = 23,
	FAILED = 24,
};
export type IOChannelError = enum uint {
	FBIG = 0,
	INVAL = 1,
	IO = 2,
	ISDIR = 3,
	NOSPC = 4,
	NXIO = 5,
	OVERFLOW = 6,
	PIPE = 7,
	FAILED = 8,
};
export type IOError = enum uint {
	NONE = 0,
	AGAIN = 1,
	INVAL = 2,
	UNKNOWN = 3,
};
export type IOStatus = enum uint {
	ERROR = 0,
	NORMAL = 1,
	EOF = 2,
	AGAIN = 3,
};
export type KeyFileError = enum uint {
	UNKNOWN_ENCODING = 0,
	PARSE = 1,
	NOT_FOUND = 2,
	KEY_NOT_FOUND = 3,
	GROUP_NOT_FOUND = 4,
	INVALID_VALUE = 5,
};
export type LogWriterOutput = enum uint {
	HANDLED = 1,
	UNHANDLED = 0,
};
export type MarkupError = enum uint {
	BAD_UTF8 = 0,
	EMPTY = 1,
	PARSE = 2,
	UNKNOWN_ELEMENT = 3,
	UNKNOWN_ATTRIBUTE = 4,
	INVALID_CONTENT = 5,
	MISSING_ATTRIBUTE = 6,
};
export type NormalizeMode = enum uint {
	DEFAULT = 0,
	NFD = 0,
	DEFAULT_COMPOSE = 1,
	NFC = 1,
	ALL = 2,
	NFKD = 2,
	ALL_COMPOSE = 3,
	NFKC = 3,
};
export type NumberParserError = enum uint {
	INVALID = 0,
	OUT_OF_BOUNDS = 1,
};
export type OnceStatus = enum uint {
	NOTCALLED = 0,
	PROGRESS = 1,
	READY = 2,
};
export type OptionArg = enum uint {
	NONE = 0,
	STRING = 1,
	INT_ = 2,
	CALLBACK = 3,
	FILENAME = 4,
	STRING_ARRAY = 5,
	FILENAME_ARRAY = 6,
	DOUBLE = 7,
	INT64 = 8,
};
export type OptionError = enum uint {
	UNKNOWN_OPTION = 0,
	BAD_VALUE = 1,
	FAILED = 2,
};
export type RegexError = enum uint {
	COMPILE = 0,
	OPTIMIZE = 1,
	REPLACE = 2,
	MATCH_ = 3,
	INTERNAL = 4,
	STRAY_BACKSLASH = 101,
	MISSING_CONTROL_CHAR = 102,
	UNRECOGNIZED_ESCAPE = 103,
	QUANTIFIERS_OUT_OF_ORDER = 104,
	QUANTIFIER_TOO_BIG = 105,
	UNTERMINATED_CHARACTER_CLASS = 106,
	INVALID_ESCAPE_IN_CHARACTER_CLASS = 107,
	RANGE_OUT_OF_ORDER = 108,
	NOTHING_TO_REPEAT = 109,
	UNRECOGNIZED_CHARACTER = 112,
	POSIX_NAMED_CLASS_OUTSIDE_CLASS = 113,
	UNMATCHED_PARENTHESIS = 114,
	INEXISTENT_SUBPATTERN_REFERENCE = 115,
	UNTERMINATED_COMMENT = 118,
	EXPRESSION_TOO_LARGE = 120,
	MEMORY_ERROR = 121,
	VARIABLE_LENGTH_LOOKBEHIND = 125,
	MALFORMED_CONDITION = 126,
	TOO_MANY_CONDITIONAL_BRANCHES = 127,
	ASSERTION_EXPECTED = 128,
	UNKNOWN_POSIX_CLASS_NAME = 130,
	POSIX_COLLATING_ELEMENTS_NOT_SUPPORTED = 131,
	HEX_CODE_TOO_LARGE = 134,
	INVALID_CONDITION = 135,
	SINGLE_BYTE_MATCH_IN_LOOKBEHIND = 136,
	INFINITE_LOOP = 140,
	MISSING_SUBPATTERN_NAME_TERMINATOR = 142,
	DUPLICATE_SUBPATTERN_NAME = 143,
	MALFORMED_PROPERTY = 146,
	UNKNOWN_PROPERTY = 147,
	SUBPATTERN_NAME_TOO_LONG = 148,
	TOO_MANY_SUBPATTERNS = 149,
	INVALID_OCTAL_VALUE = 151,
	TOO_MANY_BRANCHES_IN_DEFINE = 154,
	DEFINE_REPETION = 155,
	INCONSISTENT_NEWLINE_OPTIONS = 156,
	MISSING_BACK_REFERENCE = 157,
	INVALID_RELATIVE_REFERENCE = 158,
	BACKTRACKING_CONTROL_VERB_ARGUMENT_FORBIDDEN = 159,
	UNKNOWN_BACKTRACKING_CONTROL_VERB = 160,
	NUMBER_TOO_BIG = 161,
	MISSING_SUBPATTERN_NAME = 162,
	MISSING_DIGIT = 163,
	INVALID_DATA_CHARACTER = 164,
	EXTRA_SUBPATTERN_NAME = 165,
	BACKTRACKING_CONTROL_VERB_ARGUMENT_REQUIRED = 166,
	INVALID_CONTROL_CHAR = 168,
	MISSING_NAME = 169,
	NOT_SUPPORTED_IN_CLASS = 171,
	TOO_MANY_FORWARD_REFERENCES = 172,
	NAME_TOO_LONG = 175,
	CHARACTER_VALUE_TOO_LARGE = 176,
};
export type SeekType = enum uint {
	CUR = 0,
	SET = 1,
	END = 2,
};
export type ShellError = enum uint {
	BAD_QUOTING = 0,
	EMPTY_STRING = 1,
	FAILED = 2,
};
export type SliceConfig = enum uint {
	ALWAYS_MALLOC = 1,
	BYPASS_MAGAZINES = 2,
	WORKING_SET_MSECS = 3,
	COLOR_INCREMENT = 4,
	CHUNK_SIZES = 5,
	CONTENTION_COUNTER = 6,
};
export type SpawnError = enum uint {
	FORK = 0,
	READ = 1,
	CHDIR = 2,
	ACCES = 3,
	PERM = 4,
	TOO_BIG = 5,
	_2BIG = 5,
	NOEXEC = 6,
	NAMETOOLONG = 7,
	NOENT = 8,
	NOMEM = 9,
	NOTDIR = 10,
	LOOP = 11,
	TXTBUSY = 12,
	IO = 13,
	NFILE = 14,
	MFILE = 15,
	INVAL = 16,
	ISDIR = 17,
	LIBBAD = 18,
	FAILED = 19,
};
export type TestFileType = enum uint {
	DIST = 0,
	BUILT = 1,
};
export type TestLogType = enum uint {
	NONE = 0,
	ERROR = 1,
	START_BINARY = 2,
	LIST_CASE = 3,
	SKIP_CASE = 4,
	START_CASE = 5,
	STOP_CASE = 6,
	MIN_RESULT = 7,
	MAX_RESULT = 8,
	MESSAGE = 9,
	START_SUITE = 10,
	STOP_SUITE = 11,
};
export type TestResult = enum uint {
	SUCCESS = 0,
	SKIPPED = 1,
	FAILURE = 2,
	INCOMPLETE = 3,
};
export type ThreadError = enum uint {
	THREAD_ERROR_AGAIN = 0,
};
export type TimeType = enum uint {
	STANDARD = 0,
	DAYLIGHT = 1,
	UNIVERSAL = 2,
};
export type TokenType = enum uint {
	EOF = 0,
	LEFT_PAREN = 40,
	RIGHT_PAREN = 41,
	LEFT_CURLY = 123,
	RIGHT_CURLY = 125,
	LEFT_BRACE = 91,
	RIGHT_BRACE = 93,
	EQUAL_SIGN = 61,
	COMMA = 44,
	NONE = 256,
	ERROR = 257,
	CHAR = 258,
	BINARY = 259,
	OCTAL = 260,
	INT_ = 261,
	HEX = 262,
	FLOAT = 263,
	STRING = 264,
	SYMBOL = 265,
	IDENTIFIER = 266,
	IDENTIFIER_NULL = 267,
	COMMENT_SINGLE = 268,
	COMMENT_MULTI = 269,
};
export type TraverseType = enum uint {
	IN_ORDER = 0,
	PRE_ORDER = 1,
	POST_ORDER = 2,
	LEVEL_ORDER = 3,
};
export type UnicodeBreakType = enum uint {
	MANDATORY = 0,
	CARRIAGE_RETURN = 1,
	LINE_FEED = 2,
	COMBINING_MARK = 3,
	SURROGATE = 4,
	ZERO_WIDTH_SPACE = 5,
	INSEPARABLE = 6,
	NON_BREAKING_GLUE = 7,
	CONTINGENT = 8,
	SPACE = 9,
	AFTER = 10,
	BEFORE = 11,
	BEFORE_AND_AFTER = 12,
	HYPHEN = 13,
	NON_STARTER = 14,
	OPEN_PUNCTUATION = 15,
	CLOSE_PUNCTUATION = 16,
	QUOTATION = 17,
	EXCLAMATION = 18,
	IDEOGRAPHIC = 19,
	NUMERIC = 20,
	INFIX_SEPARATOR = 21,
	SYMBOL = 22,
	ALPHABETIC = 23,
	PREFIX = 24,
	POSTFIX = 25,
	COMPLEX_CONTEXT = 26,
	AMBIGUOUS = 27,
	UNKNOWN = 28,
	NEXT_LINE = 29,
	WORD_JOINER = 30,
	HANGUL_L_JAMO = 31,
	HANGUL_V_JAMO = 32,
	HANGUL_T_JAMO = 33,
	HANGUL_LV_SYLLABLE = 34,
	HANGUL_LVT_SYLLABLE = 35,
	CLOSE_PARANTHESIS = 36,
	CLOSE_PARENTHESIS = 36,
	CONDITIONAL_JAPANESE_STARTER = 37,
	HEBREW_LETTER = 38,
	REGIONAL_INDICATOR = 39,
	EMOJI_BASE = 40,
	EMOJI_MODIFIER = 41,
	ZERO_WIDTH_JOINER = 42,
};
export type UnicodeScript = enum uint {
	INVALID_CODE = -1,
	COMMON = 0,
	INHERITED = 1,
	ARABIC = 2,
	ARMENIAN = 3,
	BENGALI = 4,
	BOPOMOFO = 5,
	CHEROKEE = 6,
	COPTIC = 7,
	CYRILLIC = 8,
	DESERET = 9,
	DEVANAGARI = 10,
	ETHIOPIC = 11,
	GEORGIAN = 12,
	GOTHIC = 13,
	GREEK = 14,
	GUJARATI = 15,
	GURMUKHI = 16,
	HAN = 17,
	HANGUL = 18,
	HEBREW = 19,
	HIRAGANA = 20,
	KANNADA = 21,
	KATAKANA = 22,
	KHMER = 23,
	LAO = 24,
	LATIN = 25,
	MALAYALAM = 26,
	MONGOLIAN = 27,
	MYANMAR = 28,
	OGHAM = 29,
	OLD_ITALIC = 30,
	ORIYA = 31,
	RUNIC = 32,
	SINHALA = 33,
	SYRIAC = 34,
	TAMIL = 35,
	TELUGU = 36,
	THAANA = 37,
	THAI = 38,
	TIBETAN = 39,
	CANADIAN_ABORIGINAL = 40,
	YI = 41,
	TAGALOG = 42,
	HANUNOO = 43,
	BUHID = 44,
	TAGBANWA = 45,
	BRAILLE = 46,
	CYPRIOT = 47,
	LIMBU = 48,
	OSMANYA = 49,
	SHAVIAN = 50,
	LINEAR_B = 51,
	TAI_LE = 52,
	UGARITIC = 53,
	NEW_TAI_LUE = 54,
	BUGINESE = 55,
	GLAGOLITIC = 56,
	TIFINAGH = 57,
	SYLOTI_NAGRI = 58,
	OLD_PERSIAN = 59,
	KHAROSHTHI = 60,
	UNKNOWN = 61,
	BALINESE = 62,
	CUNEIFORM = 63,
	PHOENICIAN = 64,
	PHAGS_PA = 65,
	NKO = 66,
	KAYAH_LI = 67,
	LEPCHA = 68,
	REJANG = 69,
	SUNDANESE = 70,
	SAURASHTRA = 71,
	CHAM = 72,
	OL_CHIKI = 73,
	VAI = 74,
	CARIAN = 75,
	LYCIAN = 76,
	LYDIAN = 77,
	AVESTAN = 78,
	BAMUM = 79,
	EGYPTIAN_HIEROGLYPHS = 80,
	IMPERIAL_ARAMAIC = 81,
	INSCRIPTIONAL_PAHLAVI = 82,
	INSCRIPTIONAL_PARTHIAN = 83,
	JAVANESE = 84,
	KAITHI = 85,
	LISU = 86,
	MEETEI_MAYEK = 87,
	OLD_SOUTH_ARABIAN = 88,
	OLD_TURKIC = 89,
	SAMARITAN = 90,
	TAI_THAM = 91,
	TAI_VIET = 92,
	BATAK = 93,
	BRAHMI = 94,
	MANDAIC = 95,
	CHAKMA = 96,
	MEROITIC_CURSIVE = 97,
	MEROITIC_HIEROGLYPHS = 98,
	MIAO = 99,
	SHARADA = 100,
	SORA_SOMPENG = 101,
	TAKRI = 102,
	BASSA_VAH = 103,
	CAUCASIAN_ALBANIAN = 104,
	DUPLOYAN = 105,
	ELBASAN = 106,
	GRANTHA = 107,
	KHOJKI = 108,
	KHUDAWADI = 109,
	LINEAR_A = 110,
	MAHAJANI = 111,
	MANICHAEAN = 112,
	MENDE_KIKAKUI = 113,
	MODI = 114,
	MRO = 115,
	NABATAEAN = 116,
	OLD_NORTH_ARABIAN = 117,
	OLD_PERMIC = 118,
	PAHAWH_HMONG = 119,
	PALMYRENE = 120,
	PAU_CIN_HAU = 121,
	PSALTER_PAHLAVI = 122,
	SIDDHAM = 123,
	TIRHUTA = 124,
	WARANG_CITI = 125,
	AHOM = 126,
	ANATOLIAN_HIEROGLYPHS = 127,
	HATRAN = 128,
	MULTANI = 129,
	OLD_HUNGARIAN = 130,
	SIGNWRITING = 131,
	ADLAM = 132,
	BHAIKSUKI = 133,
	MARCHEN = 134,
	NEWA = 135,
	OSAGE = 136,
	TANGUT = 137,
	MASARAM_GONDI = 138,
	NUSHU = 139,
	SOYOMBO = 140,
	ZANABAZAR_SQUARE = 141,
	DOGRA = 142,
	GUNJALA_GONDI = 143,
	HANIFI_ROHINGYA = 144,
	MAKASAR = 145,
	MEDEFAIDRIN = 146,
	OLD_SOGDIAN = 147,
	SOGDIAN = 148,
	ELYMAIC = 149,
	NANDINAGARI = 150,
	NYIAKENG_PUACHUE_HMONG = 151,
	WANCHO = 152,
	CHORASMIAN = 153,
	DIVES_AKURU = 154,
	KHITAN_SMALL_SCRIPT = 155,
	YEZIDI = 156,
	CYPRO_MINOAN = 157,
	OLD_UYGHUR = 158,
	TANGSA = 159,
	TOTO = 160,
	VITHKUQI = 161,
	MATH = 162,
	KAWI = 163,
	NAG_MUNDARI = 164,
};
export type UnicodeType = enum uint {
	CONTROL = 0,
	FORMAT = 1,
	UNASSIGNED = 2,
	PRIVATE_USE = 3,
	SURROGATE = 4,
	LOWERCASE_LETTER = 5,
	MODIFIER_LETTER = 6,
	OTHER_LETTER = 7,
	TITLECASE_LETTER = 8,
	UPPERCASE_LETTER = 9,
	SPACING_MARK = 10,
	ENCLOSING_MARK = 11,
	NON_SPACING_MARK = 12,
	DECIMAL_NUMBER = 13,
	LETTER_NUMBER = 14,
	OTHER_NUMBER = 15,
	CONNECT_PUNCTUATION = 16,
	DASH_PUNCTUATION = 17,
	CLOSE_PUNCTUATION = 18,
	FINAL_PUNCTUATION = 19,
	INITIAL_PUNCTUATION = 20,
	OTHER_PUNCTUATION = 21,
	OPEN_PUNCTUATION = 22,
	CURRENCY_SYMBOL = 23,
	MODIFIER_SYMBOL = 24,
	MATH_SYMBOL = 25,
	OTHER_SYMBOL = 26,
	LINE_SEPARATOR = 27,
	PARAGRAPH_SEPARATOR = 28,
	SPACE_SEPARATOR = 29,
};
export type UriError = enum uint {
	FAILED = 0,
	BAD_SCHEME = 1,
	BAD_USER = 2,
	BAD_PASSWORD = 3,
	BAD_AUTH_PARAMS = 4,
	BAD_HOST = 5,
	BAD_PORT = 6,
	BAD_PATH = 7,
	BAD_QUERY = 8,
	BAD_FRAGMENT = 9,
};
export type UserDirectory = enum uint {
	DIRECTORY_DESKTOP = 0,
	DIRECTORY_DOCUMENTS = 1,
	DIRECTORY_DOWNLOAD = 2,
	DIRECTORY_MUSIC = 3,
	DIRECTORY_PICTURES = 4,
	DIRECTORY_PUBLIC_SHARE = 5,
	DIRECTORY_TEMPLATES = 6,
	DIRECTORY_VIDEOS = 7,
	N_DIRECTORIES = 8,
};
export type VariantClass = enum uint {
	BOOLEAN = 98,
	BYTE = 121,
	INT16 = 110,
	UINT16 = 113,
	INT32 = 105,
	UINT32 = 117,
	INT64 = 120,
	UINT64 = 116,
	HANDLE = 104,
	DOUBLE = 100,
	STRING = 115,
	OBJECT_PATH = 111,
	SIGNATURE = 103,
	VARIANT = 118,
	MAYBE = 109,
	ARRAY = 97,
	TUPLE = 40,
	DICT_ENTRY = 123,
};
export type VariantParseError = enum uint {
	FAILED = 0,
	BASIC_TYPE_EXPECTED = 1,
	CANNOT_INFER_TYPE = 2,
	DEFINITE_TYPE_EXPECTED = 3,
	INPUT_NOT_AT_END = 4,
	INVALID_CHARACTER = 5,
	INVALID_FORMAT_STRING = 6,
	INVALID_OBJECT_PATH = 7,
	INVALID_SIGNATURE = 8,
	INVALID_TYPE_STRING = 9,
	NO_COMMON_TYPE = 10,
	NUMBER_OUT_OF_RANGE = 11,
	NUMBER_TOO_BIG = 12,
	TYPE_ERROR = 13,
	UNEXPECTED_TOKEN = 14,
	UNKNOWN_KEYWORD = 15,
	UNTERMINATED_STRING_CONSTANT = 16,
	VALUE_EXPECTED = 17,
	RECURSION = 18,
};
export @symbol("g_access") fn access(filename: *c::char, mode: int) int;
export @symbol("g_aligned_alloc") fn aligned_alloc(n_blocks: size, n_block_bytes: size, alignment: size) *opaque;
export @symbol("g_aligned_alloc0") fn aligned_alloc0(n_blocks: size, n_block_bytes: size, alignment: size) *opaque;
export @symbol("g_aligned_free") fn aligned_free(mem: *opaque) void;
export @symbol("g_aligned_free_sized") fn aligned_free_sized(mem: *opaque, alignment: size, size_: size) void;
export @symbol("g_ascii_digit_value") fn ascii_digit_value(c: c::char) int;
export @symbol("g_ascii_dtostr") fn ascii_dtostr(buffer: *c::char, buf_len: int, d: f64) *c::char;
export @symbol("g_ascii_formatd") fn ascii_formatd(buffer: *c::char, buf_len: int, format: *c::char, d: f64) *c::char;
export @symbol("g_ascii_strcasecmp") fn ascii_strcasecmp(s1: *c::char, s2: *c::char) int;
export @symbol("g_ascii_strdown") fn ascii_strdown(str_: *c::char, len_: c::ssize) *c::char;
export @symbol("g_ascii_string_to_signed") fn ascii_string_to_signed(str_: *c::char, base: uint, min: i64, max: i64, out_num: *i64, error: nullable **Error) boolean;
export @symbol("g_ascii_string_to_unsigned") fn ascii_string_to_unsigned(str_: *c::char, base: uint, min: u64, max: u64, out_num: *u64, error: nullable **Error) boolean;
export @symbol("g_ascii_strncasecmp") fn ascii_strncasecmp(s1: *c::char, s2: *c::char, n: size) int;
export @symbol("g_ascii_strtod") fn ascii_strtod(nptr: *c::char, endptr: **c::char) f64;
export @symbol("g_ascii_strtoll") fn ascii_strtoll(nptr: *c::char, endptr: **c::char, base: uint) i64;
export @symbol("g_ascii_strtoull") fn ascii_strtoull(nptr: *c::char, endptr: **c::char, base: uint) u64;
export @symbol("g_ascii_strup") fn ascii_strup(str_: *c::char, len_: c::ssize) *c::char;
export @symbol("g_ascii_tolower") fn ascii_tolower(c: c::char) c::char;
export @symbol("g_ascii_toupper") fn ascii_toupper(c: c::char) c::char;
export @symbol("g_ascii_xdigit_value") fn ascii_xdigit_value(c: c::char) int;
export @symbol("g_assert_warning") fn assert_warning(log_domain: *c::char, file: *c::char, line: int, pretty_function: *c::char, expression: *c::char) void;
export @symbol("g_assertion_message") fn assertion_message(domain: *c::char, file: *c::char, line: int, func: *c::char, message: *c::char) void;
export @symbol("g_assertion_message_cmpint") fn assertion_message_cmpint(domain: *c::char, file: *c::char, line: int, func: *c::char, expr: *c::char, arg1: u64, cmp: *c::char, arg2: u64, numtype: c::char) void;
export @symbol("g_assertion_message_cmpnum") fn assertion_message_cmpnum(domain: *c::char, file: *c::char, line: int, func: *c::char, expr: *c::char, arg1: f64, cmp: *c::char, arg2: f64, numtype: c::char) void;
export @symbol("g_assertion_message_cmpstr") fn assertion_message_cmpstr(domain: *c::char, file: *c::char, line: int, func: *c::char, expr: *c::char, arg1: *c::char, cmp: *c::char, arg2: *c::char) void;
export @symbol("g_assertion_message_cmpstrv") fn assertion_message_cmpstrv(domain: *c::char, file: *c::char, line: int, func: *c::char, expr: *c::char, arg1: **c::char, arg2: **c::char, first_wrong_idx: size) void;
export @symbol("g_assertion_message_error") fn assertion_message_error(domain: *c::char, file: *c::char, line: int, func: *c::char, expr: *c::char, error: *Error, error_domain: Quark, error_code: int) void;
export @symbol("g_assertion_message_expr") fn assertion_message_expr(domain: *c::char, file: *c::char, line: int, func: *c::char, expr: *c::char) void;
export @symbol("g_atexit") fn atexit(func: VoidFunc) void;
export @symbol("g_atomic_int_add") fn atomic_int_add(atomic: *int, val: int) int;
export @symbol("g_atomic_int_and") fn atomic_int_and(atomic: *uint, val: uint) uint;
export @symbol("g_atomic_int_compare_and_exchange") fn atomic_int_compare_and_exchange(atomic: *int, oldval: int, newval: int) boolean;
export @symbol("g_atomic_int_compare_and_exchange_full") fn atomic_int_compare_and_exchange_full(atomic: *int, oldval: int, newval: int, preval: *int) boolean;
export @symbol("g_atomic_int_dec_and_test") fn atomic_int_dec_and_test(atomic: *int) boolean;
export @symbol("g_atomic_int_exchange") fn atomic_int_exchange(atomic: *int, newval: int) int;
export @symbol("g_atomic_int_exchange_and_add") fn atomic_int_exchange_and_add(atomic: *int, val: int) int;
export @symbol("g_atomic_int_get") fn atomic_int_get(atomic: *int) int;
export @symbol("g_atomic_int_inc") fn atomic_int_inc(atomic: *int) void;
export @symbol("g_atomic_int_or") fn atomic_int_or(atomic: *uint, val: uint) uint;
export @symbol("g_atomic_int_set") fn atomic_int_set(atomic: *int, newval: int) void;
export @symbol("g_atomic_int_xor") fn atomic_int_xor(atomic: *uint, val: uint) uint;
export @symbol("g_atomic_pointer_add") fn atomic_pointer_add(atomic: *opaque, val: c::ssize) c::ssize;
export @symbol("g_atomic_pointer_and") fn atomic_pointer_and(atomic: *opaque, val: size) size;
export @symbol("g_atomic_pointer_compare_and_exchange") fn atomic_pointer_compare_and_exchange(atomic: *opaque, oldval: *opaque, newval: *opaque) boolean;
export @symbol("g_atomic_pointer_compare_and_exchange_full") fn atomic_pointer_compare_and_exchange_full(atomic: *opaque, oldval: *opaque, newval: *opaque, preval: *opaque) boolean;
export @symbol("g_atomic_pointer_exchange") fn atomic_pointer_exchange(atomic: *opaque, newval: *opaque) *opaque;
export @symbol("g_atomic_pointer_get") fn atomic_pointer_get(atomic: *opaque) *opaque;
export @symbol("g_atomic_pointer_or") fn atomic_pointer_or(atomic: *opaque, val: size) size;
export @symbol("g_atomic_pointer_set") fn atomic_pointer_set(atomic: *opaque, newval: *opaque) void;
export @symbol("g_atomic_pointer_xor") fn atomic_pointer_xor(atomic: *opaque, val: size) size;
export @symbol("g_atomic_rc_box_acquire") fn atomic_rc_box_acquire(mem_block: *opaque) *opaque;
export @symbol("g_atomic_rc_box_alloc") fn atomic_rc_box_alloc(block_size: size) *opaque;
export @symbol("g_atomic_rc_box_alloc0") fn atomic_rc_box_alloc0(block_size: size) *opaque;
export @symbol("g_atomic_rc_box_dup") fn atomic_rc_box_dup(block_size: size, mem_block: *opaque) *opaque;
export @symbol("g_atomic_rc_box_get_size") fn atomic_rc_box_get_size(mem_block: *opaque) size;
export @symbol("g_atomic_rc_box_release") fn atomic_rc_box_release(mem_block: *opaque) void;
export @symbol("g_atomic_rc_box_release_full") fn atomic_rc_box_release_full(mem_block: *opaque, clear_func: DestroyNotify) void;
export @symbol("g_atomic_ref_count_compare") fn atomic_ref_count_compare(arc: *uint, val: int) boolean;
export @symbol("g_atomic_ref_count_dec") fn atomic_ref_count_dec(arc: *uint) boolean;
export @symbol("g_atomic_ref_count_inc") fn atomic_ref_count_inc(arc: *uint) void;
export @symbol("g_atomic_ref_count_init") fn atomic_ref_count_init(arc: *uint) void;
export @symbol("g_base64_decode") fn base64_decode(text: *c::char, out_len: *size) *c::uchar;
export @symbol("g_base64_decode_inplace") fn base64_decode_inplace(text: *c::char, out_len: *size) *c::uchar;
export @symbol("g_base64_decode_step") fn base64_decode_step(in: *c::char, len_: size, out: *c::uchar, state: *int, save: *uint) size;
export @symbol("g_base64_encode") fn base64_encode(data: *c::uchar, len_: size) *c::char;
export @symbol("g_base64_encode_close") fn base64_encode_close(break_lines: boolean, out: *c::char, state: *int, save: *int) size;
export @symbol("g_base64_encode_step") fn base64_encode_step(in: *c::uchar, len_: size, break_lines: boolean, out: *c::char, state: *int, save: *int) size;
export @symbol("g_basename") fn basename(file_name: *c::char) *c::char;
export @symbol("g_bit_lock") fn bit_lock(address: *int, lock_bit: int) void;
export @symbol("g_bit_nth_lsf") fn bit_nth_lsf(mask: c::ulong, nth_bit: int) int;
export @symbol("g_bit_nth_msf") fn bit_nth_msf(mask: c::ulong, nth_bit: int) int;
export @symbol("g_bit_storage") fn bit_storage(number: c::ulong) uint;
export @symbol("g_bit_trylock") fn bit_trylock(address: *int, lock_bit: int) boolean;
export @symbol("g_bit_unlock") fn bit_unlock(address: *int, lock_bit: int) void;
export @symbol("g_build_filename") fn build_filename(first_element: *c::char, ...) *c::char;
export @symbol("g_build_filename_valist") fn build_filename_valist(first_element: *c::char, args: *valist) *c::char;
export @symbol("g_build_filenamev") fn build_filenamev(args: **c::char) *c::char;
export @symbol("g_build_path") fn build_path(separator: *c::char, first_element: *c::char, ...) *c::char;
export @symbol("g_build_pathv") fn build_pathv(separator: *c::char, args: **c::char) *c::char;
export @symbol("g_canonicalize_filename") fn canonicalize_filename(filename: *c::char, relative_to: *c::char) *c::char;
export @symbol("g_chdir") fn chdir(path: *c::char) int;
export @symbol("glib_check_version") fn check_version(required_major: uint, required_minor: uint, required_micro: uint) *c::char;
export @symbol("g_child_watch_add") fn child_watch_add(pid: Pid, function: ChildWatchFunc, data: *opaque) uint;
export @symbol("g_child_watch_add_full") fn child_watch_add_full(priority: int, pid: Pid, function: ChildWatchFunc, data: *opaque, notify: DestroyNotify) uint;
export @symbol("g_child_watch_source_new") fn child_watch_source_new(pid: Pid) *Source;
export @symbol("g_clear_error") fn clear_error(error: nullable **Error) void;
export @symbol("g_clear_handle_id") fn clear_handle_id(tag_ptr: *uint, clear_func: ClearHandleFunc) void;
export @symbol("g_clear_list") fn clear_list(list_ptr: **List, destroy: DestroyNotify) void;
export @symbol("g_clear_pointer") fn clear_pointer(pp: **opaque, destroy: DestroyNotify) void;
export @symbol("g_clear_slist") fn clear_slist(slist_ptr: **SList, destroy: DestroyNotify) void;
export @symbol("g_close") fn close(fd: int, error: nullable **Error) boolean;
export @symbol("g_compute_checksum_for_bytes") fn compute_checksum_for_bytes(checksum_type: ChecksumType, data: *Bytes) *c::char;
export @symbol("g_compute_checksum_for_data") fn compute_checksum_for_data(checksum_type: ChecksumType, data: *c::uchar, length: size) *c::char;
export @symbol("g_compute_checksum_for_string") fn compute_checksum_for_string(checksum_type: ChecksumType, str_: *c::char, length: c::ssize) *c::char;
export @symbol("g_compute_hmac_for_bytes") fn compute_hmac_for_bytes(digest_type: ChecksumType, key: *Bytes, data: *Bytes) *c::char;
export @symbol("g_compute_hmac_for_data") fn compute_hmac_for_data(digest_type: ChecksumType, key: *c::uchar, key_len: size, data: *c::uchar, length: size) *c::char;
export @symbol("g_compute_hmac_for_string") fn compute_hmac_for_string(digest_type: ChecksumType, key: *c::uchar, key_len: size, str_: *c::char, length: c::ssize) *c::char;
export @symbol("g_convert") fn convert(str_: *c::char, len_: c::ssize, to_codeset: *c::char, from_codeset: *c::char, bytes_read: *size, bytes_written: *size, error: nullable **Error) *c::char;
export @symbol("g_convert_error_quark") fn convert_error_quark() Quark;
export @symbol("g_convert_with_fallback") fn convert_with_fallback(str_: *c::char, len_: c::ssize, to_codeset: *c::char, from_codeset: *c::char, fallback: *c::char, bytes_read: *size, bytes_written: *size, error: nullable **Error) *c::char;
export @symbol("g_convert_with_iconv") fn convert_with_iconv(str_: *c::char, len_: c::ssize, converter: IConv, bytes_read: *size, bytes_written: *size, error: nullable **Error) *c::char;
export @symbol("g_datalist_clear") fn datalist_clear(datalist: **Data) void;
export @symbol("g_datalist_foreach") fn datalist_foreach(datalist: **Data, func: DataForeachFunc, user_data: *opaque) void;
export @symbol("g_datalist_get_data") fn datalist_get_data(datalist: **Data, key: *c::char) *opaque;
export @symbol("g_datalist_get_flags") fn datalist_get_flags(datalist: **Data) uint;
export @symbol("g_datalist_id_dup_data") fn datalist_id_dup_data(datalist: **Data, key_id: Quark, dup_func: DuplicateFunc, user_data: *opaque) *opaque;
export @symbol("g_datalist_id_get_data") fn datalist_id_get_data(datalist: **Data, key_id: Quark) *opaque;
export @symbol("g_datalist_id_remove_multiple") fn datalist_id_remove_multiple(datalist: **Data, keys: *Quark, n_keys: size) void;
export @symbol("g_datalist_id_remove_no_notify") fn datalist_id_remove_no_notify(datalist: **Data, key_id: Quark) *opaque;
export @symbol("g_datalist_id_replace_data") fn datalist_id_replace_data(datalist: **Data, key_id: Quark, oldval: *opaque, newval: *opaque, destroy: DestroyNotify, old_destroy: *DestroyNotify) boolean;
export @symbol("g_datalist_id_set_data_full") fn datalist_id_set_data_full(datalist: **Data, key_id: Quark, data: *opaque, destroy_func: DestroyNotify) void;
export @symbol("g_datalist_init") fn datalist_init(datalist: **Data) void;
export @symbol("g_datalist_set_flags") fn datalist_set_flags(datalist: **Data, flags: uint) void;
export @symbol("g_datalist_unset_flags") fn datalist_unset_flags(datalist: **Data, flags: uint) void;
export @symbol("g_dataset_destroy") fn dataset_destroy(dataset_location: *opaque) void;
export @symbol("g_dataset_foreach") fn dataset_foreach(dataset_location: *opaque, func: DataForeachFunc, user_data: *opaque) void;
export @symbol("g_dataset_id_get_data") fn dataset_id_get_data(dataset_location: *opaque, key_id: Quark) *opaque;
export @symbol("g_dataset_id_remove_no_notify") fn dataset_id_remove_no_notify(dataset_location: *opaque, key_id: Quark) *opaque;
export @symbol("g_dataset_id_set_data_full") fn dataset_id_set_data_full(dataset_location: *opaque, key_id: Quark, data: *opaque, destroy_func: DestroyNotify) void;
export @symbol("g_dcgettext") fn dcgettext(domain: *c::char, msgid: *c::char, category: int) *c::char;
export @symbol("g_dgettext") fn dgettext(domain: *c::char, msgid: *c::char) *c::char;
export @symbol("g_direct_equal") fn direct_equal(v1: *opaque, v2: *opaque) boolean;
export @symbol("g_direct_hash") fn direct_hash(v: *opaque) uint;
export @symbol("g_dngettext") fn dngettext(domain: *c::char, msgid: *c::char, msgid_plural: *c::char, n: c::ulong) *c::char;
export @symbol("g_double_equal") fn double_equal(v1: *opaque, v2: *opaque) boolean;
export @symbol("g_double_hash") fn double_hash(v: *opaque) uint;
export @symbol("g_dpgettext") fn dpgettext(domain: *c::char, msgctxtid: *c::char, msgidoffset: size) *c::char;
export @symbol("g_dpgettext2") fn dpgettext2(domain: *c::char, context: *c::char, msgid: *c::char) *c::char;
export @symbol("g_environ_getenv") fn environ_getenv(envp: **c::char, variable: *c::char) *c::char;
export @symbol("g_environ_setenv") fn environ_setenv(envp: **c::char, variable: *c::char, value: *c::char, overwrite: boolean) **c::char;
export @symbol("g_environ_unsetenv") fn environ_unsetenv(envp: **c::char, variable: *c::char) **c::char;
export @symbol("g_file_error_from_errno") fn file_error_from_errno(err_no: int) FileError;
export @symbol("g_file_error_quark") fn file_error_quark() Quark;
export @symbol("g_file_get_contents") fn file_get_contents(filename: *c::char, contents: **c::char, length: *size, error: nullable **Error) boolean;
export @symbol("g_file_open_tmp") fn file_open_tmp(tmpl: *c::char, name_used: **c::char, error: nullable **Error) int;
export @symbol("g_file_read_link") fn file_read_link(filename: *c::char, error: nullable **Error) *c::char;
export @symbol("g_file_set_contents") fn file_set_contents(filename: *c::char, contents: *c::char, length: c::ssize, error: nullable **Error) boolean;
export @symbol("g_file_set_contents_full") fn file_set_contents_full(filename: *c::char, contents: *c::char, length: c::ssize, flags: FileSetContentsFlags, mode: int, error: nullable **Error) boolean;
export @symbol("g_file_test") fn file_test(filename: *c::char, test: FileTest) boolean;
export @symbol("g_filename_display_basename") fn filename_display_basename(filename: *c::char) *c::char;
export @symbol("g_filename_display_name") fn filename_display_name(filename: *c::char) *c::char;
export @symbol("g_filename_from_uri") fn filename_from_uri(uri: *c::char, hostname: **c::char, error: nullable **Error) *c::char;
export @symbol("g_filename_from_utf8") fn filename_from_utf8(utf8string: *c::char, len_: c::ssize, bytes_read: *size, bytes_written: *size, error: nullable **Error) *c::char;
export @symbol("g_filename_to_uri") fn filename_to_uri(filename: *c::char, hostname: *c::char, error: nullable **Error) *c::char;
export @symbol("g_filename_to_utf8") fn filename_to_utf8(opsysstring: *c::char, len_: c::ssize, bytes_read: *size, bytes_written: *size, error: nullable **Error) *c::char;
export @symbol("g_find_program_in_path") fn find_program_in_path(program: *c::char) *c::char;
export @symbol("g_format_size") fn format_size(size_: u64) *c::char;
export @symbol("g_format_size_for_display") fn format_size_for_display(size_: i64) *c::char;
export @symbol("g_format_size_full") fn format_size_full(size_: u64, flags: FormatSizeFlags) *c::char;
export @symbol("g_fprintf") fn fprintf(file: *libc::FILE, format: *c::char, ...) int;
export @symbol("g_free") fn free_(mem: *opaque) void;
export @symbol("g_free_sized") fn free_sized(mem: *opaque, size_: size) void;
export @symbol("g_get_application_name") fn get_application_name() *c::char;
export @symbol("g_get_charset") fn get_charset(charset: **c::char) boolean;
export @symbol("g_get_codeset") fn get_codeset() *c::char;
export @symbol("g_get_console_charset") fn get_console_charset(charset: **c::char) boolean;
export @symbol("g_get_current_dir") fn get_current_dir() *c::char;
export @symbol("g_get_current_time") fn get_current_time(result: *TimeVal) void;
export @symbol("g_get_environ") fn get_environ() **c::char;
export @symbol("g_get_filename_charsets") fn get_filename_charsets(filename_charsets: ***c::char) boolean;
export @symbol("g_get_home_dir") fn get_home_dir() *c::char;
export @symbol("g_get_host_name") fn get_host_name() *c::char;
export @symbol("g_get_language_names") fn get_language_names() **c::char;
export @symbol("g_get_language_names_with_category") fn get_language_names_with_category(category_name: *c::char) **c::char;
export @symbol("g_get_locale_variants") fn get_locale_variants(locale: *c::char) **c::char;
export @symbol("g_get_monotonic_time") fn get_monotonic_time() i64;
export @symbol("g_get_num_processors") fn get_num_processors() uint;
export @symbol("g_get_os_info") fn get_os_info(key_name: *c::char) *c::char;
export @symbol("g_get_prgname") fn get_prgname() *c::char;
export @symbol("g_get_real_name") fn get_real_name() *c::char;
export @symbol("g_get_real_time") fn get_real_time() i64;
export @symbol("g_get_system_config_dirs") fn get_system_config_dirs() **c::char;
export @symbol("g_get_system_data_dirs") fn get_system_data_dirs() **c::char;
export @symbol("g_get_tmp_dir") fn get_tmp_dir() *c::char;
export @symbol("g_get_user_cache_dir") fn get_user_cache_dir() *c::char;
export @symbol("g_get_user_config_dir") fn get_user_config_dir() *c::char;
export @symbol("g_get_user_data_dir") fn get_user_data_dir() *c::char;
export @symbol("g_get_user_name") fn get_user_name() *c::char;
export @symbol("g_get_user_runtime_dir") fn get_user_runtime_dir() *c::char;
export @symbol("g_get_user_special_dir") fn get_user_special_dir(directory: UserDirectory) *c::char;
export @symbol("g_get_user_state_dir") fn get_user_state_dir() *c::char;
export @symbol("g_getenv") fn getenv(variable: *c::char) *c::char;
export @symbol("g_hostname_is_ascii_encoded") fn hostname_is_ascii_encoded(hostname: *c::char) boolean;
export @symbol("g_hostname_is_ip_address") fn hostname_is_ip_address(hostname: *c::char) boolean;
export @symbol("g_hostname_is_non_ascii") fn hostname_is_non_ascii(hostname: *c::char) boolean;
export @symbol("g_hostname_to_ascii") fn hostname_to_ascii(hostname: *c::char) *c::char;
export @symbol("g_hostname_to_unicode") fn hostname_to_unicode(hostname: *c::char) *c::char;
export @symbol("g_idle_add") fn idle_add(function: SourceFunc, data: *opaque) uint;
export @symbol("g_idle_add_full") fn idle_add_full(priority: int, function: SourceFunc, data: *opaque, notify: DestroyNotify) uint;
export @symbol("g_idle_add_once") fn idle_add_once(function: SourceOnceFunc, data: *opaque) uint;
export @symbol("g_idle_remove_by_data") fn idle_remove_by_data(data: *opaque) boolean;
export @symbol("g_idle_source_new") fn idle_source_new() *Source;
export @symbol("g_int64_equal") fn int64_equal(v1: *opaque, v2: *opaque) boolean;
export @symbol("g_int64_hash") fn int64_hash(v: *opaque) uint;
export @symbol("g_int_equal") fn int_equal(v1: *opaque, v2: *opaque) boolean;
export @symbol("g_int_hash") fn int_hash(v: *opaque) uint;
export @symbol("g_intern_static_string") fn intern_static_string(string: *c::char) *c::char;
export @symbol("g_intern_string") fn intern_string(string: *c::char) *c::char;
export @symbol("g_io_add_watch") fn io_add_watch(channel: *IOChannel, condition: IOCondition, func: IOFunc, user_data: *opaque) uint;
export @symbol("g_io_add_watch_full") fn io_add_watch_full(channel: *IOChannel, priority: int, condition: IOCondition, func: IOFunc, user_data: *opaque, notify: DestroyNotify) uint;
export @symbol("g_io_create_watch") fn io_create_watch(channel: *IOChannel, condition: IOCondition) *Source;
export @symbol("g_listenv") fn listenv() **c::char;
export @symbol("g_locale_from_utf8") fn locale_from_utf8(utf8string: *c::char, len_: c::ssize, bytes_read: *size, bytes_written: *size, error: nullable **Error) *c::char;
export @symbol("g_locale_to_utf8") fn locale_to_utf8(opsysstring: *c::char, len_: c::ssize, bytes_read: *size, bytes_written: *size, error: nullable **Error) *c::char;
export @symbol("g_log") fn log(log_domain: *c::char, log_level: LogLevelFlags, format: *c::char, ...) void;
export @symbol("g_log_default_handler") fn log_default_handler(log_domain: *c::char, log_level: LogLevelFlags, message: *c::char, unused_data: *opaque) void;
export @symbol("g_log_get_debug_enabled") fn log_get_debug_enabled() boolean;
export @symbol("g_log_remove_handler") fn log_remove_handler(log_domain: *c::char, handler_id: uint) void;
export @symbol("g_log_set_always_fatal") fn log_set_always_fatal(fatal_mask: LogLevelFlags) LogLevelFlags;
export @symbol("g_log_set_debug_enabled") fn log_set_debug_enabled(enabled: boolean) void;
export @symbol("g_log_set_default_handler") fn log_set_default_handler(log_func: LogFunc, user_data: *opaque) LogFunc;
export @symbol("g_log_set_fatal_mask") fn log_set_fatal_mask(log_domain: *c::char, fatal_mask: LogLevelFlags) LogLevelFlags;
export @symbol("g_log_set_handler") fn log_set_handler(log_domain: *c::char, log_levels: LogLevelFlags, log_func: LogFunc, user_data: *opaque) uint;
export @symbol("g_log_set_handler_full") fn log_set_handler_full(log_domain: *c::char, log_levels: LogLevelFlags, log_func: LogFunc, user_data: *opaque, destroy: DestroyNotify) uint;
export @symbol("g_log_set_writer_func") fn log_set_writer_func(func: LogWriterFunc, user_data: *opaque, user_data_free: DestroyNotify) void;
export @symbol("g_log_structured") fn log_structured(log_domain: *c::char, log_level: LogLevelFlags, ...) void;
export @symbol("g_log_structured_array") fn log_structured_array(log_level: LogLevelFlags, fields: *LogField, n_fields: size) void;
export @symbol("g_log_structured_standard") fn log_structured_standard(log_domain: *c::char, log_level: LogLevelFlags, file: *c::char, line: *c::char, func: *c::char, message_format: *c::char, ...) void;
export @symbol("g_log_variant") fn log_variant(log_domain: *c::char, log_level: LogLevelFlags, fields: *Variant) void;
export @symbol("g_log_writer_default") fn log_writer_default(log_level: LogLevelFlags, fields: *LogField, n_fields: size, user_data: *opaque) LogWriterOutput;
export @symbol("g_log_writer_default_set_use_stderr") fn log_writer_default_set_use_stderr(use_stderr: boolean) void;
export @symbol("g_log_writer_default_would_drop") fn log_writer_default_would_drop(log_level: LogLevelFlags, log_domain: *c::char) boolean;
export @symbol("g_log_writer_format_fields") fn log_writer_format_fields(log_level: LogLevelFlags, fields: *LogField, n_fields: size, use_color: boolean) *c::char;
export @symbol("g_log_writer_is_journald") fn log_writer_is_journald(output_fd: int) boolean;
export @symbol("g_log_writer_journald") fn log_writer_journald(log_level: LogLevelFlags, fields: *LogField, n_fields: size, user_data: *opaque) LogWriterOutput;
export @symbol("g_log_writer_standard_streams") fn log_writer_standard_streams(log_level: LogLevelFlags, fields: *LogField, n_fields: size, user_data: *opaque) LogWriterOutput;
export @symbol("g_log_writer_supports_color") fn log_writer_supports_color(output_fd: int) boolean;
export @symbol("g_logv") fn logv(log_domain: *c::char, log_level: LogLevelFlags, format: *c::char, args: valist) void;
export @symbol("g_main_current_source") fn main_current_source() *Source;
export @symbol("g_main_depth") fn main_depth() int;
export @symbol("g_malloc") fn malloc(n_bytes: size) *opaque;
export @symbol("g_malloc0") fn malloc0(n_bytes: size) *opaque;
export @symbol("g_malloc0_n") fn malloc0_n(n_blocks: size, n_block_bytes: size) *opaque;
export @symbol("g_malloc_n") fn malloc_n(n_blocks: size, n_block_bytes: size) *opaque;
export @symbol("g_markup_collect_attributes") fn markup_collect_attributes(element_name: *c::char, attribute_names: **c::char, attribute_values: **c::char, error: **Error, first_type: MarkupCollectType, first_attr: *c::char, ...) boolean;
export @symbol("g_markup_error_quark") fn markup_error_quark() Quark;
export @symbol("g_markup_escape_text") fn markup_escape_text(text: *c::char, length: c::ssize) *c::char;
export @symbol("g_markup_printf_escaped") fn markup_printf_escaped(format: *c::char, ...) *c::char;
export @symbol("g_markup_vprintf_escaped") fn markup_vprintf_escaped(format: *c::char, args: valist) *c::char;
export @symbol("g_mem_is_system_malloc") fn mem_is_system_malloc() boolean;
export @symbol("g_mem_profile") fn mem_profile() void;
export @symbol("g_mem_set_vtable") fn mem_set_vtable(vtable: *MemVTable) void;
export @symbol("g_memdup") fn memdup(mem: *opaque, byte_size: uint) *opaque;
export @symbol("g_memdup2") fn memdup2(mem: *opaque, byte_size: size) *opaque;
export @symbol("g_mkdir_with_parents") fn mkdir_with_parents(pathname: *c::char, mode: int) int;
export @symbol("g_mkdtemp") fn mkdtemp(tmpl: *c::char) *c::char;
export @symbol("g_mkdtemp_full") fn mkdtemp_full(tmpl: *c::char, mode: int) *c::char;
export @symbol("g_mkstemp") fn mkstemp(tmpl: *c::char) int;
export @symbol("g_mkstemp_full") fn mkstemp_full(tmpl: *c::char, flags: int, mode: int) int;
export @symbol("g_nullify_pointer") fn nullify_pointer(nullify_location: **opaque) void;
export @symbol("g_number_parser_error_quark") fn number_parser_error_quark() Quark;
export @symbol("g_on_error_query") fn on_error_query(prg_name: *c::char) void;
export @symbol("g_on_error_stack_trace") fn on_error_stack_trace(prg_name: *c::char) void;
export @symbol("g_option_error_quark") fn option_error_quark() Quark;
export @symbol("g_parse_debug_string") fn parse_debug_string(string: *c::char, keys: *DebugKey, nkeys: uint) uint;
export @symbol("g_path_get_basename") fn path_get_basename(file_name: *c::char) *c::char;
export @symbol("g_path_get_dirname") fn path_get_dirname(file_name: *c::char) *c::char;
export @symbol("g_path_is_absolute") fn path_is_absolute(file_name: *c::char) boolean;
export @symbol("g_path_skip_root") fn path_skip_root(file_name: *c::char) *c::char;
export @symbol("g_pattern_match") fn pattern_match(pspec: *PatternSpec, string_length: uint, string: *c::char, string_reversed: *c::char) boolean;
export @symbol("g_pattern_match_simple") fn pattern_match_simple(pattern: *c::char, string: *c::char) boolean;
export @symbol("g_pattern_match_string") fn pattern_match_string(pspec: *PatternSpec, string: *c::char) boolean;
export @symbol("g_pointer_bit_lock") fn pointer_bit_lock(address: *opaque, lock_bit: int) void;
export @symbol("g_pointer_bit_trylock") fn pointer_bit_trylock(address: *opaque, lock_bit: int) boolean;
export @symbol("g_pointer_bit_unlock") fn pointer_bit_unlock(address: *opaque, lock_bit: int) void;
export @symbol("g_poll") fn poll(fds: *PollFD, nfds: uint, timeout: int) int;
export @symbol("g_prefix_error") fn prefix_error(err: **Error, format: *c::char, ...) void;
export @symbol("g_prefix_error_literal") fn prefix_error_literal(err: **Error, prefix: *c::char) void;
export @symbol("g_print") fn print(format: *c::char, ...) void;
export @symbol("g_printerr") fn printerr(format: *c::char, ...) void;
export @symbol("g_printf") fn printf(format: *c::char, ...) int;
export @symbol("g_printf_string_upper_bound") fn printf_string_upper_bound(format: *c::char, args: valist) size;
export @symbol("g_propagate_error") fn propagate_error(dest: **Error, src: *Error) void;
export @symbol("g_propagate_prefixed_error") fn propagate_prefixed_error(dest: **Error, src: *Error, format: *c::char, ...) void;
export @symbol("g_qsort_with_data") fn qsort_with_data(pbase: *opaque, total_elems: int, size_: size, compare_func: CompareDataFunc, user_data: *opaque) void;
export @symbol("g_quark_from_static_string") fn quark_from_static_string(string: *c::char) Quark;
export @symbol("g_quark_from_string") fn quark_from_string(string: *c::char) Quark;
export @symbol("g_quark_to_string") fn quark_to_string(quark: Quark) *c::char;
export @symbol("g_quark_try_string") fn quark_try_string(string: *c::char) Quark;
export @symbol("g_random_double") fn random_double() f64;
export @symbol("g_random_double_range") fn random_double_range(begin: f64, end: f64) f64;
export @symbol("g_random_int") fn random_int() u32;
export @symbol("g_random_int_range") fn random_int_range(begin: i32, end: i32) i32;
export @symbol("g_random_set_seed") fn random_set_seed(seed: u32) void;
export @symbol("g_rc_box_acquire") fn rc_box_acquire(mem_block: *opaque) *opaque;
export @symbol("g_rc_box_alloc") fn rc_box_alloc(block_size: size) *opaque;
export @symbol("g_rc_box_alloc0") fn rc_box_alloc0(block_size: size) *opaque;
export @symbol("g_rc_box_dup") fn rc_box_dup(block_size: size, mem_block: *opaque) *opaque;
export @symbol("g_rc_box_get_size") fn rc_box_get_size(mem_block: *opaque) size;
export @symbol("g_rc_box_release") fn rc_box_release(mem_block: *opaque) void;
export @symbol("g_rc_box_release_full") fn rc_box_release_full(mem_block: *opaque, clear_func: DestroyNotify) void;
export @symbol("g_realloc") fn realloc(mem: *opaque, n_bytes: size) *opaque;
export @symbol("g_realloc_n") fn realloc_n(mem: *opaque, n_blocks: size, n_block_bytes: size) *opaque;
export @symbol("g_ref_count_compare") fn ref_count_compare(rc: *uint, val: int) boolean;
export @symbol("g_ref_count_dec") fn ref_count_dec(rc: *uint) boolean;
export @symbol("g_ref_count_inc") fn ref_count_inc(rc: *uint) void;
export @symbol("g_ref_count_init") fn ref_count_init(rc: *uint) void;
export @symbol("g_ref_string_acquire") fn ref_string_acquire(str_: *c::char) *c::char;
export @symbol("g_ref_string_length") fn ref_string_length(str_: *c::char) size;
export @symbol("g_ref_string_new") fn ref_string_new(str_: *c::char) *c::char;
export @symbol("g_ref_string_new_intern") fn ref_string_new_intern(str_: *c::char) *c::char;
export @symbol("g_ref_string_new_len") fn ref_string_new_len(str_: *c::char, len_: c::ssize) *c::char;
export @symbol("g_ref_string_release") fn ref_string_release(str_: *c::char) void;
export @symbol("g_reload_user_special_dirs_cache") fn reload_user_special_dirs_cache() void;
export @symbol("g_return_if_fail_warning") fn return_if_fail_warning(log_domain: *c::char, pretty_function: *c::char, expression: *c::char) void;
export @symbol("g_rmdir") fn rmdir(filename: *c::char) int;
export @symbol("g_set_application_name") fn set_application_name(application_name: *c::char) void;
export @symbol("g_set_error") fn set_error(err: **Error, domain: Quark, code: int, format: *c::char, ...) void;
export @symbol("g_set_error_literal") fn set_error_literal(err: **Error, domain: Quark, code: int, message: *c::char) void;
export @symbol("g_set_prgname") fn set_prgname(prgname: *c::char) void;
export @symbol("g_set_print_handler") fn set_print_handler(func: PrintFunc) PrintFunc;
export @symbol("g_set_printerr_handler") fn set_printerr_handler(func: PrintFunc) PrintFunc;
export @symbol("g_setenv") fn setenv(variable: *c::char, value: *c::char, overwrite: boolean) boolean;
export @symbol("g_shell_error_quark") fn shell_error_quark() Quark;
export @symbol("g_shell_parse_argv") fn shell_parse_argv(command_line: *c::char, argcp: *int, argvp: ***c::char, error: nullable **Error) boolean;
export @symbol("g_shell_quote") fn shell_quote(unquoted_string: *c::char) *c::char;
export @symbol("g_shell_unquote") fn shell_unquote(quoted_string: *c::char, error: nullable **Error) *c::char;
export @symbol("g_slice_alloc") fn slice_alloc(block_size: size) *opaque;
export @symbol("g_slice_alloc0") fn slice_alloc0(block_size: size) *opaque;
export @symbol("g_slice_copy") fn slice_copy(block_size: size, mem_block: *opaque) *opaque;
export @symbol("g_slice_free1") fn slice_free1(block_size: size, mem_block: *opaque) void;
export @symbol("g_slice_free_chain_with_offset") fn slice_free_chain_with_offset(block_size: size, mem_chain: *opaque, next_offset: size) void;
export @symbol("g_slice_get_config") fn slice_get_config(ckey: SliceConfig) i64;
export @symbol("g_slice_get_config_state") fn slice_get_config_state(ckey: SliceConfig, address: i64, n_values: *uint) *i64;
export @symbol("g_slice_set_config") fn slice_set_config(ckey: SliceConfig, value: i64) void;
export @symbol("g_snprintf") fn snprintf(string: *c::char, n: c::ulong, format: *c::char, ...) int;
export @symbol("g_spaced_primes_closest") fn spaced_primes_closest(num: uint) uint;
export @symbol("g_spawn_async") fn spawn_async(working_directory: *c::char, argv: **c::char, envp: **c::char, flags: SpawnFlags, child_setup: SpawnChildSetupFunc, user_data: *opaque, child_pid: *Pid, error: nullable **Error) boolean;
export @symbol("g_spawn_async_with_fds") fn spawn_async_with_fds(working_directory: *c::char, argv: **c::char, envp: **c::char, flags: SpawnFlags, child_setup: SpawnChildSetupFunc, user_data: *opaque, child_pid: *Pid, stdin_fd: int, stdout_fd: int, stderr_fd: int, error: nullable **Error) boolean;
export @symbol("g_spawn_async_with_pipes") fn spawn_async_with_pipes(working_directory: *c::char, argv: **c::char, envp: **c::char, flags: SpawnFlags, child_setup: SpawnChildSetupFunc, user_data: *opaque, child_pid: *Pid, standard_input: *int, standard_output: *int, standard_error: *int, error: nullable **Error) boolean;
export @symbol("g_spawn_async_with_pipes_and_fds") fn spawn_async_with_pipes_and_fds(working_directory: *c::char, argv: **c::char, envp: **c::char, flags: SpawnFlags, child_setup: SpawnChildSetupFunc, user_data: *opaque, stdin_fd: int, stdout_fd: int, stderr_fd: int, source_fds: *int, target_fds: *int, n_fds: size, child_pid_out: *Pid, stdin_pipe_out: *int, stdout_pipe_out: *int, stderr_pipe_out: *int, error: nullable **Error) boolean;
export @symbol("g_spawn_check_exit_status") fn spawn_check_exit_status(wait_status: int, error: nullable **Error) boolean;
export @symbol("g_spawn_check_wait_status") fn spawn_check_wait_status(wait_status: int, error: nullable **Error) boolean;
export @symbol("g_spawn_close_pid") fn spawn_close_pid(pid: Pid) void;
export @symbol("g_spawn_command_line_async") fn spawn_command_line_async(command_line: *c::char, error: nullable **Error) boolean;
export @symbol("g_spawn_command_line_sync") fn spawn_command_line_sync(command_line: *c::char, standard_output: **c::char, standard_error: **c::char, wait_status: *int, error: nullable **Error) boolean;
export @symbol("g_spawn_error_quark") fn spawn_error_quark() Quark;
export @symbol("g_spawn_exit_error_quark") fn spawn_exit_error_quark() Quark;
export @symbol("g_spawn_sync") fn spawn_sync(working_directory: *c::char, argv: **c::char, envp: **c::char, flags: SpawnFlags, child_setup: SpawnChildSetupFunc, user_data: *opaque, standard_output: **c::char, standard_error: **c::char, wait_status: *int, error: nullable **Error) boolean;
export @symbol("g_sprintf") fn sprintf(string: *c::char, format: *c::char, ...) int;
export @symbol("g_stpcpy") fn stpcpy(dest: *c::char, src: *c::char) *c::char;
export @symbol("g_str_equal") fn str_equal(v1: *opaque, v2: *opaque) boolean;
export @symbol("g_str_has_prefix") fn str_has_prefix(str_: *c::char, prefix: *c::char) boolean;
export @symbol("g_str_has_suffix") fn str_has_suffix(str_: *c::char, suffix: *c::char) boolean;
export @symbol("g_str_hash") fn str_hash(v: *opaque) uint;
export @symbol("g_str_is_ascii") fn str_is_ascii(str_: *c::char) boolean;
export @symbol("g_str_match_string") fn str_match_string(search_term: *c::char, potential_hit: *c::char, accept_alternates: boolean) boolean;
export @symbol("g_str_to_ascii") fn str_to_ascii(str_: *c::char, from_locale: *c::char) *c::char;
export @symbol("g_str_tokenize_and_fold") fn str_tokenize_and_fold(string: *c::char, translit_locale: *c::char, ascii_alternates: ***c::char) **c::char;
export @symbol("g_strcanon") fn strcanon(string: *c::char, valid_chars: *c::char, substitutor: c::char) *c::char;
export @symbol("g_strcasecmp") fn strcasecmp(s1: *c::char, s2: *c::char) int;
export @symbol("g_strchomp") fn strchomp(string: *c::char) *c::char;
export @symbol("g_strchug") fn strchug(string: *c::char) *c::char;
export @symbol("g_strcmp0") fn strcmp0(str1: *c::char, str2: *c::char) int;
export @symbol("g_strcompress") fn strcompress(source: *c::char) *c::char;
export @symbol("g_strconcat") fn strconcat(string1: *c::char, ...) *c::char;
export @symbol("g_strdelimit") fn strdelimit(string: *c::char, delimiters: *c::char, new_delimiter: c::char) *c::char;
export @symbol("g_strdown") fn strdown(string: *c::char) *c::char;
export @symbol("g_strdup") fn strdup(str_: *c::char) *c::char;
export @symbol("g_strdup_printf") fn strdup_printf(format: *c::char, ...) *c::char;
export @symbol("g_strdup_vprintf") fn strdup_vprintf(format: *c::char, args: valist) *c::char;
export @symbol("g_strdupv") fn strdupv(str_array: **c::char) **c::char;
export @symbol("g_strerror") fn strerror(errnum: int) *c::char;
export @symbol("g_strescape") fn strescape(source: *c::char, exceptions: *c::char) *c::char;
export @symbol("g_strfreev") fn strfreev(str_array: **c::char) void;
export @symbol("g_strip_context") fn strip_context(msgid: *c::char, msgval: *c::char) *c::char;
export @symbol("g_strjoin") fn strjoin(separator: *c::char, ...) *c::char;
export @symbol("g_strjoinv") fn strjoinv(separator: *c::char, str_array: **c::char) *c::char;
export @symbol("g_strlcat") fn strlcat(dest: *c::char, src: *c::char, dest_size: size) size;
export @symbol("g_strlcpy") fn strlcpy(dest: *c::char, src: *c::char, dest_size: size) size;
export @symbol("g_strncasecmp") fn strncasecmp(s1: *c::char, s2: *c::char, n: uint) int;
export @symbol("g_strndup") fn strndup(str_: *c::char, n: size) *c::char;
export @symbol("g_strnfill") fn strnfill(length: size, fill_char: c::char) *c::char;
export @symbol("g_strreverse") fn strreverse(string: *c::char) *c::char;
export @symbol("g_strrstr") fn strrstr(haystack: *c::char, needle: *c::char) *c::char;
export @symbol("g_strrstr_len") fn strrstr_len(haystack: *c::char, haystack_len: c::ssize, needle: *c::char) *c::char;
export @symbol("g_strsignal") fn strsignal(signum: int) *c::char;
export @symbol("g_strsplit") fn strsplit(string: *c::char, delimiter: *c::char, max_tokens: int) **c::char;
export @symbol("g_strsplit_set") fn strsplit_set(string: *c::char, delimiters: *c::char, max_tokens: int) **c::char;
export @symbol("g_strstr_len") fn strstr_len(haystack: *c::char, haystack_len: c::ssize, needle: *c::char) *c::char;
export @symbol("g_strtod") fn strtod(nptr: *c::char, endptr: **c::char) f64;
export @symbol("g_strup") fn strup(string: *c::char) *c::char;
export @symbol("g_strv_contains") fn strv_contains(strv: **c::char, str_: *c::char) boolean;
export @symbol("g_strv_equal") fn strv_equal(strv1: **c::char, strv2: **c::char) boolean;
export @symbol("g_strv_get_type") fn strv_get_type() Type;
export @symbol("g_strv_length") fn strv_length(str_array: **c::char) uint;
export @symbol("g_test_add_data_func") fn test_add_data_func(testpath: *c::char, test_data: *opaque, test_func: TestDataFunc) void;
export @symbol("g_test_add_data_func_full") fn test_add_data_func_full(testpath: *c::char, test_data: *opaque, test_func: TestDataFunc, data_free_func: DestroyNotify) void;
export @symbol("g_test_add_func") fn test_add_func(testpath: *c::char, test_func: TestFunc) void;
export @symbol("g_test_add_vtable") fn test_add_vtable(testpath: *c::char, data_size: size, test_data: *opaque, data_setup: TestFixtureFunc, data_test: TestFixtureFunc, data_teardown: TestFixtureFunc) void;
export @symbol("g_test_assert_expected_messages_internal") fn test_assert_expected_messages_internal(domain: *c::char, file: *c::char, line: int, func: *c::char) void;
export @symbol("g_test_bug") fn test_bug(bug_uri_snippet: *c::char) void;
export @symbol("g_test_bug_base") fn test_bug_base(uri_pattern: *c::char) void;
export @symbol("g_test_build_filename") fn test_build_filename(file_type: TestFileType, first_path: *c::char, ...) *c::char;
export @symbol("g_test_create_case") fn test_create_case(test_name: *c::char, data_size: size, test_data: *opaque, data_setup: TestFixtureFunc, data_test: TestFixtureFunc, data_teardown: TestFixtureFunc) *TestCase;
export @symbol("g_test_create_suite") fn test_create_suite(suite_name: *c::char) *TestSuite;
export @symbol("g_test_disable_crash_reporting") fn test_disable_crash_reporting() void;
export @symbol("g_test_expect_message") fn test_expect_message(log_domain: *c::char, log_level: LogLevelFlags, pattern: *c::char) void;
export @symbol("g_test_fail") fn test_fail() void;
export @symbol("g_test_fail_printf") fn test_fail_printf(format: *c::char, ...) void;
export @symbol("g_test_failed") fn test_failed() boolean;
export @symbol("g_test_get_dir") fn test_get_dir(file_type: TestFileType) *c::char;
export @symbol("g_test_get_filename") fn test_get_filename(file_type: TestFileType, first_path: *c::char, ...) *c::char;
export @symbol("g_test_get_path") fn test_get_path() *c::char;
export @symbol("g_test_get_root") fn test_get_root() *TestSuite;
export @symbol("g_test_incomplete") fn test_incomplete(msg: *c::char) void;
export @symbol("g_test_incomplete_printf") fn test_incomplete_printf(format: *c::char, ...) void;
export @symbol("g_test_init") fn test_init(argc: *int, argv: ***c::char, ...) void;
export @symbol("g_test_log_set_fatal_handler") fn test_log_set_fatal_handler(log_func: TestLogFatalFunc, user_data: *opaque) void;
export @symbol("g_test_log_type_name") fn test_log_type_name(log_type: TestLogType) *c::char;
export @symbol("g_test_maximized_result") fn test_maximized_result(maximized_quantity: f64, format: *c::char, ...) void;
export @symbol("g_test_message") fn test_message(format: *c::char, ...) void;
export @symbol("g_test_minimized_result") fn test_minimized_result(minimized_quantity: f64, format: *c::char, ...) void;
export @symbol("g_test_queue_destroy") fn test_queue_destroy(destroy_func: DestroyNotify, destroy_data: *opaque) void;
export @symbol("g_test_queue_free") fn test_queue_free(gfree_pointer: *opaque) void;
export @symbol("g_test_rand_double") fn test_rand_double() f64;
export @symbol("g_test_rand_double_range") fn test_rand_double_range(range_start: f64, range_end: f64) f64;
export @symbol("g_test_rand_int") fn test_rand_int() i32;
export @symbol("g_test_rand_int_range") fn test_rand_int_range(begin: i32, end: i32) i32;
export @symbol("g_test_run") fn test_run() int;
export @symbol("g_test_run_suite") fn test_run_suite(suite: *TestSuite) int;
export @symbol("g_test_set_nonfatal_assertions") fn test_set_nonfatal_assertions() void;
export @symbol("g_test_skip") fn test_skip(msg: *c::char) void;
export @symbol("g_test_skip_printf") fn test_skip_printf(format: *c::char, ...) void;
export @symbol("g_test_subprocess") fn test_subprocess() boolean;
export @symbol("g_test_summary") fn test_summary(summary: *c::char) void;
export @symbol("g_test_timer_elapsed") fn test_timer_elapsed() f64;
export @symbol("g_test_timer_last") fn test_timer_last() f64;
export @symbol("g_test_timer_start") fn test_timer_start() void;
export @symbol("g_test_trap_assertions") fn test_trap_assertions(domain: *c::char, file: *c::char, line: int, func: *c::char, assertion_flags: u64, pattern: *c::char) void;
export @symbol("g_test_trap_fork") fn test_trap_fork(usec_timeout: u64, test_trap_flags: TestTrapFlags) boolean;
export @symbol("g_test_trap_has_passed") fn test_trap_has_passed() boolean;
export @symbol("g_test_trap_reached_timeout") fn test_trap_reached_timeout() boolean;
export @symbol("g_test_trap_subprocess") fn test_trap_subprocess(test_path: *c::char, usec_timeout: u64, test_flags: TestSubprocessFlags) void;
export @symbol("g_timeout_add") fn timeout_add(interval: uint, function: SourceFunc, data: *opaque) uint;
export @symbol("g_timeout_add_full") fn timeout_add_full(priority: int, interval: uint, function: SourceFunc, data: *opaque, notify: DestroyNotify) uint;
export @symbol("g_timeout_add_once") fn timeout_add_once(interval: uint, function: SourceOnceFunc, data: *opaque) uint;
export @symbol("g_timeout_add_seconds") fn timeout_add_seconds(interval: uint, function: SourceFunc, data: *opaque) uint;
export @symbol("g_timeout_add_seconds_full") fn timeout_add_seconds_full(priority: int, interval: uint, function: SourceFunc, data: *opaque, notify: DestroyNotify) uint;
export @symbol("g_timeout_add_seconds_once") fn timeout_add_seconds_once(interval: uint, function: SourceOnceFunc, data: *opaque) uint;
export @symbol("g_timeout_source_new") fn timeout_source_new(interval: uint) *Source;
export @symbol("g_timeout_source_new_seconds") fn timeout_source_new_seconds(interval: uint) *Source;
export @symbol("g_try_malloc") fn try_malloc(n_bytes: size) *opaque;
export @symbol("g_try_malloc0") fn try_malloc0(n_bytes: size) *opaque;
export @symbol("g_try_malloc0_n") fn try_malloc0_n(n_blocks: size, n_block_bytes: size) *opaque;
export @symbol("g_try_malloc_n") fn try_malloc_n(n_blocks: size, n_block_bytes: size) *opaque;
export @symbol("g_try_realloc") fn try_realloc(mem: *opaque, n_bytes: size) *opaque;
export @symbol("g_try_realloc_n") fn try_realloc_n(mem: *opaque, n_blocks: size, n_block_bytes: size) *opaque;
export @symbol("g_ucs4_to_utf16") fn ucs4_to_utf16(str_: *rune, len_: c::long, items_read: *c::long, items_written: *c::long, error: nullable **Error) *u16;
export @symbol("g_ucs4_to_utf8") fn ucs4_to_utf8(str_: *rune, len_: c::long, items_read: *c::long, items_written: *c::long, error: nullable **Error) *c::char;
export @symbol("g_unichar_break_type") fn unichar_break_type(c: rune) UnicodeBreakType;
export @symbol("g_unichar_combining_class") fn unichar_combining_class(uc: rune) int;
export @symbol("g_unichar_compose") fn unichar_compose(a: rune, b: rune, ch: *rune) boolean;
export @symbol("g_unichar_decompose") fn unichar_decompose(ch: rune, a: *rune, b: *rune) boolean;
export @symbol("g_unichar_digit_value") fn unichar_digit_value(c: rune) int;
export @symbol("g_unichar_fully_decompose") fn unichar_fully_decompose(ch: rune, compat: boolean, result: *rune, result_len: size) size;
export @symbol("g_unichar_get_mirror_char") fn unichar_get_mirror_char(ch: rune, mirrored_ch: *rune) boolean;
export @symbol("g_unichar_get_script") fn unichar_get_script(ch: rune) UnicodeScript;
export @symbol("g_unichar_isalnum") fn unichar_isalnum(c: rune) boolean;
export @symbol("g_unichar_isalpha") fn unichar_isalpha(c: rune) boolean;
export @symbol("g_unichar_iscntrl") fn unichar_iscntrl(c: rune) boolean;
export @symbol("g_unichar_isdefined") fn unichar_isdefined(c: rune) boolean;
export @symbol("g_unichar_isdigit") fn unichar_isdigit(c: rune) boolean;
export @symbol("g_unichar_isgraph") fn unichar_isgraph(c: rune) boolean;
export @symbol("g_unichar_islower") fn unichar_islower(c: rune) boolean;
export @symbol("g_unichar_ismark") fn unichar_ismark(c: rune) boolean;
export @symbol("g_unichar_isprint") fn unichar_isprint(c: rune) boolean;
export @symbol("g_unichar_ispunct") fn unichar_ispunct(c: rune) boolean;
export @symbol("g_unichar_isspace") fn unichar_isspace(c: rune) boolean;
export @symbol("g_unichar_istitle") fn unichar_istitle(c: rune) boolean;
export @symbol("g_unichar_isupper") fn unichar_isupper(c: rune) boolean;
export @symbol("g_unichar_iswide") fn unichar_iswide(c: rune) boolean;
export @symbol("g_unichar_iswide_cjk") fn unichar_iswide_cjk(c: rune) boolean;
export @symbol("g_unichar_isxdigit") fn unichar_isxdigit(c: rune) boolean;
export @symbol("g_unichar_iszerowidth") fn unichar_iszerowidth(c: rune) boolean;
export @symbol("g_unichar_to_utf8") fn unichar_to_utf8(c: rune, outbuf: *c::char) int;
export @symbol("g_unichar_tolower") fn unichar_tolower(c: rune) rune;
export @symbol("g_unichar_totitle") fn unichar_totitle(c: rune) rune;
export @symbol("g_unichar_toupper") fn unichar_toupper(c: rune) rune;
export @symbol("g_unichar_type") fn unichar_type(c: rune) UnicodeType;
export @symbol("g_unichar_validate") fn unichar_validate(ch: rune) boolean;
export @symbol("g_unichar_xdigit_value") fn unichar_xdigit_value(c: rune) int;
export @symbol("g_unicode_canonical_decomposition") fn unicode_canonical_decomposition(ch: rune, result_len: *size) *rune;
export @symbol("g_unicode_canonical_ordering") fn unicode_canonical_ordering(string: *rune, len_: size) void;
export @symbol("g_unicode_script_from_iso15924") fn unicode_script_from_iso15924(iso15924: u32) UnicodeScript;
export @symbol("g_unicode_script_to_iso15924") fn unicode_script_to_iso15924(script: UnicodeScript) u32;
export @symbol("g_unix_error_quark") fn unix_error_quark() Quark;
export @symbol("g_unix_fd_add") fn unix_fd_add(fd: int, condition: IOCondition, function: UnixFDSourceFunc, user_data: *opaque) uint;
export @symbol("g_unix_fd_add_full") fn unix_fd_add_full(priority: int, fd: int, condition: IOCondition, function: UnixFDSourceFunc, user_data: *opaque, notify: DestroyNotify) uint;
export @symbol("g_unix_fd_source_new") fn unix_fd_source_new(fd: int, condition: IOCondition) *Source;
export @symbol("g_unix_get_passwd_entry") fn unix_get_passwd_entry(user_name: *c::char, error: nullable **Error) *libc::passwd;
export @symbol("g_unix_open_pipe") fn unix_open_pipe(fds: [2]int, flags: int, error: nullable **Error) boolean;
export @symbol("g_unix_set_fd_nonblocking") fn unix_set_fd_nonblocking(fd: int, nonblock: boolean, error: nullable **Error) boolean;
export @symbol("g_unix_signal_add") fn unix_signal_add(signum: int, handler: SourceFunc, user_data: *opaque) uint;
export @symbol("g_unix_signal_add_full") fn unix_signal_add_full(priority: int, signum: int, handler: SourceFunc, user_data: *opaque, notify: DestroyNotify) uint;
export @symbol("g_unix_signal_source_new") fn unix_signal_source_new(signum: int) *Source;
export @symbol("g_unlink") fn unlink(filename: *c::char) int;
export @symbol("g_unsetenv") fn unsetenv(variable: *c::char) void;
export @symbol("g_usleep") fn usleep(microseconds: c::ulong) void;
export @symbol("g_utf16_to_ucs4") fn utf16_to_ucs4(str_: *u16, len_: c::long, items_read: *c::long, items_written: *c::long, error: nullable **Error) *rune;
export @symbol("g_utf16_to_utf8") fn utf16_to_utf8(str_: *u16, len_: c::long, items_read: *c::long, items_written: *c::long, error: nullable **Error) *c::char;
export @symbol("g_utf8_casefold") fn utf8_casefold(str_: *c::char, len_: c::ssize) *c::char;
export @symbol("g_utf8_collate") fn utf8_collate(str1: *c::char, str2: *c::char) int;
export @symbol("g_utf8_collate_key") fn utf8_collate_key(str_: *c::char, len_: c::ssize) *c::char;
export @symbol("g_utf8_collate_key_for_filename") fn utf8_collate_key_for_filename(str_: *c::char, len_: c::ssize) *c::char;
export @symbol("g_utf8_find_next_char") fn utf8_find_next_char(p: *c::char, end: *c::char) *c::char;
export @symbol("g_utf8_find_prev_char") fn utf8_find_prev_char(str_: *c::char, p: *c::char) *c::char;
export @symbol("g_utf8_get_char") fn utf8_get_char(p: *c::char) rune;
export @symbol("g_utf8_get_char_validated") fn utf8_get_char_validated(p: *c::char, max_len: c::ssize) rune;
export @symbol("g_utf8_make_valid") fn utf8_make_valid(str_: *c::char, len_: c::ssize) *c::char;
export @symbol("g_utf8_normalize") fn utf8_normalize(str_: *c::char, len_: c::ssize, mode: NormalizeMode) *c::char;
export @symbol("g_utf8_offset_to_pointer") fn utf8_offset_to_pointer(str_: *c::char, offset_: c::long) *c::char;
export @symbol("g_utf8_pointer_to_offset") fn utf8_pointer_to_offset(str_: *c::char, pos: *c::char) c::long;
export @symbol("g_utf8_prev_char") fn utf8_prev_char(p: *c::char) *c::char;
export @symbol("g_utf8_strchr") fn utf8_strchr(p: *c::char, len_: c::ssize, c: rune) *c::char;
export @symbol("g_utf8_strdown") fn utf8_strdown(str_: *c::char, len_: c::ssize) *c::char;
export @symbol("g_utf8_strlen") fn utf8_strlen(p: *c::char, max: c::ssize) c::long;
export @symbol("g_utf8_strncpy") fn utf8_strncpy(dest: *c::char, src: *c::char, n: size) *c::char;
export @symbol("g_utf8_strrchr") fn utf8_strrchr(p: *c::char, len_: c::ssize, c: rune) *c::char;
export @symbol("g_utf8_strreverse") fn utf8_strreverse(str_: *c::char, len_: c::ssize) *c::char;
export @symbol("g_utf8_strup") fn utf8_strup(str_: *c::char, len_: c::ssize) *c::char;
export @symbol("g_utf8_substring") fn utf8_substring(str_: *c::char, start_pos: c::long, end_pos: c::long) *c::char;
export @symbol("g_utf8_to_ucs4") fn utf8_to_ucs4(str_: *c::char, len_: c::long, items_read: *c::long, items_written: *c::long, error: nullable **Error) *rune;
export @symbol("g_utf8_to_ucs4_fast") fn utf8_to_ucs4_fast(str_: *c::char, len_: c::long, items_written: *c::long) *rune;
export @symbol("g_utf8_to_utf16") fn utf8_to_utf16(str_: *c::char, len_: c::long, items_read: *c::long, items_written: *c::long, error: nullable **Error) *u16;
export @symbol("g_utf8_truncate_middle") fn utf8_truncate_middle(string: *c::char, truncate_length: size) *c::char;
export @symbol("g_utf8_validate") fn utf8_validate(str_: *c::char, max_len: c::ssize, end: **c::char) boolean;
export @symbol("g_utf8_validate_len") fn utf8_validate_len(str_: *c::char, max_len: size, end: **c::char) boolean;
export @symbol("g_uuid_string_is_valid") fn uuid_string_is_valid(str_: *c::char) boolean;
export @symbol("g_uuid_string_random") fn uuid_string_random() *c::char;
export @symbol("g_variant_get_gtype") fn variant_get_gtype() Type;
export @symbol("g_vasprintf") fn vasprintf(string: **c::char, format: *c::char, args: valist) int;
export @symbol("g_vfprintf") fn vfprintf(file: *libc::FILE, format: *c::char, args: valist) int;
export @symbol("g_vprintf") fn vprintf(format: *c::char, args: valist) int;
export @symbol("g_vsnprintf") fn vsnprintf(string: *c::char, n: c::ulong, format: *c::char, args: valist) int;
export @symbol("g_vsprintf") fn vsprintf(string: *c::char, format: *c::char, args: valist) int;
export @symbol("g_warn_message") fn warn_message(domain: *c::char, file: *c::char, line: int, func: *c::char, warnexpr: *c::char) void;
export type DoubleIEEE754 = union {
	v_double: f64,
	mpn: struct {
	mantissa_low: uint,
	mantissa_high: uint,
	biased_exponent: uint,
	sign: uint,
},
};
export type FloatIEEE754 = union {
	v_float: f32,
	mpn: struct {
	mantissa: uint,
	biased_exponent: uint,
	sign: uint,
},
};
export type Mutex = union {
	p: *opaque,
	i: [2]uint,
};
export @symbol("g_mutex_clear") fn mutex_clear(mutex: *Mutex) void;
export @symbol("g_mutex_init") fn mutex_init(mutex: *Mutex) void;
export @symbol("g_mutex_lock") fn mutex_lock(mutex: *Mutex) void;
export @symbol("g_mutex_trylock") fn mutex_trylock(mutex: *Mutex) boolean;
export @symbol("g_mutex_unlock") fn mutex_unlock(mutex: *Mutex) void;
export type TokenValue = union {
	v_symbol: *opaque,
	v_identifier: *c::char,
	v_binary: c::ulong,
	v_octal: c::ulong,
	v_int: c::ulong,
	v_int64: u64,
	v_float: f64,
	v_hex: c::ulong,
	v_string: *c::char,
	v_comment: *c::char,
	v_char: c::uchar,
	v_error: uint,
};
export type AsciiType = enum uint {
	ALNUM = 1,
	ALPHA = 2,
	CNTRL = 4,
	DIGIT = 8,
	GRAPH = 16,
	LOWER = 32,
	PRINT = 64,
	PUNCT = 128,
	SPACE = 256,
	UPPER = 512,
	XDIGIT = 1024,
};
export type FileSetContentsFlags = enum uint {
	NONE = 0,
	CONSISTENT = 1,
	DURABLE = 2,
	ONLY_EXISTING = 4,
};
export type FileTest = enum uint {
	IS_REGULAR = 1,
	IS_SYMLINK = 2,
	IS_DIR = 4,
	IS_EXECUTABLE = 8,
	EXISTS = 16,
};
export type FormatSizeFlags = enum uint {
	DEFAULT = 0,
	LONG_FORMAT = 1,
	IEC_UNITS = 2,
	BITS = 4,
	ONLY_VALUE = 8,
	ONLY_UNIT = 16,
};
export type HookFlagMask = enum uint {
	ACTIVE = 1,
	IN_CALL = 2,
	MASK = 15,
};
export type IOCondition = enum uint {
	IN = 1,
	OUT = 4,
	PRI = 2,
	ERR = 8,
	HUP = 16,
	NVAL = 32,
};
export type IOFlags = enum uint {
	NONE = 0,
	APPEND_ = 1,
	NONBLOCK = 2,
	IS_READABLE = 4,
	IS_WRITABLE = 8,
	IS_WRITEABLE = 8,
	IS_SEEKABLE = 16,
	MASK = 31,
	GET_MASK = 31,
	SET_MASK = 3,
};
export type KeyFileFlags = enum uint {
	NONE = 0,
	KEEP_COMMENTS = 1,
	KEEP_TRANSLATIONS = 2,
};
export type LogLevelFlags = enum uint {
	FLAG_RECURSION = 1,
	FLAG_FATAL = 2,
	LEVEL_ERROR = 4,
	LEVEL_CRITICAL = 8,
	LEVEL_WARNING = 16,
	LEVEL_MESSAGE = 32,
	LEVEL_INFO = 64,
	LEVEL_DEBUG = 128,
	LEVEL_MASK = -4,
};
export type MainContextFlags = enum uint {
	NONE = 0,
	OWNERLESS_POLLING = 1,
};
export type MarkupCollectType = enum uint {
	INVALID = 0,
	STRING = 1,
	STRDUP = 2,
	BOOLEAN = 3,
	TRISTATE = 4,
	OPTIONAL = 65536,
};
export type MarkupParseFlags = enum uint {
	DEFAULT_FLAGS = 0,
	DO_NOT_USE_THIS_UNSUPPORTED_FLAG = 1,
	TREAT_CDATA_AS_TEXT = 2,
	PREFIX_ERROR_POSITION = 4,
	IGNORE_QUALIFIED = 8,
};
export type OptionFlags = enum uint {
	NONE = 0,
	HIDDEN = 1,
	IN_MAIN = 2,
	REVERSE = 4,
	NO_ARG = 8,
	FILENAME = 16,
	OPTIONAL_ARG = 32,
	NOALIAS = 64,
};
export type RegexCompileFlags = enum uint {
	DEFAULT = 0,
	CASELESS = 1,
	MULTILINE = 2,
	DOTALL = 4,
	EXTENDED = 8,
	ANCHORED = 16,
	DOLLAR_ENDONLY = 32,
	UNGREEDY = 512,
	RAW = 2048,
	NO_AUTO_CAPTURE = 4096,
	OPTIMIZE = 8192,
	FIRSTLINE = 262144,
	DUPNAMES = 524288,
	NEWLINE_CR = 1048576,
	NEWLINE_LF = 2097152,
	NEWLINE_CRLF = 3145728,
	NEWLINE_ANYCRLF = 5242880,
	BSR_ANYCRLF = 8388608,
	JAVASCRIPT_COMPAT = 33554432,
};
export type RegexMatchFlags = enum uint {
	DEFAULT = 0,
	ANCHORED = 16,
	NOTBOL = 128,
	NOTEOL = 256,
	NOTEMPTY = 1024,
	PARTIAL = 32768,
	NEWLINE_CR = 1048576,
	NEWLINE_LF = 2097152,
	NEWLINE_CRLF = 3145728,
	NEWLINE_ANY = 4194304,
	NEWLINE_ANYCRLF = 5242880,
	BSR_ANYCRLF = 8388608,
	BSR_ANY = 16777216,
	PARTIAL_SOFT = 32768,
	PARTIAL_HARD = 134217728,
	NOTEMPTY_ATSTART = 268435456,
};
export type SpawnFlags = enum uint {
	DEFAULT = 0,
	LEAVE_DESCRIPTORS_OPEN = 1,
	DO_NOT_REAP_CHILD = 2,
	SEARCH_PATH = 4,
	STDOUT_TO_DEV_NULL = 8,
	STDERR_TO_DEV_NULL = 16,
	CHILD_INHERITS_STDIN = 32,
	FILE_AND_ARGV_ZERO = 64,
	SEARCH_PATH_FROM_ENVP = 128,
	CLOEXEC_PIPES = 256,
	CHILD_INHERITS_STDOUT = 512,
	CHILD_INHERITS_STDERR = 1024,
	STDIN_FROM_DEV_NULL = 2048,
};
export type TestSubprocessFlags = enum uint {
	DEFAULT = 0,
	INHERIT_STDIN = 1,
	INHERIT_STDOUT = 2,
	INHERIT_STDERR = 4,
};
export type TestTrapFlags = enum uint {
	DEFAULT = 0,
	SILENCE_STDOUT = 128,
	SILENCE_STDERR = 256,
	INHERIT_STDIN = 512,
};
export type TraverseFlags = enum uint {
	LEAVES = 1,
	NON_LEAVES = 2,
	ALL = 3,
	MASK = 3,
	LEAFS = 1,
	NON_LEAFS = 2,
};
export type UriFlags = enum uint {
	NONE = 0,
	PARSE_RELAXED = 1,
	HAS_PASSWORD = 2,
	HAS_AUTH_PARAMS = 4,
	ENCODED = 8,
	NON_DNS = 16,
	ENCODED_QUERY = 32,
	ENCODED_PATH = 64,
	ENCODED_FRAGMENT = 128,
	SCHEME_NORMALIZE = 256,
};
export type UriHideFlags = enum uint {
	NONE = 0,
	USERINFO = 1,
	PASSWORD = 2,
	AUTH_PARAMS = 4,
	QUERY = 8,
	FRAGMENT = 16,
};
export type UriParamsFlags = enum uint {
	NONE = 0,
	CASE_INSENSITIVE = 1,
	WWW_FORM = 2,
	PARSE_RELAXED = 4,
};
export type ChildWatchFunc = *fn(pid: Pid, wait_status: int, user_data: *opaque) void;
export type ClearHandleFunc = *fn(handle_id: uint) void;
export type CompareDataFunc = *fn(a: *opaque, b: *opaque, user_data: *opaque) int;
export type CompareFunc = *fn(a: *opaque, b: *opaque) int;
export type CopyFunc = *fn(src: *opaque, data: *opaque) *opaque;
export type DataForeachFunc = *fn(key_id: Quark, data: *opaque, user_data: *opaque) void;
export type DestroyNotify = *fn(data: *opaque) void;
export type DuplicateFunc = *fn(data: *opaque, user_data: *opaque) *opaque;
export type EqualFunc = *fn(a: *opaque, b: *opaque) boolean;
export type EqualFuncFull = *fn(a: *opaque, b: *opaque, user_data: *opaque) boolean;
export type ErrorClearFunc = *fn(error: *Error) void;
export type ErrorCopyFunc = *fn(src_error: *Error, dest_error: *Error) void;
export type ErrorInitFunc = *fn(error: *Error) void;
export type FreeFunc = *fn(data: *opaque) void;
export type Func = *fn(data: *opaque, user_data: *opaque) void;
export type HFunc = *fn(key: *opaque, value: *opaque, user_data: *opaque) void;
export type HRFunc = *fn(key: *opaque, value: *opaque, user_data: *opaque) boolean;
export type HashFunc = *fn(key: *opaque) uint;
export type HookCheckFunc = *fn(data: *opaque) boolean;
export type HookCheckMarshaller = *fn(hook: *Hook, marshal_data: *opaque) boolean;
export type HookCompareFunc = *fn(new_hook: *Hook, sibling: *Hook) int;
export type HookFinalizeFunc = *fn(hook_list: *HookList, hook: *Hook) void;
export type HookFindFunc = *fn(hook: *Hook, data: *opaque) boolean;
export type HookFunc = *fn(data: *opaque) void;
export type HookMarshaller = *fn(hook: *Hook, marshal_data: *opaque) void;
export type IOFunc = *fn(source: *IOChannel, condition: IOCondition, data: *opaque) boolean;
export type LogFunc = *fn(log_domain: *c::char, log_level: LogLevelFlags, message: *c::char, user_data: *opaque) void;
export type LogWriterFunc = *fn(log_level: LogLevelFlags, fields: *LogField, n_fields: size, user_data: *opaque) LogWriterOutput;
export type NodeForeachFunc = *fn(node: *Node, data: *opaque) void;
export type NodeTraverseFunc = *fn(node: *Node, data: *opaque) boolean;
export type OptionArgFunc = *fn(option_name: *c::char, value: *c::char, data: *opaque, error: nullable **Error) boolean;
export type OptionErrorFunc = *fn(context: *OptionContext, group: *OptionGroup, data: *opaque, error: nullable **Error) void;
export type OptionParseFunc = *fn(context: *OptionContext, group: *OptionGroup, data: *opaque, error: nullable **Error) boolean;
export type PollFunc = *fn(ufds: *PollFD, nfsd: uint, timeout_: int) int;
export type PrintFunc = *fn(string: *c::char) void;
export type RegexEvalCallback = *fn(match_info: *MatchInfo, result: *String, user_data: *opaque) boolean;
export type ScannerMsgFunc = *fn(scanner: *Scanner, message: *c::char, error: boolean) void;
export type SequenceIterCompareFunc = *fn(a: *SequenceIter, b: *SequenceIter, data: *opaque) int;
export type SourceDisposeFunc = *fn(source: *Source) void;
export type SourceDummyMarshal = *fn() void;
export type SourceFunc = *fn(user_data: *opaque) boolean;
export type SourceOnceFunc = *fn(user_data: *opaque) void;
export type SpawnChildSetupFunc = *fn(data: *opaque) void;
export type TestDataFunc = *fn(user_data: *opaque) void;
export type TestFixtureFunc = *fn(fixture: *opaque, user_data: *opaque) void;
export type TestFunc = *fn() void;
export type TestLogFatalFunc = *fn(log_domain: *c::char, log_level: LogLevelFlags, message: *c::char, user_data: *opaque) boolean;
export type ThreadFunc = *fn(data: *opaque) *opaque;
export type TranslateFunc = *fn(str_: *c::char, data: *opaque) *c::char;
export type TraverseFunc = *fn(key: *opaque, value: *opaque, data: *opaque) boolean;
export type TraverseNodeFunc = *fn(node: *TreeNode, data: *opaque) boolean;
export type UnixFDSourceFunc = *fn(fd: int, condition: IOCondition, user_data: *opaque) boolean;
export type VoidFunc = *fn() void;
