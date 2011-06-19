# if leaflet.cls is missing, in Debian try apt-get install texlive-latex-extra

run3_leaflet.pdf: run3_leaflet.tex
	pdflatex $^

clean:
	rm -f run3_leaflet.pdf
	rm -f run3_leaflet.log
	rm -f run3_leaflet.aux
