
not_encrypted_file="${1:-NonKey.v}" 
encrypted_file="___Default___"
keys="7 7 6 7"
num_input_patts=100
max_depth=100
iteration_limit=1000
remove_generated_files=false
counter_cycles=2
output_dir="./test_runs/$(date +%Y%m%d_%H%M%S)/"
for arg in "$@"
do
	case $arg in
		--file=*)
		not_encrypted_file="${arg#*=}"
		shift
		;;
		--enc=*)
		encrypted_file="${arg#*=}"
		shift
		;;
		--keys=*)
		keys="${arg#*=}"
		shift
		;;
		--num_input_patts=*)
		num_input_patts="${arg#*=}"
		shift
		;;
		--max_depth=*)
		max_depth="${arg#*=}"
		shift
		;;
		--iteration_limit=*)
		iteration_limit="${arg#*=}"
		shift
		;;
		--remove_generated_files=*)
		remove_generated_files="${arg#*=}"
		shift
		;;
		--output_dir=*)
		output_dir="${arg#*=}"
		shift
		;;
		--counter_cycles=*)
		counter_cycles="${arg#*=}"
		shift
		;;
	esac
done
# set -x  # Start printing all commands.
# Convert keys to an array
keys_array=($keys)

# Check that number of keys is equal to the number of keys given
# https://www.synthezza.com/fsm-and-logic-circuit-benchmarks
# python3 CreateEncryption.py ./FSMs/Small/Verilog/v16.v --num_key=4 --size=5 --keys= 1 20 24 31
# file created  original_file_name.replace( ".v", f"_____{num_of_keys}_keys_____of_size_{size}.v" )
# file created is v16_____4_keys_____of_size_5.v
# check if encrypted file name is ___Default___
encrypted_file_was_created=false
if [ "$encrypted_file" == "___Default___" ]; then
	# run the python encryption script
	python3 CreateEncryption.py --file_name="$not_encrypted_file"  --keys="${keys}" --counter_cycles=${counter_cycles} --output_dir="${output_dir}"
	# set the Encrypted file name to the file created by the python script
	# encrypted_file="${not_encrypted_file%.*}_____4_keys_____of_size_5.v"
	
	encrypted_file=$(basename "${not_encrypted_file%.*}_encrypted.v")
	encrypted_file="${output_dir}/${encrypted_file}"
	encrypted_file_was_created=true
fi

# synth -top top_module_name # Specify the top module; include libraries if needed
# dfflibmap -liberty your_liberty_file.lib # Map DFFs if you are using a standard cell library
# ./Tools/yosys/yosys -p "read_verilog  ${not_encrypted_file};	 hierarchy; proc; opt; memory; opt; techmap; opt; synth;    	write_blif  ${not_encrypted_file%.*}.BLIF"
# ./Tools/yosys/yosys -p "read_verilog  ${encrypted_file};		 hierarchy; proc; opt; memory; opt; techmap; opt; synth;		 dfflibmap -liberty ./Tools/yosys/techlibs/greenpak4/gp_dff.lib; 	write_blif  ${encrypted_file%.*}.BLIF"

# only run the following line if not_encrypted_file ends with .v, else echo " no need convert "
if [[ $not_encrypted_file == *.v ]]; then
	line="./Tools/yosys/yosys -q -p 	\"read_verilog  ${not_encrypted_file};	 	synth;  	write_blif  ${not_encrypted_file%.*}.BLIF\""
	echo $line
	eval $line
	if grep -q "subckt" ${not_encrypted_file%.*}.BLIF; then 
		echo "subckt found in ${not_encrypted_file%.*}.BLIF"
		l="python3 ./blif_replacements.py ${not_encrypted_file%.*}.BLIF"
		echo $l
		eval $l
	else 
		echo "NO subckt found in ${not_encrypted_file%.*}.BLIF"
	fi
else 
	echo " no need convert ${not_encrypted_file} to .BLIF"
fi

