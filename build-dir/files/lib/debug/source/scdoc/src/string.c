#include <stdlib.h>
#include <stdint.h>
#include "str.h"
#include "unicode.h"
#include "util.h"

static void ensure_capacity(struct str *str, size_t len) {
	if (len + 1 >= str->size) {
		char *new = xrealloc(str->str, str->size * 2);
		str->str = new;
		str->size *= 2;
	}
}

struct str *str_create(void) {
	struct str *str = xcalloc(1, sizeof(struct str));
	str->str = xcalloc(16, 1);
	str->size = 16;
	str->len = 0;
	str->str[0] = '\0';
	return str;
}

void str_free(struct str *str) {
	if (!str) return;
	free(str->str);
	free(str);
}

int str_append_ch(struct str *str, uint32_t ch) {
	int size = utf8_chsize(ch);
	if (size <= 0) {
		return -1;
	}
	ensure_capacity(str, str->len + size);
	utf8_encode(&str->str[str->len], ch);
	str->len += size;
	str->str[str->len] = '\0';
	return size;
}
