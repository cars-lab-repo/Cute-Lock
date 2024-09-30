dir="${1:-./../benchmarks/EPFL_Combinational/arithmetic/}"
output_dir="${2:-./../benchmarks/EPFL_Combinational/bench/arithmetic/}"

# check if output dir exists 
if [ ! -d "$output_dir" ]; then
	mkdir -p "$output_dir"
fi


find "$dir" -type f -name "*.blif" | while read -r file; do        
	echo "Executing ./convert_blif_to_bench.sh with file: $file"
	echo " ################################################################################################### " 
	echo " ########################################## testing $file ########################################## " 
	echo " ################################################################################################### " 
	echo -e " ------------------ Converting $file  ------------------ "
	./convert_blif_to_bench.sh "$file"  "$output_dir"
	echo -e "Done with $file \n\n\n\n" 
done
	
