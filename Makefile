FILENAME=$(shell find . -type f -name "*.adoc")

build: $(FILENAME)
	rm -rf $$(find . -type f -regex '.*\.html' | grep -v docinfo)
	rm -rf diag*.png
	./.scripts/create_indices
	asciidoctor -r asciidoctor-diagram -b html5 $(FILENAME)

clean:
	rm -rf $$(find . -type f -regex '.*\.html' | grep -v docinfo)

.PHONY: clean
