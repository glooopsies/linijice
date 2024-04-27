#version 430 core
layout (location = 0) in vec2 position;

layout (location = 0) out vec2 screen_position;

uniform mat3 scene_transform;
uniform mat3 screen_transform;
uniform float height;

void main() {
    vec2 pos = (scene_transform * vec3(position.xy, 1.0)).xy;
    screen_position = vec2(pos.x, height - pos.y);

    vec2 Position = (screen_transform * vec3(pos.xy, 1.0)).xy;

    gl_Position = vec4(Position.xy , 0.0, 1.0);
}
