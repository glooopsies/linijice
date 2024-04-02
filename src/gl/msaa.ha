use types::c;
use strings;

use libs::gl;

export type msaa_error = !str;

const samples = 8;

let msaa_program = 0u;
let framebuffer = 0u;
let intermediateFBO = 0u;
let quadVAO = 0u, quadVBO = 0u;
let screenTexture = 0u;
let textureColorBufferMultiSampled = 0u;
let rbo = 0u;

export fn msaa_resize() void = {
    gl::glBindTexture(gl::GL_TEXTURE_2D_MULTISAMPLE, textureColorBufferMultiSampled);
    gl::glTexImage2DMultisample(gl::GL_TEXTURE_2D_MULTISAMPLE, 8, gl::GL_RGB, width, height, gl::GL_TRUE);
    gl::glBindTexture(gl::GL_TEXTURE_2D_MULTISAMPLE, 0);

    gl::glBindRenderbuffer(gl::GL_RENDERBUFFER, rbo);
    gl::glRenderbufferStorageMultisample(gl::GL_RENDERBUFFER, 8, gl::GL_DEPTH24_STENCIL8, width, height);
    gl::glBindRenderbuffer(gl::GL_RENDERBUFFER, 0);

    gl::glBindTexture(gl::GL_TEXTURE_2D, screenTexture);
    gl::glTexImage2D(gl::GL_TEXTURE_2D, 0, gl::GL_RGB: i32, width, height, 0, gl::GL_RGB, gl::GL_UNSIGNED_BYTE, null);
};

export fn msaa_init(resources: str) (void | error) = {
    gl::glEnable(gl::GL_MULTISAMPLE);
    gl::glEnable(gl::GL_SAMPLE_SHADING);
    gl::glMinSampleShading(1.0f32);

    const vert_path = strings::concat(resources, "/shaders/msaa.vert");
    defer free(vert_path);

    const frag_path = strings::concat(resources, "/shaders/msaa.frag");
    defer free(frag_path);

    msaa_program = compile_program([
        compile_shader(vert_path, gl::GL_VERTEX_SHADER),
        compile_shader(frag_path, gl::GL_FRAGMENT_SHADER)
    ])?;

    let quadVertices = [
        -1.0f32,  1.0f32,  0.0f32, 1.0f32,
        -1.0f32, -1.0f32,  0.0f32, 0.0f32,
        1.0f32, -1.0f32,  1.0f32, 0.0f32,

        -1.0f32,  1.0f32,  0.0f32, 1.0f32,
        1.0f32, -1.0f32,  1.0f32, 0.0f32,
        1.0f32,  1.0f32,  1.0f32, 1.0f32,
    ];

    gl::glGenVertexArrays(1, &quadVAO);
    gl::glGenBuffers(1, &quadVBO);
    gl::glBindVertexArray(quadVAO);
    gl::glBindBuffer(gl::GL_ARRAY_BUFFER, quadVBO);
    gl::glBufferData(gl::GL_ARRAY_BUFFER, len(quadVertices) * size(f32): uintptr, &quadVertices, gl::GL_STATIC_DRAW);
    gl::glEnableVertexAttribArray(0);
    gl::glVertexAttribPointer(0, 2, gl::GL_FLOAT, gl::GL_FALSE, 4 * size(f32): i32, 0: uintptr: *opaque);
    gl::glEnableVertexAttribArray(1);
    gl::glVertexAttribPointer(1, 2, gl::GL_FLOAT, gl::GL_FALSE, 4 * size(f32): i32, (2 * size(f32)): uintptr: *opaque);

    gl::glGenFramebuffers(1, &framebuffer);
    gl::glBindFramebuffer(gl::GL_FRAMEBUFFER, framebuffer);

    gl::glGenTextures(1, &textureColorBufferMultiSampled);
    gl::glBindTexture(gl::GL_TEXTURE_2D_MULTISAMPLE, textureColorBufferMultiSampled);
    gl::glTexImage2DMultisample(gl::GL_TEXTURE_2D_MULTISAMPLE, samples, gl::GL_RGB, width, height, gl::GL_TRUE);
    gl::glBindTexture(gl::GL_TEXTURE_2D_MULTISAMPLE, 0);
    gl::glFramebufferTexture2D(gl::GL_FRAMEBUFFER, gl::GL_COLOR_ATTACHMENT0, gl::GL_TEXTURE_2D_MULTISAMPLE, textureColorBufferMultiSampled, 0);

    gl::glGenRenderbuffers(1, &rbo);
    gl::glBindRenderbuffer(gl::GL_RENDERBUFFER, rbo);
    gl::glRenderbufferStorageMultisample(gl::GL_RENDERBUFFER, samples, gl::GL_DEPTH24_STENCIL8, width, height);
    gl::glBindRenderbuffer(gl::GL_RENDERBUFFER, 0);
    gl::glFramebufferRenderbuffer(gl::GL_FRAMEBUFFER, gl::GL_DEPTH_STENCIL_ATTACHMENT, gl::GL_RENDERBUFFER, rbo);

    if (gl::glCheckFramebufferStatus(gl::GL_FRAMEBUFFER) != gl::GL_FRAMEBUFFER_COMPLETE) {
        return "MSAA framebuffer is not complete" : msaa_error;
    };
    gl::glBindFramebuffer(gl::GL_FRAMEBUFFER, 0);

    gl::glGenFramebuffers(1, &intermediateFBO);
    gl::glBindFramebuffer(gl::GL_FRAMEBUFFER, intermediateFBO);

    gl::glGenTextures(1, &screenTexture);
    gl::glBindTexture(gl::GL_TEXTURE_2D, screenTexture);
    gl::glTexImage2D(gl::GL_TEXTURE_2D, 0, gl::GL_RGB: i32, width, height, 0, gl::GL_RGB, gl::GL_UNSIGNED_BYTE, null);
    gl::glTexParameteri(gl::GL_TEXTURE_2D, gl::GL_TEXTURE_MIN_FILTER, gl::GL_LINEAR: i32);
    gl::glTexParameteri(gl::GL_TEXTURE_2D, gl::GL_TEXTURE_MAG_FILTER, gl::GL_LINEAR: i32);
    gl::glFramebufferTexture2D(gl::GL_FRAMEBUFFER, gl::GL_COLOR_ATTACHMENT0, gl::GL_TEXTURE_2D, screenTexture, 0);

    if (gl::glCheckFramebufferStatus(gl::GL_FRAMEBUFFER) != gl::GL_FRAMEBUFFER_COMPLETE) {
        return "MSAA intermediate framebuffer is not complete" : msaa_error;
    };
    gl::glBindFramebuffer(gl::GL_FRAMEBUFFER, 0);

    gl::glUseProgram(msaa_program);
    gl::glUniform1i(gl::glGetUniformLocation(msaa_program, c::nulstr("screenTexture\0"): *i8), 0);
};

