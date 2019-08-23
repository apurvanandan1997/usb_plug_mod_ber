set pwd [pwd]

set OS [lindex $tcl_platform(os) 0]
if { $OS == "Windows" } {
    exec cmd /c rmdir build
    exec cmd /c mkdir build
} else {
    exec rm -rf build
    exec mkdir build
}

cd build

create_project usb_gearwork [pwd]

read_vhdl -vhdl2008 ../src/enc_8b10b.vhd
read_vhdl -vhdl2008 ../src/prng_send.vhd
read_vhdl -vhdl2008 ../src/vivado_pkg.vhd
read_vhdl -vhdl2008 ../src/ps7_stub.vhd
read_vhdl -vhdl2008 ../src/serdes_10_1.vhd
read_vhdl -vhdl2008 ../src/top.vhd

read_xdc ../src/top.xdc
set_property target_constrs_file ../src/top.xdc [current_fileset -constrset]

set_property PART xc7z020clg400-1 [current_project]
set_property board_part em.avnet.com:microzed_7020:part0:1.2 [current_project]
set_property TARGET_LANGUAGE VHDL [current_project]

launch_runs synth_1
wait_on_run synth_1
#launch_runs impl_1

launch_runs impl_1 -to_step write_bitstream -jobs 4
wait_on_run impl_1
puts "Vivado Build Complete"
exit