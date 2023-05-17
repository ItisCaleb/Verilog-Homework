transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+C:/Users/user/Desktop/Verilog-Homework/design/components {C:/Users/user/Desktop/Verilog-Homework/design/components/counter_4bits.sv}
vlog -sv -work work +incdir+C:/Users/user/Desktop/Verilog-Homework/design/components {C:/Users/user/Desktop/Verilog-Homework/design/components/dff_pos.sv}
vlog -sv -work work +incdir+C:/Users/user/Desktop/Verilog-Homework/design/components {C:/Users/user/Desktop/Verilog-Homework/design/components/seven_segment.sv}
vlog -sv -work work +incdir+C:/Users/user/Desktop/Verilog-Homework/design {C:/Users/user/Desktop/Verilog-Homework/design/mcu.sv}

