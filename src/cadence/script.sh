#!/bin/bash

#csh 
source /CMC/scripts/cadence.genus20.11.000.csh

echo "Hello" 

# Dynamically list directories in the current directory
directories=($(find . -maxdepth 1 -type d | cut -c 3-))

# Loop through each directory
for dir in "${directories[@]}"; do
  # Navigate to the directory
  cd "$dir"
  
  # Initialize an array to hold Verilog files
  verilog_files=()
  
  # Find all Verilog files and add them to the array
  while IFS= read -r -d $'\0' file; do
    verilog_files+=("$file")
  done < <(find . -type f -name "*.v" -print0)
  
  
  # Add each Verilog file to the command
  for file in "${verilog_files[@]}"; do
    echo "File: $file"
      # Modify the file, change the variable file_name to $file 
      # Replace line 7 of run_genus.tcl to be """set design "/users/csulb/csulb-t3003/kevin/verilog_files/k6__maxgatesAll__1/c499_encrypted.v" """  where the path is file 
    absolute_path="$(pwd)/$file"
    echo "absolute_path = $absolute_path"
    
    # Modify the file, change the variable file_name to the absolute path of $file
    # Replace line 7 with the absolute path
    sed -i "7s|.*|set design \"$absolute_path\"|" /users/csulb/csulb-t3003/kevin/verilog_files/run_genus.tcl
    sleep 4 # Sleep for 1 second

      command="genus -batch -f /users/csulb/csulb-t3003/kevin/verilog_files/run_genus.tcl"
      # Execute the command
      echo "Executing: $command"
      eval $command
    #   PID=$!
    #   sleep 5
    #   echo "Sending SIGINT to genus process with PID: $PID"
    #   kill -SIGINT $PID
    #   wait $PID
      

  done
  
  cd .. # Go back to the parent directory

done
