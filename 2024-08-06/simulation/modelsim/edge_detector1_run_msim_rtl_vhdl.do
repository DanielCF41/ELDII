transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {/home/daniel.f2005/QUARTUS/ELD-II/2024-08-06/edge_detector1.vhd}

