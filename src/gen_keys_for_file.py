""" This file takes in a verilog file. and returns the number of inputs in the file. """

import argparse
from math import log2
from BenchParser import BenchParser

parser = argparse.ArgumentParser(description="Reads then number of inputs of a file ")
parser.add_argument("file_name", type=str, help="The file location")  # required=True

args = parser.parse_args()
file_name = args.file_name


class VerilogFile:
    @staticmethod
    def read_file_lines(file_name):
        with open(file_name, "r") as file:
            return file.readlines()

    @staticmethod
    def get_max_x(file_name) -> str:
        lines = VerilogFile.read_file_lines(file_name)

        for i, line in enumerate(lines):
            if "input" in line:  # find the first line with ;
                for j in range(i, len(lines)):
                    if ";" in lines[j]:

                        max_x = (
                            lines[j].split(";")[0].split(",")[-1].strip()
                        )  # get the right side of ";" and the last input element
                        # remove any characters, non number from max_x
                        max_x = "".join([i for i in max_x if i.isdigit()])
                        return max_x

        raise ValueError("No inputs found in file")


class KeyGenerator:
    @staticmethod
    def generate_keys(number_of_keys: int, bit_size: int):
        import random

        keys = []
        i = 0  # counter
        # ensure that the keys are unique
        while i < number_of_keys or len(set(keys)) <= 1:
            keys.append(random.randint(0, (2**bit_size) - 1))
            i += 1
        return keys[-number_of_keys:]  # FIX: ensure to return a size of number_of_keys


number_of_keys = 0
number_of_inputs = 0
if file_name.endswith(".v"):
    number_of_inputs = int(VerilogFile.get_max_x(file_name))
    number_of_keys = max(number_of_inputs // 3, 2)
elif file_name.endswith(".bench"):
    bench_parser = BenchParser(file_name)
    number_of_inputs = len(bench_parser.inputs)
    number_of_keys = max(number_of_inputs, 2)
    number_of_keys = 2 ** round(log2(number_of_keys))  # round to the nearest power of 2
else:
    raise ValueError("File must be a .v or .bench file")

keys = KeyGenerator.generate_keys(
    number_of_keys=int(number_of_keys), bit_size=int(number_of_inputs)
)
exit(str(keys).replace("]", "").replace("[", "").replace(",", " "))
