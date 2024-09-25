vlib rtl_work
vmap work rtl_work
vcom -93 -work work {/home/daniel.f2005/QUARTUS/ELD-II/2024-04-09/contador_up_down.vhd}
vsim work.contador_up_down
add wave -position end  sim:/contador_up_down/UPDOWN
add wave -position end  sim:/contador_up_down/rst
add wave -position end  sim:/contador_up_down/MIN
add wave -position end  sim:/contador_up_down/MAX
add wave -position end  sim:/contador_up_down/count_out
add wave -position end  sim:/contador_up_down/clk_out
add wave -position end  sim:/contador_up_down/clk
force -freeze sim:/contador_up_down/clk 1 0
force -freeze sim:/contador_up_down/rst 0 0
force -freeze sim:/contador_up_down/clk 1 0, 0 {50 ps} -r 100
force -freeze sim:/contador_up_down/rst 0 1, 0 120
run 5000


