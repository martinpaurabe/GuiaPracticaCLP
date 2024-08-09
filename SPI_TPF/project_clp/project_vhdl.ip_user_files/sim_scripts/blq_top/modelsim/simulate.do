onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc"  -L xilinx_vip -L xpm -L axi_infrastructure_v1_1_0 -L axi_vip_v1_1_17 -L processing_system7_vip_v1_0_19 -L xil_defaultlib -L axi_lite_ipif_v3_0_4 -L lib_cdc_v1_0_3 -L interrupt_control_v3_1_5 -L axi_gpio_v2_0_33 -L generic_baseblocks_v2_1_2 -L axi_register_slice_v2_1_31 -L fifo_generator_v13_2_10 -L axi_data_fifo_v2_1_30 -L axi_crossbar_v2_1_32 -L proc_sys_reset_v5_0_15 -L axi_protocol_converter_v2_1_31 -L xilinx_vip -L unisims_ver -L unimacro_ver -L secureip -lib xil_defaultlib xil_defaultlib.blq_top xil_defaultlib.glbl

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {blq_top.udo}

run 1000ns

quit -force
