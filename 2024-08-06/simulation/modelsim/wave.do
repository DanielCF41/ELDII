onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /edge_detector1/reset
add wave -noupdate /edge_detector1/clk
add wave -noupdate /edge_detector1/strobe
add wave -noupdate /edge_detector1/state_next
add wave -noupdate /edge_detector1/state_reg
add wave -noupdate /edge_detector1/p1
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {1352 ps} 0}
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
WaveRestoreZoom {0 ps} {1523 ps}
