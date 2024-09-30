# Cute-Locking


## Behavioral Milti-Key Locking Algorithm
Start with a seq.v file ( regular sequential file), make the locked_seq_file.v file by running the python script here. 

### Automated file encryption 
The script will take a seq.v file and encrypt it using the multikey locking algorithm. The script will also create a locked_seq_file.v file.
1. Creates a encryption of the seq.v file using the multikey locking algorithm.
2. Creates .blif file of the seq.v and seq_encrypted file using yosys
3. Modifications are done to replace .subckt with .names and .latch syntax in the .blif file.
   1. First state one (s1) should be 0. Or at least one state should be zero. 
   2. pr_state should be an output.
4. Creates a .bench file of the .blif file using abc
5. Runs the .bench file using neos to test the locking algorithm.


### Before runing the testing encryption   
1. Need to be using ubuntu 22.04, - any method of running ubuntu is fine.( WSL, VM, etc.)
2. Install yosys, abc, neos, RANE, HALL( All tools listed under src/Tools/*)
   - For this you will need to download the repositories from github and compile them.
   - Also other dependencies are needed. 
3. Seq file necessaries: 
   1. note that all the files must have the pr_state as an output. 
   2. First state one (s1) should be 0. Or at least one state should be zero. 
   - The FSMs benchmark files in this repository are already modified to have the first state as 0, and the pr_state as an output.

### How to run 
#### Before runing the testing encryption 
- Using ubuntu 22.04, - any method of running ubuntu is fine.( WSL, VM, etc.)
- Install yosys, abc, neos. 
   - For this you will need to download the repositories from github and compile them.
   - Also other dependencies are needed.

#### How to run single test
 - Run the run_file_encryption.sh file with a seq.v file (original) 
     `./run_file_encryption.sh   seq.v  `
   - for example `./run_file_encryption.sh   NonKey.v  `


### What does the script do
To test the locking algorithm, run the convert_verilog_to_bench.sh file (`./convert_verilog_to_bench.sh seq.v locked_seq_file.v` ). This file will do the following; 
1. Convert the verilog files .blif file using yosys
2. Convert the .blif files to  .bench files using abc - There might be a some manual work here ( .bliff files cannot contain subckt)
3. Run the .bench files using neos to test the locking algorithm.

#### Run multiple tests
- Run the run_multiple_file_encryption.sh file with a directory path to run all the seq.v files in the directory. 
     `./run_multiple_file_encryption.sh   dir/path  `
   - for example `./run_multiple_file_encryption.sh   ./FSMs/  `






FINISHED DOWN
## Structural MiltiKey Locking Algorithm
Start with a seq.bench file, make the locked_seq_file.bench file by running the python script here. 


### Automated file encryption 
The script will take a seq.v file and encrypt it using the multikey locking algorithm. The script will also create a locked_seq_file.v file.
1. Creates a encryption of the seq.v file using the multikey locking algorithm.
2. Creates .blif file of the seq.v and seq_encrypted file using yosys
3. Modifications are done to replace .subckt with .names and .latch syntax in the .blif file.
   1. First state one (s1) should be 0. Or at least one state should be zero. 
   2. pr_state should be an output.
4. Creates a .bench file of the .blif file using abc
5. Runs the .bench file using neos to test the locking algorithm.


### Before runing the testing encryption   
1. Need to be using ubuntu 22.04, - any method of running ubuntu is fine.( WSL, VM, etc.)
2. Install yosys, abc, neos, RANE, HALL( All tools listed under src/Tools/*)
   - For this you will need to download the repositories from github and compile them.
   - Also other dependencies are needed. 
3. Seq file necessaries: 
   1. note that all the files must have the pr_state as an output. 
   2. First state one (s1) should be 0. Or at least one state should be zero. 
   - The FSMs benchmark files in this repository are already modified to have the first state as 0, and the pr_state as an output.

### How to run 
#### Before runing the testing encryption 
- Using ubuntu 22.04, - any method of running ubuntu is fine.( WSL, VM, etc.)
- Install yosys, abc, neos. 
   - For this you will need to download the repositories from github and compile them.
   - Also other dependencies are needed.

#### How to run single test
 - Run the run_file_encryption.sh file with a seq.v file (original) 
     `./run_file_encryption.sh   seq.v  `
   - for example `./run_file_encryption.sh   NonKey.v  `


### What does the script do
To test the locking algorithm, run the convert_verilog_to_bench.sh file (`./convert_verilog_to_bench.sh seq.v locked_seq_file.v` ). This file will do the following; 
1. Convert the verilog files .blif file using yosys
2. Convert the .blif files to  .bench files using abc - There might be a some manual work here ( .bliff files cannot contain subckt)
3. Run the .bench files using neos to test the locking algorithm.

#### Run multiple tests
- Run the run_multiple_file_encryption.sh file with a directory path to run all the seq.v files in the directory. 
     `./run_multiple_file_encryption.sh   dir/path  `
   - for example `./run_multiple_file_encryption.sh   ./FSMs/  `
