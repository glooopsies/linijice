use errors;
use fmt;
use strings;
use strconv;

export type vec4 = [4]f32;

export fn vec4id(f1: f32) vec4 = {
    return [f1...];
};

@test fn vec4id() void = {
    const v1: vec4 = [3f32, 3f32, 3f32, 3f32];
    const f1 = 3f32;

    assert(vec4eq(vec4id(f1), v1), "identity vector incorrect");
};

export fn vec4eq(v1: vec4, v2: vec4) bool = {
    for (let i = 0z; i < len(v1); i += 1) {
        if (v1[i] != v2[i]) {
            return false;
        };
    };

    return true;
};

@test fn vec4eq() void = {
    const v1: vec4 = [1f32, 1f32, 1f32, 1f32];
    const v2: vec4 = [1f32, 1f32, 1f32, 1f32];
    const v3: vec4 = [1f32, 1f32, 1f32, 2f32];

    assert(vec4eq(v1, v2) == true, "vectors are not equal");
    assert(vec4eq(v1, v3) == false, "vectors are equal");
};

fn runesf32(runes: []rune) f32 = {
    const x = strings::fromrunes(runes);
    defer free(x);
    const x = strconv::stou64b(x, 16)!;
    return x: f32 / 255f32;
};

export fn hextovec4(hex: str) (vec4 | errors::error) = {
    if (!strings::hasprefix(hex, '#')) {
        return errors::invalid;
    };

    const runes = strings::torunes(hex);
    defer free(runes);

    if (len(hex) == 7) {
        const r = runesf32([runes[1], runes[2]]);
        const g = runesf32([runes[3], runes[4]]);
        const b = runesf32([runes[5], runes[6]]);
        const a = 1f32;

        return [r, g, b, a];
    };

    if (len(hex) == 9) {
        const r = runesf32([runes[1], runes[2]]);
        const g = runesf32([runes[3], runes[4]]);
        const b = runesf32([runes[5], runes[6]]);
        const a = runesf32([runes[7], runes[8]]);

        return [r, g, b, a];
    };

    return errors::invalid;
};

@test fn hextovec4() void = {
    const h1: str  = "#ffffffff";
    const c1: vec4 = [1f32, 1f32, 1f32, 1f32];

    const h2: str  = "#000000";
    const c2: vec4 = [0f32, 0f32, 0f32, 1f32];

    assert(vec4eq(hextovec4(h1)!, c1) == true, "wrong hex conversion");
    assert(vec4eq(hextovec4(h2)!, c2) == true, "wrong hex conversion");
};

export fn vec4tohex(color: vec4) str = {
    const r = (color[0] * 255f32): int;
    const g = (color[1] * 255f32): int;
    const b = (color[2] * 255f32): int;
    const a = (color[3] * 255f32): int;

    return fmt::asprintf("#{:x.2}{:x.2}{:x.2}{:x.2}", r, g, b, a);
};
