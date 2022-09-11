transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {D:/VHDL/projects/project1/and_gate_simulator.vhd}

vcom -93 -work work {D:/VHDL/projects/project1/and_gate_simulator_tb.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cyclonev -L cyclonev_hssi -L rtl_work -L work -voptargs="+acc"  and_gate_simulator

add wave *
view structure
view signals
run -all