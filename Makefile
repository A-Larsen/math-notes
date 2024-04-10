FILENAME=$(shell find . -type f -name "*.adoc")

build: $(FILENAME)
	rm -rf diag*.png
	asciidoctor -r asciidoctor-diagram -b html5 $(FILENAME)

.PHONY: clean
