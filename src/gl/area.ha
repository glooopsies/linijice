use src::math;

export let width = 300;
export let height = 400;

export const background: math::vec4 = [0.1, 0.1, 0.1, 1.0];

export fn screen_transform() math::mat3 = {
    return math::mat3mul(
        math::vec2translation([-1f32, 1f32]),
        math::vec2scale([2f32/(width: f32), -2f32/(height: f32)])
    );
};
