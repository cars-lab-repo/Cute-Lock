from typing import List, Dict, Literal, TypedDict
import yaml

############# Types #############
type_names = Literal[".names", ".latch"]
elements_type = TypedDict(
    "elements_type", {"name": type_names, "inputs_outputs": str, "table": str}
)
subckt_type = TypedDict(
    "subckt_type",
    {"subckt": str, "elements": List[elements_type], "possible_names": List[str]},
)


def find_subckt(subckt_name: type_names) -> subckt_type:
    with open("latch_replacement.yaml", "r") as file:
        data: List[subckt_type] = yaml.safe_load(file)

    for subckt in data:
        if subckt["subckt"] == subckt_name or subckt_name in subckt["possible_names"]:
            return subckt
    raise ValueError(f"Subckt {subckt_name} not found in latch_replacement.yaml")


def read_blif_file(file_name: str) -> List[str]:
    with open(file_name, "r") as file:
        data = file.readlines()
    return data


def find_indices_where_subckt_is_used(data: List[str]) -> List[tuple[int, type_names]]:
    indices = []
    for i, line in enumerate(data):
        if "subckt" in line:
            subckt_name = line.split()[1]
            # print("subckt_name", subckt_name)
            indices.append((i, subckt_name))
    return indices


def replace_subckt_with_elements(subckt_info: subckt_type, line: str) -> str:
    # ! Need to fix this
    blif_line_attributes = {
        k: v for k, v in [x.split("=") for x in line.split() if "=" in x]
    }
    print(
        blif_line_attributes
    )  #  {'C': 'clk', 'D': 'nx_state[2]', 'Q': 'pr_state[2]', 'R': 'rst'}
    elements = subckt_info["elements"]
    new_line = []
    for element in elements:
        new_line.append(element["name"] + " ")
        # place all the elements in the format that the inputs and outputs are in the same order
        inputs_outputs = element["inputs_outputs"]

        for i in inputs_outputs.split():
            if i in blif_line_attributes:
                inputs_outputs = inputs_outputs.replace(i, blif_line_attributes[i])
            elif i.replace("_#", "") in blif_line_attributes:
                # pound val should be the number in between [ # ], from blif_line_attributes
                inputs_outputs = inputs_outputs.replace(
                    i, blif_line_attributes[i.replace("_#", "")] + "__"
                )
        new_line.append(inputs_outputs + " ")
        new_line.append("\n")
        if element["table"]:  # still need to test this
            new_line.append(element["table"] + " ")
        # new_line.append("\n")
    return "".join(new_line) + "\n"


# ## * Tests * ##
# subckt_info: subckt_type = {
#     "subckt": "latch",
#     "elements": [{"name": ".latch", "inputs_outputs": "D Q R C 2", "table": ""}],
#     "possible_names": ["$_DFFE_NP0P_", "$_DFFE_NP0P_", "$_DFFE_NP1P_", "$_DFFE_NP0P_"],
# }
# assert (
#     replace_subckt_with_elements(
#         subckt_info,
#         ".subckt $_DFFE_NP0P_ C=clk D=nx_state E=$abc$3209$auto$opt_dff.cc:194:make_patterns_logic$701 Q=pr_state R=rst",
#     )
#     == ".latch nx_state[2] pr_state[2] rst clk 2 # replacement to latch was done\n"
# )
# ## * Done * ##


def write_line_to_file(file_name: str, data: List[str]) -> None:
    with open(file_name, "w") as file:
        file.writelines(data)


if __name__ == "__main__":
    # get key arguments passed
    import argparse

    parser = argparse.ArgumentParser(description="Replace subckt with its elements")
    parser.add_argument("blif_file", type=str, help="blif file name")
    parser.add_argument(
        "--yaml_file",
        type=str,
        help="yaml file name used for blif replacement",
        dest="yaml_file",
        default="latch_replacement.yaml",
    )
    args = parser.parse_args()

    blif_file = args.blif_file
    yaml_file = args.yaml_file
    print(f"blif_file: {blif_file}, yaml_file: {yaml_file}")
    blif_lines = read_blif_file(blif_file)
    indices = find_indices_where_subckt_is_used(blif_lines)

    for index, subckt_name in indices:
        subckt_info = find_subckt(subckt_name)
        # the to make the replacements at this line idx
        blif_lines[index] = replace_subckt_with_elements(subckt_info, blif_lines[index])

    write_line_to_file(blif_file, blif_lines)
    print("Done")
