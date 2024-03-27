#version 430 core
layout (location = 0) in vec2 position;
layout (location = 1) in vec4 in_color;

layout (location = 0) out vec2 screen_position;
layout (location = 1) out vec4 out_color;

uniform mat3 scene_transform;
uniform float height;

void main() {
    screen_position = vec2(position.x, height - position.y);
    out_color = in_color;

    vec2 Position = (scene_transform * vec3(position.xy, 1.0)).xy;

    gl_Position = vec4(Position.xy , 0.0, 1.0);
}
