use fmt;

export type mat2 = [2][2]f32;

export fn mat2id(f1: f32) mat2 = {
    let ret: mat2 = [[0f32...]...];
    for (let i = 0z; i < len(ret); i += 1) {
        ret[i][i] = f1;
    };

    return ret;
};

@test fn mat2id() void = {
    const m1: mat2 = [[3f32, 0f32], [0f32, 3f32]];
    const f1 = 3f32;

    assert(mat2eq(mat2id(f1), m1), "identity matrix incorrect");
};

export fn mat2eq(m1: mat2, m2: mat2) bool = {
    for (let i = 0z; i < len(m1); i += 1) {
        for (let j = 0z; j < len(m1[0]); j += 1) {
            if (m1[i][j] != m2[i][j]) {
                return false;
            };
        };
    };
    return true;
};

@test fn mat2eq() void = {
    const m1: mat2 = [[1f32, 1f32], [1f32, 1f32]];
    const m2: mat2 = [[1f32, 1f32], [1f32, 1f32]];
    const m3: mat2 = [[1f32, 1f32], [1f32, 2f32]];

    assert(mat2eq(m1, m2) == true, "matrices are not equal");
    assert(mat2eq(m1, m3) == false, "matrices are equal");
};

export fn mat2add(m1: mat2, m2: mat2) mat2 = {
    for (let i = 0z; i < len(m1); i += 1) {
        for (let j = 0z; j < len(m1[0]); j += 1) {
            m1[i][j] += m2[i][j];
        };
    };

    return m1;
};

@test fn mat2add() void = {
    const m1: mat2 = [[1f32, 2f32], [1f32, 2f32]];
    const m2: mat2 = [[1f32, 2f32], [1f32, 2f32]];
    const m3: mat2 = [[2f32, 4f32], [2f32, 4f32]];

    assert(mat2eq(mat2add(m1, m2), m3), "matrices addition incorrect");
};

export fn mat2fmul(f1: f32, m1: mat2) mat2 = {
    for (let i = 0z; i < 2; i += 1) {
        for (let j = 0z; j < 2; j += 1) {
            m1[i][j] *= f1;
        };
    };

    return m1;
};

@test fn mat2fmul() void = {
    const m1: mat2 = [[1f32, 2f32], [1f32, 2f32]];
    const f1 = 3f32;
    const m2: mat2 = [[3f32, 6f32], [3f32, 6f32]];

    assert(mat2eq(mat2fmul(f1, m1), m2), "matrices f32 multiplication incorrect");
};

export fn mat2mul(m1: mat2, m2: mat2) mat2 = {
    let ret: mat2 = [[0f32...]...];
    for (let i = 0z; i < len(m1); i += 1) {
        for (let j = 0z; j < len(m1[0]); j += 1) {
            for (let k = 0z; k < len(m1); k += 1) {
                ret[i][j] += m1[i][k] * m2[k][j];
            };
        };
    };

    return ret;
};

@test fn mat2mul() void = {
    const m1: mat2 = [[2f32, 0f32],  [0f32, 2f32]];
    const m2: mat2 = [[3f32, 6f32],  [3f32, 6f32]];
    const m3: mat2 = [[6f32, 12f32], [6f32, 12f32]];

    assert(mat2eq(mat2mul(m1, m2), m3), "matrices multiplication incorrect");
};

export fn mat2str(v1: mat2) void = {
    fmt::printfln("[{} {}]", v1[0][0], v1[0][1])!;
    fmt::printfln("[{} {}]", v1[1][0], v1[1][1])!;
    fmt::printfln("")!;
};
