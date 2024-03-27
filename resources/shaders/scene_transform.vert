#version 330 core
layout (location = 0) in vec2 position;

uniform mat3 scene_transform;

void main() {
    vec2 Position = (scene_transform * vec3(position.xy, 1.0)).xy;


    gl_Position = vec4(Position.xy , 0.0, 1.0);
    //gl_Position = vec4(0.5, 0.5, 0.0, 1.0);
}
