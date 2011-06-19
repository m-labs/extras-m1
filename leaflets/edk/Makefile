# if leaflet.cls is missing, in Debian try apt-get install texlive-latex-extra

edk_leaflet.pdf: edk_leaflet.tex
	pdflatex $^

clean:
	rm -f edk_leaflet.pdf
	rm -f edk_leaflet.log
	rm -f edk_leaflet.aux
