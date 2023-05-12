VERSION = v1
all: README.markdown dist/index.html dist/v1.json dist/v1.html
README.markdown: $(VERSION).markdown
	install -m 0664 $< $@
dist/v%.json: v%.json | dist
	install -m 0664 $< $@
dist/index.html: dist/$(VERSION).html
	install -m 0664 $< $@
dist/v%.html: v%.markdown template.html | dist
	pandoc --standalone \
		--metadata title="JSON Schema Context Vocabulary" \
		--template $(word 2,$^) \
		--output $@ $<
dist:
	mkdir $@
clean: .always
	rm -rf dist
.always:
