.phony=all sync clean

all: site

site: out/index.html

out/index.html: gui.html
	mkdir -p out
	cp gui.html out/index.html

sync: site
	aws s3 sync out s3://$(BUCKET)/

clean:
	rm -rf out
