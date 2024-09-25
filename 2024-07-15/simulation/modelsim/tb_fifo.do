vlib rtl_work
vmap work rtl_work 
vcom -93 -work work {/home/daniel.f2005/QUARTUS/ELD-II/2024-07-09-PT2/reg_file2.vhd}
vsim work.fifo4(ifsc_v1)

add wave -position end  sim:/fifo4/reset_fifo
add wave -position end  sim:/fifo4/clk_fifo
add wave -position end  sim:/fifo4/w_en_sgn
add wave -position end  sim:/fifo4/wr_fifo
add wave -position end  sim:/fifo4/w_addr_fifo
add wave -position end  sim:/fifo4/rd_fifo
add wave -position end  sim:/fifo4/r_addr_fifo
add wave -position end  sim:/fifo4/full_fifo
add wave -position end  sim:/fifo4/empty_fifo
add wave -position end  sim:/fifo4/data_in_fifo
add wave -position end  sim:/fifo4/data_out_fifo
add wave -position end  sim:/fifo4/fifo_reg/array_reg

force -freeze sim:/fifo4/reset_fifo 1 0, 0 20
force -freeze sim:/fifo4/clk_fifo 1 0, 0 {50 ps} -r 100
force -freeze sim:/fifo4/wr_fifo 0 0
force -freeze sim:/fifo4/rd_fifo 0 0
force -freeze sim:/fifo4/data_in_fifo 10#1001 0
run 500
force -freeze sim:/fifo4/wr_fifo 1 0
run 500
force -freeze sim:/fifo4/data_in_fifo 10#1003 0
force -freeze sim:/fifo4/wr_fifo 0 0
run 500
force -freeze sim:/fifo4/rd_fifo 1 0
run 500
force -freeze sim:/fifo4/wr_fifo 1 0
run 1600
force -freeze sim:/fifo4/rd_fifo 0 0
run 1600
force -freeze sim:/fifo4/wr_fifo 0 0
force -freeze sim:/fifo4/rd_fifo 1 0
run 1600


