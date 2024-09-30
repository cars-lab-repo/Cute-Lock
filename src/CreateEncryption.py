from math import log2, ceil
import os
from typing import List
import DecoToBin
import random
import argparse
import re
import re
import random


def read_file_lines(file_name):
    with open(file_name, "r") as file:
        return file.readlines()


def pop_random_state(states: List[str]):
    """This gets a random value from states, then removes it from the list, then returns it"""
    random_state = random.choice(states)
    states.remove(random_state)
    return random_state


def find_insertion_points(lines):
    def contains_module_pattern(s):
        # Pattern explanation:
        # \bmodule\b - Matches the word "module" as a whole word (\b is a word boundary)
        # \s+ - Matches one or more whitespace characters
        # \w+ - Matches one or more word characters (letters, digits, or underscores)
        # \s* - Matches zero or more whitespace characters
        # \( - Matches the opening parenthesis '(' character
        pattern = r"\bmodule\b\s+\w+\s*\("
        return bool(re.search(pattern, s))

    start_of_module_idx, output_insert_index, int_insert_index = 0, 0, 0
    for i, line in enumerate(lines):
        if contains_module_pattern(line) and not start_of_module_idx:
            start_of_module_idx = i
        elif "output" in line and not output_insert_index:
            output_insert_index = i - 1
        elif "reg" in line and not int_insert_index:
            int_insert_index = i
    return start_of_module_idx, output_insert_index, int_insert_index


def modify_lines(
    lines,
    start_of_module_idx,
    output_insert_index,
    int_insert_index,
    size_of_key,
    counter_size=8,
):
    # Add key inputs
    key_input_str = ", ".join([f"keyinput{i}" for i in range(size_of_key)]) + ","
    open_par = lines[start_of_module_idx].find("(")
    lines[start_of_module_idx] = (
        lines[start_of_module_idx][: open_par + 1]
        + key_input_str
        + lines[start_of_module_idx][open_par + 1 :]
    )

    # Add input declaration for keys
    key_declaration = (
        "input " + ", ".join([f"keyinput{i}" for i in range(size_of_key)]) + ";\n"
    )
    lines.insert(output_insert_index + 1, key_declaration)

    # Add counter register after the int declarations
    max_value = (2**size_of_key) - 1
    counter_declaration = f"reg[{counter_size}:0] counter = 0;\n"  # todo
    lines.insert(int_insert_index + 1, counter_declaration)

    return lines


def add_key_logic(
    lines,
    size_of_key,
    num_of_keys,
    max_value,
    keys=None,
    clock_cycles=2,
    states: List[str] = [],
):
    key_statements = []
    counter_limit = 0
    bin_keys = []
    for i in range(num_of_keys):
        key_value = "keyinput" + str(i)

        dec_key = (
            int(
                input(
                    f"What is the value for {key_value} from 0 to {2**size_of_key - 1}: "
                )
            )
            if keys is None
            else keys[i]
        )
        bin_key = DecoToBin.DecToBin(dec_key, size_of_key)
        bin_keys.append(bin_key)
        condition = " && ".join(
            [f"keyinput{j} == 1'b{bin_key[j]}" for j in range(size_of_key)]
        )
        if i == 0:
            counter_limit += clock_cycles - 1
            range_statement = f"counter <= {counter_limit}"
        else:
            new_number = clock_cycles
            counter_limit += new_number
            range_statement = (
                f"counter > {counter_limit - new_number} && counter <= {counter_limit}"
            )

        key_statement = f"\t\tif ( {range_statement} ) begin \n"
        key_statement += "\t\t\tif ( " + condition + " )\n"
        key_statement += f"\t\t\t\tpr_state = nx_state;\n"
        key_statement += "\t\t\telse\n"
        key_statement += f"\t\t\t\tpr_state = {pop_random_state(states=states)};\n"  # This should be random state
        key_statement += "\t\tend\n"
        key_statements.append(key_statement)

    # completely remove the register
    register_pattern = r"always.*clk"
    register_idx = 0
    for i, line in enumerate(lines):
        if re.search(register_pattern, line):
            # we can use the begin and end to remove the register, using stack
            register_idx = i
            s = []
            end_idx = i
            for j in range(i if "begin" in lines[i] else i + 1, len(lines)):
                if "begin" in lines[j]:
                    s.append("begin")
                if "end" in lines[j]:
                    s.pop()
                if not s:
                    end_idx = j
                    break
            lines = lines[:i] + lines[end_idx + 1 :]
            break

    # add counter logic
    #         counter <= (counter >= maximum) ? 0 : counter + 1;
    counter_logic = [
        "always @(negedge clk or posedge rst)\n",
        "begin\n",
        "\tif (rst == 1'b1)\n",
        "\t\tcounter <= 0;\n",
        "\telse\n",
        f"\t\tcounter <= (counter >= {counter_limit}) ? 0 : counter + 1;\n",
        "end\n",
        "\n",
    ]

    lines[register_idx:register_idx] = counter_logic

    # add key logic
    key_logic = [
        "always@(  negedge clk or posedge rst )\n",
        "begin\n",
        "\tif (rst == 1'b1)\n\t begin\n",
        "\t\tpr_state = s1;\n",
        "\tend\n",
        "\telse\n",
        "\tbegin\n",
        # using key_statements
        f"{''.join(key_statements)}",
        "\tend\n",
        "end\n\n",
    ]
    lines[register_idx + len(counter_logic) : register_idx + len(counter_logic)] = (
        key_logic
    )

    return lines, bin_keys


