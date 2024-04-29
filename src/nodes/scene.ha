use types::c;
use io;
use fmt;
use errors;
use strings;
use strconv;

use format::xml;
use libs::gl;
use src::gl;
use src::math;

export type layer = []*node;
export type scene = struct {
    node,
    w: f32,
    h: f32,
    paper: *rect,
    selected: []*node,
    selection: nullable *rect,
    selection_mask: []*rect,
    layers: []layer,
};

let active_scene = null: *scene;

fn scene_init(resources: str) void = {
    gl::glEnable(gl::GL_BLEND);
    gl::glBlendFunc(gl::GL_SRC_ALPHA, gl::GL_ONE_MINUS_SRC_ALPHA);

    match (gl::msaa_init(resources)) {
	case void => yield;
    case let err: gl::error => gl::check_error(err);
    };
};

fn scene_bounding_box(this: *node) [2]math::vec2 = [[0f32, 0f32], [0f32, 0f32]];
fn scene_intersects(this: *node, other: [2]math::vec2) bool = false;

export fn scene_new(width: f32 = 620f32, height: f32 = 877f32) *scene = {
    return alloc(scene {
        _type        = node_type::SCENE,
        color        = math::vec4id(0f32),
        position     = math::vec2id(0f32),
        translation  = math::vec2id(0f32),
        rotation     = math::mat2id(1f32),
        scale        = math::vec2id(1f32),
        w            = width,
        h            = height,
        draw         = &_scene_draw,
        bounding_box = &scene_bounding_box,
        intersects   = &scene_intersects,
        save         = &scene_save,

        paper          = make_rect([0f32, 0f32], width, height, [1f32, 1f32, 1f32, 1f32]),
        selection      = null,

        selected       = [],
        selection_mask = [],
        layers         = [],
    });
};

fn scene_set_size(scene: *scene, s: math::vec2) void = {
    scene.w = s[0];
    scene.h = s[1];

    scene.paper.w = s[0];
    scene.paper.h = s[1];
};

export fn get_scene() *scene = active_scene;

export fn scene_resize() void = {
    gl::msaa_resize();
};

export fn scene_append(node: *node) void = {
    const layer = len(active_scene.layers) - 1;
    append(active_scene.layers[layer], node);
};

export fn scene_transform() math::mat3 = {
    const active_scene = active_scene: *scene;

    return node_transform(active_scene);
};

export fn scene_set_uniforms(program: uint) void = {
    const transform = scene_transform();
    const location = gl::glGetUniformLocation(program, c::nulstr("scene_transform\0"): *i8);
    gl::glUniformMatrix3fv(location, 1, gl::GL_FALSE, &transform[0]: *f32);

    const transform = gl::screen_transform();
    const location = gl::glGetUniformLocation(program, c::nulstr("screen_transform\0"): *i8);
    gl::glUniformMatrix3fv(location, 1, gl::GL_FALSE, &transform[0]: *f32);

    const location = gl::glGetUniformLocation(program, c::nulstr("width\0"): nullable *const i8);
    gl::glUniform1f(location, gl::width: f32);

    const location = gl::glGetUniformLocation(program, c::nulstr("height\0"): nullable *const i8);
    gl::glUniform1f(location, gl::height: f32);
};

fn get_size() math::vec2 = {
    return [gl::width: f32 / active_scene.scale[0], gl::height: f32 / active_scene.scale[1]];
};

fn _scene_draw(this: *node) void = {
    const this = this: *scene;
    gl::msaa_start();

    gl::glClearColor(gl::background[0], gl::background[1], gl::background[2], gl::background[3]);
    gl::glClear(gl::GL_COLOR_BUFFER_BIT | gl::GL_DEPTH_BUFFER_BIT);

    this.paper.draw(this.paper);
    for (let layer &.. this.layers) {
        for (let node .. layer) {
            node.draw(node);
        };
    };

    if (this.selection != null) {
        const selection = this.selection: *rect;
        selection.draw(selection);
    };

    for (const rect .. this.selection_mask) {
        rect.draw(rect);
    };

    for (const node .. this.selected) {
        if (node._type == node_type::BEZIER) {
            draw_bezier_controls(node: *bezier);
        };
    };

    gl::msaa_end();
};

