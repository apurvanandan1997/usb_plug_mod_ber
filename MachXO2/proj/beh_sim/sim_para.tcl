lappend auto_path "/usr/local/diamond/3.10_x64/data/script"
package require simulation_generation
set ::bali::simulation::Para(PROJECT) {beh_sim}
set ::bali::simulation::Para(PROJECTPATH) {/home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/proj}
set ::bali::simulation::Para(FILELIST) {"/home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/async_fifo.vhd" "/home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/ddrx4.vhd" "/home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd" "/home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd" "/home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/ft601.vhd" "/home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/prng_recv.vhd" "/home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/rx_sync.vhd" "/home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top_tb.vhd" "/home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd" "/home/apurvan/GSoC/BER_measurement_5_Lane/Virtex-5/src/prng_send.vhd" "/home/apurvan/GSoC/BER_measurement_5_Lane/Virtex-5/src/enc_8b10b.vhd" }
set ::bali::simulation::Para(GLBINCLIST) {}
set ::bali::simulation::Para(INCLIST) {"none" "none" "none" "none" "none" "none" "none" "none" "none" "none" "none"}
set ::bali::simulation::Para(WORKLIBLIST) {"work" "work" "work" "work" "work" "work" "work" "work" "work" "work" "work" }
set ::bali::simulation::Para(COMPLIST) {"VHDL" "VHDL" "VHDL" "VHDL" "VHDL" "VHDL" "VHDL" "VHDL" "VHDL" "VHDL" "VHDL" }
set ::bali::simulation::Para(SIMLIBLIST) {pmi_work ovi_machxo2}
set ::bali::simulation::Para(MACROLIST) {}
set ::bali::simulation::Para(SIMULATIONTOPMODULE) {}
set ::bali::simulation::Para(SIMULATIONINSTANCE) {}
set ::bali::simulation::Para(LANGUAGE) {}
set ::bali::simulation::Para(SDFPATH)  {}
set ::bali::simulation::Para(ADDTOPLEVELSIGNALSTOWAVEFORM)  {0}
set ::bali::simulation::Para(RUNSIMULATION)  {0}
set ::bali::simulation::Para(HDLPARAMETERS) {}
set ::bali::simulation::Para(POJO2LIBREFRESH)    {}
set ::bali::simulation::Para(POJO2MODELSIMLIB)   {}
::bali::simulation::ModelSim_Run
