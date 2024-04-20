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

export fn mat2add(matrices: mat2...) mat2 = {
    let ret = mat2id(0f32);
    for (let matrix &.. matrices){
        for (let i = 0z; i < len(ret); i += 1) {
            for (let j = 0z; j < len(ret[0]); j += 1) {
                ret[i][j] += matrix[i][j];
            };
        };
    };

    return ret;
};

@test fn mat2add() void = {
    const m1: mat2 = [[1f32, 2f32], [1f32, 2f32]];
    const m2: mat2 = [[1f32, 2f32], [1f32, 2f32]];
    const m3 = mat2id(2f32);
    const m4: mat2 = [[4f32, 4f32], [2f32, 6f32]];

    assert(mat2eq(mat2add(m1, m2, m3), m4), "matrices addition incorrect");
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

export fn mat2mul(matrices: mat2...) mat2 = {
    let ret = mat2id(1f32);

    for (let matrix &.. matrices){
        let tmp: mat2 = [[0f32...]...];

        for (let i = 0z; i < len(ret); i += 1) {
            for (let j = 0z; j < len(ret[0]); j += 1) {
                for (let k = 0z; k < len(ret); k += 1) {
                    tmp[j][i] += ret[k][i] * matrix[j][k];
                };
            };
        };

        ret = tmp;
    };

    return ret;
};

@test fn mat2mul() void = {
    const m1: mat2 = [[2f32, 0f32],  [0f32, 2f32]];
    const m2: mat2 = [[3f32, 3f32],  [6f32, 6f32]];
    const m3 = mat2id(1f32);
    const m4: mat2 = [[6f32, 6f32], [12f32, 12f32]];

    assert(mat2eq(mat2mul(m1, m2, m3), m4), "matrices multiplication incorrect");
};

export fn mat2vec(m1: mat2, v1: vec2) vec2 = {
    let ret: vec2 = [0f32...];
    for (let i = 0z; i < len(m1); i += 1) {
        for (let j = 0z; j < len(m1[0]); j += 1) {
            ret[i] += m1[j][i] * v1[j];
        };
    };

    return ret;
};

@test fn mat2vec() void = {
    const m1: mat2 = [[2f32, 3f32],  [1f32, 2f32]];
    const v1: vec2 = [1f32, 2f32];
    const v2: vec2 = [4f32, 7f32];

    assert(vec2eq(mat2vec(m1, v1), v2), "matrix vector multiplication incorrect");
};

export fn mat2to3(m1: mat2) mat3 = {
    return [
        [m1[0][0], m1[0][1], 0f32],
        [m1[1][0], m1[1][1], 0f32],
        [0f32,     0f32,     1f32],
    ];
};

@test fn mat2to3() void = {
    const m1: mat2 = [[2f32, 3f32],  [1f32, 2f32]];

    const m2: mat3 = [[2f32, 3f32, 0f32],  [1f32, 2f32, 0f32], [0f32, 0f32, 1f32]];
    assert(mat3eq(mat2to3(m1), m2), "matrix cast to 3 dimeension incorrect");
};

export fn mat2transpose(m1: mat2) mat2 = {
    for (let i = 0z; i < len(m1); i += 1) {
        for (let j = 0z; j < i; j += 1) {
            const old = m1[i][j];
            m1[i][j] = m1[j][i];
            m1[j][i] = old;
        };
    };

    return m1;
};

@test fn mat2transpose() void = {
    const m1: mat2 = [[1f32, 2f32], [3f32, 4f32]];
    const m2: mat2 = [[1f32, 3f32], [2f32, 4f32]];

    assert(mat2eq(mat2transpose(m1), m2), "matrix transposition incorrect");
};

export fn mat2print(v1: mat2) void = {
    fmt::printfln("[{} {}]", v1[0][0], v1[1][0])!;
    fmt::printfln("[{} {}]", v1[0][1], v1[1][1])!;
    fmt::printfln("")!;
};

export fn mat2det(m: mat2) f32 = {
    return m[0][0] * m[1][1] - m[0][1] * m[1][0];
};

@test fn mat2det() void = {
    const m1: mat2 = [[1f32, 2f32], [3f32, 4f32]];

    assert(mat2det(m1) == -2f32, "matrix determinant incorrect");
};

export fn mat2inv(m: mat2) mat2 = {
    let det: f32 = mat2det(m);
    let adj: mat2 = [
        [ m[1][1], -m[0][1]],
        [-m[1][0],  m[0][0]]
    ];

    return mat2fmul(1f32/det, adj);
};

@test fn mat2inv() void = {
    const m1: mat2 = [[1f32, 2f32],  [3f32, 4f32]];
    const m2: mat2 = [[-2f32, 1f32], [1.5f32, -0.5f32]];

    assert(mat2eq(mat2inv(m1), m2), "matrix inverse incorrect");
};


