
file=$1
output_dir="${2:-./../benchmarks/EPFL_Combinational/bench/}"

file_name=$(basename $file)
line="./../../Tools/abc/abc -c  \"read_blif  ${file};  	strash;		 	write_bench -l ${output_dir}${file_name%.*}.bench\""
echo $line
eval $line
