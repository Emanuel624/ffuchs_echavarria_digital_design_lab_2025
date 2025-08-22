transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/Usuario/Desktop/TEC II 2025/Taller_DD/laboratorio1/ffuchs_echavarria_digital_design_lab_2025/Problema 2/full_sub_1bit.vhd}
vcom -93 -work work {C:/Users/Usuario/Desktop/TEC II 2025/Taller_DD/laboratorio1/ffuchs_echavarria_digital_design_lab_2025/Problema 2/sub_4bit.vhd}
vcom -93 -work work {C:/Users/Usuario/Desktop/TEC II 2025/Taller_DD/laboratorio1/ffuchs_echavarria_digital_design_lab_2025/Problema 2/hex7seg.vhd}
vcom -93 -work work {C:/Users/Usuario/Desktop/TEC II 2025/Taller_DD/laboratorio1/ffuchs_echavarria_digital_design_lab_2025/Problema 2/top_restador.vhd}

vcom -93 -work work {C:/Users/Usuario/Desktop/TEC II 2025/Taller_DD/laboratorio1/ffuchs_echavarria_digital_design_lab_2025/Problema 2/tb_sub_4bit.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cyclonev -L rtl_work -L work -voptargs="+acc"  tb_sub_4bit

add wave *
view structure
view signals
run -all
