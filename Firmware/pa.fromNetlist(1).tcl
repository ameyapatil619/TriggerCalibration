
# PlanAhead Launch Script for Post-Synthesis pin planning, created by Project Navigator

create_project -name Firmware -dir "C:/Xilinx Projects/Firmware/planAhead_run_1" -part xc3s50antqg144-4
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "C:/Xilinx Projects/Firmware/Firmware_Top.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {C:/Xilinx Projects/Firmware} }
set_param project.pinAheadLayout  yes
set_property target_constrs_file "Firmware_Top.ucf" [current_fileset -constrset]
add_files [list {Firmware_Top.ucf}] -fileset [get_property constrset [current_run]]
link_design
