onerror {quit -f}
vlib work
vlog -work work exp32.vo
vlog -work work exp32.vt
vsim -novopt -c -t 1ps -L cycloneive_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.exp32_vlg_vec_tst
vcd file -direction exp32.msim.vcd
vcd add -internal exp32_vlg_vec_tst/*
vcd add -internal exp32_vlg_vec_tst/i1/*
add wave /*
run -all
