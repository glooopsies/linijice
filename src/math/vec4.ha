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
