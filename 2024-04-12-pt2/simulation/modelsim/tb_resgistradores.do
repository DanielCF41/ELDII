vlib rtl_work
vmap work rtl_work
vcom -93 -work work {/home/daniel.f2005/QUARTUS/ELD-II/2024-04-12-pt2/shift_register.vhd}
vsim work.shift_register

add wave -position end  sim:/shift_register/reset
add wave -position end  sim:/shift_register/r_reg2
add wave -position end  sim:/shift_register/r_reg
add wave -position end  sim:/shift_register/r_next2
add wave -position end  sim:/shift_register/r_next
add wave -position end  sim:/shift_register/q
add wave -position end  sim:/shift_register/out_final
add wave -position end  sim:/shift_register/d2
add wave -position end  sim:/shift_register/d
add wave -position end  sim:/shift_register/ctrl
add wave -position end  sim:/shift_register/count_clk
add wave -position end  sim:/shift_register/clk
force -freeze sim:/shift_register/reset 1 0
force -freeze sim:/shift_register/reset 1 0, 0 20
force -freeze sim:/shift_register/clk 1 0, 0 {50 ps} -r 100
force -freeze sim:/shift_register/d 11110 0
run 100
run 100
run 100
run 100
run 100
run 100
run 100
run 100
run 100
run 100
run 100
run 100
run 100
run 100
run 100
run 100
run 100
run 100


