vlib rtl_work
vmap work rtl_work
vcom -93 -work work {/home/daniel.f2005/QUARTUS/ELD-II/2024-03-22/contador_0_N.vhd}
vsim work.contador_0_n
add wave -position end  sim:/contador_0_n/clock
add wave -position end  sim:/contador_0_n/q
add wave -position end  sim:/contador_0_n/reset
force -freeze sim:/contador_0_n/clock 1 0, 0 {50 ps} -r 100
force -freeze sim:/contador_0_n/reset 1 0
force -freeze sim:/contador_0_n/reset 1 0, 0 20
run 5000


