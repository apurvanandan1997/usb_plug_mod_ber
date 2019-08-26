TARGETS=all d3xx machxo2 zynq help
DIAMOND_VER=3.10_x64

BUILDDIR := build

all : D3XX/Makefile MachXO2/Makefile Zynq/Makefile 
	@$(MAKE) -C D3XX
	@mkdir -p $(BUILDDIR) && rm -f $(BUILDDIR)/ber_test.bit
	cp D3XX/build/ber_test $(BUILDDIR)/
	@$(MAKE) -C MachXO2 DIAMOND_VER=$(DIAMOND_VER)
	@mkdir -p $(BUILDDIR) && rm -f $(BUILDDIR)/machxo2.bit
	cp MachXO2/build/machxo2.bit $(BUILDDIR)/
	@$(MAKE) -C Zynq
	@mkdir -p $(BUILDDIR) && rm -f $(BUILDDIR)/zynq.bit
	cp Zynq/build/usb_gearwork.runs/impl_1/zynq_top.bit $(BUILDDIR)/zynq.bit

zynq : Zynq/vivado.tcl
	@$(MAKE) -C Zynq
	@mkdir -p $(BUILDDIR) && rm -f $(BUILDDIR)/zynq.bit
	cp Zynq/build/usb_gearwork.runs/impl_1/zynq_top.bit $(BUILDDIR)/zynq.bit

machxo2 : MachXO2/Makefile
	@$(MAKE) -C MachXO2 DIAMOND_VER=$(DIAMOND_VER)
	@mkdir -p $(BUILDDIR) && rm -f $(BUILDDIR)/machxo2.bit
	cp MachXO2/build/machxo2.bit $(BUILDDIR)/

d3xx : D3XX/Makefile
	@$(MAKE) -C D3XX
	@mkdir -p $(BUILDDIR) && rm -f $(BUILDDIR)/ber_test
	cp D3XX/build/ber_test $(BUILDDIR)/	

help :
	@echo "Usage: make <target> \nPossible Targets: d3xx, machxo2, zynq, clean. Default target: all"

clean:
	@$(MAKE) -C MachXO2 clean
	@$(MAKE) -C Zynq clean
	@$(MAKE) -C D3XX clean
	rm -rf build
# 	rm -rf D3XX/build
# 	rm -rf MachXO2/build
# 	rm -f  MachXO2/stdout.log.* MachXO2/synlog.tcl.*
# 	rm -rf Zynq/build

.PHONY := all d3xx machxo2 zynq clean help