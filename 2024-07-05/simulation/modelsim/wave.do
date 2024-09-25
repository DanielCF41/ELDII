onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /pwm/clk
add wave -noupdate /pwm/reset
add wave -noupdate -radix unsigned /pwm/w
add wave -noupdate -radix unsigned /pwm/r_next
add wave -noupdate -radix unsigned /pwm/r_reg
add wave -noupdate /pwm/buf_next
add wave -noupdate /pwm/buf_reg
add wave -noupdate /pwm/pwm_pulse
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {4075 ps} 0}
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
WaveRestoreZoom {0 ps} {10080 ps}
