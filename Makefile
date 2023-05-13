LIBS := build/libnimark.a build/libnimark.so

.PHONY: all
all: $(LIBS)

build/libnimark.a: nimark.nim
	nim c --noMain --app:staticlib -d:release --outdir:build $<

build/libnimark.so: nimark.nim
	nim c --noMain --app:lib -d:release --outdir:build $<

.PHONY: clean
clean:
	find build -type f \( -name '*.so' -o -name '*.a' \) -delete

.PHONY: install-deps
install-deps:
	nimble install nmark
