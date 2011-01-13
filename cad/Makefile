all: milkymist-assemble-howto.pdf protocase_v7_laser.png

#
# Install the Yanone Kaffeesatz font from http://www.yanone.de/
#
milkymist-assemble-howto.pdf: milkymist-assemble-howto.svg
	inkscape -A $@ $<

TMP1 := $(shell mktemp)
TMP2 := $(shell mktemp)

# process with xsltproc to make the lines thicker and more visible in the PNG
protocase_v7_laser.png: protocase_v7_laser.dxf
	dia -e $(TMP1) -t dia $<
	zcat $(TMP1) | xsltproc --stringparam line_width 0.5 dia_set_line_width.xsl - | gzip > $(TMP2)
	dia -e $@ -t png -s x500 $(TMP2)
	rm -f $(TMP1) $(TMP2)

clean:
	rm -f milkymist-assemble-howto.pdf
	rm -f protocase_v7_laser.png
