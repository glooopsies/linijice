use types::c;
use freetype;
use glib;
export type bool_t = int;
export type codepoint_t = u32;
export type color_t = u32;
export type font_get_font_h_extents_func_t = font_get_font_extents_func_t;
export type font_get_font_v_extents_func_t = font_get_font_extents_func_t;
export type font_get_glyph_h_advance_func_t = font_get_glyph_advance_func_t;
export type font_get_glyph_h_advances_func_t = font_get_glyph_advances_func_t;
export type font_get_glyph_h_kerning_func_t = font_get_glyph_kerning_func_t;
export type font_get_glyph_h_origin_func_t = font_get_glyph_origin_func_t;
export type font_get_glyph_v_advance_func_t = font_get_glyph_advance_func_t;
export type font_get_glyph_v_advances_func_t = font_get_glyph_advances_func_t;
export type font_get_glyph_v_kerning_func_t = font_get_glyph_kerning_func_t;
export type font_get_glyph_v_origin_func_t = font_get_glyph_origin_func_t;
export type mask_t = u32;
export type ot_name_id_t = uint;
export type position_t = i32;
export type tag_t = u32;
export type aat_layout_feature_selector_info_t = struct {
	name_id: ot_name_id_t,
	enable: aat_layout_feature_selector_t,
	disable: aat_layout_feature_selector_t,
	reserved: uint,
};
export type blob_t = *opaque;
export type buffer_t = *opaque;
export type color_line_t = struct {
	data: *opaque,
	get_color_stops: color_line_get_color_stops_func_t,
	get_color_stops_user_data: *opaque,
	get_extend: color_line_get_extend_func_t,
	get_extend_user_data: *opaque,
	reserved0: *opaque,
	reserved1: *opaque,
	reserved2: *opaque,
	reserved3: *opaque,
	reserved5: *opaque,
	reserved6: *opaque,
	reserved7: *opaque,
	reserved8: *opaque,
};
export type color_stop_t = struct {
	offset_: f32,
	is_foreground: bool_t,
	color: color_t,
};
export type draw_funcs_t = *opaque;
export type draw_state_t = struct {
	path_open: bool_t,
	path_start_x: f32,
	path_start_y: f32,
	current_x: f32,
	current_y: f32,
	reserved1: var_num_t,
	reserved2: var_num_t,
	reserved3: var_num_t,
	reserved4: var_num_t,
	reserved5: var_num_t,
	reserved6: var_num_t,
	reserved7: var_num_t,
};
export type face_t = *opaque;
export type feature_t = struct {
	tag: tag_t,
	value: u32,
	start: uint,
	end: uint,
};
export @symbol("hb_feature_to_string") fn feature_t__string(feature: *feature_t, buf: *c::char, size_: uint) void;
export type font_extents_t = struct {
	ascender: position_t,
	descender: position_t,
	line_gap: position_t,
	reserved9: position_t,
	reserved8: position_t,
	reserved7: position_t,
	reserved6: position_t,
	reserved5: position_t,
	reserved4: position_t,
	reserved3: position_t,
	reserved2: position_t,
	reserved1: position_t,
};
export type font_funcs_t = *opaque;
export type font_t = *opaque;
export type glyph_extents_t = struct {
	x_bearing: position_t,
	y_bearing: position_t,
	width: position_t,
	height: position_t,
};
export type glyph_info_t = struct {
	codepoint: codepoint_t,
	mask: mask_t,
	cluster: u32,
	var1: var_int_t,
	var2: var_int_t,
};
export type glyph_position_t = struct {
	x_advance: position_t,
	y_advance: position_t,
	x_offset: position_t,
	y_offset: position_t,
	var: var_int_t,
};
export type language_t = *opaque;
export @symbol("hb_language_to_string") fn language_t__string(language: language_t) *c::char;
export type map_t = *opaque;
export type ot_color_layer_t = struct {
	glyph: codepoint_t,
	color_index: uint,
};
export type ot_math_glyph_part_t = struct {
	glyph: codepoint_t,
	start_connector_length: position_t,
	end_connector_length: position_t,
	full_advance: position_t,
	flags: ot_math_glyph_part_flags_t,
};
export type ot_math_glyph_variant_t = struct {
	glyph: codepoint_t,
	advance: position_t,
};
export type ot_math_kern_entry_t = struct {
	max_correction_height: position_t,
	kern_value: position_t,
};
export type ot_name_entry_t = struct {
	name_id: ot_name_id_t,
	var: var_int_t,
	language: language_t,
};
export type ot_var_axis_info_t = struct {
	axis_index: uint,
	tag: tag_t,
	name_id: ot_name_id_t,
	flags: ot_var_axis_flags_t,
	min_value: f32,
	default_value: f32,
	max_value: f32,
	reserved: uint,
};
export type ot_var_axis_t = struct {
	tag: tag_t,
	name_id: ot_name_id_t,
	min_value: f32,
	default_value: f32,
	max_value: f32,
};
export type paint_funcs_t = *opaque;
export type segment_properties_t = struct {
	direction: direction_t,
	script: script_t,
	language: language_t,
	reserved1: *opaque,
	reserved2: *opaque,
};
export type set_t = *opaque;
export type shape_plan_t = *opaque;
export type unicode_funcs_t = *opaque;
export type user_data_key_t = struct {
	unused: c::char,
};
export type variation_t = struct {
	tag: tag_t,
	value: f32,
};
export @symbol("hb_variation_to_string") fn variation_t__string(variation: *variation_t, buf: *c::char, size_: uint) void;
export type aat_layout_feature_selector_t = enum uint {
	INVALID = 65535,
	ALL_TYPE_FEATURES_ON = 0,
	ALL_TYPE_FEATURES_OFF = 1,
	REQUIRED_LIGATURES_ON = 0,
	REQUIRED_LIGATURES_OFF = 1,
	COMMON_LIGATURES_ON = 2,
	COMMON_LIGATURES_OFF = 3,
	RARE_LIGATURES_ON = 4,
	RARE_LIGATURES_OFF = 5,
	LOGOS_ON = 6,
	LOGOS_OFF = 7,
	REBUS_PICTURES_ON = 8,
	REBUS_PICTURES_OFF = 9,
	DIPHTHONG_LIGATURES_ON = 10,
	DIPHTHONG_LIGATURES_OFF = 11,
	SQUARED_LIGATURES_ON = 12,
	SQUARED_LIGATURES_OFF = 13,
	ABBREV_SQUARED_LIGATURES_ON = 14,
	ABBREV_SQUARED_LIGATURES_OFF = 15,
	SYMBOL_LIGATURES_ON = 16,
	SYMBOL_LIGATURES_OFF = 17,
	CONTEXTUAL_LIGATURES_ON = 18,
	CONTEXTUAL_LIGATURES_OFF = 19,
	HISTORICAL_LIGATURES_ON = 20,
	HISTORICAL_LIGATURES_OFF = 21,
	UNCONNECTED = 0,
	PARTIALLY_CONNECTED = 1,
	CURSIVE = 2,
	UPPER_AND_LOWER_CASE = 0,
	ALL_CAPS = 1,
	ALL_LOWER_CASE = 2,
	SMALL_CAPS = 3,
	INITIAL_CAPS = 4,
	INITIAL_CAPS_AND_SMALL_CAPS = 5,
	SUBSTITUTE_VERTICAL_FORMS_ON = 0,
	SUBSTITUTE_VERTICAL_FORMS_OFF = 1,
	LINGUISTIC_REARRANGEMENT_ON = 0,
	LINGUISTIC_REARRANGEMENT_OFF = 1,
	MONOSPACED_NUMBERS = 0,
	PROPORTIONAL_NUMBERS = 1,
	THIRD_WIDTH_NUMBERS = 2,
	QUARTER_WIDTH_NUMBERS = 3,
	WORD_INITIAL_SWASHES_ON = 0,
	WORD_INITIAL_SWASHES_OFF = 1,
	WORD_FINAL_SWASHES_ON = 2,
	WORD_FINAL_SWASHES_OFF = 3,
	LINE_INITIAL_SWASHES_ON = 4,
	LINE_INITIAL_SWASHES_OFF = 5,
	LINE_FINAL_SWASHES_ON = 6,
	LINE_FINAL_SWASHES_OFF = 7,
	NON_FINAL_SWASHES_ON = 8,
	NON_FINAL_SWASHES_OFF = 9,
	SHOW_DIACRITICS = 0,
	HIDE_DIACRITICS = 1,
	DECOMPOSE_DIACRITICS = 2,
	NORMAL_POSITION = 0,
	SUPERIORS = 1,
	INFERIORS = 2,
	ORDINALS = 3,
	SCIENTIFIC_INFERIORS = 4,
	NO_FRACTIONS = 0,
	VERTICAL_FRACTIONS = 1,
	DIAGONAL_FRACTIONS = 2,
	PREVENT_OVERLAP_ON = 0,
	PREVENT_OVERLAP_OFF = 1,
	HYPHENS_TO_EM_DASH_ON = 0,
	HYPHENS_TO_EM_DASH_OFF = 1,
	HYPHEN_TO_EN_DASH_ON = 2,
	HYPHEN_TO_EN_DASH_OFF = 3,
	SLASHED_ZERO_ON = 4,
	SLASHED_ZERO_OFF = 5,
	FORM_INTERROBANG_ON = 6,
	FORM_INTERROBANG_OFF = 7,
	SMART_QUOTES_ON = 8,
	SMART_QUOTES_OFF = 9,
	PERIODS_TO_ELLIPSIS_ON = 10,
	PERIODS_TO_ELLIPSIS_OFF = 11,
	HYPHEN_TO_MINUS_ON = 0,
	HYPHEN_TO_MINUS_OFF = 1,
	ASTERISK_TO_MULTIPLY_ON = 2,
	ASTERISK_TO_MULTIPLY_OFF = 3,
	SLASH_TO_DIVIDE_ON = 4,
	SLASH_TO_DIVIDE_OFF = 5,
	INEQUALITY_LIGATURES_ON = 6,
	INEQUALITY_LIGATURES_OFF = 7,
	EXPONENTS_ON = 8,
	EXPONENTS_OFF = 9,
	MATHEMATICAL_GREEK_ON = 10,
	MATHEMATICAL_GREEK_OFF = 11,
	NO_ORNAMENTS = 0,
	DINGBATS = 1,
	PI_CHARACTERS = 2,
	FLEURONS = 3,
	DECORATIVE_BORDERS = 4,
	INTERNATIONAL_SYMBOLS = 5,
	MATH_SYMBOLS = 6,
	NO_ALTERNATES = 0,
	DESIGN_LEVEL1 = 0,
	DESIGN_LEVEL2 = 1,
	DESIGN_LEVEL3 = 2,
	DESIGN_LEVEL4 = 3,
	DESIGN_LEVEL5 = 4,
	NO_STYLE_OPTIONS = 0,
	DISPLAY_TEXT = 1,
	ENGRAVED_TEXT = 2,
	ILLUMINATED_CAPS = 3,
	TITLING_CAPS = 4,
	TALL_CAPS = 5,
	TRADITIONAL_CHARACTERS = 0,
	SIMPLIFIED_CHARACTERS = 1,
	JIS1978_CHARACTERS = 2,
	JIS1983_CHARACTERS = 3,
	JIS1990_CHARACTERS = 4,
	TRADITIONAL_ALT_ONE = 5,
	TRADITIONAL_ALT_TWO = 6,
	TRADITIONAL_ALT_THREE = 7,
	TRADITIONAL_ALT_FOUR = 8,
	TRADITIONAL_ALT_FIVE = 9,
	EXPERT_CHARACTERS = 10,
	JIS2004_CHARACTERS = 11,
	HOJO_CHARACTERS = 12,
	NLCCHARACTERS = 13,
	TRADITIONAL_NAMES_CHARACTERS = 14,
	LOWER_CASE_NUMBERS = 0,
	UPPER_CASE_NUMBERS = 1,
	PROPORTIONAL_TEXT = 0,
	MONOSPACED_TEXT = 1,
	HALF_WIDTH_TEXT = 2,
	THIRD_WIDTH_TEXT = 3,
	QUARTER_WIDTH_TEXT = 4,
	ALT_PROPORTIONAL_TEXT = 5,
	ALT_HALF_WIDTH_TEXT = 6,
	NO_TRANSLITERATION = 0,
	HANJA_TO_HANGUL = 1,
	HIRAGANA_TO_KATAKANA = 2,
	KATAKANA_TO_HIRAGANA = 3,
	KANA_TO_ROMANIZATION = 4,
	ROMANIZATION_TO_HIRAGANA = 5,
	ROMANIZATION_TO_KATAKANA = 6,
	HANJA_TO_HANGUL_ALT_ONE = 7,
	HANJA_TO_HANGUL_ALT_TWO = 8,
	HANJA_TO_HANGUL_ALT_THREE = 9,
	NO_ANNOTATION = 0,
	BOX_ANNOTATION = 1,
	ROUNDED_BOX_ANNOTATION = 2,
	CIRCLE_ANNOTATION = 3,
	INVERTED_CIRCLE_ANNOTATION = 4,
	PARENTHESIS_ANNOTATION = 5,
	PERIOD_ANNOTATION = 6,
	ROMAN_NUMERAL_ANNOTATION = 7,
	DIAMOND_ANNOTATION = 8,
	INVERTED_BOX_ANNOTATION = 9,
	INVERTED_ROUNDED_BOX_ANNOTATION = 10,
	FULL_WIDTH_KANA = 0,
	PROPORTIONAL_KANA = 1,
	FULL_WIDTH_IDEOGRAPHS = 0,
	PROPORTIONAL_IDEOGRAPHS = 1,
	HALF_WIDTH_IDEOGRAPHS = 2,
	CANONICAL_COMPOSITION_ON = 0,
	CANONICAL_COMPOSITION_OFF = 1,
	COMPATIBILITY_COMPOSITION_ON = 2,
	COMPATIBILITY_COMPOSITION_OFF = 3,
	TRANSCODING_COMPOSITION_ON = 4,
	TRANSCODING_COMPOSITION_OFF = 5,
	NO_RUBY_KANA = 0,
	RUBY_KANA = 1,
	RUBY_KANA_ON = 2,
	RUBY_KANA_OFF = 3,
	NO_CJK_SYMBOL_ALTERNATIVES = 0,
	CJK_SYMBOL_ALT_ONE = 1,
	CJK_SYMBOL_ALT_TWO = 2,
	CJK_SYMBOL_ALT_THREE = 3,
	CJK_SYMBOL_ALT_FOUR = 4,
	CJK_SYMBOL_ALT_FIVE = 5,
	NO_IDEOGRAPHIC_ALTERNATIVES = 0,
	IDEOGRAPHIC_ALT_ONE = 1,
	IDEOGRAPHIC_ALT_TWO = 2,
	IDEOGRAPHIC_ALT_THREE = 3,
	IDEOGRAPHIC_ALT_FOUR = 4,
	IDEOGRAPHIC_ALT_FIVE = 5,
	CJK_VERTICAL_ROMAN_CENTERED = 0,
	CJK_VERTICAL_ROMAN_HBASELINE = 1,
	NO_CJK_ITALIC_ROMAN = 0,
	CJK_ITALIC_ROMAN = 1,
	CJK_ITALIC_ROMAN_ON = 2,
	CJK_ITALIC_ROMAN_OFF = 3,
	CASE_SENSITIVE_LAYOUT_ON = 0,
	CASE_SENSITIVE_LAYOUT_OFF = 1,
	CASE_SENSITIVE_SPACING_ON = 2,
	CASE_SENSITIVE_SPACING_OFF = 3,
	ALTERNATE_HORIZ_KANA_ON = 0,
	ALTERNATE_HORIZ_KANA_OFF = 1,
	ALTERNATE_VERT_KANA_ON = 2,
	ALTERNATE_VERT_KANA_OFF = 3,
	NO_STYLISTIC_ALTERNATES = 0,
	STYLISTIC_ALT_ONE_ON = 2,
	STYLISTIC_ALT_ONE_OFF = 3,
	STYLISTIC_ALT_TWO_ON = 4,
	STYLISTIC_ALT_TWO_OFF = 5,
	STYLISTIC_ALT_THREE_ON = 6,
	STYLISTIC_ALT_THREE_OFF = 7,
	STYLISTIC_ALT_FOUR_ON = 8,
	STYLISTIC_ALT_FOUR_OFF = 9,
	STYLISTIC_ALT_FIVE_ON = 10,
	STYLISTIC_ALT_FIVE_OFF = 11,
	STYLISTIC_ALT_SIX_ON = 12,
	STYLISTIC_ALT_SIX_OFF = 13,
	STYLISTIC_ALT_SEVEN_ON = 14,
	STYLISTIC_ALT_SEVEN_OFF = 15,
	STYLISTIC_ALT_EIGHT_ON = 16,
	STYLISTIC_ALT_EIGHT_OFF = 17,
	STYLISTIC_ALT_NINE_ON = 18,
	STYLISTIC_ALT_NINE_OFF = 19,
	STYLISTIC_ALT_TEN_ON = 20,
	STYLISTIC_ALT_TEN_OFF = 21,
	STYLISTIC_ALT_ELEVEN_ON = 22,
	STYLISTIC_ALT_ELEVEN_OFF = 23,
	STYLISTIC_ALT_TWELVE_ON = 24,
	STYLISTIC_ALT_TWELVE_OFF = 25,
	STYLISTIC_ALT_THIRTEEN_ON = 26,
	STYLISTIC_ALT_THIRTEEN_OFF = 27,
	STYLISTIC_ALT_FOURTEEN_ON = 28,
	STYLISTIC_ALT_FOURTEEN_OFF = 29,
	STYLISTIC_ALT_FIFTEEN_ON = 30,
	STYLISTIC_ALT_FIFTEEN_OFF = 31,
	STYLISTIC_ALT_SIXTEEN_ON = 32,
	STYLISTIC_ALT_SIXTEEN_OFF = 33,
	STYLISTIC_ALT_SEVENTEEN_ON = 34,
	STYLISTIC_ALT_SEVENTEEN_OFF = 35,
	STYLISTIC_ALT_EIGHTEEN_ON = 36,
	STYLISTIC_ALT_EIGHTEEN_OFF = 37,
	STYLISTIC_ALT_NINETEEN_ON = 38,
	STYLISTIC_ALT_NINETEEN_OFF = 39,
	STYLISTIC_ALT_TWENTY_ON = 40,
	STYLISTIC_ALT_TWENTY_OFF = 41,
	CONTEXTUAL_ALTERNATES_ON = 0,
	CONTEXTUAL_ALTERNATES_OFF = 1,
	SWASH_ALTERNATES_ON = 2,
	SWASH_ALTERNATES_OFF = 3,
	CONTEXTUAL_SWASH_ALTERNATES_ON = 4,
	CONTEXTUAL_SWASH_ALTERNATES_OFF = 5,
	DEFAULT_LOWER_CASE = 0,
	LOWER_CASE_SMALL_CAPS = 1,
	LOWER_CASE_PETITE_CAPS = 2,
	DEFAULT_UPPER_CASE = 0,
	UPPER_CASE_SMALL_CAPS = 1,
	UPPER_CASE_PETITE_CAPS = 2,
	HALF_WIDTH_CJK_ROMAN = 0,
	PROPORTIONAL_CJK_ROMAN = 1,
	DEFAULT_CJK_ROMAN = 2,
	FULL_WIDTH_CJK_ROMAN = 3,
};
export type aat_layout_feature_type_t = enum uint {
	INVALID = 65535,
	ALL_TYPOGRAPHIC = 0,
	LIGATURES = 1,
	CURISVE_CONNECTION = 2,
	LETTER_CASE = 3,
	VERTICAL_SUBSTITUTION = 4,
	LINGUISTIC_REARRANGEMENT = 5,
	NUMBER_SPACING = 6,
	SMART_SWASH_TYPE = 8,
	DIACRITICS_TYPE = 9,
	VERTICAL_POSITION = 10,
	FRACTIONS = 11,
	OVERLAPPING_CHARACTERS_TYPE = 13,
	TYPOGRAPHIC_EXTRAS = 14,
	MATHEMATICAL_EXTRAS = 15,
	ORNAMENT_SETS_TYPE = 16,
	CHARACTER_ALTERNATIVES = 17,
	DESIGN_COMPLEXITY_TYPE = 18,
	STYLE_OPTIONS = 19,
	CHARACTER_SHAPE = 20,
	NUMBER_CASE = 21,
	TEXT_SPACING = 22,
	TRANSLITERATION = 23,
	ANNOTATION_TYPE = 24,
	KANA_SPACING_TYPE = 25,
	IDEOGRAPHIC_SPACING_TYPE = 26,
	UNICODE_DECOMPOSITION_TYPE = 27,
	RUBY_KANA = 28,
	CJK_SYMBOL_ALTERNATIVES_TYPE = 29,
	IDEOGRAPHIC_ALTERNATIVES_TYPE = 30,
	CJK_VERTICAL_ROMAN_PLACEMENT_TYPE = 31,
	ITALIC_CJK_ROMAN = 32,
	CASE_SENSITIVE_LAYOUT = 33,
	ALTERNATE_KANA = 34,
	STYLISTIC_ALTERNATIVES = 35,
	CONTEXTUAL_ALTERNATIVES = 36,
	LOWER_CASE = 37,
	UPPER_CASE = 38,
	LANGUAGE_TAG_TYPE = 39,
	CJK_ROMAN_SPACING_TYPE = 103,
};
export type buffer_cluster_level_t = enum uint {
	MONOTONE_GRAPHEMES = 0,
	MONOTONE_CHARACTERS = 1,
	CHARACTERS = 2,
	DEFAULT = 0,
};
export type buffer_content_type_t = enum uint {
	INVALID = 0,
	UNICODE = 1,
	GLYPHS = 2,
};
export type buffer_serialize_format_t = enum uint {
	TEXT = 1413830740,
	JSON = 1246973774,
	INVALID = 0,
};
export type direction_t = enum uint {
	INVALID = 0,
	LTR = 4,
	RTL = 5,
	TTB = 6,
	BTT = 7,
};
export type memory_mode_t = enum uint {
	DUPLICATE = 0,
	READONLY = 1,
	WRITABLE = 2,
	READONLY_MAY_MAKE_WRITABLE = 3,
};
export type ot_layout_baseline_tag_t = enum uint {
	ROMAN = 1919905134,
	HANGING = 1751215719,
	IDEO_FACE_BOTTOM_OR_LEFT = 1768121954,
	IDEO_FACE_TOP_OR_RIGHT = 1768121972,
	IDEO_FACE_CENTRAL = 1231251043,
	IDEO_EMBOX_BOTTOM_OR_LEFT = 1768187247,
	IDEO_EMBOX_TOP_OR_RIGHT = 1768191088,
	IDEO_EMBOX_CENTRAL = 1231315813,
	MATH = 1835103336,
};
export type ot_layout_glyph_class_t = enum uint {
	UNCLASSIFIED = 0,
	BASE_GLYPH = 1,
	LIGATURE = 2,
	MARK = 3,
	COMPONENT = 4,
};
export type ot_math_constant_t = enum uint {
	SCRIPT_PERCENT_SCALE_DOWN = 0,
	SCRIPT_SCRIPT_PERCENT_SCALE_DOWN = 1,
	DELIMITED_SUB_FORMULA_MIN_HEIGHT = 2,
	DISPLAY_OPERATOR_MIN_HEIGHT = 3,
	MATH_LEADING = 4,
	AXIS_HEIGHT = 5,
	ACCENT_BASE_HEIGHT = 6,
	FLATTENED_ACCENT_BASE_HEIGHT = 7,
	SUBSCRIPT_SHIFT_DOWN = 8,
	SUBSCRIPT_TOP_MAX = 9,
	SUBSCRIPT_BASELINE_DROP_MIN = 10,
	SUPERSCRIPT_SHIFT_UP = 11,
	SUPERSCRIPT_SHIFT_UP_CRAMPED = 12,
	SUPERSCRIPT_BOTTOM_MIN = 13,
	SUPERSCRIPT_BASELINE_DROP_MAX = 14,
	SUB_SUPERSCRIPT_GAP_MIN = 15,
	SUPERSCRIPT_BOTTOM_MAX_WITH_SUBSCRIPT = 16,
	SPACE_AFTER_SCRIPT = 17,
	UPPER_LIMIT_GAP_MIN = 18,
	UPPER_LIMIT_BASELINE_RISE_MIN = 19,
	LOWER_LIMIT_GAP_MIN = 20,
	LOWER_LIMIT_BASELINE_DROP_MIN = 21,
	STACK_TOP_SHIFT_UP = 22,
	STACK_TOP_DISPLAY_STYLE_SHIFT_UP = 23,
	STACK_BOTTOM_SHIFT_DOWN = 24,
	STACK_BOTTOM_DISPLAY_STYLE_SHIFT_DOWN = 25,
	STACK_GAP_MIN = 26,
	STACK_DISPLAY_STYLE_GAP_MIN = 27,
	STRETCH_STACK_TOP_SHIFT_UP = 28,
	STRETCH_STACK_BOTTOM_SHIFT_DOWN = 29,
	STRETCH_STACK_GAP_ABOVE_MIN = 30,
	STRETCH_STACK_GAP_BELOW_MIN = 31,
	FRACTION_NUMERATOR_SHIFT_UP = 32,
	FRACTION_NUMERATOR_DISPLAY_STYLE_SHIFT_UP = 33,
	FRACTION_DENOMINATOR_SHIFT_DOWN = 34,
	FRACTION_DENOMINATOR_DISPLAY_STYLE_SHIFT_DOWN = 35,
	FRACTION_NUMERATOR_GAP_MIN = 36,
	FRACTION_NUM_DISPLAY_STYLE_GAP_MIN = 37,
	FRACTION_RULE_THICKNESS = 38,
	FRACTION_DENOMINATOR_GAP_MIN = 39,
	FRACTION_DENOM_DISPLAY_STYLE_GAP_MIN = 40,
	SKEWED_FRACTION_HORIZONTAL_GAP = 41,
	SKEWED_FRACTION_VERTICAL_GAP = 42,
	OVERBAR_VERTICAL_GAP = 43,
	OVERBAR_RULE_THICKNESS = 44,
	OVERBAR_EXTRA_ASCENDER = 45,
	UNDERBAR_VERTICAL_GAP = 46,
	UNDERBAR_RULE_THICKNESS = 47,
	UNDERBAR_EXTRA_DESCENDER = 48,
	RADICAL_VERTICAL_GAP = 49,
	RADICAL_DISPLAY_STYLE_VERTICAL_GAP = 50,
	RADICAL_RULE_THICKNESS = 51,
	RADICAL_EXTRA_ASCENDER = 52,
	RADICAL_KERN_BEFORE_DEGREE = 53,
	RADICAL_KERN_AFTER_DEGREE = 54,
	RADICAL_DEGREE_BOTTOM_RAISE_PERCENT = 55,
};
export type ot_math_kern_t = enum uint {
	TOP_RIGHT = 0,
	TOP_LEFT = 1,
	BOTTOM_RIGHT = 2,
	BOTTOM_LEFT = 3,
};
export type ot_meta_tag_t = enum uint {
	DESIGN_LANGUAGES = 1684827751,
	SUPPORTED_LANGUAGES = 1936485991,
};
export type ot_metrics_tag_t = enum uint {
	HORIZONTAL_ASCENDER = 1751216995,
	HORIZONTAL_DESCENDER = 1751413603,
	HORIZONTAL_LINE_GAP = 1751934832,
	HORIZONTAL_CLIPPING_ASCENT = 1751346273,
	HORIZONTAL_CLIPPING_DESCENT = 1751346276,
	VERTICAL_ASCENDER = 1986098019,
	VERTICAL_DESCENDER = 1986294627,
	VERTICAL_LINE_GAP = 1986815856,
	HORIZONTAL_CARET_RISE = 1751347827,
	HORIZONTAL_CARET_RUN = 1751347822,
	HORIZONTAL_CARET_OFFSET = 1751347046,
	VERTICAL_CARET_RISE = 1986228851,
	VERTICAL_CARET_RUN = 1986228846,
	VERTICAL_CARET_OFFSET = 1986228070,
	X_HEIGHT = 2020108148,
	CAP_HEIGHT = 1668311156,
	SUBSCRIPT_EM_X_SIZE = 1935833203,
	SUBSCRIPT_EM_Y_SIZE = 1935833459,
	SUBSCRIPT_EM_X_OFFSET = 1935833199,
	SUBSCRIPT_EM_Y_OFFSET = 1935833455,
	SUPERSCRIPT_EM_X_SIZE = 1936750707,
	SUPERSCRIPT_EM_Y_SIZE = 1936750963,
	SUPERSCRIPT_EM_X_OFFSET = 1936750703,
	SUPERSCRIPT_EM_Y_OFFSET = 1936750959,
	STRIKEOUT_SIZE = 1937011315,
	STRIKEOUT_OFFSET = 1937011311,
	UNDERLINE_SIZE = 1970168947,
	UNDERLINE_OFFSET = 1970168943,
};
export type ot_name_id_predefined_t = enum uint {
	COPYRIGHT = 0,
	FONT_FAMILY = 1,
	FONT_SUBFAMILY = 2,
	UNIQUE_ID = 3,
	FULL_NAME = 4,
	VERSION_STRING = 5,
	POSTSCRIPT_NAME = 6,
	TRADEMARK = 7,
	MANUFACTURER = 8,
	DESIGNER = 9,
	DESCRIPTION = 10,
	VENDOR_URL = 11,
	DESIGNER_URL = 12,
	LICENSE = 13,
	LICENSE_URL = 14,
	TYPOGRAPHIC_FAMILY = 16,
	TYPOGRAPHIC_SUBFAMILY = 17,
	MAC_FULL_NAME = 18,
	SAMPLE_TEXT = 19,
	CID_FINDFONT_NAME = 20,
	WWS_FAMILY = 21,
	WWS_SUBFAMILY = 22,
	LIGHT_BACKGROUND = 23,
	DARK_BACKGROUND = 24,
	VARIATIONS_PS_PREFIX = 25,
	INVALID = 65535,
};
export type paint_composite_mode_t = enum uint {
	CLEAR = 0,
	SRC = 1,
	DEST = 2,
	SRC_OVER = 3,
	DEST_OVER = 4,
	SRC_IN = 5,
	DEST_IN = 6,
	SRC_OUT = 7,
	DEST_OUT = 8,
	SRC_ATOP = 9,
	DEST_ATOP = 10,
	XOR = 11,
	PLUS = 12,
	SCREEN = 13,
	OVERLAY = 14,
	DARKEN = 15,
	LIGHTEN = 16,
	COLOR_DODGE = 17,
	COLOR_BURN = 18,
	HARD_LIGHT = 19,
	SOFT_LIGHT = 20,
	DIFFERENCE = 21,
	EXCLUSION = 22,
	MULTIPLY = 23,
	HSL_HUE = 24,
	HSL_SATURATION = 25,
	HSL_COLOR = 26,
	HSL_LUMINOSITY = 27,
};
export type paint_extend_t = enum uint {
	PAD = 0,
	REPEAT = 1,
	REFLECT = 2,
};
export type script_t = enum uint {
	COMMON = 1517910393,
	INHERITED = 1516858984,
	UNKNOWN = 1517976186,
	ARABIC = 1098015074,
	ARMENIAN = 1098018158,
	BENGALI = 1113943655,
	CYRILLIC = 1132032620,
	DEVANAGARI = 1147500129,
	GEORGIAN = 1197830002,
	GREEK = 1198679403,
	GUJARATI = 1198877298,
	GURMUKHI = 1198879349,
	HANGUL = 1214344807,
	HAN = 1214344809,
	HEBREW = 1214603890,
	HIRAGANA = 1214870113,
	KANNADA = 1265525857,
	KATAKANA = 1264676449,
	LAO = 1281453935,
	LATIN = 1281455214,
	MALAYALAM = 1298954605,
	ORIYA = 1332902241,
	TAMIL = 1415671148,
	TELUGU = 1415933045,
	THAI = 1416126825,
	TIBETAN = 1416192628,
	BOPOMOFO = 1114599535,
	BRAILLE = 1114792297,
	CANADIAN_SYLLABICS = 1130458739,
	CHEROKEE = 1130915186,
	ETHIOPIC = 1165256809,
	KHMER = 1265134962,
	MONGOLIAN = 1299148391,
	MYANMAR = 1299803506,
	OGHAM = 1332175213,
	RUNIC = 1383427698,
	SINHALA = 1399418472,
	SYRIAC = 1400468067,
	THAANA = 1416126817,
	YI = 1500080489,
	DESERET = 1148416628,
	GOTHIC = 1198486632,
	OLD_ITALIC = 1232363884,
	BUHID = 1114990692,
	HANUNOO = 1214344815,
	TAGALOG = 1416064103,
	TAGBANWA = 1415669602,
	CYPRIOT = 1131442804,
	LIMBU = 1281977698,
	LINEAR_B = 1281977954,
	OSMANYA = 1332964705,
	SHAVIAN = 1399349623,
	TAI_LE = 1415670885,
	UGARITIC = 1432838514,
	BUGINESE = 1114990441,
	COPTIC = 1131376756,
	GLAGOLITIC = 1198285159,
	KHAROSHTHI = 1265131890,
	NEW_TAI_LUE = 1415670901,
	OLD_PERSIAN = 1483761007,
	SYLOTI_NAGRI = 1400466543,
	TIFINAGH = 1415999079,
	BALINESE = 1113681001,
	CUNEIFORM = 1483961720,
	NKO = 1315663727,
	PHAGS_PA = 1349017959,
	PHOENICIAN = 1349021304,
	CARIAN = 1130459753,
	CHAM = 1130914157,
	KAYAH_LI = 1264675945,
	LEPCHA = 1281716323,
	LYCIAN = 1283023721,
	LYDIAN = 1283023977,
	OL_CHIKI = 1332503403,
	REJANG = 1382706791,
	SAURASHTRA = 1398895986,
	SUNDANESE = 1400204900,
	VAI = 1449224553,
	AVESTAN = 1098281844,
	BAMUM = 1113681269,
	EGYPTIAN_HIEROGLYPHS = 1164409200,
	IMPERIAL_ARAMAIC = 1098018153,
	INSCRIPTIONAL_PAHLAVI = 1349020777,
	INSCRIPTIONAL_PARTHIAN = 1349678185,
	JAVANESE = 1247901281,
	KAITHI = 1265920105,
	LISU = 1281979253,
	MEETEI_MAYEK = 1299473769,
	OLD_SOUTH_ARABIAN = 1398895202,
	OLD_TURKIC = 1332898664,
	SAMARITAN = 1398893938,
	TAI_THAM = 1281453665,
	TAI_VIET = 1415673460,
	BATAK = 1113683051,
	BRAHMI = 1114792296,
	MANDAIC = 1298230884,
	CHAKMA = 1130457965,
	MEROITIC_CURSIVE = 1298494051,
	MEROITIC_HIEROGLYPHS = 1298494063,
	MIAO = 1349284452,
	SHARADA = 1399353956,
	SORA_SOMPENG = 1399812705,
	TAKRI = 1415670642,
	BASSA_VAH = 1113682803,
	CAUCASIAN_ALBANIAN = 1097295970,
	DUPLOYAN = 1148547180,
	ELBASAN = 1164730977,
	GRANTHA = 1198678382,
	KHOJKI = 1265135466,
	KHUDAWADI = 1399418468,
	LINEAR_A = 1281977953,
	MAHAJANI = 1298229354,
	MANICHAEAN = 1298230889,
	MENDE_KIKAKUI = 1298493028,
	MODI = 1299145833,
	MRO = 1299345263,
	NABATAEAN = 1315070324,
	OLD_NORTH_ARABIAN = 1315009122,
	OLD_PERMIC = 1348825709,
	PAHAWH_HMONG = 1215131239,
	PALMYRENE = 1348562029,
	PAU_CIN_HAU = 1348564323,
	PSALTER_PAHLAVI = 1349020784,
	SIDDHAM = 1399415908,
	TIRHUTA = 1416196712,
	WARANG_CITI = 1466004065,
	AHOM = 1097363309,
	ANATOLIAN_HIEROGLYPHS = 1215067511,
	HATRAN = 1214346354,
	MULTANI = 1299541108,
	OLD_HUNGARIAN = 1215655527,
	SIGNWRITING = 1399287415,
	ADLAM = 1097100397,
	BHAIKSUKI = 1114139507,
	MARCHEN = 1298231907,
	OSAGE = 1332963173,
	TANGUT = 1415671399,
	NEWA = 1315272545,
	MASARAM_GONDI = 1198485101,
	NUSHU = 1316186229,
	SOYOMBO = 1399814511,
	ZANABAZAR_SQUARE = 1516334690,
	DOGRA = 1148151666,
	GUNJALA_GONDI = 1198485095,
	HANIFI_ROHINGYA = 1383032935,
	MAKASAR = 1298230113,
	MEDEFAIDRIN = 1298490470,
	OLD_SOGDIAN = 1399809903,
	SOGDIAN = 1399809892,
	ELYMAIC = 1164736877,
	NANDINAGARI = 1315008100,
	NYIAKENG_PUACHUE_HMONG = 1215131248,
	WANCHO = 1466132591,
	CHORASMIAN = 1130918515,
	DIVES_AKURU = 1147756907,
	KHITAN_SMALL_SCRIPT = 1265202291,
	YEZIDI = 1499822697,
	CYPRO_MINOAN = 1131441518,
	OLD_UYGHUR = 1333094258,
	TANGSA = 1416524641,
	TOTO = 1416590447,
	VITHKUQI = 1449751656,
	MATH = 1517122664,
	KAWI = 1264678761,
	NAG_MUNDARI = 1315006317,
	INVALID = 0,
};
export type style_tag_t = enum uint {
	ITALIC = 1769234796,
	OPTICAL_SIZE = 1869640570,
	SLANT_ANGLE = 1936486004,
	SLANT_RATIO = 1399615092,
	WIDTH = 2003072104,
	WEIGHT = 2003265652,
};
export type unicode_combining_class_t = enum uint {
	NOT_REORDERED = 0,
	OVERLAY = 1,
	NUKTA = 7,
	KANA_VOICING = 8,
	VIRAMA = 9,
	CCC10 = 10,
	CCC11 = 11,
	CCC12 = 12,
	CCC13 = 13,
	CCC14 = 14,
	CCC15 = 15,
	CCC16 = 16,
	CCC17 = 17,
	CCC18 = 18,
	CCC19 = 19,
	CCC20 = 20,
	CCC21 = 21,
	CCC22 = 22,
	CCC23 = 23,
	CCC24 = 24,
	CCC25 = 25,
	CCC26 = 26,
	CCC27 = 27,
	CCC28 = 28,
	CCC29 = 29,
	CCC30 = 30,
	CCC31 = 31,
	CCC32 = 32,
	CCC33 = 33,
	CCC34 = 34,
	CCC35 = 35,
	CCC36 = 36,
	CCC84 = 84,
	CCC91 = 91,
	CCC103 = 103,
	CCC107 = 107,
	CCC118 = 118,
	CCC122 = 122,
	CCC129 = 129,
	CCC130 = 130,
	CCC132 = 132,
	ATTACHED_BELOW_LEFT = 200,
	ATTACHED_BELOW = 202,
	ATTACHED_ABOVE = 214,
	ATTACHED_ABOVE_RIGHT = 216,
	BELOW_LEFT = 218,
	BELOW = 220,
	BELOW_RIGHT = 222,
	LEFT = 224,
	RIGHT = 226,
	ABOVE_LEFT = 228,
	ABOVE = 230,
	ABOVE_RIGHT = 232,
	DOUBLE_BELOW = 233,
	DOUBLE_ABOVE = 234,
	IOTA_SUBSCRIPT = 240,
	INVALID = 255,
};
export type unicode_general_category_t = enum uint {
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
export @symbol("hb_aat_layout_feature_type_get_name_id") fn aat_layout_feature_type_get_name_id(face: *face_t, feature_type: aat_layout_feature_type_t) ot_name_id_t;
export @symbol("hb_aat_layout_feature_type_get_selector_infos") fn aat_layout_feature_type_get_selector_infos(face: *face_t, feature_type: aat_layout_feature_type_t, start_offset: uint, selector_count: *uint, selectors: *aat_layout_feature_selector_info_t, default_index: *uint) uint;
export @symbol("hb_aat_layout_get_feature_types") fn aat_layout_get_feature_types(face: *face_t, start_offset: uint, feature_count: *uint, features: *aat_layout_feature_type_t) uint;
export @symbol("hb_aat_layout_has_positioning") fn aat_layout_has_positioning(face: *face_t) bool_t;
export @symbol("hb_aat_layout_has_substitution") fn aat_layout_has_substitution(face: *face_t) bool_t;
export @symbol("hb_aat_layout_has_tracking") fn aat_layout_has_tracking(face: *face_t) bool_t;
export @symbol("hb_blob_copy_writable_or_fail") fn blob_copy_writable_or_fail(blob: *blob_t) *blob_t;
export @symbol("hb_blob_create") fn blob_create(data: *c::char, length: uint, mode: memory_mode_t, user_data: *opaque, destroy: destroy_func_t) *blob_t;
export @symbol("hb_blob_create_from_file") fn blob_create_from_file(file_name: *c::char) *blob_t;
export @symbol("hb_blob_create_from_file_or_fail") fn blob_create_from_file_or_fail(file_name: *c::char) *blob_t;
export @symbol("hb_blob_create_or_fail") fn blob_create_or_fail(data: *c::char, length: uint, mode: memory_mode_t, user_data: *opaque, destroy: destroy_func_t) *blob_t;
export @symbol("hb_blob_create_sub_blob") fn blob_create_sub_blob(parent: *blob_t, offset_: uint, length: uint) *blob_t;
export @symbol("hb_blob_destroy") fn blob_destroy(blob: *blob_t) void;
export @symbol("hb_blob_get_data") fn blob_get_data(blob: *blob_t, length: *uint) *c::char;
export @symbol("hb_blob_get_data_writable") fn blob_get_data_writable(blob: *blob_t, length: *uint) *c::char;
export @symbol("hb_blob_get_empty") fn blob_get_empty() *blob_t;
export @symbol("hb_blob_get_length") fn blob_get_length(blob: *blob_t) uint;
export @symbol("hb_blob_get_user_data") fn blob_get_user_data(blob: *blob_t, key: *user_data_key_t) *opaque;
export @symbol("hb_blob_is_immutable") fn blob_is_immutable(blob: *blob_t) bool_t;
export @symbol("hb_blob_make_immutable") fn blob_make_immutable(blob: *blob_t) void;
export @symbol("hb_blob_reference") fn blob_reference(blob: *blob_t) *blob_t;
export @symbol("hb_blob_set_user_data") fn blob_set_user_data(blob: *blob_t, key: *user_data_key_t, data: *opaque, destroy: destroy_func_t, replace: bool_t) bool_t;
export @symbol("hb_buffer_add") fn buffer_add(buffer: *buffer_t, codepoint: codepoint_t, cluster: uint) void;
export @symbol("hb_buffer_add_codepoints") fn buffer_add_codepoints(buffer: *buffer_t, text: *codepoint_t, text_length: int, item_offset: uint, item_length: int) void;
export @symbol("hb_buffer_add_latin1") fn buffer_add_latin1(buffer: *buffer_t, text: *u8, text_length: int, item_offset: uint, item_length: int) void;
export @symbol("hb_buffer_add_utf16") fn buffer_add_utf16(buffer: *buffer_t, text: *u16, text_length: int, item_offset: uint, item_length: int) void;
export @symbol("hb_buffer_add_utf32") fn buffer_add_utf32(buffer: *buffer_t, text: *u32, text_length: int, item_offset: uint, item_length: int) void;
export @symbol("hb_buffer_add_utf8") fn buffer_add_utf8(buffer: *buffer_t, text: *c::char, text_length: int, item_offset: uint, item_length: int) void;
export @symbol("hb_buffer_allocation_successful") fn buffer_allocation_successful(buffer: *buffer_t) bool_t;
export @symbol("hb_buffer_append") fn buffer_append(buffer: *buffer_t, source: *buffer_t, start: uint, end: uint) void;
export @symbol("hb_buffer_clear_contents") fn buffer_clear_contents(buffer: *buffer_t) void;
export @symbol("hb_buffer_create") fn buffer_create() *buffer_t;
export @symbol("hb_buffer_create_similar") fn buffer_create_similar(src: *buffer_t) *buffer_t;
export @symbol("hb_buffer_deserialize_glyphs") fn buffer_deserialize_glyphs(buffer: *buffer_t, buf: *c::char, buf_len: int, end_ptr: **c::char, font: *font_t, format: buffer_serialize_format_t) bool_t;
export @symbol("hb_buffer_deserialize_unicode") fn buffer_deserialize_unicode(buffer: *buffer_t, buf: *c::char, buf_len: int, end_ptr: **c::char, format: buffer_serialize_format_t) bool_t;
export @symbol("hb_buffer_destroy") fn buffer_destroy(buffer: *buffer_t) void;
export @symbol("hb_buffer_diff") fn buffer_diff(buffer: *buffer_t, reference: *buffer_t, dottedcircle_glyph: codepoint_t, position_fuzz: uint) buffer_diff_flags_t;
export @symbol("hb_buffer_get_cluster_level") fn buffer_get_cluster_level(buffer: *buffer_t) buffer_cluster_level_t;
export @symbol("hb_buffer_get_content_type") fn buffer_get_content_type(buffer: *buffer_t) buffer_content_type_t;
export @symbol("hb_buffer_get_direction") fn buffer_get_direction(buffer: *buffer_t) direction_t;
export @symbol("hb_buffer_get_empty") fn buffer_get_empty() *buffer_t;
export @symbol("hb_buffer_get_flags") fn buffer_get_flags(buffer: *buffer_t) buffer_flags_t;
export @symbol("hb_buffer_get_glyph_infos") fn buffer_get_glyph_infos(buffer: *buffer_t, length: *uint) *glyph_info_t;
export @symbol("hb_buffer_get_glyph_positions") fn buffer_get_glyph_positions(buffer: *buffer_t, length: *uint) *glyph_position_t;
export @symbol("hb_buffer_get_invisible_glyph") fn buffer_get_invisible_glyph(buffer: *buffer_t) codepoint_t;
export @symbol("hb_buffer_get_language") fn buffer_get_language(buffer: *buffer_t) language_t;
export @symbol("hb_buffer_get_length") fn buffer_get_length(buffer: *buffer_t) uint;
export @symbol("hb_buffer_get_not_found_glyph") fn buffer_get_not_found_glyph(buffer: *buffer_t) codepoint_t;
export @symbol("hb_buffer_get_replacement_codepoint") fn buffer_get_replacement_codepoint(buffer: *buffer_t) codepoint_t;
export @symbol("hb_buffer_get_script") fn buffer_get_script(buffer: *buffer_t) script_t;
export @symbol("hb_buffer_get_segment_properties") fn buffer_get_segment_properties(buffer: *buffer_t, props: *segment_properties_t) void;
export @symbol("hb_buffer_get_unicode_funcs") fn buffer_get_unicode_funcs(buffer: *buffer_t) *unicode_funcs_t;
export @symbol("hb_buffer_get_user_data") fn buffer_get_user_data(buffer: *buffer_t, key: *user_data_key_t) *opaque;
export @symbol("hb_buffer_guess_segment_properties") fn buffer_guess_segment_properties(buffer: *buffer_t) void;
export @symbol("hb_buffer_has_positions") fn buffer_has_positions(buffer: *buffer_t) bool_t;
export @symbol("hb_buffer_normalize_glyphs") fn buffer_normalize_glyphs(buffer: *buffer_t) void;
export @symbol("hb_buffer_pre_allocate") fn buffer_pre_allocate(buffer: *buffer_t, size_: uint) bool_t;
export @symbol("hb_buffer_reference") fn buffer_reference(buffer: *buffer_t) *buffer_t;
export @symbol("hb_buffer_reset") fn buffer_reset(buffer: *buffer_t) void;
export @symbol("hb_buffer_reverse") fn buffer_reverse(buffer: *buffer_t) void;
export @symbol("hb_buffer_reverse_clusters") fn buffer_reverse_clusters(buffer: *buffer_t) void;
export @symbol("hb_buffer_reverse_range") fn buffer_reverse_range(buffer: *buffer_t, start: uint, end: uint) void;
export @symbol("hb_buffer_serialize") fn buffer_serialize(buffer: *buffer_t, start: uint, end: uint, buf: *c::char, buf_size: uint, buf_consumed: *uint, font: *font_t, format: buffer_serialize_format_t, flags: buffer_serialize_flags_t) uint;
export @symbol("hb_buffer_serialize_format_from_string") fn buffer_serialize_format_from_string(str_: *c::char, len_: int) buffer_serialize_format_t;
export @symbol("hb_buffer_serialize_format_to_string") fn buffer_serialize_format_to_string(format: buffer_serialize_format_t) *c::char;
export @symbol("hb_buffer_serialize_glyphs") fn buffer_serialize_glyphs(buffer: *buffer_t, start: uint, end: uint, buf: *c::char, buf_size: uint, buf_consumed: *uint, font: *font_t, format: buffer_serialize_format_t, flags: buffer_serialize_flags_t) uint;
export @symbol("hb_buffer_serialize_list_formats") fn buffer_serialize_list_formats() **c::char;
export @symbol("hb_buffer_serialize_unicode") fn buffer_serialize_unicode(buffer: *buffer_t, start: uint, end: uint, buf: *c::char, buf_size: uint, buf_consumed: *uint, format: buffer_serialize_format_t, flags: buffer_serialize_flags_t) uint;
export @symbol("hb_buffer_set_cluster_level") fn buffer_set_cluster_level(buffer: *buffer_t, cluster_level: buffer_cluster_level_t) void;
export @symbol("hb_buffer_set_content_type") fn buffer_set_content_type(buffer: *buffer_t, content_type: buffer_content_type_t) void;
export @symbol("hb_buffer_set_direction") fn buffer_set_direction(buffer: *buffer_t, direction: direction_t) void;
export @symbol("hb_buffer_set_flags") fn buffer_set_flags(buffer: *buffer_t, flags: buffer_flags_t) void;
export @symbol("hb_buffer_set_invisible_glyph") fn buffer_set_invisible_glyph(buffer: *buffer_t, invisible: codepoint_t) void;
export @symbol("hb_buffer_set_language") fn buffer_set_language(buffer: *buffer_t, language: language_t) void;
export @symbol("hb_buffer_set_length") fn buffer_set_length(buffer: *buffer_t, length: uint) bool_t;
export @symbol("hb_buffer_set_message_func") fn buffer_set_message_func(buffer: *buffer_t, func: buffer_message_func_t, user_data: *opaque, destroy: destroy_func_t) void;
export @symbol("hb_buffer_set_not_found_glyph") fn buffer_set_not_found_glyph(buffer: *buffer_t, not_found: codepoint_t) void;
export @symbol("hb_buffer_set_replacement_codepoint") fn buffer_set_replacement_codepoint(buffer: *buffer_t, replacement: codepoint_t) void;
export @symbol("hb_buffer_set_script") fn buffer_set_script(buffer: *buffer_t, script: script_t) void;
export @symbol("hb_buffer_set_segment_properties") fn buffer_set_segment_properties(buffer: *buffer_t, props: *segment_properties_t) void;
export @symbol("hb_buffer_set_unicode_funcs") fn buffer_set_unicode_funcs(buffer: *buffer_t, unicode_funcs: *unicode_funcs_t) void;
export @symbol("hb_buffer_set_user_data") fn buffer_set_user_data(buffer: *buffer_t, key: *user_data_key_t, data: *opaque, destroy: destroy_func_t, replace: bool_t) bool_t;
export @symbol("hb_color_get_alpha") fn color_get_alpha(color: color_t) u8;
export @symbol("hb_color_get_blue") fn color_get_blue(color: color_t) u8;
export @symbol("hb_color_get_green") fn color_get_green(color: color_t) u8;
export @symbol("hb_color_get_red") fn color_get_red(color: color_t) u8;
export @symbol("hb_color_line_get_color_stops") fn color_line_get_color_stops(color_line: *color_line_t, start: uint, count: *uint, color_stops: *color_stop_t) uint;
export @symbol("hb_color_line_get_extend") fn color_line_get_extend(color_line: *color_line_t) paint_extend_t;
export @symbol("hb_direction_from_string") fn direction_from_string(str_: *c::char, len_: int) direction_t;
export @symbol("hb_direction_to_string") fn direction_to_string(direction: direction_t) *c::char;
export @symbol("hb_draw_close_path") fn draw_close_path(dfuncs: *draw_funcs_t, draw_data: *opaque, st: *draw_state_t) void;
export @symbol("hb_draw_cubic_to") fn draw_cubic_to(dfuncs: *draw_funcs_t, draw_data: *opaque, st: *draw_state_t, control1_x: f32, control1_y: f32, control2_x: f32, control2_y: f32, to_x: f32, to_y: f32) void;
export @symbol("hb_draw_funcs_create") fn draw_funcs_create() *draw_funcs_t;
export @symbol("hb_draw_funcs_destroy") fn draw_funcs_destroy(dfuncs: *draw_funcs_t) void;
export @symbol("hb_draw_funcs_get_empty") fn draw_funcs_get_empty() *draw_funcs_t;
export @symbol("hb_draw_funcs_get_user_data") fn draw_funcs_get_user_data(dfuncs: *draw_funcs_t, key: *user_data_key_t) *opaque;
export @symbol("hb_draw_funcs_is_immutable") fn draw_funcs_is_immutable(dfuncs: *draw_funcs_t) bool_t;
export @symbol("hb_draw_funcs_make_immutable") fn draw_funcs_make_immutable(dfuncs: *draw_funcs_t) void;
export @symbol("hb_draw_funcs_reference") fn draw_funcs_reference(dfuncs: *draw_funcs_t) *draw_funcs_t;
export @symbol("hb_draw_funcs_set_close_path_func") fn draw_funcs_set_close_path_func(dfuncs: *draw_funcs_t, func: draw_close_path_func_t, user_data: *opaque, destroy: destroy_func_t) void;
export @symbol("hb_draw_funcs_set_cubic_to_func") fn draw_funcs_set_cubic_to_func(dfuncs: *draw_funcs_t, func: draw_cubic_to_func_t, user_data: *opaque, destroy: destroy_func_t) void;
export @symbol("hb_draw_funcs_set_line_to_func") fn draw_funcs_set_line_to_func(dfuncs: *draw_funcs_t, func: draw_line_to_func_t, user_data: *opaque, destroy: destroy_func_t) void;
export @symbol("hb_draw_funcs_set_move_to_func") fn draw_funcs_set_move_to_func(dfuncs: *draw_funcs_t, func: draw_move_to_func_t, user_data: *opaque, destroy: destroy_func_t) void;
export @symbol("hb_draw_funcs_set_quadratic_to_func") fn draw_funcs_set_quadratic_to_func(dfuncs: *draw_funcs_t, func: draw_quadratic_to_func_t, user_data: *opaque, destroy: destroy_func_t) void;
export @symbol("hb_draw_funcs_set_user_data") fn draw_funcs_set_user_data(dfuncs: *draw_funcs_t, key: *user_data_key_t, data: *opaque, destroy: destroy_func_t, replace: bool_t) bool_t;
export @symbol("hb_draw_line_to") fn draw_line_to(dfuncs: *draw_funcs_t, draw_data: *opaque, st: *draw_state_t, to_x: f32, to_y: f32) void;
export @symbol("hb_draw_move_to") fn draw_move_to(dfuncs: *draw_funcs_t, draw_data: *opaque, st: *draw_state_t, to_x: f32, to_y: f32) void;
export @symbol("hb_draw_quadratic_to") fn draw_quadratic_to(dfuncs: *draw_funcs_t, draw_data: *opaque, st: *draw_state_t, control_x: f32, control_y: f32, to_x: f32, to_y: f32) void;
export @symbol("hb_face_builder_add_table") fn face_builder_add_table(face: *face_t, tag: tag_t, blob: *blob_t) bool_t;
export @symbol("hb_face_builder_create") fn face_builder_create() *face_t;
export @symbol("hb_face_builder_sort_tables") fn face_builder_sort_tables(face: *face_t, tags: *tag_t) void;
export @symbol("hb_face_collect_nominal_glyph_mapping") fn face_collect_nominal_glyph_mapping(face: *face_t, mapping: *map_t, unicodes: *set_t) void;
export @symbol("hb_face_collect_unicodes") fn face_collect_unicodes(face: *face_t, out: *set_t) void;
export @symbol("hb_face_collect_variation_selectors") fn face_collect_variation_selectors(face: *face_t, out: *set_t) void;
export @symbol("hb_face_collect_variation_unicodes") fn face_collect_variation_unicodes(face: *face_t, variation_selector: codepoint_t, out: *set_t) void;
export @symbol("hb_face_count") fn face_count(blob: *blob_t) uint;
export @symbol("hb_face_create") fn face_create(blob: *blob_t, index: uint) *face_t;
export @symbol("hb_face_create_for_tables") fn face_create_for_tables(reference_table_func: reference_table_func_t, user_data: *opaque, destroy: destroy_func_t) *face_t;
export @symbol("hb_face_destroy") fn face_destroy(face: *face_t) void;
export @symbol("hb_face_get_empty") fn face_get_empty() *face_t;
export @symbol("hb_face_get_glyph_count") fn face_get_glyph_count(face: *face_t) uint;
export @symbol("hb_face_get_index") fn face_get_index(face: *face_t) uint;
export @symbol("hb_face_get_table_tags") fn face_get_table_tags(face: *face_t, start_offset: uint, table_count: *uint, table_tags: *tag_t) uint;
export @symbol("hb_face_get_upem") fn face_get_upem(face: *face_t) uint;
export @symbol("hb_face_get_user_data") fn face_get_user_data(face: *face_t, key: *user_data_key_t) *opaque;
export @symbol("hb_face_is_immutable") fn face_is_immutable(face: *face_t) bool_t;
export @symbol("hb_face_make_immutable") fn face_make_immutable(face: *face_t) void;
export @symbol("hb_face_reference") fn face_reference(face: *face_t) *face_t;
export @symbol("hb_face_reference_blob") fn face_reference_blob(face: *face_t) *blob_t;
export @symbol("hb_face_reference_table") fn face_reference_table(face: *face_t, tag: tag_t) *blob_t;
export @symbol("hb_face_set_glyph_count") fn face_set_glyph_count(face: *face_t, glyph_count: uint) void;
export @symbol("hb_face_set_index") fn face_set_index(face: *face_t, index: uint) void;
export @symbol("hb_face_set_upem") fn face_set_upem(face: *face_t, upem: uint) void;
export @symbol("hb_face_set_user_data") fn face_set_user_data(face: *face_t, key: *user_data_key_t, data: *opaque, destroy: destroy_func_t, replace: bool_t) bool_t;
export @symbol("hb_feature_from_string") fn feature_from_string(str_: *c::char, len_: int, feature: *feature_t) bool_t;
export @symbol("hb_font_add_glyph_origin_for_direction") fn font_add_glyph_origin_for_direction(font: *font_t, glyph: codepoint_t, direction: direction_t, x: *position_t, y: *position_t) void;
export @symbol("hb_font_changed") fn font_changed(font: *font_t) void;
export @symbol("hb_font_create") fn font_create(face: *face_t) *font_t;
export @symbol("hb_font_create_sub_font") fn font_create_sub_font(parent: *font_t) *font_t;
export @symbol("hb_font_destroy") fn font_destroy(font: *font_t) void;
export @symbol("hb_font_draw_glyph") fn font_draw_glyph(font: *font_t, glyph: codepoint_t, dfuncs: *draw_funcs_t, draw_data: *opaque) void;
export @symbol("hb_font_funcs_create") fn font_funcs_create() *font_funcs_t;
export @symbol("hb_font_funcs_destroy") fn font_funcs_destroy(ffuncs: *font_funcs_t) void;
export @symbol("hb_font_funcs_get_empty") fn font_funcs_get_empty() *font_funcs_t;
export @symbol("hb_font_funcs_get_user_data") fn font_funcs_get_user_data(ffuncs: *font_funcs_t, key: *user_data_key_t) *opaque;
export @symbol("hb_font_funcs_is_immutable") fn font_funcs_is_immutable(ffuncs: *font_funcs_t) bool_t;
export @symbol("hb_font_funcs_make_immutable") fn font_funcs_make_immutable(ffuncs: *font_funcs_t) void;
export @symbol("hb_font_funcs_reference") fn font_funcs_reference(ffuncs: *font_funcs_t) *font_funcs_t;
export @symbol("hb_font_funcs_set_draw_glyph_func") fn font_funcs_set_draw_glyph_func(ffuncs: *font_funcs_t, func: font_draw_glyph_func_t, user_data: *opaque, destroy: destroy_func_t) void;
export @symbol("hb_font_funcs_set_font_h_extents_func") fn font_funcs_set_font_h_extents_func(ffuncs: *font_funcs_t, func: font_get_font_h_extents_func_t, user_data: *opaque, destroy: destroy_func_t) void;
export @symbol("hb_font_funcs_set_font_v_extents_func") fn font_funcs_set_font_v_extents_func(ffuncs: *font_funcs_t, func: font_get_font_v_extents_func_t, user_data: *opaque, destroy: destroy_func_t) void;
export @symbol("hb_font_funcs_set_glyph_contour_point_func") fn font_funcs_set_glyph_contour_point_func(ffuncs: *font_funcs_t, func: font_get_glyph_contour_point_func_t, user_data: *opaque, destroy: destroy_func_t) void;
export @symbol("hb_font_funcs_set_glyph_extents_func") fn font_funcs_set_glyph_extents_func(ffuncs: *font_funcs_t, func: font_get_glyph_extents_func_t, user_data: *opaque, destroy: destroy_func_t) void;
export @symbol("hb_font_funcs_set_glyph_from_name_func") fn font_funcs_set_glyph_from_name_func(ffuncs: *font_funcs_t, func: font_get_glyph_from_name_func_t, user_data: *opaque, destroy: destroy_func_t) void;
export @symbol("hb_font_funcs_set_glyph_func") fn font_funcs_set_glyph_func(ffuncs: *font_funcs_t, func: font_get_glyph_func_t, user_data: *opaque, destroy: destroy_func_t) void;
export @symbol("hb_font_funcs_set_glyph_h_advance_func") fn font_funcs_set_glyph_h_advance_func(ffuncs: *font_funcs_t, func: font_get_glyph_h_advance_func_t, user_data: *opaque, destroy: destroy_func_t) void;
export @symbol("hb_font_funcs_set_glyph_h_advances_func") fn font_funcs_set_glyph_h_advances_func(ffuncs: *font_funcs_t, func: font_get_glyph_h_advances_func_t, user_data: *opaque, destroy: destroy_func_t) void;
export @symbol("hb_font_funcs_set_glyph_h_kerning_func") fn font_funcs_set_glyph_h_kerning_func(ffuncs: *font_funcs_t, func: font_get_glyph_h_kerning_func_t, user_data: *opaque, destroy: destroy_func_t) void;
export @symbol("hb_font_funcs_set_glyph_h_origin_func") fn font_funcs_set_glyph_h_origin_func(ffuncs: *font_funcs_t, func: font_get_glyph_h_origin_func_t, user_data: *opaque, destroy: destroy_func_t) void;
export @symbol("hb_font_funcs_set_glyph_name_func") fn font_funcs_set_glyph_name_func(ffuncs: *font_funcs_t, func: font_get_glyph_name_func_t, user_data: *opaque, destroy: destroy_func_t) void;
export @symbol("hb_font_funcs_set_glyph_shape_func") fn font_funcs_set_glyph_shape_func(ffuncs: *font_funcs_t, func: font_get_glyph_shape_func_t, user_data: *opaque, destroy: destroy_func_t) void;
export @symbol("hb_font_funcs_set_glyph_v_advance_func") fn font_funcs_set_glyph_v_advance_func(ffuncs: *font_funcs_t, func: font_get_glyph_v_advance_func_t, user_data: *opaque, destroy: destroy_func_t) void;
export @symbol("hb_font_funcs_set_glyph_v_advances_func") fn font_funcs_set_glyph_v_advances_func(ffuncs: *font_funcs_t, func: font_get_glyph_v_advances_func_t, user_data: *opaque, destroy: destroy_func_t) void;
export @symbol("hb_font_funcs_set_glyph_v_kerning_func") fn font_funcs_set_glyph_v_kerning_func(ffuncs: *font_funcs_t, func: font_get_glyph_v_kerning_func_t, user_data: *opaque, destroy: destroy_func_t) void;
export @symbol("hb_font_funcs_set_glyph_v_origin_func") fn font_funcs_set_glyph_v_origin_func(ffuncs: *font_funcs_t, func: font_get_glyph_v_origin_func_t, user_data: *opaque, destroy: destroy_func_t) void;
export @symbol("hb_font_funcs_set_nominal_glyph_func") fn font_funcs_set_nominal_glyph_func(ffuncs: *font_funcs_t, func: font_get_nominal_glyph_func_t, user_data: *opaque, destroy: destroy_func_t) void;
export @symbol("hb_font_funcs_set_nominal_glyphs_func") fn font_funcs_set_nominal_glyphs_func(ffuncs: *font_funcs_t, func: font_get_nominal_glyphs_func_t, user_data: *opaque, destroy: destroy_func_t) void;
export @symbol("hb_font_funcs_set_paint_glyph_func") fn font_funcs_set_paint_glyph_func(ffuncs: *font_funcs_t, func: font_paint_glyph_func_t, user_data: *opaque, destroy: destroy_func_t) void;
export @symbol("hb_font_funcs_set_user_data") fn font_funcs_set_user_data(ffuncs: *font_funcs_t, key: *user_data_key_t, data: *opaque, destroy: destroy_func_t, replace: bool_t) bool_t;
export @symbol("hb_font_funcs_set_variation_glyph_func") fn font_funcs_set_variation_glyph_func(ffuncs: *font_funcs_t, func: font_get_variation_glyph_func_t, user_data: *opaque, destroy: destroy_func_t) void;
export @symbol("hb_font_get_empty") fn font_get_empty() *font_t;
export @symbol("hb_font_get_extents_for_direction") fn font_get_extents_for_direction(font: *font_t, direction: direction_t, extents: *font_extents_t) void;
export @symbol("hb_font_get_face") fn font_get_face(font: *font_t) *face_t;
export @symbol("hb_font_get_glyph") fn font_get_glyph(font: *font_t, unicode: codepoint_t, variation_selector: codepoint_t, glyph: *codepoint_t) bool_t;
export @symbol("hb_font_get_glyph_advance_for_direction") fn font_get_glyph_advance_for_direction(font: *font_t, glyph: codepoint_t, direction: direction_t, x: *position_t, y: *position_t) void;
export @symbol("hb_font_get_glyph_advances_for_direction") fn font_get_glyph_advances_for_direction(font: *font_t, direction: direction_t, count: uint, first_glyph: *codepoint_t, glyph_stride: uint, first_advance: *position_t, advance_stride: uint) void;
export @symbol("hb_font_get_glyph_contour_point") fn font_get_glyph_contour_point(font: *font_t, glyph: codepoint_t, point_index: uint, x: *position_t, y: *position_t) bool_t;
export @symbol("hb_font_get_glyph_contour_point_for_origin") fn font_get_glyph_contour_point_for_origin(font: *font_t, glyph: codepoint_t, point_index: uint, direction: direction_t, x: *position_t, y: *position_t) bool_t;
export @symbol("hb_font_get_glyph_extents") fn font_get_glyph_extents(font: *font_t, glyph: codepoint_t, extents: *glyph_extents_t) bool_t;
export @symbol("hb_font_get_glyph_extents_for_origin") fn font_get_glyph_extents_for_origin(font: *font_t, glyph: codepoint_t, direction: direction_t, extents: *glyph_extents_t) bool_t;
export @symbol("hb_font_get_glyph_from_name") fn font_get_glyph_from_name(font: *font_t, name: *c::char, len_: int, glyph: *codepoint_t) bool_t;
export @symbol("hb_font_get_glyph_h_advance") fn font_get_glyph_h_advance(font: *font_t, glyph: codepoint_t) position_t;
export @symbol("hb_font_get_glyph_h_advances") fn font_get_glyph_h_advances(font: *font_t, count: uint, first_glyph: *codepoint_t, glyph_stride: uint, first_advance: *position_t, advance_stride: uint) void;
export @symbol("hb_font_get_glyph_h_kerning") fn font_get_glyph_h_kerning(font: *font_t, left_glyph: codepoint_t, right_glyph: codepoint_t) position_t;
export @symbol("hb_font_get_glyph_h_origin") fn font_get_glyph_h_origin(font: *font_t, glyph: codepoint_t, x: *position_t, y: *position_t) bool_t;
export @symbol("hb_font_get_glyph_kerning_for_direction") fn font_get_glyph_kerning_for_direction(font: *font_t, first_glyph: codepoint_t, second_glyph: codepoint_t, direction: direction_t, x: *position_t, y: *position_t) void;
export @symbol("hb_font_get_glyph_name") fn font_get_glyph_name(font: *font_t, glyph: codepoint_t, name: *c::char, size_: uint) bool_t;
export @symbol("hb_font_get_glyph_origin_for_direction") fn font_get_glyph_origin_for_direction(font: *font_t, glyph: codepoint_t, direction: direction_t, x: *position_t, y: *position_t) void;
export @symbol("hb_font_get_glyph_shape") fn font_get_glyph_shape(font: *font_t, glyph: codepoint_t, dfuncs: *draw_funcs_t, draw_data: *opaque) void;
export @symbol("hb_font_get_glyph_v_advance") fn font_get_glyph_v_advance(font: *font_t, glyph: codepoint_t) position_t;
export @symbol("hb_font_get_glyph_v_advances") fn font_get_glyph_v_advances(font: *font_t, count: uint, first_glyph: *codepoint_t, glyph_stride: uint, first_advance: *position_t, advance_stride: uint) void;
export @symbol("hb_font_get_glyph_v_kerning") fn font_get_glyph_v_kerning(font: *font_t, top_glyph: codepoint_t, bottom_glyph: codepoint_t) position_t;
export @symbol("hb_font_get_glyph_v_origin") fn font_get_glyph_v_origin(font: *font_t, glyph: codepoint_t, x: *position_t, y: *position_t) bool_t;
export @symbol("hb_font_get_h_extents") fn font_get_h_extents(font: *font_t, extents: *font_extents_t) bool_t;
export @symbol("hb_font_get_nominal_glyph") fn font_get_nominal_glyph(font: *font_t, unicode: codepoint_t, glyph: *codepoint_t) bool_t;
export @symbol("hb_font_get_nominal_glyphs") fn font_get_nominal_glyphs(font: *font_t, count: uint, first_unicode: *codepoint_t, unicode_stride: uint, first_glyph: *codepoint_t, glyph_stride: uint) uint;
export @symbol("hb_font_get_parent") fn font_get_parent(font: *font_t) *font_t;
export @symbol("hb_font_get_ppem") fn font_get_ppem(font: *font_t, x_ppem: *uint, y_ppem: *uint) void;
export @symbol("hb_font_get_ptem") fn font_get_ptem(font: *font_t) f32;
export @symbol("hb_font_get_scale") fn font_get_scale(font: *font_t, x_scale: *int, y_scale: *int) void;
export @symbol("hb_font_get_serial") fn font_get_serial(font: *font_t) uint;
export @symbol("hb_font_get_synthetic_bold") fn font_get_synthetic_bold(font: *font_t, x_embolden: *f32, y_embolden: *f32, in_place: *bool_t) void;
export @symbol("hb_font_get_synthetic_slant") fn font_get_synthetic_slant(font: *font_t) f32;
export @symbol("hb_font_get_user_data") fn font_get_user_data(font: *font_t, key: *user_data_key_t) *opaque;
export @symbol("hb_font_get_v_extents") fn font_get_v_extents(font: *font_t, extents: *font_extents_t) bool_t;
export @symbol("hb_font_get_var_coords_design") fn font_get_var_coords_design(font: *font_t, length: *uint) *f32;
export @symbol("hb_font_get_var_coords_normalized") fn font_get_var_coords_normalized(font: *font_t, length: *uint) *int;
export @symbol("hb_font_get_var_named_instance") fn font_get_var_named_instance(font: *font_t) uint;
export @symbol("hb_font_get_variation_glyph") fn font_get_variation_glyph(font: *font_t, unicode: codepoint_t, variation_selector: codepoint_t, glyph: *codepoint_t) bool_t;
export @symbol("hb_font_glyph_from_string") fn font_glyph_from_string(font: *font_t, s: *c::char, len_: int, glyph: *codepoint_t) bool_t;
export @symbol("hb_font_glyph_to_string") fn font_glyph_to_string(font: *font_t, glyph: codepoint_t, s: *c::char, size_: uint) void;
export @symbol("hb_font_is_immutable") fn font_is_immutable(font: *font_t) bool_t;
export @symbol("hb_font_make_immutable") fn font_make_immutable(font: *font_t) void;
export @symbol("hb_font_paint_glyph") fn font_paint_glyph(font: *font_t, glyph: codepoint_t, pfuncs: *paint_funcs_t, paint_data: *opaque, palette_index: uint, foreground: color_t) void;
export @symbol("hb_font_reference") fn font_reference(font: *font_t) *font_t;
export @symbol("hb_font_set_face") fn font_set_face(font: *font_t, face: *face_t) void;
export @symbol("hb_font_set_funcs") fn font_set_funcs(font: *font_t, klass: *font_funcs_t, font_data: *opaque, destroy: destroy_func_t) void;
export @symbol("hb_font_set_funcs_data") fn font_set_funcs_data(font: *font_t, font_data: *opaque, destroy: destroy_func_t) void;
export @symbol("hb_font_set_parent") fn font_set_parent(font: *font_t, parent: *font_t) void;
export @symbol("hb_font_set_ppem") fn font_set_ppem(font: *font_t, x_ppem: uint, y_ppem: uint) void;
export @symbol("hb_font_set_ptem") fn font_set_ptem(font: *font_t, ptem: f32) void;
export @symbol("hb_font_set_scale") fn font_set_scale(font: *font_t, x_scale: int, y_scale: int) void;
export @symbol("hb_font_set_synthetic_bold") fn font_set_synthetic_bold(font: *font_t, x_embolden: f32, y_embolden: f32, in_place: bool_t) void;
export @symbol("hb_font_set_synthetic_slant") fn font_set_synthetic_slant(font: *font_t, slant: f32) void;
export @symbol("hb_font_set_user_data") fn font_set_user_data(font: *font_t, key: *user_data_key_t, data: *opaque, destroy: destroy_func_t, replace: bool_t) bool_t;
export @symbol("hb_font_set_var_coords_design") fn font_set_var_coords_design(font: *font_t, coords: *f32, coords_length: uint) void;
export @symbol("hb_font_set_var_coords_normalized") fn font_set_var_coords_normalized(font: *font_t, coords: *int, coords_length: uint) void;
export @symbol("hb_font_set_var_named_instance") fn font_set_var_named_instance(font: *font_t, instance_index: uint) void;
export @symbol("hb_font_set_variation") fn font_set_variation(font: *font_t, tag: tag_t, value: f32) void;
export @symbol("hb_font_set_variations") fn font_set_variations(font: *font_t, variations: *variation_t, variations_length: uint) void;
export @symbol("hb_font_subtract_glyph_origin_for_direction") fn font_subtract_glyph_origin_for_direction(font: *font_t, glyph: codepoint_t, direction: direction_t, x: *position_t, y: *position_t) void;
export @symbol("hb_ft_face_create") fn ft_face_create(ft_face: freetype::Face, destroy: destroy_func_t) *face_t;
export @symbol("hb_ft_face_create_cached") fn ft_face_create_cached(ft_face: freetype::Face) *face_t;
export @symbol("hb_ft_face_create_referenced") fn ft_face_create_referenced(ft_face: freetype::Face) *face_t;
export @symbol("hb_ft_font_changed") fn ft_font_changed(font: *font_t) void;
export @symbol("hb_ft_font_create") fn ft_font_create(ft_face: freetype::Face, destroy: destroy_func_t) *font_t;
export @symbol("hb_ft_font_create_referenced") fn ft_font_create_referenced(ft_face: freetype::Face) *font_t;
export @symbol("hb_ft_font_get_face") fn ft_font_get_face(font: *font_t) freetype::Face;
export @symbol("hb_ft_font_get_load_flags") fn ft_font_get_load_flags(font: *font_t) int;
export @symbol("hb_ft_font_lock_face") fn ft_font_lock_face(font: *font_t) freetype::Face;
export @symbol("hb_ft_font_set_funcs") fn ft_font_set_funcs(font: *font_t) void;
export @symbol("hb_ft_font_set_load_flags") fn ft_font_set_load_flags(font: *font_t, load_flags: int) void;
export @symbol("hb_ft_font_unlock_face") fn ft_font_unlock_face(font: *font_t) void;
export @symbol("hb_ft_hb_font_changed") fn ft_hb_font_changed(font: *font_t) bool_t;
export @symbol("hb_glib_blob_create") fn glib_blob_create(gbytes: *glib::Bytes) *blob_t;
export @symbol("hb_glib_get_unicode_funcs") fn glib_get_unicode_funcs() *unicode_funcs_t;
export @symbol("hb_glib_script_from_script") fn glib_script_from_script(script: script_t) glib::UnicodeScript;
export @symbol("hb_glib_script_to_script") fn glib_script_to_script(script: glib::UnicodeScript) script_t;
export @symbol("hb_glyph_info_get_glyph_flags") fn glyph_info_get_glyph_flags(info: *glyph_info_t) glyph_flags_t;
export @symbol("hb_language_from_string") fn language_from_string(str_: *c::char, len_: int) language_t;
export @symbol("hb_language_get_default") fn language_get_default() language_t;
export @symbol("hb_language_matches") fn language_matches(language: language_t, specific: language_t) bool_t;
export @symbol("hb_map_allocation_successful") fn map_allocation_successful(map: *map_t) bool_t;
export @symbol("hb_map_clear") fn map_clear(map: *map_t) void;
export @symbol("hb_map_copy") fn map_copy(map: *map_t) *map_t;
export @symbol("hb_map_create") fn map_create() *map_t;
export @symbol("hb_map_del") fn map_del(map: *map_t, key: codepoint_t) void;
export @symbol("hb_map_destroy") fn map_destroy(map: *map_t) void;
export @symbol("hb_map_get") fn map_get(map: *map_t, key: codepoint_t) codepoint_t;
export @symbol("hb_map_get_empty") fn map_get_empty() *map_t;
export @symbol("hb_map_get_population") fn map_get_population(map: *map_t) uint;
export @symbol("hb_map_get_user_data") fn map_get_user_data(map: *map_t, key: *user_data_key_t) *opaque;
export @symbol("hb_map_has") fn map_has(map: *map_t, key: codepoint_t) bool_t;
export @symbol("hb_map_hash") fn map_hash(map: *map_t) uint;
export @symbol("hb_map_is_empty") fn map_is_empty(map: *map_t) bool_t;
export @symbol("hb_map_is_equal") fn map_is_equal(map: *map_t, other: *map_t) bool_t;
export @symbol("hb_map_keys") fn map_keys(map: *map_t, keys: *set_t) void;
export @symbol("hb_map_next") fn map_next(map: *map_t, idx: *int, key: *codepoint_t, value: *codepoint_t) bool_t;
export @symbol("hb_map_reference") fn map_reference(map: *map_t) *map_t;
export @symbol("hb_map_set") fn map_set(map: *map_t, key: codepoint_t, value: codepoint_t) void;
export @symbol("hb_map_set_user_data") fn map_set_user_data(map: *map_t, key: *user_data_key_t, data: *opaque, destroy: destroy_func_t, replace: bool_t) bool_t;
export @symbol("hb_map_update") fn map_update(map: *map_t, other: *map_t) void;
export @symbol("hb_map_values") fn map_values(map: *map_t, values: *set_t) void;
export @symbol("hb_ot_color_glyph_get_layers") fn ot_color_glyph_get_layers(face: *face_t, glyph: codepoint_t, start_offset: uint, layer_count: *uint, layers: *ot_color_layer_t) uint;
export @symbol("hb_ot_color_glyph_has_paint") fn ot_color_glyph_has_paint(face: *face_t, glyph: codepoint_t) bool_t;
export @symbol("hb_ot_color_glyph_reference_png") fn ot_color_glyph_reference_png(font: *font_t, glyph: codepoint_t) *blob_t;
export @symbol("hb_ot_color_glyph_reference_svg") fn ot_color_glyph_reference_svg(face: *face_t, glyph: codepoint_t) *blob_t;
export @symbol("hb_ot_color_has_layers") fn ot_color_has_layers(face: *face_t) bool_t;
export @symbol("hb_ot_color_has_paint") fn ot_color_has_paint(face: *face_t) bool_t;
export @symbol("hb_ot_color_has_palettes") fn ot_color_has_palettes(face: *face_t) bool_t;
export @symbol("hb_ot_color_has_png") fn ot_color_has_png(face: *face_t) bool_t;
export @symbol("hb_ot_color_has_svg") fn ot_color_has_svg(face: *face_t) bool_t;
export @symbol("hb_ot_color_palette_color_get_name_id") fn ot_color_palette_color_get_name_id(face: *face_t, color_index: uint) ot_name_id_t;
export @symbol("hb_ot_color_palette_get_colors") fn ot_color_palette_get_colors(face: *face_t, palette_index: uint, start_offset: uint, color_count: *uint, colors: *color_t) uint;
export @symbol("hb_ot_color_palette_get_count") fn ot_color_palette_get_count(face: *face_t) uint;
export @symbol("hb_ot_color_palette_get_flags") fn ot_color_palette_get_flags(face: *face_t, palette_index: uint) ot_color_palette_flags_t;
export @symbol("hb_ot_color_palette_get_name_id") fn ot_color_palette_get_name_id(face: *face_t, palette_index: uint) ot_name_id_t;
export @symbol("hb_ot_font_set_funcs") fn ot_font_set_funcs(font: *font_t) void;
export @symbol("hb_ot_layout_collect_features") fn ot_layout_collect_features(face: *face_t, table_tag: tag_t, scripts: *tag_t, languages: *tag_t, features: *tag_t, feature_indexes: *set_t) void;
export @symbol("hb_ot_layout_collect_features_map") fn ot_layout_collect_features_map(face: *face_t, table_tag: tag_t, script_index: uint, language_index: uint, feature_map: *map_t) void;
export @symbol("hb_ot_layout_collect_lookups") fn ot_layout_collect_lookups(face: *face_t, table_tag: tag_t, scripts: *tag_t, languages: *tag_t, features: *tag_t, lookup_indexes: *set_t) void;
export @symbol("hb_ot_layout_feature_get_characters") fn ot_layout_feature_get_characters(face: *face_t, table_tag: tag_t, feature_index: uint, start_offset: uint, char_count: *uint, characters: *codepoint_t) uint;
export @symbol("hb_ot_layout_feature_get_lookups") fn ot_layout_feature_get_lookups(face: *face_t, table_tag: tag_t, feature_index: uint, start_offset: uint, lookup_count: *uint, lookup_indexes: *uint) uint;
export @symbol("hb_ot_layout_feature_get_name_ids") fn ot_layout_feature_get_name_ids(face: *face_t, table_tag: tag_t, feature_index: uint, label_id: *ot_name_id_t, tooltip_id: *ot_name_id_t, sample_id: *ot_name_id_t, num_named_parameters: *uint, first_param_id: *ot_name_id_t) bool_t;
export @symbol("hb_ot_layout_feature_with_variations_get_lookups") fn ot_layout_feature_with_variations_get_lookups(face: *face_t, table_tag: tag_t, feature_index: uint, variations_index: uint, start_offset: uint, lookup_count: *uint, lookup_indexes: *uint) uint;
export @symbol("hb_ot_layout_get_attach_points") fn ot_layout_get_attach_points(face: *face_t, glyph: codepoint_t, start_offset: uint, point_count: *uint, point_array: *uint) uint;
export @symbol("hb_ot_layout_get_baseline") fn ot_layout_get_baseline(font: *font_t, baseline_tag: ot_layout_baseline_tag_t, direction: direction_t, script_tag: tag_t, language_tag: tag_t, coord: *position_t) bool_t;
export @symbol("hb_ot_layout_get_baseline2") fn ot_layout_get_baseline2(font: *font_t, baseline_tag: ot_layout_baseline_tag_t, direction: direction_t, script: script_t, language: language_t, coord: *position_t) bool_t;
export @symbol("hb_ot_layout_get_baseline_with_fallback") fn ot_layout_get_baseline_with_fallback(font: *font_t, baseline_tag: ot_layout_baseline_tag_t, direction: direction_t, script_tag: tag_t, language_tag: tag_t, coord: *position_t) void;
export @symbol("hb_ot_layout_get_baseline_with_fallback2") fn ot_layout_get_baseline_with_fallback2(font: *font_t, baseline_tag: ot_layout_baseline_tag_t, direction: direction_t, script: script_t, language: language_t, coord: *position_t) void;
export @symbol("hb_ot_layout_get_font_extents") fn ot_layout_get_font_extents(font: *font_t, direction: direction_t, script_tag: tag_t, language_tag: tag_t, extents: *font_extents_t) bool_t;
export @symbol("hb_ot_layout_get_font_extents2") fn ot_layout_get_font_extents2(font: *font_t, direction: direction_t, script: script_t, language: language_t, extents: *font_extents_t) bool_t;
export @symbol("hb_ot_layout_get_glyph_class") fn ot_layout_get_glyph_class(face: *face_t, glyph: codepoint_t) ot_layout_glyph_class_t;
export @symbol("hb_ot_layout_get_glyphs_in_class") fn ot_layout_get_glyphs_in_class(face: *face_t, klass: ot_layout_glyph_class_t, glyphs: *set_t) void;
export @symbol("hb_ot_layout_get_horizontal_baseline_tag_for_script") fn ot_layout_get_horizontal_baseline_tag_for_script(script: script_t) ot_layout_baseline_tag_t;
export @symbol("hb_ot_layout_get_ligature_carets") fn ot_layout_get_ligature_carets(font: *font_t, direction: direction_t, glyph: codepoint_t, start_offset: uint, caret_count: *uint, caret_array: *position_t) uint;
export @symbol("hb_ot_layout_get_size_params") fn ot_layout_get_size_params(face: *face_t, design_size: *uint, subfamily_id: *uint, subfamily_name_id: *ot_name_id_t, range_start: *uint, range_end: *uint) bool_t;
export @symbol("hb_ot_layout_has_glyph_classes") fn ot_layout_has_glyph_classes(face: *face_t) bool_t;
export @symbol("hb_ot_layout_has_positioning") fn ot_layout_has_positioning(face: *face_t) bool_t;
export @symbol("hb_ot_layout_has_substitution") fn ot_layout_has_substitution(face: *face_t) bool_t;
export @symbol("hb_ot_layout_language_find_feature") fn ot_layout_language_find_feature(face: *face_t, table_tag: tag_t, script_index: uint, language_index: uint, feature_tag: tag_t, feature_index: *uint) bool_t;
export @symbol("hb_ot_layout_language_get_feature_indexes") fn ot_layout_language_get_feature_indexes(face: *face_t, table_tag: tag_t, script_index: uint, language_index: uint, start_offset: uint, feature_count: *uint, feature_indexes: *uint) uint;
export @symbol("hb_ot_layout_language_get_feature_tags") fn ot_layout_language_get_feature_tags(face: *face_t, table_tag: tag_t, script_index: uint, language_index: uint, start_offset: uint, feature_count: *uint, feature_tags: *tag_t) uint;
export @symbol("hb_ot_layout_language_get_required_feature") fn ot_layout_language_get_required_feature(face: *face_t, table_tag: tag_t, script_index: uint, language_index: uint, feature_index: *uint, feature_tag: *tag_t) bool_t;
export @symbol("hb_ot_layout_language_get_required_feature_index") fn ot_layout_language_get_required_feature_index(face: *face_t, table_tag: tag_t, script_index: uint, language_index: uint, feature_index: *uint) bool_t;
export @symbol("hb_ot_layout_lookup_collect_glyphs") fn ot_layout_lookup_collect_glyphs(face: *face_t, table_tag: tag_t, lookup_index: uint, glyphs_before: *set_t, glyphs_input: *set_t, glyphs_after: *set_t, glyphs_output: *set_t) void;
export @symbol("hb_ot_layout_lookup_get_glyph_alternates") fn ot_layout_lookup_get_glyph_alternates(face: *face_t, lookup_index: uint, glyph: codepoint_t, start_offset: uint, alternate_count: uint, alternate_glyphs: *codepoint_t) uint;
export @symbol("hb_ot_layout_lookup_get_optical_bound") fn ot_layout_lookup_get_optical_bound(font: *font_t, lookup_index: uint, direction: direction_t, glyph: codepoint_t) position_t;
export @symbol("hb_ot_layout_lookup_substitute_closure") fn ot_layout_lookup_substitute_closure(face: *face_t, lookup_index: uint, glyphs: *set_t) void;
export @symbol("hb_ot_layout_lookup_would_substitute") fn ot_layout_lookup_would_substitute(face: *face_t, lookup_index: uint, glyphs: *codepoint_t, glyphs_length: uint, zero_context: bool_t) bool_t;
export @symbol("hb_ot_layout_lookups_substitute_closure") fn ot_layout_lookups_substitute_closure(face: *face_t, lookups: *set_t, glyphs: *set_t) void;
export @symbol("hb_ot_layout_script_find_language") fn ot_layout_script_find_language(face: *face_t, table_tag: tag_t, script_index: uint, language_tag: tag_t, language_index: *uint) bool_t;
export @symbol("hb_ot_layout_script_get_language_tags") fn ot_layout_script_get_language_tags(face: *face_t, table_tag: tag_t, script_index: uint, start_offset: uint, language_count: *uint, language_tags: *tag_t) uint;
export @symbol("hb_ot_layout_script_select_language") fn ot_layout_script_select_language(face: *face_t, table_tag: tag_t, script_index: uint, language_count: uint, language_tags: *tag_t, language_index: *uint) bool_t;
export @symbol("hb_ot_layout_script_select_language2") fn ot_layout_script_select_language2(face: *face_t, table_tag: tag_t, script_index: uint, language_count: uint, language_tags: *tag_t, language_index: *uint, chosen_language: *tag_t) bool_t;
export @symbol("hb_ot_layout_table_choose_script") fn ot_layout_table_choose_script(face: *face_t, table_tag: tag_t, script_tags: *tag_t, script_index: *uint, chosen_script: *tag_t) bool_t;
export @symbol("hb_ot_layout_table_find_feature_variations") fn ot_layout_table_find_feature_variations(face: *face_t, table_tag: tag_t, coords: *int, num_coords: uint, variations_index: *uint) bool_t;
export @symbol("hb_ot_layout_table_find_script") fn ot_layout_table_find_script(face: *face_t, table_tag: tag_t, script_tag: tag_t, script_index: *uint) bool_t;
export @symbol("hb_ot_layout_table_get_feature_tags") fn ot_layout_table_get_feature_tags(face: *face_t, table_tag: tag_t, start_offset: uint, feature_count: *uint, feature_tags: *tag_t) uint;
export @symbol("hb_ot_layout_table_get_lookup_count") fn ot_layout_table_get_lookup_count(face: *face_t, table_tag: tag_t) uint;
export @symbol("hb_ot_layout_table_get_script_tags") fn ot_layout_table_get_script_tags(face: *face_t, table_tag: tag_t, start_offset: uint, script_count: *uint, script_tags: *tag_t) uint;
export @symbol("hb_ot_layout_table_select_script") fn ot_layout_table_select_script(face: *face_t, table_tag: tag_t, script_count: uint, script_tags: *tag_t, script_index: *uint, chosen_script: *tag_t) bool_t;
export @symbol("hb_ot_math_get_constant") fn ot_math_get_constant(font: *font_t, constant: ot_math_constant_t) position_t;
export @symbol("hb_ot_math_get_glyph_assembly") fn ot_math_get_glyph_assembly(font: *font_t, glyph: codepoint_t, direction: direction_t, start_offset: uint, parts_count: *uint, parts: *ot_math_glyph_part_t, italics_correction: *position_t) uint;
export @symbol("hb_ot_math_get_glyph_italics_correction") fn ot_math_get_glyph_italics_correction(font: *font_t, glyph: codepoint_t) position_t;
export @symbol("hb_ot_math_get_glyph_kerning") fn ot_math_get_glyph_kerning(font: *font_t, glyph: codepoint_t, kern: ot_math_kern_t, correction_height: position_t) position_t;
export @symbol("hb_ot_math_get_glyph_kernings") fn ot_math_get_glyph_kernings(font: *font_t, glyph: codepoint_t, kern: ot_math_kern_t, start_offset: uint, entries_count: *uint, kern_entries: *ot_math_kern_entry_t) uint;
export @symbol("hb_ot_math_get_glyph_top_accent_attachment") fn ot_math_get_glyph_top_accent_attachment(font: *font_t, glyph: codepoint_t) position_t;
export @symbol("hb_ot_math_get_glyph_variants") fn ot_math_get_glyph_variants(font: *font_t, glyph: codepoint_t, direction: direction_t, start_offset: uint, variants_count: *uint, variants: *ot_math_glyph_variant_t) uint;
export @symbol("hb_ot_math_get_min_connector_overlap") fn ot_math_get_min_connector_overlap(font: *font_t, direction: direction_t) position_t;
export @symbol("hb_ot_math_has_data") fn ot_math_has_data(face: *face_t) bool_t;
export @symbol("hb_ot_math_is_glyph_extended_shape") fn ot_math_is_glyph_extended_shape(face: *face_t, glyph: codepoint_t) bool_t;
export @symbol("hb_ot_meta_get_entry_tags") fn ot_meta_get_entry_tags(face: *face_t, start_offset: uint, entries_count: *uint, entries: *ot_meta_tag_t) uint;
export @symbol("hb_ot_meta_reference_entry") fn ot_meta_reference_entry(face: *face_t, meta_tag: ot_meta_tag_t) *blob_t;
export @symbol("hb_ot_metrics_get_position") fn ot_metrics_get_position(font: *font_t, metrics_tag: ot_metrics_tag_t, position: *position_t) bool_t;
export @symbol("hb_ot_metrics_get_position_with_fallback") fn ot_metrics_get_position_with_fallback(font: *font_t, metrics_tag: ot_metrics_tag_t, position: *position_t) void;
export @symbol("hb_ot_metrics_get_variation") fn ot_metrics_get_variation(font: *font_t, metrics_tag: ot_metrics_tag_t) f32;
export @symbol("hb_ot_metrics_get_x_variation") fn ot_metrics_get_x_variation(font: *font_t, metrics_tag: ot_metrics_tag_t) position_t;
export @symbol("hb_ot_metrics_get_y_variation") fn ot_metrics_get_y_variation(font: *font_t, metrics_tag: ot_metrics_tag_t) position_t;
export @symbol("hb_ot_name_get_utf16") fn ot_name_get_utf16(face: *face_t, name_id: ot_name_id_t, language: language_t, text_size: *uint, text: *u16) uint;
export @symbol("hb_ot_name_get_utf32") fn ot_name_get_utf32(face: *face_t, name_id: ot_name_id_t, language: language_t, text_size: *uint, text: *u32) uint;
export @symbol("hb_ot_name_get_utf8") fn ot_name_get_utf8(face: *face_t, name_id: ot_name_id_t, language: language_t, text_size: *uint, text: *c::char) uint;
export @symbol("hb_ot_name_list_names") fn ot_name_list_names(face: *face_t, num_entries: *uint) *ot_name_entry_t;
export @symbol("hb_ot_shape_glyphs_closure") fn ot_shape_glyphs_closure(font: *font_t, buffer: *buffer_t, features: *feature_t, num_features: uint, glyphs: *set_t) void;
export @symbol("hb_ot_shape_plan_collect_lookups") fn ot_shape_plan_collect_lookups(shape_plan: *shape_plan_t, table_tag: tag_t, lookup_indexes: *set_t) void;
export @symbol("hb_ot_tag_from_language") fn ot_tag_from_language(language: language_t) tag_t;
export @symbol("hb_ot_tag_to_language") fn ot_tag_to_language(tag: tag_t) language_t;
export @symbol("hb_ot_tag_to_script") fn ot_tag_to_script(tag: tag_t) script_t;
export @symbol("hb_ot_tags_from_script") fn ot_tags_from_script(script: script_t, script_tag_1: *tag_t, script_tag_2: *tag_t) void;
export @symbol("hb_ot_tags_from_script_and_language") fn ot_tags_from_script_and_language(script: script_t, language: language_t, script_count: *uint, script_tags: *tag_t, language_count: *uint, language_tags: *tag_t) void;
export @symbol("hb_ot_tags_to_script_and_language") fn ot_tags_to_script_and_language(script_tag: tag_t, language_tag: tag_t, script: *script_t, language: *language_t) void;
export @symbol("hb_ot_var_find_axis") fn ot_var_find_axis(face: *face_t, axis_tag: tag_t, axis_index: *uint, axis_info: *ot_var_axis_t) bool_t;
export @symbol("hb_ot_var_find_axis_info") fn ot_var_find_axis_info(face: *face_t, axis_tag: tag_t, axis_info: *ot_var_axis_info_t) bool_t;
export @symbol("hb_ot_var_get_axes") fn ot_var_get_axes(face: *face_t, start_offset: uint, axes_count: *uint, axes_array: *ot_var_axis_t) uint;
export @symbol("hb_ot_var_get_axis_count") fn ot_var_get_axis_count(face: *face_t) uint;
export @symbol("hb_ot_var_get_axis_infos") fn ot_var_get_axis_infos(face: *face_t, start_offset: uint, axes_count: *uint, axes_array: *ot_var_axis_info_t) uint;
export @symbol("hb_ot_var_get_named_instance_count") fn ot_var_get_named_instance_count(face: *face_t) uint;
export @symbol("hb_ot_var_has_data") fn ot_var_has_data(face: *face_t) bool_t;
export @symbol("hb_ot_var_named_instance_get_design_coords") fn ot_var_named_instance_get_design_coords(face: *face_t, instance_index: uint, coords_length: *uint, coords: *f32) uint;
export @symbol("hb_ot_var_named_instance_get_postscript_name_id") fn ot_var_named_instance_get_postscript_name_id(face: *face_t, instance_index: uint) ot_name_id_t;
export @symbol("hb_ot_var_named_instance_get_subfamily_name_id") fn ot_var_named_instance_get_subfamily_name_id(face: *face_t, instance_index: uint) ot_name_id_t;
export @symbol("hb_ot_var_normalize_coords") fn ot_var_normalize_coords(face: *face_t, coords_length: uint, design_coords: *f32, normalized_coords: *int) void;
export @symbol("hb_ot_var_normalize_variations") fn ot_var_normalize_variations(face: *face_t, variations: *variation_t, variations_length: uint, coords: *int, coords_length: uint) void;
export @symbol("hb_paint_color") fn paint_color(funcs: *paint_funcs_t, paint_data: *opaque, is_foreground: bool_t, color: color_t) void;
export @symbol("hb_paint_custom_palette_color") fn paint_custom_palette_color(funcs: *paint_funcs_t, paint_data: *opaque, color_index: uint, color: *color_t) bool_t;
export @symbol("hb_paint_funcs_create") fn paint_funcs_create() *paint_funcs_t;
export @symbol("hb_paint_funcs_destroy") fn paint_funcs_destroy(funcs: *paint_funcs_t) void;
export @symbol("hb_paint_funcs_get_empty") fn paint_funcs_get_empty() *paint_funcs_t;
export @symbol("hb_paint_funcs_get_user_data") fn paint_funcs_get_user_data(funcs: *paint_funcs_t, key: *user_data_key_t) *opaque;
export @symbol("hb_paint_funcs_is_immutable") fn paint_funcs_is_immutable(funcs: *paint_funcs_t) bool_t;
export @symbol("hb_paint_funcs_make_immutable") fn paint_funcs_make_immutable(funcs: *paint_funcs_t) void;
export @symbol("hb_paint_funcs_reference") fn paint_funcs_reference(funcs: *paint_funcs_t) *paint_funcs_t;
export @symbol("hb_paint_funcs_set_color_func") fn paint_funcs_set_color_func(funcs: *paint_funcs_t, func: paint_color_func_t, user_data: *opaque, destroy: destroy_func_t) void;
export @symbol("hb_paint_funcs_set_custom_palette_color_func") fn paint_funcs_set_custom_palette_color_func(funcs: *paint_funcs_t, func: paint_custom_palette_color_func_t, user_data: *opaque, destroy: destroy_func_t) void;
export @symbol("hb_paint_funcs_set_image_func") fn paint_funcs_set_image_func(funcs: *paint_funcs_t, func: paint_image_func_t, user_data: *opaque, destroy: destroy_func_t) void;
export @symbol("hb_paint_funcs_set_linear_gradient_func") fn paint_funcs_set_linear_gradient_func(funcs: *paint_funcs_t, func: paint_linear_gradient_func_t, user_data: *opaque, destroy: destroy_func_t) void;
export @symbol("hb_paint_funcs_set_pop_clip_func") fn paint_funcs_set_pop_clip_func(funcs: *paint_funcs_t, func: paint_pop_clip_func_t, user_data: *opaque, destroy: destroy_func_t) void;
export @symbol("hb_paint_funcs_set_pop_group_func") fn paint_funcs_set_pop_group_func(funcs: *paint_funcs_t, func: paint_pop_group_func_t, user_data: *opaque, destroy: destroy_func_t) void;
export @symbol("hb_paint_funcs_set_pop_transform_func") fn paint_funcs_set_pop_transform_func(funcs: *paint_funcs_t, func: paint_pop_transform_func_t, user_data: *opaque, destroy: destroy_func_t) void;
export @symbol("hb_paint_funcs_set_push_clip_glyph_func") fn paint_funcs_set_push_clip_glyph_func(funcs: *paint_funcs_t, func: paint_push_clip_glyph_func_t, user_data: *opaque, destroy: destroy_func_t) void;
export @symbol("hb_paint_funcs_set_push_clip_rectangle_func") fn paint_funcs_set_push_clip_rectangle_func(funcs: *paint_funcs_t, func: paint_push_clip_rectangle_func_t, user_data: *opaque, destroy: destroy_func_t) void;
export @symbol("hb_paint_funcs_set_push_group_func") fn paint_funcs_set_push_group_func(funcs: *paint_funcs_t, func: paint_push_group_func_t, user_data: *opaque, destroy: destroy_func_t) void;
export @symbol("hb_paint_funcs_set_push_transform_func") fn paint_funcs_set_push_transform_func(funcs: *paint_funcs_t, func: paint_push_transform_func_t, user_data: *opaque, destroy: destroy_func_t) void;
export @symbol("hb_paint_funcs_set_radial_gradient_func") fn paint_funcs_set_radial_gradient_func(funcs: *paint_funcs_t, func: paint_radial_gradient_func_t, user_data: *opaque, destroy: destroy_func_t) void;
export @symbol("hb_paint_funcs_set_sweep_gradient_func") fn paint_funcs_set_sweep_gradient_func(funcs: *paint_funcs_t, func: paint_sweep_gradient_func_t, user_data: *opaque, destroy: destroy_func_t) void;
export @symbol("hb_paint_funcs_set_user_data") fn paint_funcs_set_user_data(funcs: *paint_funcs_t, key: *user_data_key_t, data: *opaque, destroy: destroy_func_t, replace: bool_t) bool_t;
export @symbol("hb_paint_image") fn paint_image(funcs: *paint_funcs_t, paint_data: *opaque, image: *blob_t, width: uint, height: uint, format: tag_t, slant: f32, extents: *glyph_extents_t) void;
export @symbol("hb_paint_linear_gradient") fn paint_linear_gradient(funcs: *paint_funcs_t, paint_data: *opaque, color_line: *color_line_t, x0: f32, y0: f32, x1: f32, y1: f32, x2: f32, y2: f32) void;
export @symbol("hb_paint_pop_clip") fn paint_pop_clip(funcs: *paint_funcs_t, paint_data: *opaque) void;
export @symbol("hb_paint_pop_group") fn paint_pop_group(funcs: *paint_funcs_t, paint_data: *opaque, mode: paint_composite_mode_t) void;
export @symbol("hb_paint_pop_transform") fn paint_pop_transform(funcs: *paint_funcs_t, paint_data: *opaque) void;
export @symbol("hb_paint_push_clip_glyph") fn paint_push_clip_glyph(funcs: *paint_funcs_t, paint_data: *opaque, glyph: codepoint_t, font: *font_t) void;
export @symbol("hb_paint_push_clip_rectangle") fn paint_push_clip_rectangle(funcs: *paint_funcs_t, paint_data: *opaque, xmin: f32, ymin: f32, xmax: f32, ymax: f32) void;
export @symbol("hb_paint_push_group") fn paint_push_group(funcs: *paint_funcs_t, paint_data: *opaque) void;
export @symbol("hb_paint_push_transform") fn paint_push_transform(funcs: *paint_funcs_t, paint_data: *opaque, xx: f32, yx: f32, xy: f32, yy: f32, dx: f32, dy: f32) void;
export @symbol("hb_paint_radial_gradient") fn paint_radial_gradient(funcs: *paint_funcs_t, paint_data: *opaque, color_line: *color_line_t, x0: f32, y0: f32, r0: f32, x1: f32, y1: f32, r1: f32) void;
export @symbol("hb_paint_sweep_gradient") fn paint_sweep_gradient(funcs: *paint_funcs_t, paint_data: *opaque, color_line: *color_line_t, x0: f32, y0: f32, start_angle: f32, end_angle: f32) void;
export @symbol("hb_script_from_iso15924_tag") fn script_from_iso15924_tag(tag: tag_t) script_t;
export @symbol("hb_script_from_string") fn script_from_string(str_: *c::char, len_: int) script_t;
export @symbol("hb_script_get_horizontal_direction") fn script_get_horizontal_direction(script: script_t) direction_t;
export @symbol("hb_script_to_iso15924_tag") fn script_to_iso15924_tag(script: script_t) tag_t;
export @symbol("hb_segment_properties_equal") fn segment_properties_equal(a: *segment_properties_t, b: *segment_properties_t) bool_t;
export @symbol("hb_segment_properties_hash") fn segment_properties_hash(p: *segment_properties_t) uint;
export @symbol("hb_segment_properties_overlay") fn segment_properties_overlay(p: *segment_properties_t, src: *segment_properties_t) void;
export @symbol("hb_set_add") fn set_add(set: *set_t, codepoint: codepoint_t) void;
export @symbol("hb_set_add_range") fn set_add_range(set: *set_t, first: codepoint_t, last: codepoint_t) void;
export @symbol("hb_set_add_sorted_array") fn set_add_sorted_array(set: *set_t, sorted_codepoints: *codepoint_t, num_codepoints: uint) void;
export @symbol("hb_set_allocation_successful") fn set_allocation_successful(set: *set_t) bool_t;
export @symbol("hb_set_clear") fn set_clear(set: *set_t) void;
export @symbol("hb_set_copy") fn set_copy(set: *set_t) *set_t;
export @symbol("hb_set_create") fn set_create() *set_t;
export @symbol("hb_set_del") fn set_del(set: *set_t, codepoint: codepoint_t) void;
export @symbol("hb_set_del_range") fn set_del_range(set: *set_t, first: codepoint_t, last: codepoint_t) void;
export @symbol("hb_set_destroy") fn set_destroy(set: *set_t) void;
export @symbol("hb_set_get_empty") fn set_get_empty() *set_t;
export @symbol("hb_set_get_max") fn set_get_max(set: *set_t) codepoint_t;
export @symbol("hb_set_get_min") fn set_get_min(set: *set_t) codepoint_t;
export @symbol("hb_set_get_population") fn set_get_population(set: *set_t) uint;
export @symbol("hb_set_get_user_data") fn set_get_user_data(set: *set_t, key: *user_data_key_t) *opaque;
export @symbol("hb_set_has") fn set_has(set: *set_t, codepoint: codepoint_t) bool_t;
export @symbol("hb_set_hash") fn set_hash(set: *set_t) uint;
export @symbol("hb_set_intersect") fn set_intersect(set: *set_t, other: *set_t) void;
export @symbol("hb_set_invert") fn set_invert(set: *set_t) void;
export @symbol("hb_set_is_empty") fn set_is_empty(set: *set_t) bool_t;
export @symbol("hb_set_is_equal") fn set_is_equal(set: *set_t, other: *set_t) bool_t;
export @symbol("hb_set_is_inverted") fn set_is_inverted(set: *set_t) bool_t;
export @symbol("hb_set_is_subset") fn set_is_subset(set: *set_t, larger_set: *set_t) bool_t;
export @symbol("hb_set_next") fn set_next(set: *set_t, codepoint: *codepoint_t) bool_t;
export @symbol("hb_set_next_many") fn set_next_many(set: *set_t, codepoint: codepoint_t, out: *codepoint_t, size_: uint) uint;
export @symbol("hb_set_next_range") fn set_next_range(set: *set_t, first: *codepoint_t, last: *codepoint_t) bool_t;
export @symbol("hb_set_previous") fn set_previous(set: *set_t, codepoint: *codepoint_t) bool_t;
export @symbol("hb_set_previous_range") fn set_previous_range(set: *set_t, first: *codepoint_t, last: *codepoint_t) bool_t;
export @symbol("hb_set_reference") fn set_reference(set: *set_t) *set_t;
export @symbol("hb_set_set") fn set_set(set: *set_t, other: *set_t) void;
export @symbol("hb_set_set_user_data") fn set_set_user_data(set: *set_t, key: *user_data_key_t, data: *opaque, destroy: destroy_func_t, replace: bool_t) bool_t;
export @symbol("hb_set_subtract") fn set_subtract(set: *set_t, other: *set_t) void;
export @symbol("hb_set_symmetric_difference") fn set_symmetric_difference(set: *set_t, other: *set_t) void;
export @symbol("hb_set_union") fn set_union(set: *set_t, other: *set_t) void;
export @symbol("hb_shape") fn shape(font: *font_t, buffer: *buffer_t, features: *feature_t, num_features: uint) void;
export @symbol("hb_shape_full") fn shape_full(font: *font_t, buffer: *buffer_t, features: *feature_t, num_features: uint, shaper_list: **c::char) bool_t;
export @symbol("hb_shape_justify") fn shape_justify(font: *font_t, buffer: *buffer_t, features: *feature_t, num_features: uint, shaper_list: **c::char, min_target_advance: f32, max_target_advance: f32, advance: *f32, var_tag: *tag_t, var_value: *f32) bool_t;
export @symbol("hb_shape_list_shapers") fn shape_list_shapers() **c::char;
export @symbol("hb_shape_plan_create") fn shape_plan_create(face: *face_t, props: *segment_properties_t, user_features: *feature_t, num_user_features: uint, shaper_list: **c::char) *shape_plan_t;
export @symbol("hb_shape_plan_create2") fn shape_plan_create2(face: *face_t, props: *segment_properties_t, user_features: *feature_t, num_user_features: uint, coords: *int, num_coords: uint, shaper_list: **c::char) *shape_plan_t;
export @symbol("hb_shape_plan_create_cached") fn shape_plan_create_cached(face: *face_t, props: *segment_properties_t, user_features: *feature_t, num_user_features: uint, shaper_list: **c::char) *shape_plan_t;
export @symbol("hb_shape_plan_create_cached2") fn shape_plan_create_cached2(face: *face_t, props: *segment_properties_t, user_features: *feature_t, num_user_features: uint, coords: *int, num_coords: uint, shaper_list: **c::char) *shape_plan_t;
export @symbol("hb_shape_plan_destroy") fn shape_plan_destroy(shape_plan: *shape_plan_t) void;
export @symbol("hb_shape_plan_execute") fn shape_plan_execute(shape_plan: *shape_plan_t, font: *font_t, buffer: *buffer_t, features: *feature_t, num_features: uint) bool_t;
export @symbol("hb_shape_plan_get_empty") fn shape_plan_get_empty() *shape_plan_t;
export @symbol("hb_shape_plan_get_shaper") fn shape_plan_get_shaper(shape_plan: *shape_plan_t) *c::char;
export @symbol("hb_shape_plan_get_user_data") fn shape_plan_get_user_data(shape_plan: *shape_plan_t, key: *user_data_key_t) *opaque;
export @symbol("hb_shape_plan_reference") fn shape_plan_reference(shape_plan: *shape_plan_t) *shape_plan_t;
export @symbol("hb_shape_plan_set_user_data") fn shape_plan_set_user_data(shape_plan: *shape_plan_t, key: *user_data_key_t, data: *opaque, destroy: destroy_func_t, replace: bool_t) bool_t;
export @symbol("hb_style_get_value") fn style_get_value(font: *font_t, style_tag: style_tag_t) f32;
export @symbol("hb_tag_from_string") fn tag_from_string(str_: *c::char, len_: int) tag_t;
export @symbol("hb_tag_to_string") fn tag_to_string(tag: tag_t, buf: [4]u8) void;
export @symbol("hb_unicode_combining_class") fn unicode_combining_class(ufuncs: *unicode_funcs_t, unicode: codepoint_t) unicode_combining_class_t;
export @symbol("hb_unicode_compose") fn unicode_compose(ufuncs: *unicode_funcs_t, a: codepoint_t, b: codepoint_t, ab: *codepoint_t) bool_t;
export @symbol("hb_unicode_decompose") fn unicode_decompose(ufuncs: *unicode_funcs_t, ab: codepoint_t, a: *codepoint_t, b: *codepoint_t) bool_t;
export @symbol("hb_unicode_decompose_compatibility") fn unicode_decompose_compatibility(ufuncs: *unicode_funcs_t, u: codepoint_t, decomposed: *codepoint_t) uint;
export @symbol("hb_unicode_eastasian_width") fn unicode_eastasian_width(ufuncs: *unicode_funcs_t, unicode: codepoint_t) uint;
export @symbol("hb_unicode_funcs_create") fn unicode_funcs_create(parent: *unicode_funcs_t) *unicode_funcs_t;
export @symbol("hb_unicode_funcs_destroy") fn unicode_funcs_destroy(ufuncs: *unicode_funcs_t) void;
export @symbol("hb_unicode_funcs_get_default") fn unicode_funcs_get_default() *unicode_funcs_t;
export @symbol("hb_unicode_funcs_get_empty") fn unicode_funcs_get_empty() *unicode_funcs_t;
export @symbol("hb_unicode_funcs_get_parent") fn unicode_funcs_get_parent(ufuncs: *unicode_funcs_t) *unicode_funcs_t;
export @symbol("hb_unicode_funcs_get_user_data") fn unicode_funcs_get_user_data(ufuncs: *unicode_funcs_t, key: *user_data_key_t) *opaque;
export @symbol("hb_unicode_funcs_is_immutable") fn unicode_funcs_is_immutable(ufuncs: *unicode_funcs_t) bool_t;
export @symbol("hb_unicode_funcs_make_immutable") fn unicode_funcs_make_immutable(ufuncs: *unicode_funcs_t) void;
export @symbol("hb_unicode_funcs_reference") fn unicode_funcs_reference(ufuncs: *unicode_funcs_t) *unicode_funcs_t;
export @symbol("hb_unicode_funcs_set_combining_class_func") fn unicode_funcs_set_combining_class_func(ufuncs: *unicode_funcs_t, func: unicode_combining_class_func_t, user_data: *opaque, destroy: destroy_func_t) void;
export @symbol("hb_unicode_funcs_set_compose_func") fn unicode_funcs_set_compose_func(ufuncs: *unicode_funcs_t, func: unicode_compose_func_t, user_data: *opaque, destroy: destroy_func_t) void;
export @symbol("hb_unicode_funcs_set_decompose_compatibility_func") fn unicode_funcs_set_decompose_compatibility_func(ufuncs: *unicode_funcs_t, func: unicode_decompose_compatibility_func_t, user_data: *opaque, destroy: destroy_func_t) void;
export @symbol("hb_unicode_funcs_set_decompose_func") fn unicode_funcs_set_decompose_func(ufuncs: *unicode_funcs_t, func: unicode_decompose_func_t, user_data: *opaque, destroy: destroy_func_t) void;
export @symbol("hb_unicode_funcs_set_eastasian_width_func") fn unicode_funcs_set_eastasian_width_func(ufuncs: *unicode_funcs_t, func: unicode_eastasian_width_func_t, user_data: *opaque, destroy: destroy_func_t) void;
export @symbol("hb_unicode_funcs_set_general_category_func") fn unicode_funcs_set_general_category_func(ufuncs: *unicode_funcs_t, func: unicode_general_category_func_t, user_data: *opaque, destroy: destroy_func_t) void;
export @symbol("hb_unicode_funcs_set_mirroring_func") fn unicode_funcs_set_mirroring_func(ufuncs: *unicode_funcs_t, func: unicode_mirroring_func_t, user_data: *opaque, destroy: destroy_func_t) void;
export @symbol("hb_unicode_funcs_set_script_func") fn unicode_funcs_set_script_func(ufuncs: *unicode_funcs_t, func: unicode_script_func_t, user_data: *opaque, destroy: destroy_func_t) void;
export @symbol("hb_unicode_funcs_set_user_data") fn unicode_funcs_set_user_data(ufuncs: *unicode_funcs_t, key: *user_data_key_t, data: *opaque, destroy: destroy_func_t, replace: bool_t) bool_t;
export @symbol("hb_unicode_general_category") fn unicode_general_category(ufuncs: *unicode_funcs_t, unicode: codepoint_t) unicode_general_category_t;
export @symbol("hb_unicode_mirroring") fn unicode_mirroring(ufuncs: *unicode_funcs_t, unicode: codepoint_t) codepoint_t;
export @symbol("hb_unicode_script") fn unicode_script(ufuncs: *unicode_funcs_t, unicode: codepoint_t) script_t;
export @symbol("hb_variation_from_string") fn variation_from_string(str_: *c::char, len_: int, variation: *variation_t) bool_t;
export @symbol("hb_version") fn version(major: *uint, minor: *uint, micro: *uint) void;
export @symbol("hb_version_atleast") fn version_atleast(major: uint, minor: uint, micro: uint) bool_t;
export @symbol("hb_version_string") fn version_string() *c::char;
export type var_int_t = union {
	u32_: u32,
	i32_: i32,
	u16_: [2]u16,
	i16_: [2]i16,
	u8_: [4]u8,
	i8_: [4]i8,
};
export type var_num_t = union {
	f: f32,
	u32_: u32,
	i32_: i32,
	u16_: [2]u16,
	i16_: [2]i16,
	u8_: [4]u8,
	i8_: [4]i8,
};
export type buffer_diff_flags_t = enum uint {
	EQUAL = 0,
	CONTENT_TYPE_MISMATCH = 1,
	LENGTH_MISMATCH = 2,
	NOTDEF_PRESENT = 4,
	DOTTED_CIRCLE_PRESENT = 8,
	CODEPOINT_MISMATCH = 16,
	CLUSTER_MISMATCH = 32,
	GLYPH_FLAGS_MISMATCH = 64,
	POSITION_MISMATCH = 128,
};
export type buffer_flags_t = enum uint {
	DEFAULT = 0,
	BOT = 1,
	EOT = 2,
	PRESERVE_DEFAULT_IGNORABLES = 4,
	REMOVE_DEFAULT_IGNORABLES = 8,
	DO_NOT_INSERT_DOTTED_CIRCLE = 16,
	VERIFY = 32,
	PRODUCE_UNSAFE_TO_CONCAT = 64,
	PRODUCE_SAFE_TO_INSERT_TATWEEL = 128,
	DEFINED = 255,
};
export type buffer_serialize_flags_t = enum uint {
	DEFAULT = 0,
	NO_CLUSTERS = 1,
	NO_POSITIONS = 2,
	NO_GLYPH_NAMES = 4,
	GLYPH_EXTENTS = 8,
	GLYPH_FLAGS = 16,
	NO_ADVANCES = 32,
	DEFINED = 63,
};
export type glyph_flags_t = enum uint {
	UNSAFE_TO_BREAK = 1,
	UNSAFE_TO_CONCAT = 2,
	SAFE_TO_INSERT_TATWEEL = 4,
	DEFINED = 7,
};
export type ot_color_palette_flags_t = enum uint {
	DEFAULT = 0,
	USABLE_WITH_LIGHT_BACKGROUND = 1,
	USABLE_WITH_DARK_BACKGROUND = 2,
};
export type ot_math_glyph_part_flags_t = enum uint {
	EXTENDER = 1,
};
export type ot_var_axis_flags_t = enum uint {
	HIDDEN = 1,
};
export type buffer_message_func_t = *fn(buffer: *buffer_t, font: *font_t, message: *c::char, user_data: *opaque) bool_t;
export type color_line_get_color_stops_func_t = *fn(color_line: *color_line_t, color_line_data: *opaque, start: uint, count: *uint, color_stops: *color_stop_t, user_data: *opaque) uint;
export type color_line_get_extend_func_t = *fn(color_line: *color_line_t, color_line_data: *opaque, user_data: *opaque) paint_extend_t;
export type destroy_func_t = *fn(user_data: *opaque) void;
export type draw_close_path_func_t = *fn(dfuncs: *draw_funcs_t, draw_data: *opaque, st: *draw_state_t, user_data: *opaque) void;
export type draw_cubic_to_func_t = *fn(dfuncs: *draw_funcs_t, draw_data: *opaque, st: *draw_state_t, control1_x: f32, control1_y: f32, control2_x: f32, control2_y: f32, to_x: f32, to_y: f32, user_data: *opaque) void;
export type draw_line_to_func_t = *fn(dfuncs: *draw_funcs_t, draw_data: *opaque, st: *draw_state_t, to_x: f32, to_y: f32, user_data: *opaque) void;
export type draw_move_to_func_t = *fn(dfuncs: *draw_funcs_t, draw_data: *opaque, st: *draw_state_t, to_x: f32, to_y: f32, user_data: *opaque) void;
export type draw_quadratic_to_func_t = *fn(dfuncs: *draw_funcs_t, draw_data: *opaque, st: *draw_state_t, control_x: f32, control_y: f32, to_x: f32, to_y: f32, user_data: *opaque) void;
export type font_draw_glyph_func_t = *fn(font: *font_t, font_data: *opaque, glyph: codepoint_t, draw_funcs: *draw_funcs_t, draw_data: *opaque, user_data: *opaque) void;
export type font_get_font_extents_func_t = *fn(font: *font_t, font_data: *opaque, extents: *font_extents_t, user_data: *opaque) bool_t;
export type font_get_glyph_advance_func_t = *fn(font: *font_t, font_data: *opaque, glyph: codepoint_t, user_data: *opaque) position_t;
export type font_get_glyph_advances_func_t = *fn(font: *font_t, font_data: *opaque, count: uint, first_glyph: *codepoint_t, glyph_stride: uint, first_advance: *position_t, advance_stride: uint, user_data: *opaque) void;
export type font_get_glyph_contour_point_func_t = *fn(font: *font_t, font_data: *opaque, glyph: codepoint_t, point_index: uint, x: *position_t, y: *position_t, user_data: *opaque) bool_t;
export type font_get_glyph_extents_func_t = *fn(font: *font_t, font_data: *opaque, glyph: codepoint_t, extents: *glyph_extents_t, user_data: *opaque) bool_t;
export type font_get_glyph_from_name_func_t = *fn(font: *font_t, font_data: *opaque, name: *c::char, len_: int, glyph: *codepoint_t, user_data: *opaque) bool_t;
export type font_get_glyph_func_t = *fn(font: *font_t, font_data: *opaque, unicode: codepoint_t, variation_selector: codepoint_t, glyph: *codepoint_t, user_data: *opaque) bool_t;
export type font_get_glyph_kerning_func_t = *fn(font: *font_t, font_data: *opaque, first_glyph: codepoint_t, second_glyph: codepoint_t, user_data: *opaque) position_t;
export type font_get_glyph_name_func_t = *fn(font: *font_t, font_data: *opaque, glyph: codepoint_t, name: *c::char, size_: uint, user_data: *opaque) bool_t;
export type font_get_glyph_origin_func_t = *fn(font: *font_t, font_data: *opaque, glyph: codepoint_t, x: *position_t, y: *position_t, user_data: *opaque) bool_t;
export type font_get_glyph_shape_func_t = *fn(font: *font_t, font_data: *opaque, glyph: codepoint_t, draw_funcs: *draw_funcs_t, draw_data: *opaque, user_data: *opaque) void;
export type font_get_nominal_glyph_func_t = *fn(font: *font_t, font_data: *opaque, unicode: codepoint_t, glyph: *codepoint_t, user_data: *opaque) bool_t;
export type font_get_nominal_glyphs_func_t = *fn(font: *font_t, font_data: *opaque, count: uint, first_unicode: *codepoint_t, unicode_stride: uint, first_glyph: *codepoint_t, glyph_stride: uint, user_data: *opaque) uint;
export type font_get_variation_glyph_func_t = *fn(font: *font_t, font_data: *opaque, unicode: codepoint_t, variation_selector: codepoint_t, glyph: *codepoint_t, user_data: *opaque) bool_t;
export type font_paint_glyph_func_t = *fn(font: *font_t, font_data: *opaque, glyph: codepoint_t, paint_funcs: *paint_funcs_t, paint_data: *opaque, palette_index: uint, foreground: color_t, user_data: *opaque) void;
export type paint_color_func_t = *fn(funcs: *paint_funcs_t, paint_data: *opaque, is_foreground: bool_t, color: color_t, user_data: *opaque) void;
export type paint_custom_palette_color_func_t = *fn(funcs: *paint_funcs_t, paint_data: *opaque, color_index: uint, color: *color_t, user_data: *opaque) bool_t;
export type paint_image_func_t = *fn(funcs: *paint_funcs_t, paint_data: *opaque, image: *blob_t, width: uint, height: uint, format: tag_t, slant: f32, extents: *glyph_extents_t, user_data: *opaque) bool_t;
export type paint_linear_gradient_func_t = *fn(funcs: *paint_funcs_t, paint_data: *opaque, color_line: *color_line_t, x0: f32, y0: f32, x1: f32, y1: f32, x2: f32, y2: f32, user_data: *opaque) void;
export type paint_pop_clip_func_t = *fn(funcs: *paint_funcs_t, paint_data: *opaque, user_data: *opaque) void;
export type paint_pop_group_func_t = *fn(funcs: *paint_funcs_t, paint_data: *opaque, mode: paint_composite_mode_t, user_data: *opaque) void;
export type paint_pop_transform_func_t = *fn(funcs: *paint_funcs_t, paint_data: *opaque, user_data: *opaque) void;
export type paint_push_clip_glyph_func_t = *fn(funcs: *paint_funcs_t, paint_data: *opaque, glyph: codepoint_t, font: *font_t, user_data: *opaque) void;
export type paint_push_clip_rectangle_func_t = *fn(funcs: *paint_funcs_t, paint_data: *opaque, xmin: f32, ymin: f32, xmax: f32, ymax: f32, user_data: *opaque) void;
export type paint_push_group_func_t = *fn(funcs: *paint_funcs_t, paint_data: *opaque, user_data: *opaque) void;
export type paint_push_transform_func_t = *fn(funcs: *paint_funcs_t, paint_data: *opaque, xx: f32, yx: f32, xy: f32, yy: f32, dx: f32, dy: f32, user_data: *opaque) void;
export type paint_radial_gradient_func_t = *fn(funcs: *paint_funcs_t, paint_data: *opaque, color_line: *color_line_t, x0: f32, y0: f32, r0: f32, x1: f32, y1: f32, r1: f32, user_data: *opaque) void;
export type paint_sweep_gradient_func_t = *fn(funcs: *paint_funcs_t, paint_data: *opaque, color_line: *color_line_t, x0: f32, y0: f32, start_angle: f32, end_angle: f32, user_data: *opaque) void;
export type reference_table_func_t = *fn(face: *face_t, tag: tag_t, user_data: *opaque) *blob_t;
export type unicode_combining_class_func_t = *fn(ufuncs: *unicode_funcs_t, unicode: codepoint_t, user_data: *opaque) unicode_combining_class_t;
export type unicode_compose_func_t = *fn(ufuncs: *unicode_funcs_t, a: codepoint_t, b: codepoint_t, ab: *codepoint_t, user_data: *opaque) bool_t;
export type unicode_decompose_compatibility_func_t = *fn(ufuncs: *unicode_funcs_t, u: codepoint_t, decomposed: *codepoint_t, user_data: *opaque) uint;
export type unicode_decompose_func_t = *fn(ufuncs: *unicode_funcs_t, ab: codepoint_t, a: *codepoint_t, b: *codepoint_t, user_data: *opaque) bool_t;
export type unicode_eastasian_width_func_t = *fn(ufuncs: *unicode_funcs_t, unicode: codepoint_t, user_data: *opaque) uint;
export type unicode_general_category_func_t = *fn(ufuncs: *unicode_funcs_t, unicode: codepoint_t, user_data: *opaque) unicode_general_category_t;
export type unicode_mirroring_func_t = *fn(ufuncs: *unicode_funcs_t, unicode: codepoint_t, user_data: *opaque) codepoint_t;
export type unicode_script_func_t = *fn(ufuncs: *unicode_funcs_t, unicode: codepoint_t, user_data: *opaque) script_t;
