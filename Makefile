all: build/main

build/main: src/main.ha build/resources/builder.ui build/resources/shaders build
	hare build \
		$$(pkg-config --libs-only-l --static libadwaita-1 epoxy) \
		-D "resources: str = \"build/resources\"" \
		-o $@ src

build/resources/shaders: resources/shaders
	mkdir -p $@
	cp -r $^/* $@

build/resources/builder.ui: resources/builder.blp build
	blueprint-compiler compile  $< --output $@

build:
	mkdir -p build/resources

run: build/main
	./$<

clean:
	rm -rf build
