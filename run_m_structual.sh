#!/bin/bash

counter_cycles=5
max_per_folder=1000
# output_dir="./test_runs/ITC99_3/"
output_dir="./test_runs/structural_16keys_5bits--s-1$(date +%Y%m%d_%H%M%S)/"

# Function to execute current_script with each .v file found, excluding certain paths
execute_script() {
    local directory=$1
    
    # last folder name
    folder_name=$(basename "$directory")
    
    out_dir="$output_dir$folder_name/"
    echo -e "Testing files in directory: $directory \n" 
    echo "number_of_clock_cycles: $counter_cycles" 
    # Find files ending with .v, excluding specific directories, and execute current_script with each file
    find "$directory" -type f -name "*.bench"  | while read -r file; do
        # echo "Executing ./current_script with file: $file"
        echo " ################################################################################################### " 
        echo " ########################################## testing $file ########################################## " 
        echo " ################################################################################################### " 
        # keys_=$(python3 gen_keys_for_file.py "$file"   2>&1) 
        # keys_="2 3 4 5"  # 3 bits, 4 keys 
        # keys_="7 7 7 7"  # 3 bits, 4 keys 
        keys_="2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17"  #  5 bits, 16 keys
        num_keys_=$(echo "$keys_" | wc -w) # Count the number of words in the string
        bit_size=$(echo "$keys_" | awk '{for(i=1;i<=NF;i++) if(int((log($i)/log(2))+1)>max) max=int((log($i)/log(2))+1)} END{print max}') # get the bit size by getting the maximum number of bits in the string
        counter_cycles=$(shuf -i 1-"$bit_size" -n 1)  # genrate random clock cycles from 0 to bit_size
        echo -e " ------------------ Finding key $keys_   .... (number_of_keys or counter)=$num_keys_    ....   $bit_size bits .... for $counter_cycles clock cycles(counter) ------------------ " 
        echo -e " ------------------ Would not be able to find key $keys_ ..... $bit_size bits .....  for $counter_cycles clock cycles(counter) ------------------   "
        ./run_file_encryption_structural.sh "$file" --remove_generated_files="false"  --keys="$keys_" --output_dir="$out_dir"
        echo 'done '
    done
}

execute_and_record() {
    local directory=$1
    folder_name=$(basename "$directory")
    
    mkdir -p "$output_dir"
    echo -e "\nTesting files in directory: $directory \n"
    log_file="${output_dir}${folder_name}.log"
    echo -e "Log file: $log_file \n"
    
    execute_script "$directory" 2>&1 | sed 's/\x1b\[[0-9;]*m//g' > "$log_file"    
    echo -e "Done testing files in directory: $directory \n"
}

# execute_and_record "./Benchmarks/FSMs/Small"
# execute_and_record "./Benchmarks/FSMs/Medium"
# execute_and_record "./Benchmarks/FSMs/Large"
# execute_and_record "./Benchmarks/iscas89/"
execute_and_record "./Benchmarks/ITC99/"