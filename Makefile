all: build/main

PREFIX = build
BINDIR = $(PREFIX)/bin
RESDIR = $(PREFIX)/resources
BINOUT = build
RESOUT = build/resources

$(BINOUT)/main: src/main.ha $(RESOUT)/builder.ui $(RESOUT)/shaders build
	hare build \
		$$(pkg-config --libs-only-l --static libadwaita-1 epoxy) \
		-D "resources: str = \"$(RESDIR)\"" \
		-o $@ src

$(RESOUT)/shaders: resources/shaders
	mkdir -p $@
	cp -r $^/* $@

$(RESOUT)/builder.ui: resources/builder.blp $(RESOUT)
	blueprint-compiler compile  $< --output $@

$(RESOUT):
	mkdir -p build/resources

install: $(BINOUT)/main
	install -m755 $< "$(BINDIR)"
	cp -r "$(RESOUT)" "$(RESDIR)"

run: $(BINOUT)/main
	./$<

flatpak:
	flatpak-builder --user --install --force-clean build-dir rs.ac.bg.matf.linijice.json

flatpak-run: flatpak
	flatpak run rs.ac.bg.matf.linijice

clean:
	rm -rf build
