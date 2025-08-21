transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+C:/Users/Usuario/Desktop/TEC\ II\ 2025/Taller_DD/laboratorio1/ffuchs_echavarria_digital_design_lab_2025/Problema\ 3 {C:/Users/Usuario/Desktop/TEC II 2025/Taller_DD/laboratorio1/ffuchs_echavarria_digital_design_lab_2025/Problema 3/counter_n.sv}
vlog -sv -work work +incdir+C:/Users/Usuario/Desktop/TEC\ II\ 2025/Taller_DD/laboratorio1/ffuchs_echavarria_digital_design_lab_2025/Problema\ 3 {C:/Users/Usuario/Desktop/TEC II 2025/Taller_DD/laboratorio1/ffuchs_echavarria_digital_design_lab_2025/Problema 3/edge_pulse.sv}
vlog -sv -work work +incdir+C:/Users/Usuario/Desktop/TEC\ II\ 2025/Taller_DD/laboratorio1/ffuchs_echavarria_digital_design_lab_2025/Problema\ 3 {C:/Users/Usuario/Desktop/TEC II 2025/Taller_DD/laboratorio1/ffuchs_echavarria_digital_design_lab_2025/Problema 3/hex7seg.sv}
vlog -sv -work work +incdir+C:/Users/Usuario/Desktop/TEC\ II\ 2025/Taller_DD/laboratorio1/ffuchs_echavarria_digital_design_lab_2025/Problema\ 3 {C:/Users/Usuario/Desktop/TEC II 2025/Taller_DD/laboratorio1/ffuchs_echavarria_digital_design_lab_2025/Problema 3/top_counter_6bit.sv}

vlog -sv -work work +incdir+C:/Users/Usuario/Desktop/TEC\ II\ 2025/Taller_DD/laboratorio1/ffuchs_echavarria_digital_design_lab_2025/Problema\ 3 {C:/Users/Usuario/Desktop/TEC II 2025/Taller_DD/laboratorio1/ffuchs_echavarria_digital_design_lab_2025/Problema 3/tb_counter.sv}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cyclonev_ver -L cyclonev_hssi_ver -L cyclonev_pcie_hip_ver -L rtl_work -L work -voptargs="+acc"  tb_counter

add wave *
view structure
view signals
run -all
