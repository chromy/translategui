.phony=all clean

all: out/index.html

out/index.html: gui.html
	mkdir out
	cp gui.html out/index.html

clean:
	rm -rf out
