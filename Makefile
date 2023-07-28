.PHONY: all
all: build

.PHONY: build
build:
	bash ./make.sh build

.PHONY: serve
serve: build
	bash ./make.sh serve
