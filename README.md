# Cute-Lock: Behavioral and Structural Multi-Key Logic Locking Using Time Base Keys
This repository contains resources related to Cute-Lock logic locking family. </br>
[Kevin Lopez](https://github.com/KevinDLopez) & [Amin Rezaei](https://github.com/r3zaei) </br>

## Prerequisites

- Ubuntu 22.04 (WSL, VM, or native installation)
- Python 3
- Conda

## Setup

1. Install Python 3
2. Set up the Python environment using Conda:
   ```
   conda env create -f /src/environment.yml
   conda activate dynamic_key_logic_key_locking
   ```
3. Install the following tools (found under `src/Tools/*`):
   - yosys
   - abc
   - neos
   - RANE
   - HALL

   Download and compile these repositories from GitHub. Additional dependencies may be required.

4. Navigate to the 'src' folder.

## Cute-Lock-Beh 

### Encrypting a File

To encrypt a file using the Behavioral Multi-Key Locking algorithm, use the Python script with the following arguments:

```
python CreateEncryption.py [arguments]
```

Arguments:
- `--file_name`: Path to the Verilog file to encrypt. Default: "./nonKey.v"
- `--keys`: Keys to use for encryption (space-separated). Default: "1 2 3 4"
- `--counter_cycles`: Number of clock cycles per stage. Default: 2
- `--output_dir`: Output directory for the encrypted file. Default: "./"

Example:
```
python CreateEncryption.py --file_name path/to/your/file.v --keys 5 6 7 8 --counter_cycles 3 --output_dir path/to/output/
```

If an argument is not specified, the script will use its default value.

### Automated File Encryption

This process starts with a `seq.v` file (regular sequential file) and creates a `locked_seq_file.v` file.

#### Single Test

Run the `run_file_encryption.sh` script with a `seq.v` file:

```bash
./run_file_encryption.sh seq.v
```

Example:
```bash
./run_file_encryption.sh NonKey.v
```

#### Multiple Tests

To run tests on multiple files in a directory:

```bash
./run_multiple_file_encryption.sh dir/path
```

Example:
```bash
./run_multiple_file_encryption.sh ./FSMs/
```

### Script Process

The script performs the following steps:

1. Encrypts the `seq.v` file using the multi-key locking algorithm.
2. Creates `.blif` files of both `seq.v` and the encrypted file using yosys.
3. Modifies the `.blif` files:
   - Replaces `.subckt` with `.names`
   - Adjusts `.latch` syntax
   - Ensures at least one state (preferably the first state, s1) is 0
4. Creates `.bench` files from the `.blif` files using abc.
5. Tests the locking algorithm by running the `.bench` files using neos.

## Cute-Lock-Str

This process starts with a `seq.bench` file and creates a `locked_seq_file.bench` file.

### Encrypting a .bench File

Use the `/src/structuralEncryptor.py` script with the following options:

- `--file_name`: (Required) Path to the file to encrypt. Default: `./s27.bench`
- `--keys`: (Optional) Space-separated string of keys for encryption. Default: "2 2"
- `--output_dir`: (Optional) Output directory. Default: `./output/`
- `--s`: (Optional) Number of DFF to lock. Default: 1

Example:
```bash
python3 structuralEncryptor.py --file_name example.txt --keys "3 4" --output_dir "./encrypted_output/" --s 2
```

### Single Test

Run the `run_file_encryption_structural.sh` script with a `seq.bench` file:

```bash
./run_file_encryption_structural.sh ./location/to/seq.bench
```

### Multiple Tests

To run tests on multiple `.bench` files in a directory, edit the directory path in the `run_m_structual.sh` script, then run:

```bash
./run_m_structual.sh
```


## Citation
```
@INPROCEEDINGS{Cute-Lock,
  author={Lopez, Kevin and Rezaei, Amin},
  booktitle={2025 Design, Automation & Test in Europe Conference & Exhibition (DATE)}, 
  title={Cute-Lock: Behavioral and Structural Multi-Key Logic Locking Using Time Base Keys}, 
  year={2025},
  volume={},
  number={},
  pages={},
  doi={}
  }
```

## License
This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
