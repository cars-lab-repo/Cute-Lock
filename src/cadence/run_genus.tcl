# Set up the HDL search path
set_db init_hdl_search_path {TDB path to folder}

# Load the GPDK090 technology library from gpdk090_v4.6
read_libs /CMC/kits/cadence/GPDK045/gsclib045_all_v4.4/gsclib045/timing/slow_vdd1v0_basicCells.lib

set design "TDB path to file"
set output_dir [file dirname $design]
set design_name [file rootname [file tail $design]]
# Create a new directory for the design results
file mkdir $output_dir/$design_name
puts "$output_dir/$design_name"


puts "Output Directory: $output_dir"
puts "Design Name: $design_name"
after 3000

# Read the design
read_hdl "$design"
elaborate

set_db syn_generic_effort medium
set_db syn_map_effort medium
set_db syn_opt_effort medium

syn_generic
syn_map
syn_opt

# Reports
report_timing > $output_dir/$design_name/report_timing.rpt
report_power  > $output_dir/$design_name/report_power.rpt
report_area   > $output_dir/$design_name/report_area.rpt
report_qor    > $output_dir/$design_name/report_qor.rpt

# Outputs
write_hdl > $output_dir/$design_name/${design_name}.v
write_sdc > $output_dir/$design_name/${design_name}.sdc
write_sdf -timescale ns -nonegchecks -recrem split -edges check_edge -setuphold split > $output_dir/$design_name/${design_name}_delays.sdf


exit
