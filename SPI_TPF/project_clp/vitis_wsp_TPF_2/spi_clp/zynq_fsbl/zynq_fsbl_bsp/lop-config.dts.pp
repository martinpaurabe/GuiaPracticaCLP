#line 2 "lop-config.dts"
/dts-v1/;
/ {
        compatible = "system-device-tree-v1,lop";
        lops {
                lop_0 {
                        compatible = "system-device-tree-v1,lop,load";
                        load = "assists/baremetal_validate_comp_xlnx.py";
                };

                lop_1 {
                    compatible = "system-device-tree-v1,lop,assist-v1";
                    node = "/";
                    outdir = "C:/Users/mpaur/.Xilinx/PruebaVitis/project_clp/vitis_wsp_TPF_2/spi_clp/zynq_fsbl/zynq_fsbl_bsp";
                    id = "module,baremetal_validate_comp_xlnx";
                    options = "ps7_cortexa9_0 C:/Xilinx/Vitis/2024.1/data/embeddedsw/ThirdParty/sw_services/lwip220_v1_0/src C:/Users/mpaur/.Xilinx/PruebaVitis/project_clp/vitis_wsp_TPF_2/.wsdata/.repo.yaml";
                };

        };
    };
