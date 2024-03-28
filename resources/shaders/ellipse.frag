#version 430 core

layout (location = 0) in vec2 screen_positions[];
layout (location = 2) in vec4 color;

out vec4 FragColor;

void main() {
    vec2 c = (screen_positions[0] + screen_positions[1]) / 2.0;
    vec2 r = (screen_positions[1] - screen_positions[0]) / 2.0;

    vec2 pos = gl_FragCoord.xy;
    float opacity = step((pos.x - c.x)*(pos.x - c.x) * r.y*r.y + (pos.y - c.y)*(pos.y - c.y) * r.x*r.x, r.x*r.x*r.y*r.y);

    FragColor = color * opacity;
}
