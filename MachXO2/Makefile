BOARD="MachXO2"
DEVICE="LCMXO2-2000HC"
PKG="TQFP100"
GRADE=6
#DIAMOND_VER=3.10_x64
SEARCH="/usr/local/diamond/$(DIAMOND_VER)/ispfpga/vhdl/data/"
BUILD= ./build/
SRC= ./src/
CFG= ./cfg/

ALL: $(BUILD)machxo2.bit

$(BUILD)%.edi : $(SRC)%_top.vhd 
	mkdir $(BUILD) && cp $(CFG)$*.prj $(BUILD)
	synpwrap -prj "$(BUILD)$*.prj"

$(BUILD)%.ngo : $(BUILD)%.edi
	edif2ngd -l $(BOARD) -d $(DEVICE) $< $@

$(BUILD)%.ngd : $(BUILD)%.ngo
	ngdbuild -a $(BOARD) -d $(DEVICE) -p $(SEARCH) $< $@

$(BUILD)%.ncd : $(BUILD)%.ngd $(SRC)%.lpf
	cp $(SRC)$*.lpf $(BUILD)
	map -a $(BOARD) -p $(DEVICE) -t $(PKG) -s $(GRADE) $< -o $@ $(BUILD)$*.lpf

$(BUILD)%.o.ncd : $(BUILD)%.ncd
	par -w $< $(BUILD)$*.o.ncd $(BUILD)$*.prf

$(BUILD)%.bit : $(BUILD)%.o.ncd
	bitgen -w $< $@

# $(BUILD)%.svf : $(BUILD)%.bit
# 	ddtcmd -oft -svfsingle -revd -op "SRAM Fast Program" -if $< -of $@

clean:
	rm -rf $(BUILD)
	rm -f stdout.log
	rm -f synlog.tcl
