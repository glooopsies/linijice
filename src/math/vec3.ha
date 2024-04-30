use math;
use fmt;

export type vec3 = [3]f32;

export fn vec3id(f1: f32) vec3 = {
    return [f1...];
};

@test fn vec3id() void = {
    const v1: vec3 = [3f32, 3f32, 3f32];
    const f1 = 3f32;

    assert(vec3eq(vec3id(f1), v1), "identity vector incorrect");
};

export fn vec3eq(v1: vec3, v2: vec3) bool = {
    for (let i = 0z; i < len(v1); i += 1) {
        if (v1[i] != v2[i]) {
            return false;
        };
    };

    return true;
};

@test fn vec3eq() void = {
    const v1: vec3 = [1f32, 1f32, 1f32];
    const v2: vec3 = [1f32, 1f32, 1f32];
    const v3: vec3 = [1f32, 1f32, 2f32];

    assert(vec3eq(v1, v2) == true, "vectors are not equal");
    assert(vec3eq(v1, v3) == false, "vectors are equal");
};

export fn vec3fmul(f1: f32, v1: vec3) vec3 = {
    for (let i = 0z; i < len(v1); i += 1) {
        v1[i] *= f1;
    };

    return v1;
};

@test fn vec3fmul() void = {
    const v1: vec3 = [1f32, 2f32, 3f32];
    const f1 = 3f32;
    const v2: vec3 = [3f32, 6f32, 9f32];


    assert(vec3eq(vec3fmul(f1, v1), v2), "vectors float multiplication incorrect");
};

export fn vec3norm(v1: vec3) f32 = {
    let ret = 0f32;
    for (let i = 0z; i < len(v1); i += 1) {
        ret += v1[i] * v1[i];
    };

    return sqrtf32(ret);
};

@test fn vec3norm() void = {
    const v1: vec3 = [1f32, 1f32, 1f32];
    const f1 = sqrtf32(3f32);

    assert(vec3norm(v1) == f1, "vector norm incorrect");
};

export fn vec3normalize(v1: vec3) vec3 = {
    let norm = vec3norm(v1);
    for (let i = 0z; i < len(v1); i += 1) {
        v1[i] /= norm;
    };

    return v1;
};

@test fn vec3normalize() void = {
    const v1: vec3 = [3f32, 0f32, 0f32];
    const v2: vec3 = [1f32, 0f32, 0f32];

    assert(vec3eq(vec3normalize(v1), v2), "vector normalization incorrect");
};

export fn vec3add(v1: vec3, v2: vec3) vec3 = {
    for (let i = 0z; i < len(v1); i += 1) {
        v1[i] += v2[i];
    };

    return v1;
};

@test fn vec3add() void = {
    const v1: vec3 = [1f32, 2f32, 3f32];
    const v2: vec3 = [3f32, 4f32, 5f32];
    const v3: vec3 = [4f32, 6f32, 8f32];

    assert(vec3eq(vec3add(v1, v2), v3), "vectors addition incorrect");
};

export fn vec3inv(v1: vec3) vec3 = {
    for (let coord &.. v1) {
        *coord = 1f32 / *coord;
    };

    return v1;
};

@test fn vec3inv() void = {
    const v1: vec3 = [4f32, 2f32, 8f32];
    const v2: vec3 = [1f32/4f32, 1f32/2f32, 1f32/8f32];

    assert(vec3eq(vec3inv(v1), v2), "vectors inversion incorrect");
};

export fn vec3to2(v1: vec3) vec2 = {
    return [v1[0], v1[1]];
};

@test fn vec3to2() void = {
    const v1: vec3 = [1f32, 2f32, 3f32];
    const v2: vec2 = [1f32, 2f32];

    assert(vec2eq(vec3to2(v1), v2), "vec3 to vec2 conversion incorrect");
};

export fn vec3print(v1: vec3) void = {
    fmt::printfln("({}, {}, {})", v1[0], v1[1], v1[2])!;
};