if [[ $encrypted_file == *.v ]]; then
	line="./Tools/yosys/yosys -q -p 	\"read_verilog  ${encrypted_file};		 	synth;		write_blif  ${encrypted_file%.*}.BLIF\""
	echo $line
	eval $line
	if grep -q "subckt" ${encrypted_file%.*}.BLIF; then 
		echo "subckt found in ${encrypted_file%.*}.BLIF"
		l="python3 ./blif_replacements.py ${encrypted_file%.*}.BLIF"
		echo $l
		eval $l
		
	else 
		echo "NO subckt found in ${encrypted_file%.*}.BLIF"
	fi
else 
	echo " no need convert ${encrypted_file} to .BLIF"
fi

# echo "Modify the files ${non_encrypted_synt} and ${encrypted_synt} to .latch"
# read input

# ./Tools/yosys/yosys -p "read_blif  ${not_encrypted_file%.*}.BLIF;		proc;   	write_blif ${not_encrypted_file%.*}.BLIF"		
# ./Tools/yosys/yosys -p "read_blif  ${not_encrypted_file%.*}.BLIF;		proc; 		write_blif ${encrypted_file%.*}.BLIF"	

# Do NOT run the following line if not_encrypted_file ends with .bench 
if [[ $not_encrypted_file != *.bench ]]; then
	line="./Tools/abc/abc -c 		\"read_blif ${not_encrypted_file%.*}.BLIF;  		strash;		write_bench -l ${not_encrypted_file%.*}.bench\""
	echo $line
	eval $line
	
else 
	echo " no need convert ${not_encrypted_file} to .bench"
fi
if [[ $encrypted_file != *.bench ]]; then
	line="./Tools/abc/abc -c 			\"read_blif ${encrypted_file%.*}.BLIF;  			strash;		write_bench -l ${encrypted_file%.*}.bench\""
	echo $line
	eval $line
	# sed -i 's/|//g' ${encrypted_file%.*}.bench
else 
	echo " no need convert ${encrypted_file} to .bench"
fi



# sed -i 's/\[/_/g' ${not_encrypted_file%.*}.bench
# sed -i 's/\]/_/g' ${not_encrypted_file%.*}.bench
# 
# sed -i 's/\[/_/g' ${encrypted_file%.*}.bench
# sed -i 's/\]/_/g' ${encrypted_file%.*}.bench

# output_file="${not_encrypted_file%.*}_output.txt"
# ./bin/neos -d bbo <sim_cir/enc_cir> <enc_cir/corrkey> <strategy> [num_input_patts] [max_depth] [iteration_limit]
line="time timeout 20m ./Tools/neos/bin/neos -d bbo ./${not_encrypted_file%.*}.bench  ./${encrypted_file%.*}.bench sa $num_input_patts $max_depth --to=15" 
echo -e '\n\n\n'
echo $line
eval $line 

line="time timeout 20m ./Tools/neos/bin/neos -d int ./${not_encrypted_file%.*}.bench  ./${encrypted_file%.*}.bench $iteration_limit"
echo -e '\n\n\n------------------------------'
echo $line
eval $line 

command="time timeout 20m ./Tools/neos/bin/neos -d int --kc_sweep=2 ${not_encrypted_file%.*}.bench ${encrypted_file%.*}.bench $iteration_limit"
echo -e '\n\n\n------------------------------'
echo -e "\n \n \n $command"
time $command

new_line="time timeout 20m python3 ./Tools/RANE/main_sat.py -b ${not_encrypted_file%.*}.bench -o ${encrypted_file%.*}.bench -s=\"z3\" -p=2 -t=900"
echo -e '\n\n\n------------------------------'
echo $new_line
eval $new_line

if [ "$remove_generated_files" == "true" ]; then
	# Clean-up generated files except the input files
	rm -f "${not_encrypted_file%.*}.BLIF"
	rm -f "${encrypted_file%.*}.BLIF"
	rm -f "${not_encrypted_file%.*}.bench"
	rm -f "${encrypted_file%.*}.bench"
	if [ "$encrypted_file_was_created" == "true" ]; then
	    rm -f "$encrypted_file"
	fi
fi
