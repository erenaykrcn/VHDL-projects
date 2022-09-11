transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {D:/VHDL/projects/sequential-multiplier/components/adder/full_adder.vhd}
vcom -93 -work work {D:/VHDL/projects/sequential-multiplier/components/register/register_1_bit.vhd}
vcom -93 -work work {D:/VHDL/projects/sequential-multiplier/components/controller/ROM.vhd}
vcom -93 -work work {D:/VHDL/projects/sequential-multiplier/components/adder/CLA_4_bit.vhd}
vcom -93 -work work {D:/VHDL/projects/sequential-multiplier/components/register/register_4_bit.vhd}
vcom -93 -work work {D:/VHDL/projects/sequential-multiplier/components/controller/state_register.vhd}
vcom -93 -work work {D:/VHDL/projects/sequential-multiplier/components/controller/controller.vhd}
vcom -93 -work work {D:/VHDL/projects/sequential-multiplier/sequential_multiplier.vhd}

vcom -93 -work work {D:/VHDL/projects/sequential-multiplier/tests/controller_tb.vhd}
vcom -93 -work work {D:/VHDL/projects/sequential-multiplier/tests/register_1_bit_tb.vhd}
vcom -93 -work work {D:/VHDL/projects/sequential-multiplier/tests/ROM_tb.vhd}
vcom -93 -work work {D:/VHDL/projects/sequential-multiplier/components/controller/controller.vhd}
vcom -93 -work work {D:/VHDL/projects/sequential-multiplier/tests/sequential_multiplier_tb.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cyclonev -L cyclonev_hssi -L rtl_work -L work -voptargs="+acc"  sequential_multiplier

add wave *
view structure
view signals
run -all
