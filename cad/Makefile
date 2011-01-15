all: milkymist-assemble-howto.pdf protocase_v7_laser.svg

#
# install fonts for example into ~/.fonts
#  1) Yanone Kaffeesatz font from http://www.yanone.de/
#  2) cc-icons.ttf
#
milkymist-assemble-howto.pdf: milkymist-assemble-howto.svg
	inkscape -A $@ $<

TMP1 := $(shell mktemp)

protocase_v7_laser.svg: protocase_v7_laser.dxf
	dia -e $(TMP1) -t svg $<
	sed -e 's/stroke-width: 0.02/stroke-width: 10/' $(TMP1) > $@
	rm -f $(TMP1)

clean:
	rm -f milkymist-assemble-howto.pdf
	rm -f protocase_v7_laser.svg
