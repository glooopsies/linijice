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

export fn mat3add(matrices: mat3...) mat3 = {
    let ret: mat3 = [[0f32...]...];
    for(let matrix &.. matrices){
        for (let i = 0z; i < len(ret); i += 1) {
            for (let j = 0z; j < len(ret[0]); j += 1) {
                ret[i][j] += matrix[i][j];
            };
        };
    };

    return ret;
};

@test fn mat3add() void = {
    const m1: mat3 = [[1f32, 1f32, 1f32], [1f32, 1f32, 1f32], [1f32, 1f32, 1f32]];
    const m2: mat3 = [[1f32, 1f32, 1f32], [1f32, 1f32, 1f32], [1f32, 1f32, 2f32]];
    const m3       = mat3id(1f32);

    const m4: mat3 = [[3f32, 2f32, 2f32], [2f32, 3f32, 2f32], [2f32, 2f32, 4f32]];

    assert(mat3eq(mat3add(m1, m2, m3), m4), "matrices addition incorrect");
};

export fn mat3fmul(f1: f32, m1: mat3) mat3 = {
    let ret: mat3 = [[0f32...]...];
    for (let i = 0z; i < 3; i += 1) {
        for (let j = 0z; j < 3; j += 1) {
            ret[j][i] = f1 * m1[j][i];
        };
    };

    return ret;
};

@test fn mat3fmul() void = {
    const m1: mat3 = [[1f32, 1f32, 1f32], [1f32, 1f32, 1f32], [1f32, 1f32, 2f32]];
    const f1       = 3f32;

    const m2: mat3 = [[3f32, 3f32, 3f32], [3f32, 3f32, 3f32], [3f32, 3f32, 6f32]];

    assert(mat3eq(mat3fmul(f1, m1), m2), "matrices f32 multiplication incorrect");
};


export fn mat3mul(matrices: mat3...) mat3 = {
    let ret = mat3id(1f32);

    for (let matrix &.. matrices) {
        let tmp: mat3 = [[0f32...]...];

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

@test fn mat3mul() void = {
    const m1: mat3 = [[2f32, 0f32, 0f32],  [0f32, 2f32, 0f32],  [0f32, 0f32, 2f32]];
    const m2: mat3 = [[3f32, 6f32, 3f32],  [3f32, 6f32, 3f32],  [3f32, 6f32, 3f32]];
    const m3: mat3 = mat3id(1f32);

    const m4: mat3 = [[6f32, 12f32, 6f32], [6f32, 12f32, 6f32], [6f32, 12f32, 6f32]];
    

    assert(mat3eq(mat3mul(m1, m2, m3), m4), "matrices multiplication incorrect");
};

export fn mat3vec(m1: mat3, v1: vec3) vec3 = {
    let ret: vec3 = [0f32...];

    for (let i = 0z; i < len(m1); i += 1) {
        for (let j = 0z; j < len(m1[0]); j += 1) {
            ret[i] += m1[j][i] * v1[j];
        };
    };

    return ret;
};

@test fn mat3vec() void = {
    const m1: mat3 = [[2f32, 1f32, 2f32],  [3f32, 0f32, 1f32], [1f32, 2f32, 0f32]];
    const v1: vec3 = [1f32, 2f32, 3f32];
    const v2: vec3 = [11f32, 7f32, 4f32];

    assert(vec3eq(mat3vec(m1, v1), v2), "matrix vector multiplication incorrect");
};

export fn mat3transpose(m1: mat3) mat3 = {
    for (let i = 0z; i < len(m1); i += 1) {
        for (let j = 0z; j < i; j += 1) {
            const old = m1[i][j];
            m1[i][j] = m1[j][i];
            m1[j][i] = old;
        };
    };

    return m1;
};

@test fn mat3transpose() void = {
    const m1: mat3 = [[2f32, 1f32, 2f32], [3f32, 0f32, 1f32], [1f32, 2f32, 0f32]];
    const m2: mat3 = [[2f32, 3f32, 1f32], [1f32, 0f32, 2f32], [2f32, 1f32, 0f32]];

    assert(mat3eq(mat3transpose(m1), m2), "matrix transposition incorrect");
};

export fn mat3det(m: mat3) f32 = {
    const det1 = mat2det([[m[1][1], m[1][2]],[m[2][1], m[2][2]]]);
    const det2 = mat2det([[m[1][0], m[1][2]],[m[2][0], m[2][2]]]);
    const det3 = mat2det([[m[1][0], m[1][1]],[m[2][0], m[2][1]]]);

    return m[0][0]*det1 - m[0][1]*det2 + m[0][2]*det3;
};

@test fn mat3det() void = {
    const m1: mat3 = [[1f32, 2f32, -1f32], [3f32, 4f32, 0f32], [2f32, 1f32, 2f32]];

    assert(mat3det(m1) == 1f32, "matrix determinant incorrect");
};

export fn mat3inv(m: mat3) mat3 = {
    const adj: mat3 = [[
         m[1][1] * m[2][2] - m[1][2] * m[2][1],
        -m[0][1] * m[2][2] + m[0][2] * m[2][1],
         m[0][1] * m[1][2] - m[0][2] * m[1][1]
    ], [
        -m[1][0] * m[2][2] + m[1][2] * m[2][0],
         m[0][0] * m[2][2] - m[0][2] * m[2][0],
        -m[0][0] * m[1][2] + m[0][2] * m[1][0]
    ], [ 
         m[1][0] * m[2][1] - m[1][1] * m[2][0],
        -m[0][0] * m[2][1] + m[0][1] * m[2][0],
         m[0][0] * m[1][1] - m[0][1] * m[1][0]
    ]];

    return mat3fmul(1f32/mat3det(m), adj);
};

@test fn mat3inv() void = {
    const m1: mat3 = [[1f32, 2f32, -1f32], [3f32, 4f32, 0f32],   [2f32, 1f32, 2f32]];
    const m2: mat3 = [[8f32, -5f32, 4f32], [-6f32, 4f32, -3f32], [-5f32, 3f32, -2f32]];

    assert(mat3eq(mat3inv(m1), m2), "matrix inverse incorrect");
};

export fn mat3print(v1: mat3) void = {
    fmt::printfln("[{} {} {}]", v1[0][0], v1[1][0], v1[2][0])!;
    fmt::printfln("[{} {} {}]", v1[0][1], v1[1][1], v1[2][1])!;
    fmt::printfln("[{} {} {}]", v1[0][2], v1[1][2], v1[2][2])!;
    fmt::println()!;
};
