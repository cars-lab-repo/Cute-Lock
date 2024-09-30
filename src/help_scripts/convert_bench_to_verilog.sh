
file=$1
output_dir="${2:-./../benchmarks/EPFL_Combinational/bench/}"

file_name=$(basename $file)
# line="./../Tools/abc/abc -c  \"read_bench  ${file};  	strash; 	write_verilog ${output_dir}${file_name%.*}.v\""
line="./Tools/abc/abc -c  \"read_bench  ${file};  		write_verilog ${output_dir}${file_name%.*}.v\""
echo $line
eval $line
