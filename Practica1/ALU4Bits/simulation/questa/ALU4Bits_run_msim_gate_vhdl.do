transcript on
if ![file isdirectory vhdl_libs] {
	file mkdir vhdl_libs
}

vlib vhdl_libs/altera
vmap altera ./vhdl_libs/altera
vcom -93 -work altera {/opt/intelFPGA_lite/22.1.2/quartus/eda/sim_lib/altera_syn_attributes.vhd}
vcom -93 -work altera {/opt/intelFPGA_lite/22.1.2/quartus/eda/sim_lib/altera_standard_functions.vhd}
vcom -93 -work altera {/opt/intelFPGA_lite/22.1.2/quartus/eda/sim_lib/alt_dspbuilder_package.vhd}
vcom -93 -work altera {/opt/intelFPGA_lite/22.1.2/quartus/eda/sim_lib/altera_europa_support_lib.vhd}
vcom -93 -work altera {/opt/intelFPGA_lite/22.1.2/quartus/eda/sim_lib/altera_primitives_components.vhd}
vcom -93 -work altera {/opt/intelFPGA_lite/22.1.2/quartus/eda/sim_lib/altera_primitives.vhd}

vlib vhdl_libs/cycloneive
vmap cycloneive ./vhdl_libs/cycloneive
vcom -93 -work cycloneive {/opt/intelFPGA_lite/22.1.2/quartus/eda/sim_lib/cycloneive_atoms.vhd}
vcom -93 -work cycloneive {/opt/intelFPGA_lite/22.1.2/quartus/eda/sim_lib/cycloneive_components.vhd}

if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {ALU4Bits.vho}

vcom -93 -work work {/home/lord448/altera/ALU4Bits/tb_ALU4Bits.vhd}

vsim -t 1ps -L altera -L cycloneive -L gate_work -L work -voptargs="+acc"  tb_ALU4Bits.vhd

add wave *
view structure
view signals
run 1000 ns
