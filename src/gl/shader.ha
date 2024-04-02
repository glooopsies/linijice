use io;
use os;
use types::c;
use strings;

use libs::gl;

export type shader_error = !struct {
    file_name: str,
    error:     str,
};

export type program_error = !str;

export fn compile_shader(file_name: str, shader_type: gl::gl_enum) (uint | error) = {
    let success: i32 = 0;

    const file = os::open(file_name)?;
	defer io::close(file)!;

	const shader_src = io::drain(file)?;
	defer free(shader_src);

    const shader = gl::glCreateShader(shader_type);
    gl::glShaderSource(shader, 1, &shader_src: *nullable *const i8, &[len(shader_src)][0]: nullable *const i32);
    gl::glCompileShader(shader);
    gl::glGetShaderiv(shader, gl::GL_COMPILE_STATUS, &success);

    if (success == 0) {
        let length: i32 = 0;
        gl::glGetShaderiv(shader, gl::GL_INFO_LOG_LENGTH, &length: nullable *i32);

        let info: []c::char = alloc([0...], length: size);
        defer free(info);

        gl::glGetShaderInfoLog(shader, length, null, &info[0]);
        const info = c::tostr(&info[0])!;

        return shader_error {
            file_name = strings::dup(file_name),
            error = strings::dup(info),
        };
    };

    return shader;
};

export fn compile_program(shaders: [](uint | error)) (uint | error) = {
    let success: i32 = 0;

    const program = gl::glCreateProgram();

    for (let shader .. shaders) {
        match (shader) {
        case let shader: uint =>
            gl::glAttachShader(program, shader);
            defer gl::glDeleteShader(shader);
        case let err: error =>
            return err;
        };
    };

    gl::glLinkProgram(program);
    gl::glGetProgramiv(program, gl::GL_LINK_STATUS, &success);

    if (success == 0) {
        let length: i32 = 0;
        gl::glGetProgramiv(program, gl::GL_INFO_LOG_LENGTH, &length: nullable *i32);

        let info: []c::char = alloc([0...], length: size);
        defer free(info);

        gl::glGetProgramInfoLog(program, length, null, &info[0]);
        const info = c::tostr(&info[0])!;

        return strings::dup(info): program_error;
    };

    return program;
};
