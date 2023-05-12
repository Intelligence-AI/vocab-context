all: dist/v1.json
dist/v%.json: v%.json | dist
	install -m 0664 $< $@
dist:
	mkdir $@
clean: .always
	rm -rf dist
.always:
