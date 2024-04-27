#version 430 core

layout (lines) in;
layout (triangle_strip, max_vertices = 4) out;

layout (location = 0) in vec2 in_screen_positions[];
layout (location = 0) out vec2 out_screen_positions[];

void main() {
    out_screen_positions[0] = in_screen_positions[0];
    out_screen_positions[1] = in_screen_positions[1];

    vec4 top_left     = gl_in[0].gl_Position;
    vec4 bottom_right = gl_in[1].gl_Position;

    gl_Position = top_left;
    EmitVertex();

    gl_Position = vec4(bottom_right.x, top_left.yzw);
    EmitVertex();

    gl_Position = vec4(top_left.x, bottom_right.yzw);
    EmitVertex();

    gl_Position = bottom_right;
    EmitVertex();

    EndPrimitive();
}
