#version 430 core
out vec4 FragColor;

layout (location = 2) in vec4 color;

void main() {
    FragColor = color;
}
