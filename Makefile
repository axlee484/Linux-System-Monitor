.PHONY: all
all: format test dist



.PHONY: build
build:
	mkdir -p dist
	cd dist && \
	cmake .. && \
	make

.PHONY: debug
debug:
	mkdir -p debug
	cd debug && \
	cmake -DCMAKE_BUILD_TYPE=debug .. && \
	make

.PHONY: clean
clean:
	rm -rf dist
