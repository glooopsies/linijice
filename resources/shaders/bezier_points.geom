#version 430 core

layout (points) in;
layout (triangle_strip, max_vertices = 4) out;


layout (location = 0) in vec2 in_screen_point[1];
layout (location = 1) in vec2 in_screen_control[1];
layout (location = 2) in vec2 in_control[1];

layout (location = 0) out vec2 out_screen_points[3];

uniform float width;
uniform float height;

float point_size = 6.0;

vec2 vec2min(vec2 v1, vec2 v2, vec2 v3) {
    vec2 ret = v1;
    ret.x = (v2.x < ret.x)? v2.x: ret.x;
    ret.x = (v3.x < ret.x)? v3.x: ret.x;

    ret.y = (v2.y < ret.y)? v2.y: ret.y;
    ret.y = (v3.y < ret.y)? v3.y: ret.y;

    return ret;
}

vec2 vec2max(vec2 v1, vec2 v2, vec2 v3) {
    vec2 ret = v1;
    ret.x = (v2.x > ret.x)? v2.x: ret.x;
    ret.x = (v3.x > ret.x)? v3.x: ret.x;

    ret.y = (v2.y > ret.y)? v2.y: ret.y;
    ret.y = (v3.y > ret.y)? v3.y: ret.y;

    return ret;
}

void main() {
    vec2 point = in_screen_point[0];
    out_screen_points[0] = point;
    out_screen_points[1] = in_screen_control[0];
    out_screen_points[2] = 2.0 * point - in_screen_control[0];

    vec2 a  = gl_in[0].gl_Position.xy;
    vec2 t1 = in_control[0];
    vec2 t2 = 2 * a - t1;

    vec2 _point_size;
    _point_size.x = 2.0 * point_size / width;
    _point_size.y = 2.0 * point_size / height;

    vec2 _min = vec2min(a, t1, t2) - vec2(_point_size);
    vec2 _max = vec2max(a, t1, t2) + vec2(_point_size);

    gl_Position = vec4(_min, 0.0, 1.0);
    EmitVertex();

    gl_Position = vec4(_min.x, _max.y, 0.0, 1.0);
    EmitVertex();

    gl_Position = vec4(_max.x, _min.y, 0.0, 1.0);
    EmitVertex();

    gl_Position = vec4(_max, 0.0, 1.0);
    EmitVertex();

    EndPrimitive();
}