#version 330 core

in vec2 t1;
in vec2 t2;

out vec4 FragColor;

uniform float width;
uniform float height;

vec2 transform(vec2 a) {
    return vec2(2 * a.x / width - 1.0f, 2 * a.y / height - 1.0f);
}

void main() {
    vec2 c = (t1 + t2) / 2.0;
    vec2 r = (t2 - t1) / 2.0;

    vec2 pos = transform(gl_FragCoord.xy);
    float opacity = step((pos.x - c.x)*(pos.x - c.x) * r.y*r.y + (pos.y - c.y)*(pos.y - c.y) * r.x*r.x, r.x*r.x*r.y*r.y); 
    FragColor = vec4(0.0, 1.0, 0.0, opacity);
}