def get_random_states(lines: List[str]):
    result: list[str] = []
    for start_idx, line in enumerate(lines):
        if line.startswith("parameter"):
            for cur_idx in range(start_idx, len(lines)):
                cur_line = lines[cur_idx].replace("parameter", "")
                states = [
                    state.strip()
                    for state in re.split(",|=|;", cur_line)
                    if "s" in state
                ]
                result.extend(states)
                if ";" in lines[cur_idx]:
                    break
    return result


def write_modified_file(
    lines, original_file_name, num_of_keys, bin_keys, size_of_key, output_dir
):
    new_file_name = original_file_name.replace(
        ".v", f"_____{num_of_keys}_keys_____of_size_{size_of_key}.v"
    )
    original_file_name = original_file_name.replace("\\", "/").split("/")[-1]
    new_file_name = output_dir + original_file_name.replace(".v", "_encrypted.v")
    print("new_file_name = ", new_file_name)

    if not output_dir.endswith("/"):
        output_dir += "/"

    # check if output dir exists
    if not os.path.exists(output_dir):
        os.makedirs(output_dir)

    with open(new_file_name, "w") as new_file:
        new_file.write("/******** Key Information: *********** \n")
        for i, key in enumerate(bin_keys):
            new_file.write(f"Key {i+1}:   bin: '{key}'    dec: {int(key,2)}\n")
        new_file.write("**************************************/\n\n")
        new_file.writelines(lines)
    print("************************ info  *********************")
    print(f"Keys = {bin_keys}")
    print(f"Encryption created for {num_of_keys} keys")
    print(f"Original file: {original_file_name}")
    print(f"File created: {new_file_name}")
    print("************************ DONE  *********************\n")


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Create Encryption for Verilog file")
    parser.add_argument(
        "--file_name", type=str, help="The file location", default="./nonKey.v"
    )  # required=True
    # take in keys as an array argument
    parser.add_argument(
        "--keys=",
        dest="keys",
        nargs="+",
        type=str,
        help="Keys to use",
        default="1 2 3 4",
    )
    parser.add_argument(
        "--counter_cycles",
        dest="clock_cycles",
        type=int,
        help="How many clock cycles per stage",
        default=2,
    )
    parser.add_argument(
        "--output_dir",
        dest="output_dir",
        type=str,
        help="Output directory",
        default="./",
    )
    args = parser.parse_args()
    file_name = args.file_name
    print("args.keys = ", str(args.keys))
    keys: List[int] = [int(i) for i in args.keys[0].split()]
    clock_cycles = args.clock_cycles
    output_dir = args.output_dir

    num_of_keys = len(keys)
    max_value = max(keys)
    size_of_key = ceil(log2(max_value + 1))
    print("key_size = ", size_of_key)

    print(
        f"file_name: {file_name},  size_of_key: {size_of_key},  num_of_keys: {num_of_keys},  max_value: {max_value},   keys={keys}\n"
    )
    lines = list(read_file_lines(file_name))
    start_of_module_idx, output_insert_index, int_insert_index = find_insertion_points(
        lines
    )
    random_states = get_random_states(lines)
    lines = modify_lines(
        lines,
        start_of_module_idx,
        output_insert_index,
        int_insert_index,
        size_of_key,
        counter_size=ceil(log2(num_of_keys * clock_cycles)),
    )
    lines, bin_keys = add_key_logic(
        lines,
        size_of_key,
        num_of_keys,
        max_value,
        keys,
        clock_cycles=clock_cycles,
        states=random_states,
    )
    write_modified_file(
        lines, file_name, num_of_keys, bin_keys, size_of_key, output_dir
    )

print("**DONE writing encryption file**\n\n")
