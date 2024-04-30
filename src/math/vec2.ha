use fmt;
use math;

export type vec2 = [2]f32;

export fn vec2id(f1: f32) vec2 = {
    return [f1...];
};

@test fn vec2id() void = {
    const v1: vec2 = [3f32, 3f32];
    const f1 = 3f32;

    assert(vec2eq(vec2id(f1), v1), "identity vector incorrect");
};

export fn vec2eq(v1: vec2, v2: vec2) bool = {
    for (let i = 0z; i < len(v1); i += 1) {
        if (v1[i] != v2[i]) {
            return false;
        };
    };

    return true;
};

@test fn vec2eq() void = {
    const v1: vec2 = [1f32, 1f32];
    const v2: vec2 = [1f32, 1f32];
    const v3: vec2 = [1f32, 2f32];

    assert(vec2eq(v1, v2) == true, "vectors are not equal");
    assert(vec2eq(v1, v3) == false, "vectors are equal");
};

export fn vec2fmul(f1: f32, v1: vec2) vec2 = {
    for (let i = 0z; i < len(v1); i += 1) {
        v1[i] *= f1;
    };

    return v1;
};

@test fn vec2fmul() void = {
    const v1: vec2 = [1f32, 2f32];
    const f1 = 3f32;
    const v2: vec2 = [3f32, 6f32];


    assert(vec2eq(vec2fmul(f1, v1), v2), "vectors float multiplication incorrect");
};

export fn vec2norm(v1: vec2) f32 = {
    let ret = 0f32;
    for (let i = 0z; i < len(v1); i += 1) {
        ret += v1[i] * v1[i];
    };

    return sqrtf32(ret);
};

@test fn vec2norm() void = {
    const v1: vec2 = [3f32, 4f32];
    const f1 = 5f32;

    assert(vec2norm(v1) == f1, "vector norm incorrect");
};

export fn vec2normalize(v1: vec2) vec2 = {
    const norm = vec2norm(v1);
    for (let i = 0z; i < len(v1); i += 1) {
        v1[i] /= norm;
    };

    return v1;
};

@test fn vec2normalize() void = {
    const v1: vec2 = [3f32, 0f32];
    const v2: vec2 = [1f32, 0f32];

    assert(vec2eq(vec2normalize(v1), v2), "vector normalization incorrect");
};

export fn vec2add(v1: vec2, v2: vec2) vec2 = {
    for (let i = 0z; i < len(v1); i += 1) {
        v1[i] += v2[i];
    };

    return v1;
};

@test fn vec2add() void = {
    const v1: vec2 = [1f32, 2f32];
    const v2: vec2 = [3f32, 4f32];
    const v3: vec2 = [4f32, 6f32];

    assert(vec2eq(vec2add(v1, v2), v3), "vectors addition incorrect");
};

export fn vec2inv(v1: vec2) vec2 = {
    for (let coord &.. v1) {
        *coord = 1f32 / *coord;
    };

    return v1;
};

@test fn vec2inv() void = {
    const v1: vec2 = [4f32, 2f32];
    const v2: vec2 = [1f32/4f32, 1f32/2f32];

    assert(vec2eq(vec2inv(v1), v2), "vectors inversion incorrect");
};

export fn vec2translation(v1: vec2) mat3 = {
    let mat = mat3id(1f32);
    mat[2][0] = v1[0];
    mat[2][1] = v1[1];

    return mat;
};

@test fn vec2translation() void = {
    const v1: vec2 = [1f32, 2f32];
    const m1: mat3 = [[1f32, 0f32, 0f32], [0f32, 1f32, 0f32], [1f32, 2f32, 1f32]];

    assert(mat3eq(vec2translation(v1), m1), "translation matrix incorrect");
};

export fn vec2scale(v1: vec2) mat3 = {
    let mat = mat3id(1f32);
    mat[0][0] = v1[0];
    mat[1][1] = v1[1];

    return mat;
};

@test fn vec2scale() void = {
    const v1: vec2 = [1f32, 2f32];
    const m1: mat3 = [[1f32, 0f32, 0f32], [0f32, 2f32, 0f32], [0f32, 0f32, 1f32]];

    assert(mat3eq(vec2scale(v1), m1), "scale matrix incorrect");
};

export fn vec2to3(v1: vec2) vec3 = {
    return [v1[0], v1[1], 1f32];
};

@test fn vec2to3() void = {
    const v1: vec2 = [1f32, 2f32];
    const v2: vec3 = [1f32, 2f32, 1f32];

    assert(vec3eq(vec2to3(v1), v2), "vec2 to vec3 conversion incorrect");
};

export fn vec2min(vectors: vec2...) vec2 = {
    let ret = vectors[0];

    for (const vec &.. vectors) {
        for (let i = 0z; i < len(ret); i += 1) {
            if (vec[i] < ret[i])  {
                ret[i] = vec[i];
            };
        };
    };

    return ret;
};

@test fn vec2min() void = {
    const v1: vec2  = [1f32, 2f32];
    const v2: vec2  = [3f32, -1f32];
    const v3: vec2  = [-6f32, 5f32];
    const v4: vec2  = [4f32, -1f32];
    const ret: vec2 = [-6f32, -1f32];

    assert(vec2eq(vec2min(v1, v2, v3, v4), ret), "vec2min incorrect");
};

export fn vec2max(vectors: vec2...) vec2 = {
    let ret = vectors[0];

    for (const vec &.. vectors) {
        for (let i = 0z; i < len(ret); i += 1) {
            if (vec[i] > ret[i])  {
                ret[i] = vec[i];
            };
        };
    };

    return ret;
};

@test fn vec2max() void = {
    const v1: vec2  = [1f32, 2f32];
    const v2: vec2  = [3f32, -1f32];
    const v3: vec2  = [-6f32, 5f32];
    const v4: vec2  = [4f32, -1f32];
    const ret: vec2 = [4f32, 5f32];

    assert(vec2eq(vec2max(v1, v2, v3, v4), ret), "vec2max incorrect");
};

export fn vec2dist(v1: vec2, v2: vec2) f32 = {
    const vec = vec2add(v1, vec2fmul(-1f32, v2));

    let ret = 0f32;
    for (let i = 0z; i < len(v1); i += 1) {
        ret += vec[i] * vec[i];
    };

    return sqrtf32(ret);
};

export fn vec2print(v1: vec2) void = {
    fmt::printfln("({}, {})", v1[0], v1[1])!;
};
