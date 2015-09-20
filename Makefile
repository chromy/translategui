.phony=all sync clean

all: out/index.html

out/index.html: gui.html
	mkdir out
	cp gui.html out/index.html

sync:
	aws s3 sync out s3://$(BUCKET)/

clean:
	rm -rf out
