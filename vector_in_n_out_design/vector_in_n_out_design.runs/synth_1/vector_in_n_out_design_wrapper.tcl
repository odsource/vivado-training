# 
# Synthesis run script generated by Vivado
# 

create_project -in_memory -part xc7z010clg400-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir C:/Users/Philipp/Documents/Scratch/Vivado/vivado-training/vector_in_n_out_design/vector_in_n_out_design.cache/wt [current_project]
set_property parent.project_path C:/Users/Philipp/Documents/Scratch/Vivado/vivado-training/vector_in_n_out_design/vector_in_n_out_design.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language VHDL [current_project]
set_property board_part digilentinc.com:zybo:part0:1.0 [current_project]
set_property ip_repo_paths c:/Users/Philipp/Documents/Scratch/Vivado/vivado-training/ip_repo/vector_in_n_out [current_project]
set_property ip_output_repo c:/Users/Philipp/Documents/Scratch/Vivado/vivado-training/vector_in_n_out_design/vector_in_n_out_design.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_vhdl -library xil_defaultlib C:/Users/Philipp/Documents/Scratch/Vivado/vivado-training/vector_in_n_out_design/vector_in_n_out_design.srcs/sources_1/bd/vector_in_n_out_design/hdl/vector_in_n_out_design_wrapper.vhd
add_files C:/Users/Philipp/Documents/Scratch/Vivado/vivado-training/vector_in_n_out_design/vector_in_n_out_design.srcs/sources_1/bd/vector_in_n_out_design/vector_in_n_out_design.bd
set_property used_in_implementation false [get_files -all c:/Users/Philipp/Documents/Scratch/Vivado/vivado-training/vector_in_n_out_design/vector_in_n_out_design.srcs/sources_1/bd/vector_in_n_out_design/ip/vector_in_n_out_design_processing_system7_0_0/vector_in_n_out_design_processing_system7_0_0.xdc]
set_property used_in_implementation false [get_files -all C:/Users/Philipp/Documents/Scratch/Vivado/vivado-training/vector_in_n_out_design/vector_in_n_out_design.srcs/sources_1/bd/vector_in_n_out_design/vector_in_n_out_design_ooc.xdc]
set_property is_locked true [get_files C:/Users/Philipp/Documents/Scratch/Vivado/vivado-training/vector_in_n_out_design/vector_in_n_out_design.srcs/sources_1/bd/vector_in_n_out_design/vector_in_n_out_design.bd]

# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc C:/Users/Philipp/Documents/Scratch/Vivado/vivado-training/vector_in_n_out_design/vector_in_n_out_design.srcs/constrs_1/new/zybo.xdc
set_property used_in_implementation false [get_files C:/Users/Philipp/Documents/Scratch/Vivado/vivado-training/vector_in_n_out_design/vector_in_n_out_design.srcs/constrs_1/new/zybo.xdc]

read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]

synth_design -top vector_in_n_out_design_wrapper -part xc7z010clg400-1


write_checkpoint -force -noxdef vector_in_n_out_design_wrapper.dcp

catch { report_utilization -file vector_in_n_out_design_wrapper_utilization_synth.rpt -pb vector_in_n_out_design_wrapper_utilization_synth.pb }
