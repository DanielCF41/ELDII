vlib rtl_work
vmap work rtl_work
vcom -93 -work work {/home/daniel.f2005/QUARTUS/ELD-II/2024-04-12-pt2/shift_register.vhd}
vsim work.shift_register

add wave -position end  sim:/shift_register/reset
add wave -position end  sim:/shift_register/clk
add wave -position end  sim:/shift_register/r_reg
add wave -position end  sim:/shift_register/r_next
add wave -position end  sim:/shift_register/q
add wave -position end  sim:/shift_register/d
add wave -position end  sim:/shift_register/ctrl
force -freeze sim:/shift_register/reset 1 0
force -freeze sim:/shift_register/reset 1 0, 0 20
force -freeze sim:/shift_register/clk 1 0, 0 {50 ps} -r 100
force -freeze sim:/shift_register/d 1100101010 0
force -freeze sim:/shift_register/ctrl 00 0
run 1000
run 1000
force -freeze sim:/shift_register/ctrl 11 0
run 1000
run 200
run 2000
force -freeze sim:/shift_register/ctrl 00 0
run 2000
force -freeze sim:/shift_register/ctrl 01 0
run 2000
run 1000
force -freeze sim:/shift_register/ctrl 11 0
run 2000
run 1000
force -freeze sim:/shift_register/ctrl 10 0
run 2000
run 1000


