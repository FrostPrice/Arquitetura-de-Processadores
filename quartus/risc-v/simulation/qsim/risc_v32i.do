onerror {exit -code 1}
vlib work
vcom -work work risc_v32i.vho
vcom -work work testes/teste_risc_v.vwf.vht
vsim -c -t 1ps -L arriaii -L altera -L altera_mf -L 220model -L sgate -L altera_lnsim work.risc_v32i_vhd_vec_tst
vcd file -direction risc_v32i.msim.vcd
vcd add -internal risc_v32i_vhd_vec_tst/*
vcd add -internal risc_v32i_vhd_vec_tst/i1/*
proc simTimestamp {} {
    echo "Simulation time: $::now ps"
    if { [string equal running [runStatus]] } {
        after 2500 simTimestamp
    }
}
after 2500 simTimestamp
run -all
quit -f






