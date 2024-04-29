export fn min(array: f32...) f32 = {
    let ret = array[0];
    for (const x .. array) {
        if (x < ret) {
            ret = x;
        };
    };

    return ret;
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