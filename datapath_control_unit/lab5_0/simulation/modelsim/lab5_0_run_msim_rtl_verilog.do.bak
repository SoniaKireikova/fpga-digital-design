transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/quartus/verilog\ -\ 7\ semestr/lab5/lab5_0 {C:/quartus/verilog - 7 semestr/lab5/lab5_0/shift_register.v}
vlog -vlog01compat -work work +incdir+C:/quartus/verilog\ -\ 7\ semestr/lab5/lab5_0 {C:/quartus/verilog - 7 semestr/lab5/lab5_0/register_acc.v}
vlog -vlog01compat -work work +incdir+C:/quartus/verilog\ -\ 7\ semestr/lab5/lab5_0 {C:/quartus/verilog - 7 semestr/lab5/lab5_0/control_unit.v}
vlog -vlog01compat -work work +incdir+C:/quartus/verilog\ -\ 7\ semestr/lab5/lab5_0 {C:/quartus/verilog - 7 semestr/lab5/lab5_0/structure.v}
vlog -vlog01compat -work work +incdir+C:/quartus/verilog\ -\ 7\ semestr/lab5/lab5_0 {C:/quartus/verilog - 7 semestr/lab5/lab5_0/sseg.v}

vlog -vlog01compat -work work +incdir+C:/quartus/verilog\ -\ 7\ semestr/lab5/lab5_0 {C:/quartus/verilog - 7 semestr/lab5/lab5_0/lab5_0tb.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneiii_ver -L rtl_work -L work -voptargs="+acc"  lab5_0tb

add wave *
view structure
view signals
run -all
