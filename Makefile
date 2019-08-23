TARGETS=all d3xx machxo2 zynq
DIAMOND_VER=3.10_x64
export DIAMOND_VER

BUILDDIR := build

all : D3XX/Makefile MachXO2/Makefile Zynq/vivado.tcl 
	$(MAKE) -C D3XX
	mkdir -p $(BUILDDIR) && cp D3XX/build/ber_test $(BUILDDIR)/
	$(MAKE) -C MachXO2
	mkdir -p $(BUILDDIR) && cp MachXO2/build/machxo2.bit $(BUILDDIR)/
	cd Zynq && \
	vivado -mode tcl -source vivado.tcl -nojournal -nolog
	mkdir -p $(BUILDDIR) && cp Zynq/build/usb_gearwork.runs/impl_1/zynq_top.bit $(BUILDDIR)/
	mv $(BUILDDIR)/zynq_top.bit $(BUILDDIR)/zynq.bit

zynq : Zynq/vivado.tcl
	cd Zynq && \
	vivado -mode tcl -source vivado.tcl -nojournal -nolog
	mkdir -p $(BUILDDIR) && cp Zynq/build/usb_gearwork.runs/impl_1/zynq_top.bit $(BUILDDIR)/
	mv $(BUILDDIR)/zynq_top.bit $(BUILDDIR)/zynq.bit

machxo2 : MachXO2/Makefile
	$(MAKE) -C MachXO2
	mkdir -p $(BUILDDIR) && cp MachXO2/build/machxo2.bit $(BUILDDIR)/

d3xx : D3XX/Makefile
	$(MAKE) -C D3XX
	mkdir -p $(BUILDDIR) && cp D3XX/build/ber_test $(BUILDDIR)/	

clean:
	rm -rf build
	rm -rf D3XX/build
	rm -rf MachXO2/build
	rm -f  MachXO2/stdout.log MachXO2/synlog.tcl
	rm -rf Zynq/build

.PHONY := all  d3xx machxo2 zynq clean