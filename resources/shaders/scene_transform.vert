#version 430 core
layout (location = 0) in vec2 position;

layout (location = 0) out vec2 screen_position;

uniform mat3 scene_transform;
uniform float height;

void main() {
    screen_position = vec2(position.x, height - position.y);
    vec2 Position = (scene_transform * vec3(position.xy, 1.0)).xy;


    gl_Position = vec4(Position.xy , 0.0, 1.0);
    //gl_Position = vec4(0.5, 0.5, 0.0, 1.0);
}
