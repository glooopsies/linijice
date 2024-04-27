#version 430 core

layout (location = 0) in vec2 screen_positions[];
out vec4 FragColor;

uniform vec4 color;
uniform float radius;

float round(vec2 dist, vec2 size) {
    return radius-length(max(abs(dist)-size+radius, 0.0));
}

void main() {
    vec2 c = (screen_positions[0] + screen_positions[1]) / 2.0;
    vec2 size = abs(screen_positions[1] - screen_positions[0]);

    vec2 pos = gl_FragCoord.xy;

    float dist = round(c - pos, size / 2.0f);
    float alpha = step(0.0, dist);

    FragColor = color * alpha;
}
