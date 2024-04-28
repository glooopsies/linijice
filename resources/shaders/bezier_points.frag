#version 430 core

layout (location = 0) in vec2 screen_positions[3];

out vec4 FragColor;

vec4 point_color   = vec4(0.5, 0.5, 0.5, 1.0);
vec4 control_color = vec4(0.3, 0.3, 0.3, 1.0);
vec4 line_color    = vec4(0.2, 0.2, 0.2, 0.5);
float point_size   = 6.0;
float line_width   = 1.5;

float circle(vec2 c) {
    vec2 pos = gl_FragCoord.xy;
    float r2 = point_size * point_size;
    return step((pos.x - c.x)*(pos.x - c.x) + (pos.y - c.y)*(pos.y - c.y), r2);
}

float line(vec2 a, vec2 b) {
    vec2 M = gl_FragCoord.xy;

    vec3 p = vec3(b - a, 0);
    vec3 PM = vec3(b - M, 0);

    if (M.x < a.x && M.x < b.x) { return 0; }
    if (M.x > a.x && M.x > b.x) { return 0; }

    if (M.y < a.y && M.y < b.y) { return 0; }
    if (M.y > a.y && M.y > b.y) { return 0; }

    return step(length(cross(p, PM) / length(p)), line_width);
}

void set(vec4 color, float when) {
    FragColor += float(FragColor.w == 0) * when * color;
}

void main() {
    float point    = circle(screen_positions[0]);
    float control1 = circle(screen_positions[1]);
    float control2 = circle(screen_positions[2]);
    float line     = line(screen_positions[1], screen_positions[2]);

    FragColor = vec4(0);
    set(point_color, point);
    set(control_color, control1);
    set(control_color, control2);
    set(line_color, line);
}
