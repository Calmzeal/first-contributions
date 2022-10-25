SHELL = /usr/bin/bash -O extglob

.PHONY: clean

paper.pdf: paper.tex plot-data.png
	pdflatex paper.tex

plot-%.png: %.dat plot.py
	./plot.py -i $*.dat -o $@

clean:
	rm -v *.aux *.log *.pdf *.png



