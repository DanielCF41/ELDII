vlib rtl_work
vmap work rtl_work
vcom -93 -work work {/home/daniel.f2005/QUARTUS/ELD-II/AVALIACAO/gcd.vhd}
vsim work.gcd(euclides_arch)

do wave3.do

force -freeze sim:/gcd/clk 1 0, 0 {50 ps} -r 100
force -freeze sim:/gcd/reset 1 0, 0 20
force -freeze sim:/gcd/start 0 0
force -freeze sim:/gcd/a_in 10#28 0
force -freeze sim:/gcd/b_in 10#16 0
run
force -freeze sim:/gcd/start 1 0
run
run
run
run
run
run


