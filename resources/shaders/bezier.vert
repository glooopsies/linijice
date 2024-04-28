#version 430 core

layout (location = 0) in vec2 in_point;
layout (location = 1) in vec2 in_control;

layout (location = 0) out vec2 out_screen_point;
layout (location = 1) out vec2 out_screen_control;
layout (location = 2) out vec2 out_control;

uniform mat3 scene_transform;
uniform mat3 screen_transform;
uniform float height;

void main() {
    vec2 point_pos = (scene_transform * vec3(in_point.xy, 1.0)).xy;
    out_screen_point = vec2(point_pos.x, height - point_pos.y);

    vec2 Position = (screen_transform * vec3(point_pos.xy, 1.0)).xy;
    gl_Position = vec4(Position, 0.0, 1.0);


    vec2 control_pos = (scene_transform * vec3(in_control.xy, 1.0)).xy;
    out_screen_control = vec2(control_pos.x, height - control_pos.y);

    out_control = (screen_transform * vec3(control_pos.xy, 1.0)).xy;
}
