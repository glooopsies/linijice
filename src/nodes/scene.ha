use libs::gl;
use src::math;

export type layer = []*node;
export type scene = []layer;

const background: math::vec3 = [0.1, 0.1, 0.1];

export fn scene_draw(scene: scene) void = {
	gl::glClearColor(background[0], background[1], background[2], 1.0);
	gl::glClear(gl::GL_COLOR_BUFFER_BIT | gl::GL_DEPTH_BUFFER_BIT);

    for (let i = 0z; i < len(scene); i += 1) {
        for (let j = 0z; j < len(scene[i]); j += 1) {
            scene[i][j].draw(scene[i][j]);
        };
    };

    gl::glFlush();
};

export fn scene_free(scene: scene) void = {
    for (let i = 0z; i < len(scene); i += 1) {
        for (let j = 0z; j < len(scene[i]); j += 1) {
            free(scene[i][j]);
        };
    };
};
