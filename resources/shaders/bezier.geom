#version 430 core

layout (lines) in;
layout (triangle_strip, max_vertices = 256) out;


layout (location = 0) in vec2 in_screen_point[2];
layout (location = 1) in vec2 in_screen_control[2];
layout (location = 2) in vec2 in_control[2];

layout (location = 0) out vec2 out_screen_points[2];
layout (location = 2) out vec2 out_screen_control[2];
layout (location = 4) out vec2 out_control[2];

uniform float width;
uniform float height;
uniform float stroke;

vec2 bezier(vec2 a, vec2 t1, vec2 t2, vec2 b, float t) {
    return pow(1-t, 3)*a + 3*pow(1-t, 2)*t*t1 + 3*(1-t)*pow(t, 2)*t2 + pow(t, 3)*b;
}

void line(vec2 a, vec2 b) {
    vec2 _stroke;
    _stroke.x = 2.0 * stroke / width;
    _stroke.y = 2.0 * stroke / height;

    vec2 p = b-a;
    vec2 norm = _stroke * 0.50f * normalize(vec2(-p.y, p.x));

    gl_Position = vec4(a + norm, 0.0, 1.0);
    EmitVertex();

    gl_Position = vec4(a - norm, 0.0, 1.0);
    EmitVertex();

    gl_Position = vec4(b + norm, 0.0, 1.0);
    EmitVertex();

    gl_Position = vec4(b - norm, 0.0, 1.0);
    EmitVertex();
}

void main() {
    out_screen_points[0] = in_screen_point[0];
    out_screen_points[1] = in_screen_point[1];

    out_screen_control[0] = in_screen_control[0];
    out_screen_control[1] = in_screen_control[1];

    out_control[0] = in_control[0];
    out_control[1] = in_control[1];

    vec2 a  = gl_in[0].gl_Position.xy;
    vec2 b  = gl_in[1].gl_Position.xy;

    vec2 t1 = in_control[0];
    vec2 t2 = 2*b - in_control[1];

    vec2 last = a;
    for (float t = 0.0f; t <= 1.01f; t += 0.02f ) {
        vec2 new = bezier(a, t1, t2, b, t);
        line(last, new);
        last = new;
    }

    line(last, b);

    EndPrimitive();
}