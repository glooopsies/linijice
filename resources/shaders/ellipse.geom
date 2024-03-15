#version 330 core

layout (lines) in;
layout (triangle_strip, max_vertices = 4) out;

out vec2 t1;
out vec2 t2;

void main() {
    t1 = gl_in[0].gl_Position.xy;
    t2 = gl_in[1].gl_Position.xy;

    gl_Position = vec4(t1, 0.0f, 1.0f);
    EmitVertex();

    gl_Position = vec4(t2.x, t1.y, 0.0f, 1.0f);
    EmitVertex();

    gl_Position = vec4(t1.x, t2.y, 0.0f, 1.0f);
    EmitVertex();

    gl_Position = vec4(t2, 0.0f, 1.0f);
    EmitVertex();

    EndPrimitive();
}
