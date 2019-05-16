all: $(patsubst %.tex, %.pdf, $(wildcard *.tex))

%.pdf: %.tex
	pdflatex $<
	pdflatex $<

install:
	rm -rf build
	mkdir build
	cp driving-directions.pdf build
	cp employment-contract.pdf build
	cp important-information.pdf build
	cp medical-authorization.pdf build
	cp participation-agreement.pdf build
	cp program-fees.pdf build
	cp standards-of-behavior.pdf build
