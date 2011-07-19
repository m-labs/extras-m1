# if leaflet.cls is missing, in Debian try apt-get install texlive-latex-extra

run3_leaflet.pdf: run3_leaflet.tex point-to-on.pdf point-to-videoin.pdf point-to-vga.pdf point-to-power.pdf milkymist-logo-bw.pdf
	pdflatex $^

%.pdf: %.svg
	inkscape -A $@ $<

clean:
	rm -f run3_leaflet.pdf
	rm -f run3_leaflet.log
	rm -f run3_leaflet.aux
	rm -f point-to-on.pdf
	rm -f point-to-videoin.pdf
	rm -f point-to-vga.pdf
	rm -f point-to-power.pdf
	rm -f milkymist-logo-bw.pdf
