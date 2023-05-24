transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+C:/Users/user/Downloads/Verilog-Homework/design {C:/Users/user/Downloads/Verilog-Homework/design/birthdate.sv}
vlog -sv -work work +incdir+C:/Users/user/Downloads/Verilog-Homework/design {C:/Users/user/Downloads/Verilog-Homework/design/student_id.sv}
vlog -sv -work work +incdir+C:/Users/user/Downloads/Verilog-Homework/design/components {C:/Users/user/Downloads/Verilog-Homework/design/components/freg_div_23.sv}
vlog -sv -work work +incdir+C:/Users/user/Downloads/Verilog-Homework/design/components {C:/Users/user/Downloads/Verilog-Homework/design/components/dff_pos.sv}
vlog -sv -work work +incdir+C:/Users/user/Downloads/Verilog-Homework/design/components {C:/Users/user/Downloads/Verilog-Homework/design/components/seven_segment.sv}
vlog -sv -work work +incdir+C:/Users/user/Downloads/Verilog-Homework/design {C:/Users/user/Downloads/Verilog-Homework/design/mcu.sv}

