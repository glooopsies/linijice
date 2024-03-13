use fmt;

export type mat3 = [3][3]f32;

export fn mat3id(f1: f32) mat3 = {
    let ret: mat3 = [[0f32...]...];
    for (let i = 0z; i < 3; i += 1) {
        ret[i][i] = f1;
    };

    return ret;
};

@test fn mat3id() void = {
    const m1: mat3 = [[3f32, 0f32, 0f32], [0f32, 3f32, 0f32], [0f32, 0f32, 3f32]];
    const f1 = 3f32;

    assert(mat3eq(mat3id(f1), m1), "identity matrix incorrect");
};

export fn mat3eq(m1: mat3, m2: mat3) bool = {
    for (let i = 0z; i < 3; i += 1) {
        for (let j = 0z; j < 3; j += 1) {
            if (m1[i][j] != m2[i][j]) {
                return false;
            };
        };
    };

    return true;
};

@test fn mat3eq() void = {
    const m1: mat3 = [[1f32, 1f32, 1f32], [1f32, 1f32, 1f32], [1f32, 1f32, 1f32]];
    const m2: mat3 = [[1f32, 1f32, 1f32], [1f32, 1f32, 1f32], [1f32, 1f32, 1f32]];
    const m3: mat3 = [[1f32, 1f32, 1f32], [1f32, 1f32, 1f32], [1f32, 1f32, 2f32]];

    assert(mat3eq(m1, m2) == true, "matrices are not equal");
    assert(mat3eq(m1, m3) == false, "matrices are equal");
};

export fn mat3add(m1: mat3, m2: mat3) mat3 = {
    let ret: mat3 = [[0f32...]...];
    for (let i = 0z; i < 3; i += 1) {
        for (let j = 0z; j < 3; j += 1) {
            ret[i][j] = m1[i][j] + m2[i][j];
        };
    };

    return ret;
};

@test fn mat3add() void = {
    const m1: mat3 = [[1f32, 1f32, 1f32], [1f32, 1f32, 1f32], [1f32, 1f32, 1f32]];
    const m2: mat3 = [[1f32, 1f32, 1f32], [1f32, 1f32, 1f32], [1f32, 1f32, 2f32]];
    const m3: mat3 = [[2f32, 2f32, 2f32], [2f32, 2f32, 2f32], [2f32, 2f32, 3f32]];

    assert(mat3eq(mat3add(m1, m2), m3), "matrices addition incorrect");
};

export fn mat3fmul(f1: f32, m1: mat3) mat3 = {
    let ret: mat3 = [[0f32...]...];
    for (let i = 0z; i < 3; i += 1) {
        for (let j = 0z; j < 3; j += 1) {
            ret[i][j] = f1 * m1[i][j];
        };
    };

    return ret;
};

@test fn mat3fmul() void = {
    const m1: mat3 = [[1f32, 1f32, 1f32], [1f32, 1f32, 1f32], [1f32, 1f32, 2f32]];
    const f1 = 3f32;
    const m2: mat3 = [[3f32, 3f32, 3f32], [3f32, 3f32, 3f32], [3f32, 3f32, 6f32]];

    assert(mat3eq(mat3fmul(f1, m1), m2), "matrices f32 multiplication incorrect");
};


export fn mat3mul(m1: mat3, m2: mat3) mat3 = {
    let ret: mat3 = [[0f32...]...];
    for (let i = 0z; i < len(m1); i += 1) {
        for (let j = 0z; j < len(m1[0]); j += 1) {
            for (let k = 0z; k < len(m1); k += 1) {
                ret[i][j] += m1[i][k] * m2[k][j];
            };
        };
    };

    return ret;
};

@test fn mat3mul() void = {
    const m1: mat3 = [[2f32, 0f32, 0f32],  [0f32, 2f32, 0f32],  [0f32, 0f32, 2f32]];
    const m2: mat3 = [[3f32, 6f32, 3f32],  [3f32, 6f32, 3f32],  [3f32, 6f32, 3f32]];
    const m3: mat3 = [[6f32, 12f32, 6f32], [6f32, 12f32, 6f32], [6f32, 12f32, 6f32]];

    assert(mat3eq(mat3mul(m1, m2), m3), "matrices multiplication incorrect");
};

export fn mat3str(v1: mat3) void = {
    fmt::printfln("[{} {} {}]", v1[0][0], v1[0][1], v1[0][2])!;
    fmt::printfln("[{} {} {}]", v1[1][0], v1[1][1], v1[1][2])!;
    fmt::printfln("[{} {} {}]", v1[2][0], v1[2][1], v1[2][2])!;
    fmt::printfln("")!;
};