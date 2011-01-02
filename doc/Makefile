
# if leaflet.cls is missing, in Debian try apt-get install texlive-latex-extra

edk_leaflet.pdf: edk_leaflet.tex
	pdflatex $^

clean:
	rm edk_leaflet.pdf
	rm edk_leaflet.log
	rm edk_leaflet.aux
