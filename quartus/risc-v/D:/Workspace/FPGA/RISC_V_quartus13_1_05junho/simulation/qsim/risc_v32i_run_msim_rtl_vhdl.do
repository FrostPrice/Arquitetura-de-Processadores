transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {/home/mateusbarbosa/Documents/Univali/arquitetura/quartus/risc-v/shift_right_arithmetic.vhd}
