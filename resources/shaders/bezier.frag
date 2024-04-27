#version 430 core

layout (location = 0) in vec2 screen_positions[];
out vec4 FragColor;

uniform vec4 color;

void main() {
    FragColor = color;
}
