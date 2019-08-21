#-- Lattice Semiconductor Corporation Ltd.
#-- Synplify OEM project file /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/proj/impl1/launch_synplify.tcl
#-- Written on Wed Aug 21 18:21:00 2019

project -close
set filename "/home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/proj/impl1/impl1_syn.prj"
if ([file exists "$filename"]) {
	project -load "$filename"
	project_file -remove *
} else {
	project -new "$filename"
}
set create_new 0

#device options
set_option -technology MACHXO2
set_option -part LCMXO2_2000HC
set_option -package TG100C
set_option -speed_grade -6

if {$create_new == 1} {
#-- add synthesis options
	set_option -symbolic_fsm_compiler true
	set_option -resource_sharing true
	set_option -vlog_std v2001
	set_option -frequency auto
	set_option -maxfan 1000
	set_option -auto_constrain_io 0
	set_option -disable_io_insertion false
	set_option -retiming false; set_option -pipe true
	set_option -force_gsr false
	set_option -compiler_compatible 0
	set_option -dup false
	set_option -frequency 1
	set_option -default_enum_encoding default
	
	
	
	set_option -write_apr_constraint 1
	set_option -fix_gated_and_generated_clocks 1
	set_option -update_models_cp 0
	set_option -resolve_multiple_driver 0
	
	
}
#-- add_file options
add_file -vhdl "/usr/local/diamond/3.10_x64/cae_library/synthesis/vhdl/machxo2.vhd"
add_file -vhdl -lib "work" "/home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/async_fifo.vhd"
add_file -vhdl -lib "work" "/home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/ddrx4.vhd"
add_file -vhdl -lib "work" "/home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd"
add_file -vhdl -lib "work" "/home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd"
add_file -vhdl -lib "work" "/home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/ft601.vhd"
add_file -vhdl -lib "work" "/home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/prng_recv.vhd"
add_file -vhdl -lib "work" "/home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/rx_sync.vhd"
add_file -vhdl -lib "work" "/home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd"
add_file -vhdl -lib "work" "/home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/calc_ber.vhd"
#-- top module name
set_option -top_module {}
project -result_file {/home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/proj/impl1/impl1.edi}
project -save "$filename"
