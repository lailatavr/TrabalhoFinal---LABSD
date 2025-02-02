transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/TrabalhoFinal---LABSD/MaquinaEstados/CaixaEletronico.vhd}

vcom -93 -work work {C:/TrabalhoFinal---LABSD/MaquinaEstados/tb_CaixaEletronico.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cyclonev -L rtl_work -L work -voptargs="+acc"  tb_CaixaEletronico

add wave *
view structure
view signals
run -all
