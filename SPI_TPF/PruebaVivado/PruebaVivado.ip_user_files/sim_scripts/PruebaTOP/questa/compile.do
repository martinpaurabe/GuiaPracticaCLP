vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xpm
vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/xlconstant_v1_1_9

vmap xpm questa_lib/msim/xpm
vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap xlconstant_v1_1_9 questa_lib/msim/xlconstant_v1_1_9

vlog -work xpm  -incr -mfcu  -sv "+incdir+../../../../PruebaVivado.gen/sources_1/bd/PruebaTOP/ipshared/3242" \
"C:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm  -93  \
"C:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../PruebaVivado.gen/sources_1/bd/PruebaTOP/ipshared/3242" \
"../../../bd/PruebaTOP/sim/PruebaTOP.v" \
"../../../bd/PruebaTOP/ip/PruebaTOP_LMX2594_0_0/sim/PruebaTOP_LMX2594_0_0.v" \
"../../../bd/PruebaTOP/ip/PruebaTOP_clk_wiz_0_0/PruebaTOP_clk_wiz_0_0_clk_wiz.v" \
"../../../bd/PruebaTOP/ip/PruebaTOP_clk_wiz_0_0/PruebaTOP_clk_wiz_0_0.v" \

vlog -work xlconstant_v1_1_9  -incr -mfcu  "+incdir+../../../../PruebaVivado.gen/sources_1/bd/PruebaTOP/ipshared/3242" \
"../../../../PruebaVivado.gen/sources_1/bd/PruebaTOP/ipshared/e2d2/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../PruebaVivado.gen/sources_1/bd/PruebaTOP/ipshared/3242" \
"../../../bd/PruebaTOP/ip/PruebaTOP_xlconstant_0_0/sim/PruebaTOP_xlconstant_0_0.v" \
"../../../bd/PruebaTOP/ip/PruebaTOP_xlconstant_0_1/sim/PruebaTOP_xlconstant_0_1.v" \

vlog -work xil_defaultlib \
"glbl.v"

