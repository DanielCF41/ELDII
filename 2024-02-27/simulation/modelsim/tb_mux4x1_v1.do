vlib rtl_work
vmap work rtl_work
vcom -93 -work work {/home/daniel.f2005/QUARTUS/ELD-II/2024-02-27/mux4x1.vhd}
vsim rtl_work.mux4x1(ifsc_v1)

add wave -position end  sim:/mux4x1/x
add wave -position end  sim:/mux4x1/Sel
add wave -position end  sim:/mux4x1/y

force -freeze sim:/mux4x1/x 0001 0
run
force -freeze sim:/mux4x1/x 0010 0
force -freeze sim:/mux4x1/Sel 01 0
run
force -freeze sim:/mux4x1/x 0100 0
force -freeze sim:/mux4x1/Sel 10 0
run
force -freeze sim:/mux4x1/x 1000 0
force -freeze sim:/mux4x1/Sel 11 0
run
force -freeze sim:/mux4x1/Sel 00 0
run
force -freeze sim:/mux4x1/Sel 01 0
run
force -freeze sim:/mux4x1/Sel 10 0
run
force -freeze sim:/mux4x1/x 0000 0
force -freeze sim:/mux4x1/Sel 11 0
run


