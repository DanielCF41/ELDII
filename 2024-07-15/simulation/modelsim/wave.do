onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /fifo4/reset_fifo
add wave -noupdate /fifo4/clk_fifo
add wave -noupdate /fifo4/w_en_sgn
add wave -noupdate /fifo4/wr_fifo
add wave -noupdate /fifo4/w_addr_fifo
add wave -noupdate /fifo4/rd_fifo
add wave -noupdate /fifo4/r_addr_fifo
add wave -noupdate -color White /fifo4/full_fifo
add wave -noupdate -color White /fifo4/empty_fifo
add wave -noupdate /fifo4/data_in_fifo
add wave -noupdate /fifo4/data_out_fifo
add wave -noupdate /fifo4/fifo_reg/array_reg
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {6800 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {5404 ps} {6874 ps}
