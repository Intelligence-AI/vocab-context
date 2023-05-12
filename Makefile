VERSION = v1
all: README.markdown dist/v1.json
README.markdown: $(VERSION).markdown
	install -m 0664 $< $@
dist/v%.json: v%.json | dist
	install -m 0664 $< $@
dist:
	mkdir $@
clean: .always
	rm -rf dist
.always:
