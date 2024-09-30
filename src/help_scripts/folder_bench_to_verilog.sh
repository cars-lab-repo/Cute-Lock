dir="${1:-./../Benchmarks/EPFL_Combinational/arithmetic/}"
output_dir="${2:-./../Benchmarks/EPFL_Combinational/bench/arithmetic/}"

# check if output dir exists 
if [ ! -d "$output_dir" ]; then
	mkdir -p "$output_dir"
fi

echo "dir1 = $dir, output_dir = $output_dir"
find "$dir" -type f -name "*.bench" | while read -r file; do        
	echo "Executing ./convert_blif_to_bench.sh with file: $file"
	echo " ################################################################################################### " 
	echo " ########################################## testing $file ########################################## " 
	echo " ################################################################################################### " 
	echo -e " ------------------ Converting $file  ------------------ "
	./help_scripts/convert_bench_to_verilog.sh "$file"  "$output_dir"
	echo -e "Done with $file \n\n\n\n" 
done
	
