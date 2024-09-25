vlib rtl_work
vmap work rtl_work
vcom -93 -work work {/home/daniel.f2005/QUARTUS/ELD-II/2024-07-05/pwm.vhd}
vsim work.pwm

add wave -position end  sim:/pwm/clk
add wave -position end  sim:/pwm/reset
add wave -position end  -radix unsigned sim:/pwm/w
add wave -position end  -radix unsigned sim:/pwm/r_next
add wave -position end  -radix unsigned sim:/pwm/r_reg
add wave -position end  sim:/pwm/buf_next
add wave -position end  sim:/pwm/buf_reg
add wave -position end  sim:/pwm/pwm_pulse

force -freeze sim:/pwm/clk 1 0, 0 {50 ps} -r 100
force -freeze sim:/pwm/reset 1 0
force -freeze sim:/pwm/reset 1 0, 0 20

force -freeze sim:/pwm/w 0011 0
run 1600
force -freeze sim:/pwm/w 0111 0
run 1600
force -freeze sim:/pwm/w 1011 0
run 1600
force -freeze sim:/pwm/w 1001 0
run 1600
force -freeze sim:/pwm/w 1111 0
run 1600
force -freeze sim:/pwm/w 0000 0
run 1600

