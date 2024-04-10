FILENAME=$(shell find . -type f -name "*.adoc")

build: $(FILENAME)
	rm -rf diag*.png
	asciidoctor -r asciidoctor-diagram -b html5 $(FILENAME)

clean:
	rm -rf $$(find . -type f -regex '.*\.html' | grep -v docinfo)

.PHONY: clean
