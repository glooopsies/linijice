use math;

export fn min(array: f32...) f32 = {
    let ret = array[0];
    for (const x .. array) {
        if (x < ret) {
            ret = x;
        };
    };

    return ret;
};

@test fn min() void = {
    const f: []f32 = [3f32, 0f32, 7f32, -2f32, -5f32, 4f32];
    const f1 = -5f32;

    assert(min(f...) == f1, "min function incorrect");
};

export fn max(array: f32...) f32 = {
    let ret = array[0];
    for (const x .. array) {
        if (x > ret) {
            ret = x;
        };
    };

    return ret;
};

@test fn max() void = {
    const f: []f32 = [3f32, 0f32, 7f32, -2f32, -5f32, 4f32];
    const f1 = 7f32;

    assert(max(f...) == f1, "max function incorrect");
};

export fn sqrtf32(f: f32) f32 = math::sqrtf64(f: f64): f32;
