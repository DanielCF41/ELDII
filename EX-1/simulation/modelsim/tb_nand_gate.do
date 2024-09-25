vlib rtl_work
vmap work rtl_work
vcom -93 -work work {/home/daniel.f2005/QUARTUS/ELD-II/EX-1/nand_gate.vhd}
vsim work.nand_gate
add wave -position end  sim:/nand_gate/a
add wave -position end  sim:/nand_gate/b
add wave -position end  sim:/nand_gate/x

force -freeze sim:/nand_gate/a 0 0, 1 1min, 0 2min, 1 3min -r 5min
force -freeze sim:/nand_gate/b 0 0, 1 1min, 0 2min, 1 3min -r 7min
run 1hr
