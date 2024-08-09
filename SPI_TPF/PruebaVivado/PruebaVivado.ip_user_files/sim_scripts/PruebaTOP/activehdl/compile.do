transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib activehdl/xpm
vlib activehdl/xil_defaultlib
vlib activehdl/xlconstant_v1_1_9

vmap xpm activehdl/xpm
vmap xil_defaultlib activehdl/xil_defaultlib
vmap xlconstant_v1_1_9 activehdl/xlconstant_v1_1_9

vlog -work xpm  -sv2k12 "+incdir+../../../../PruebaVivado.gen/sources_1/bd/PruebaTOP/ipshared/3242" -l xpm -l xil_defaultlib -l xlconstant_v1_1_9 \
"C:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm -93  \
"C:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../PruebaVivado.gen/sources_1/bd/PruebaTOP/ipshared/3242" -l xpm -l xil_defaultlib -l xlconstant_v1_1_9 \
"../../../bd/PruebaTOP/sim/PruebaTOP.v" \
"../../../bd/PruebaTOP/ip/PruebaTOP_LMX2594_0_0/sim/PruebaTOP_LMX2594_0_0.v" \
"../../../bd/PruebaTOP/ip/PruebaTOP_clk_wiz_0_0/PruebaTOP_clk_wiz_0_0_clk_wiz.v" \
"../../../bd/PruebaTOP/ip/PruebaTOP_clk_wiz_0_0/PruebaTOP_clk_wiz_0_0.v" \

vlog -work xlconstant_v1_1_9  -v2k5 "+incdir+../../../../PruebaVivado.gen/sources_1/bd/PruebaTOP/ipshared/3242" -l xpm -l xil_defaultlib -l xlconstant_v1_1_9 \
"../../../../PruebaVivado.gen/sources_1/bd/PruebaTOP/ipshared/e2d2/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../PruebaVivado.gen/sources_1/bd/PruebaTOP/ipshared/3242" -l xpm -l xil_defaultlib -l xlconstant_v1_1_9 \
"../../../bd/PruebaTOP/ip/PruebaTOP_xlconstant_0_0/sim/PruebaTOP_xlconstant_0_0.v" \
"../../../bd/PruebaTOP/ip/PruebaTOP_xlconstant_0_1/sim/PruebaTOP_xlconstant_0_1.v" \

vlog -work xil_defaultlib \
"glbl.v"

