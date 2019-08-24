BUILD_DIR:=build
CFG_DIR:=cfg

all : $(CFG_DIR)/vivado.tcl
	vivado -mode tcl -source $(CFG_DIR)/vivado.tcl -nojournal -nolog | $(CFG_DIR)/cc.sh
	@echo "--------------------Xilinx Zynq SoC Build Complete--------------------"

clean:
	rm -rf $(BUILD_DIR)

.PHONY := all clean