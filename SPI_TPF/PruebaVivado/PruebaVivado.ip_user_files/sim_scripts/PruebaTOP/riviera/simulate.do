transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+PruebaTOP  -L xpm -L xil_defaultlib -L xlconstant_v1_1_9 -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.PruebaTOP xil_defaultlib.glbl

do {PruebaTOP.udo}

run 1000ns

endsim

quit -force
