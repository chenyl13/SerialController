
# PlanAhead Launch Script for Post-Synthesis floorplanning, created by Project Navigator

create_project -name SerialController -dir "D:/code/git/stash/serial_controller/planAhead_run_2" -part xc6slx100fgg676-3
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "D:/code/git/stash/serial_controller/uartTop.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {D:/code/git/stash/serial_controller} }
set_property target_constrs_file "uartTop.ucf" [current_fileset -constrset]
add_files [list {uartTop.ucf}] -fileset [get_property constrset [current_run]]
link_design
