use fmt;
use fs;
use io;
use os;
use errors;
use types::c;

export fn compile_shader(file_name: str, shader_type: gl_enum) (uint | errors::invalid) = {
    let success: i32 = 0;

    const file = os::open(file_name)!;
	defer io::close(file)!;

	const shader_src = io::drain(file)!;
	defer free(shader_src);

    const shader = glCreateShader(shader_type);
    glShaderSource(shader, 1, &shader_src: *nullable *const i8, null);
    glCompileShader(shader);
    glGetShaderiv(shader, GL_COMPILE_STATUS, &success);

    if (success == 0) {
        let length: i32 = 0;
        glGetShaderiv(shader, GL_INFO_LOG_LENGTH, &length: nullable *i32);

        let info: [1000]c::char = [0...];
        glGetShaderInfoLog(shader, length, null, &info[0]);

        const info = c::tostr(&info[0])!;
        fmt::printfln("Error compiling shader({}): {}", file_name, info)!;

        return errors::invalid;
    };

    return shader;
};

export fn compile_program(shaders: []uint) (uint | errors::invalid) = {
    let success: i32 = 0;

    const program = glCreateProgram();

    for (let i = 0z; i < len(shaders); i += 1) {
        glAttachShader(program, shaders[i]);
    };
      
    glLinkProgram(program);
    glGetProgramiv(program, GL_LINK_STATUS, &success);

    if (success == 0) {
        let length: i32 = 0;
        glGetShaderiv(program, GL_INFO_LOG_LENGTH, &length: nullable *i32);

        let info: [1000]c::char = [0...];
        glGetProgramInfoLog(program, length, null, &info[0]);

        const info = c::tostr(&info[0])!;
        fmt::printfln("Error compiling shader program: {}", info)!;

        return errors::invalid;
    };

    for (let i = 0z; i < len(shaders); i += 1) {
        glDeleteShader(shaders[i]);
    };

    return program;
};
