#version 330 core

layout (lines) in;
layout (triangle_strip, max_vertices = 4) out;

void main() {
    vec4 top_left = gl_in[0].gl_Position;
    vec4 bottom_right = gl_in[1].gl_Position;

    gl_Position = top_left;
    EmitVertex();

    gl_Position = vec4(bottom_right.x, top_left.y, 0.0f, 1.0f);
    EmitVertex();

    gl_Position = vec4(top_left.x, bottom_right.y, 0.0f, 1.0f);
    EmitVertex();

    gl_Position = bottom_right;
    EmitVertex();

    EndPrimitive();
}
