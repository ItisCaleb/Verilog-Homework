transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+C:/Users/user/Downloads/de0_empty(1)/design {C:/Users/user/Downloads/de0_empty(1)/design/seven_segment.sv}
vlog -sv -work work +incdir+C:/Users/user/Downloads/de0_empty(1)/design {C:/Users/user/Downloads/de0_empty(1)/design/full_adder.sv}
vlog -sv -work work +incdir+C:/Users/user/Downloads/de0_empty(1)/design {C:/Users/user/Downloads/de0_empty(1)/design/4bits_add_sub.sv}
vlog -sv -work work +incdir+C:/Users/user/Downloads/de0_empty(1)/design {C:/Users/user/Downloads/de0_empty(1)/design/mcu.sv}

