not_encrypted_file="${1:-s27.bench}" 
encrypted_file="${2:-DEFAULT}"
keys="3 1"
num_input_patts=100
max_depth=100
iteration_limit=100000
remove_generated_files=false
output_dir="./test_runs/structural/$(date +%Y%m%d_%H%M%S)/"
for arg in "$@"
do
	case $arg in
		--file=*)
		not_encrypted_file="${arg#*=}"
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
	esac
done

keys_array=($keys)

python3 structuralEncryptor.py --file_name="$not_encrypted_file"  --keys="${keys}"  --output_dir="${output_dir}"
encrypted_file=$(basename "${not_encrypted_file%.*}_encrypted.bench")
encrypted_file="${output_dir}/${encrypted_file}"

echo "Encrypted file: $encrypted_file"


# wait for user input 
# read -p "Press enter to continue"


# sed -i 's/\[/_/g' ${not_encrypted_file%.*}.bench
# sed -i 's/\]/_/g' ${not_encrypted_file%.*}.bench
# 
# sed -i 's/\[/_/g' ${encrypted_file%.*}.bench
# sed -i 's/\]/_/g' ${encrypted_file%.*}.bench

# output_file="${not_encrypted_file%.*}_output.txt"

# ./bin/neos -d bbo <sim_cir/enc_cir> <enc_cir/corrkey> <strategy> [num_input_patts] [max_depth] [iteration_limit]


# line="time timeout 1m  ./Tools/neos/bin/neos -d bbo ./${not_encrypted_file}  ./${encrypted_file} sa $num_input_patts $max_depth --to=1200" 
# echo -e '\n\n\n------------------------------'
# echo $line
# eval $line 
# # 
# line="time timeout 1m  ./Tools/neos/bin/neos -d int ./${not_encrypted_file%.*}.bench  ./${encrypted_file%.*}.bench $iteration_limit"
# echo -e '\n\n\n------------------------------'
# echo $line
# eval $line 
# 
# command="time timeout 1m  ./Tools/neos/bin/neos -d int --kc_sweep=2 ${not_encrypted_file%.*}.bench ${encrypted_file%.*}.bench $iteration_limit"
# echo -e '\n\n\n------------------------------'
# echo -e "\n \n \n $command"
# eval $command
# 
# new_line="time timeout 1m python3 ./Tools/RANE/main_sat.py -b ${not_encrypted_file%.*}.bench -o ${encrypted_file%.*}.bench -s=\"z3\" -p=2 -t=18"
# echo -e '\n\n\n------------------------------'
# echo $new_line
# eval $new_line

if [ "$remove_generated_files" == "true" ]; then
	# Clean-up generated files except the input files
	rm -f "${encrypted_file%.*}.bench"
fi
