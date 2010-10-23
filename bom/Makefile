BOOM_CONFIG=../../eda-tools/boom/boom-config
BOOM=../../boom/boom

KITS=1

EQU=usb_jtag.equ $(shell $(BOOM_CONFIG) equ)
INV=usb_jtag.inv $(shell $(BOOM_CONFIG) inv)
DSC=$(shell $(BOOM_CONFIG) dsc)
CHR=$(shell $(BOOM_CONFIG) chr)

usb_jtag.ord:	usb_jtag.par $(INV) $(EQU)
		$(BOOM) part2order $(KITS) $^ >$@ || \
		  { rm -f $@; exit 1; }

usb_jtag.par:	$(EQU) $(INV) $(CHR) ../usb_jtag.lst usb_jtag.sub
		$(BOOM) bom2part $^ >$@ || \
		  { rm -f $@; exit 1; }

show:		usb_jtag.ord $(DSC)
		grep -vw USB_JTAG $< | $(BOOM) prettyord -t - $(DSC) | \
		  sed 's/^...  //'

clean:
		rm -f usb_jtag.par usb_jtag.ord