export fn scene_draw() void = {
    if (active_scene == null) {
        return;
    };

    _scene_draw(active_scene: *scene);
};

fn _scene_free(scene: *scene) void = {
    free(scene.paper);
    for (let i = 0z; i < len(scene.layers); i += 1) {
        for (let j = 0z; j < len(scene.layers[i]); j += 1) {
            free(scene.layers[i][j]);
        };
        free(scene.layers[i]);
    };

    free(scene.layers);
    free(scene);
};

export fn scene_free() void = {
    if (active_scene != null) {
        const active_scene = active_scene: *scene;
        _scene_free(active_scene);
    };
};

export fn load(stream: *io::stream) (void | errors::error | strconv::error) = {
    const parser = xml::parse(stream)!;
    defer xml::parser_free(parser);

    const token = xml::scan(parser)!;
    if (!(token is xml::elementstart) || strings::compare(token as xml::elementstart, "svg") != 0) {
        return errors::invalid;
    };

    free(active_scene);
    active_scene = scene_load(parser)?: *scene;
};

fn layer_load(parser: *xml::parser) (layer | errors::error | strconv::error) = {
    let layer = []: layer;

    for (true) {
        const token = xml::scan(parser)!;
        match(token) {
            case let start: xml::elementstart =>
                switch (start) {
                    case "rect" =>
                        append(layer, rect_load(parser)?);
                    case "ellipse" =>
                        append(layer, ellipse_load(parser)?);
                    case "path" =>
                        append(layer, bezier_load(parser)?);
                    case =>
                        return errors::invalid;
                };
            case let end: xml::elementend =>
                if (strings::compare(end, "g") != 0) {
                    free(layer);
                    return errors::invalid;
                };

                return layer;
            case void => break;
            case => yield;
        };
    };

    return errors::invalid;
};

fn scene_load(parser: *xml::parser) (*node | errors::error | strconv::error) = {
    let scene = scene_new();

    for (true) {
        const token = xml::scan(parser)!;
        match(token) {
            case let start: xml::elementstart =>
                switch (start) {
                    case "g" =>
                        append(scene.layers, layer_load(parser)?);
                    case =>
                        return errors::invalid;
                };
            case let end: xml::elementend =>
                if (strings::compare(end, "svg") != 0) {
                    free(scene);
                    return errors::invalid;
                };

                return scene;
            case let attr: xml::attribute =>
                switch (attr.0) {
                    case "viewBox" =>
                        const numbers = strings::split(attr.1, " ");
                        defer free(numbers);
                        if (len(numbers) != 4) { return errors::invalid; };

                        scene_set_size(scene,[
                            strconv::stof32(numbers[2])?,
                            strconv::stof32(numbers[3])?,
                        ]);
                    case => yield;
                };
            case void => break;
            case => yield;
        };
    };

    return errors::invalid;
};

fn layer_save(layer: *layer, stream: *io::stream, prefix: str = "") void = {
    fmt::fprintfln(stream, "{}<g>", prefix)!;

    for (const node .. layer) {
        node.save(node, stream, fmt::asprintf("{}\t", prefix));
    };

    fmt::fprintfln(stream, "{}</g>", prefix)!;
};

fn scene_save(this: *node, stream: *io::stream, prefix: str = "") void = {
    const this = this: *scene;

    fmt::fprintfln(stream, "{}<svg viewBox=\"0 0 {} {}\" xmlns=\"http://www.w3.org/2000/svg\">", prefix, this.w, this.h)!;
    for (const layer &.. this.layers) {
        layer_save(layer, stream, fmt::asprintf("{}\t", prefix));
    };
    fmt::fprintfln(stream, "{}</svg>", prefix)!;
};

export fn save(stream: *io::stream) void = {
    active_scene.save(active_scene, stream);
};
