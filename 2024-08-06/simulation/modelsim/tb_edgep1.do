vlib rtl_work
vmap work rtl_work
vcom -93 -work work {../../edge_detector1.vhd}
vsim work.edge_detector1

do wave.do
 
force -freeze sim:/edge_detector1/reset 1 0
force -freeze sim:/edge_detector1/reset 1 0, 0 20
force -freeze sim:/edge_detector1/clk 1 0, 0 {50 ps} -r 100
force -freeze sim:/edge_detector1/strobe 0 0
run 500
force -freeze sim:/edge_detector1/strobe 1 0
force -freeze sim:/edge_detector1/strobe 1 0, 0 50
run
run
run 50
force -freeze sim:/edge_detector1/strobe 1 0, 0 60
run 
run
force -freeze sim:/edge_detector1/strobe 1 0, 0 330
run 500


