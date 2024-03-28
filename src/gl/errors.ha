use os;
use fs;
use io;
use fmt;

export type error = !(fs::error | io::error | shader_error | program_error | msaa_error);

export fn check_error(err: error) never = {
    match (err) {
	case fs::error =>
		fmt::println("Error opening file")!;
	case io::error =>
		fmt::println("Error reading file")!;
	case let err: shader_error =>
        fmt::printfln("Error compiling shader `{}`: {}", err.file_name, err.error)!;
        free(err.file_name);
        free(err.error);
	case let err: program_error =>
        fmt::printfln("Error linking shader program: {}", err)!;
        free(err);
    case let err: msaa_error =>
        fmt::printfln("MSAA error: {}", err)!;
	};

    os::exit(1);
};
