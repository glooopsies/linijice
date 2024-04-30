APPNAME = linijice
PREFIX = build
BINDIR = $(PREFIX)/bin
SHAREDIR = $(PREFIX)/share
RESDIR = $(SHAREDIR)/$(APPNAME)
BINOUT = build
RESOUT = build/resources

.PHONY: $(BINOUT)/$(APPNAME)

all: $(BINOUT)/$(APPNAME)

$(BINOUT)/$(APPNAME): $(RESOUT)/builder.ui $(RESOUT)/shaders $(RESOUT)/data.gresource build
	hare build \
		-j 4 \
		$$(pkg-config --libs-only-l --static libadwaita-1 epoxy) \
		-D "resources: str = \"$(RESDIR)\"" \
		-o $@ src

$(RESOUT)/shaders: resources/shaders
	mkdir -p $@
	cp -r $</* $@

$(RESOUT)/builder.ui: resources/builder.blp $(RESOUT)
	blueprint-compiler compile $< --output $@

$(RESOUT)/data.gresource: resources/data.gresource.xml $(RESOUT)
	glib-compile-resources --sourcedir="resources" --target=$@ --generate $<

$(RESOUT):
	mkdir -p build/resources

$(SHAREDIR)/applications: resources/rs.ac.bg.matf.linijice.desktop
	mkdir -p $@
	cp $< $@

$(SHAREDIR)/icons/hicolor/scalable/apps: resources/icons/rs.ac.bg.matf.linijice.svg
	mkdir -p $@
	cp $< $@

install: $(BINOUT)/$(APPNAME) $(SHAREDIR)/icons/hicolor/scalable/apps $(SHAREDIR)/applications
	install -m755 $< "$(BINDIR)"
	cp -r "$(RESOUT)" "$(RESDIR)"
	update-desktop-database

uninstall:
	rm "$(BINDIR)/$(APPNAME)"
	rm -r "$(RESDIR)"
	rm $(SHAREDIR)/applications/rs.ac.bg.matf.linijice.desktop
	rm $(SHAREDIR)/icons/hicolor/scalable/apps/rs.ac.bg.matf.linijice.svg
	update-desktop-database

run: $(BINOUT)/$(APPNAME)
	./$<

flatpak:
	flatpak-builder --user --install --force-clean .flatpak-build rs.ac.bg.matf.linijice.json

flatpak-run: flatpak
	flatpak run rs.ac.bg.matf.linijice

clean:
	rm -rf build .flatpak .flatpak-build .flatpak-builder
