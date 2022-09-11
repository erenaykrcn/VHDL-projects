transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {D:/VHDL/projects/carry-look-ahead/full_adder.vhd}
vcom -93 -work work {D:/VHDL/projects/carry-look-ahead/CLA_4_bit.vhd}
vcom -93 -work work {D:/VHDL/projects/carry-look-ahead/CLA_16_bit.vhd}
vcom -93 -work work {D:/VHDL/projects/carry-look-ahead/CLA.vhd}

vcom -93 -work work {D:/VHDL/projects/carry-look-ahead/full_adder.vhd}
vcom -93 -work work {D:/VHDL/projects/carry-look-ahead/CLA_4_bit.vhd}
vcom -93 -work work {D:/VHDL/projects/carry-look-ahead/CLA_16_bit.vhd}
vcom -93 -work work {D:/VHDL/projects/carry-look-ahead/tests/CLA_4_bit_tb.vhd}
vcom -93 -work work {D:/VHDL/projects/carry-look-ahead/tests/CLA_16_bit_tb.vhd}
vcom -93 -work work {D:/VHDL/projects/carry-look-ahead/tests/full_adder_tb.vhd}
vcom -93 -work work {D:/VHDL/projects/carry-look-ahead/tests/CLA_tb.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cyclonev -L cyclonev_hssi -L rtl_work -L work -voptargs="+acc"  CLA

add wave *
view structure
view signals
run -all
