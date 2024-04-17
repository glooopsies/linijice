use src::nodes;

export fn update_color() void = {
    for (let node .. selected) {
        node.color = color;
    };
};

export fn update_radius() void = {
    for (let node .. selected) {
        if (node._type == nodes::node_type::RECT) {
            (node: *nodes::rect).radius = radius;
        };
    };
};
