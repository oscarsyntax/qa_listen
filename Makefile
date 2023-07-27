.PHONY: all
all: build

.PHONY: build
build:
	bash ./make.sh build qa.md

.PHONY: serve
serve: build
	python -m http.server
