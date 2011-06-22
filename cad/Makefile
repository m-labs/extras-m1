all: milkymist-assemble-howto.pdf protocase_v7_laser.svg

#
# install fonts for example into ~/.fonts
#  1) Yanone Kaffeesatz font from http://www.yanone.de/
#  2) cc-icons.ttf
#
milkymist-assemble-howto.pdf: milkymist-assemble-howto.svg
	inkscape -A $@ $<

TMP := $(shell mktemp)

%.svg: %.dxf
	dia -e $(TMP) -t svg $<
	sed -e 's/stroke-width: 0.02/stroke-width: 10/' $(TMP) > $@
	rm -f $(TMP)

clean:
	rm -f milkymist-assemble-howto.pdf
	rm -f protocase_v7_laser.svg
