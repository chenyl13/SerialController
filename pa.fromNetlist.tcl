
# PlanAhead Launch Script for Post-Synthesis pin planning, created by Project Navigator

create_project -name SerialController -dir "D:/code/git/github/SerialController/planAhead_run_2" -part xc6slx100fgg676-3
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "D:/code/git/github/SerialController/TOP.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {D:/code/git/github/SerialController} }
set_param project.pinAheadLayout  yes
set_property target_constrs_file "TOP.ucf" [current_fileset -constrset]
add_files [list {TOP.ucf}] -fileset [get_property constrset [current_run]]
link_design
