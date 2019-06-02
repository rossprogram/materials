all: $(patsubst %.tex, %.pdf, $(wildcard *.tex))

%.pdf: %.tex ross.cls
	pdflatex $<
	pdflatex $<

install:
	rm -rf build
	mkdir build
	cp *.pdf build

