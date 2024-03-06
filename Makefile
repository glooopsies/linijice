all: build/main

build/main: src/main.ha build/resources/builder.ui build
	hare build \
		$$(pkg-config --libs-only-l --static gtk4 libadwaita-1) \
		-lepoxy -lXi -lxkbcommon -lwayland-client -lwayland-egl -lXfixes -lXcursor -lXdamage -lXrandr -lXinerama -lcairo-script-interpreter -lbsd \
		-D "resources: str = \"build/resources\"" \
		-o $@ src

build/resources/builder.ui: resources/builder.blp build
	blueprint-compiler compile  $< --output $@

build:
	mkdir -p build/resources

run: build/main
	./$<

clean:
	rm -r build

