quit -sim
project compileall
vsim work.top_tb
add wave -position insertpoint sim:/top_tb/*
run 100000000
radix signal sim:/top_tb/enc10b_dat hexadecimal
radix signal sim:/top_tb/FT601_DATA hexadecimal