let draw_fb = 0i32, read_fb = 0i32;
export fn msaa_start() void = {
    gl::glClearColor(0.0, 0.0, 0.0, 1.0);
    gl::glClear(gl::GL_COLOR_BUFFER_BIT | gl::GL_DEPTH_BUFFER_BIT);

    gl::glGetIntegerv(gl::GL_DRAW_FRAMEBUFFER_BINDING, &draw_fb);
    gl::glGetIntegerv(gl::GL_READ_FRAMEBUFFER_BINDING, &read_fb);

    gl::glBindFramebuffer(gl::GL_FRAMEBUFFER, framebuffer);
};

export fn msaa_end() void = {
    gl::glBindFramebuffer(gl::GL_READ_FRAMEBUFFER, framebuffer);
    gl::glBindFramebuffer(gl::GL_DRAW_FRAMEBUFFER, intermediateFBO);
    gl::glBlitFramebuffer(0, 0, width, height, 0, 0, width, height, gl::GL_COLOR_BUFFER_BIT, gl::GL_NEAREST);

    gl::glBindFramebuffer(gl::GL_DRAW_FRAMEBUFFER, draw_fb: uint);
    gl::glBindFramebuffer(gl::GL_READ_FRAMEBUFFER, read_fb: uint);
    gl::glClearColor(1.0f32, 1.0f32, 1.0f32, 1.0f32);
    gl::glClear(gl::GL_COLOR_BUFFER_BIT);
    gl::glDisable(gl::GL_DEPTH_TEST);

    gl::glUseProgram(msaa_program);
    gl::glBindVertexArray(quadVAO);
    gl::glActiveTexture(gl::GL_TEXTURE0);
    gl::glBindTexture(gl::GL_TEXTURE_2D, screenTexture);
    gl::glDrawArrays(gl::GL_TRIANGLES, 0, 6);
};

export fn msaa_finalize() void = {
    gl::glDeleteTextures(1, &screenTexture);
    gl::glDeleteTextures(1, &textureColorBufferMultiSampled);
    gl::glDeleteVertexArrays(1, &quadVAO);
    gl::glDeleteBuffers(1, &quadVBO);
    gl::glDeleteRenderbuffers(1, &rbo);
    gl::glDeleteFramebuffers(1, &intermediateFBO);
    gl::glDeleteFramebuffers(1, &framebuffer);
    gl::glDeleteProgram(msaa_program);
};
