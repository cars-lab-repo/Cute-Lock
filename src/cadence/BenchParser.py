"""
#This module is made to parse the bench file 
# return the simplified boolean functions
# return the gates with a specific number of inputs
"""

import logging
import os
from pprint import pprint, pformat
import re
import time
from typing import Any, Dict, List, Set, TypedDict, Union
from pyeda.inter import exprvar, And, Or, Not, Nand, Nor, Xor, espresso_exprs, Xnor

from pyeda.boolalg.expr import Expression

from utils.logic import convert_str_to_expr, simplify_exp

## TYPES DEFINITIONS
# fmt: off
bench_file_output_type = TypedDict(
    "bench_file_output_type",
    {
        "gates": Dict[str, tuple[str, tuple[str,str]]], 
        "inputs": List[str], 
        "outputs": List[str]
    },
)
# fmt: on

gate_types = [
    "nand",
    "nor",
    "and",
    "or",
    "xor",
    "not",
    "xnor",
    "buf",
    "dff",
]


class BenchParser:
    def __init__(self, bench_file: str):
        self.bench_file = bench_file
        self.parsed_bench = self.bench_file_parser()
        self.gates = self.parsed_bench["gates"]
        self.inputs = self.parsed_bench["inputs"]
        self.outputs = self.parsed_bench["outputs"]
        file_name = bench_file.replace("\\", "/").split("/")[-1]
        logging.info(
            f"{file_name} contains {len(self.inputs)} inputs,     {len(self.outputs)} outputs,     and {len(self.gates)} gates\n"
        )

        # self.gate_expressions = self.__get_gate_expr()

    def __validate_gate(self, match_gate: re.Match[str]):
        """
        This function validates a gate parsed from a file. It checks if the gate type is supported,
        if the gate has any inputs, and if any of the inputs is a gate type. If any of these checks fail,
        it raises a ValueError with an appropriate error message.
        """
        if match_gate.group("type").lower() not in gate_types:
            raise ValueError(f"Unsupported gate type: {match_gate.group('type')}")
        if len(match_gate.group("inputs")) == 0:
            raise ValueError(f"Gate {match_gate.group('gate')} has no inputs")
        # # if of the gate_types is in the inputs, raise an error
        for gate in gate_types:
            if gate + "(" in match_gate.group("inputs").lower():
                raise ValueError(
                    f"Gate {match_gate.group('gate')} has a gate type as input"
                )

    def bench_file_parser(self) -> bench_file_output_type:
        """This function parses a bench file and returns the gates, inputs and outputs.

        Args:
            bench_file (str): Path to bench file as a string

        Returns:
            bench_file_output_type: { "gates": Dict[str, tuple[str, str]], "inputs": List[str], "outputs": List[str] } : A dictionary containing the gates, inputs and outputs

        """
        start = time.time()
        with open(self.bench_file, "r") as file:
            lines = file.readlines()

        # Dictionary to store the gate connections
        gate_connections = {}

        # fmt: off
        gate_regex = re.compile(r"(?P<gate>\w+(?:\[\d+\])?)\s*=\s*(?P<type>\w+)\((?P<inputs>.+?)\)") # ! This will not handle the case where the gates contains nested gates like "G1gat = and(G2gat, and(G3gat, G4gat)"
        # gate_regex = re.compile(r"(?P<gate>\w+) = (?P<type>\w+)\(\s*(?P<inputs>.+)\s*\)")
        output_regex = re.compile(r"OUTPUT\(\s*(?P<gate>[\w\[\]]+)\s*\)")
        input_regex = re.compile(r"INPUT\(\s*(?P<gate>[\w\[\]]+)\s*\)")
        # fmt: on
        # List to store the output gates
        output_gates = []
        input_gates = []

        # Parse the bench file
        for line in lines:
            match_gate = gate_regex.match(line.split("#")[0].strip())
            match_output = output_regex.match(line.strip())
            match_input = input_regex.match(line.strip())
            if match_gate:
                gate_connections[match_gate.group("gate").strip()] = (
                    match_gate.group("type").strip(),
                    [inp.strip() for inp in match_gate.group("inputs").split(",")],
                )
                self.__validate_gate(match_gate)
            elif match_output:
                output_gates.append(match_output.group("gate").strip())
            elif match_input:
                input_gates.append(match_input.group("gate").strip())

        logging.info("Time taken to parser file= " + str(time.time() - start) + "\n")
        return {
            "gates": gate_connections,
            "inputs": input_gates,
            "outputs": output_gates,
        }

    def get_output_functions(self) -> Dict[str, Expression]:
        """
        This function parses a bench file and returns the simplified boolean functions for the output gates.
        The boolean functions are returned as PyEDA expressions.

        :param bench_file: The path to the bench file.
        :return: A dictionary where the keys are the names of the output gates and the values are the simplified boolean functions.
        """
        # Parse the bench file
        # pprint(self.parsed_bench)
        gate_connections = self.parsed_bench["gates"]
        output_gates = self.parsed_bench["outputs"]

        # Simplify the boolean functions for the output gates
        simplified_functions = {}
        for gate in output_gates:
            simplified_functions[gate] = convert_str_to_expr(gate, gate_connections)

        return simplified_functions

    def __get_gate_expr(self) -> Dict[str, Expression]:
        gate_connections = self.parsed_bench["gates"]
        simplified_functions = {}
        for gate in gate_connections.keys():
            simplified_functions[gate] = convert_str_to_expr(gate, gate_connections)
        return simplified_functions

    def __count_inputs(
        self,
        gate: str,
        gate_connections: Dict[str, tuple[str, tuple[str, str]]],
        inputs_gates: List[str],
    ):
        """
        This function recursively counts the number of distinct inputs for a given gate.

        :param gate: The name of the gate.
        :param gate_connections: A dictionary where the keys are the names of the gates and the values are the connections.
        :return: The number of inputs for the gate.
        """
        input_gates = set(inputs_gates)
        seen_input_gates: Set[str] = set()

        visited_gates: Set[str] = set()
        memo: Dict[str, Union[int, None]] = {}
        start__: float = time.time()

        def helper(cur_gate) -> Union[int, None]:
            nonlocal seen_input_gates, start__
            if cur_gate in memo:
                return memo[cur_gate]
            if cur_gate in input_gates:
                if cur_gate not in seen_input_gates:
                    seen_input_gates.add(cur_gate)
                    return 1
                return 0

            gate_type, inputs_g = gate_connections[cur_gate]
            if gate_type.lower() == "dff":
                print("Found DFF")
                return None  # skip the dff gate
            total_inputs = 0
            for inp in inputs_g:
                if (time.time() - start__) > (60 * 4):  # 1 minutes
                    print("took 1 min")
                    raise Exception("taking too long ")
                if inp in visited_gates:
                    continue
                visited_gates.add(inp)
                v = helper(inp)
                if v is None:
                    return None
                total_inputs += v
            memo[cur_gate] = total_inputs
            return total_inputs

        count = helper(gate)
        input_gates = sorted(
            list(seen_input_gates)
        )  # making sure we don't return a unordered set
        # logging.debug("input_gates = ", input_gates)
        return count, input_gates

    def get_gates_with_k_inputs(self, number_of_inputs: int) -> dict[str, list[str]]:
        """
        This function returns the names of the gates in the bench file that have a specific number of inputs.

        :param bench_file: The path to the bench file.
        :param number_of_inputs: The number of inputs that the gates should have.
        :return: A list of the names of the gates that have the specified number of inputs.

        This Algorithm can be improved if we approach the gates from the input side( Like a graph traversal)
        """
        logging.debug("get_gates_with_k_inputs")
        start = time.time()
        # Parse the bench file
        gate_connections = self.parsed_bench["gates"]
        # logging.debug(" gate_connections = ", gate_connections)
        input_names = self.parsed_bench["inputs"]

        # Get the gates with the specified number of inputs
        start_ = time.time()
        gates_with_specific_number_of_inputs = {}
        for gate in gate_connections:
            if time.time() - start_ > 60 * 2:  # 1 minute
                break  # return what we already have
            count_inputs_result = self.__count_inputs(
                gate, gate_connections, input_names
            )
            if count_inputs_result[0] == number_of_inputs:
                gates_with_specific_number_of_inputs[gate] = count_inputs_result[1]
        logging.info(
            "Time taken to get gates with k inputs = " + str(time.time() - start) + "\n"
        )
        return gates_with_specific_number_of_inputs

    def get_unique_gates(
        self, gates_and_inputs: dict[str, list[str]]  # gate_with_k connections
    ) -> dict[str, list[str]]:
        logging.debug("get_unique_gates")
        start = time.time()
        gates_and_inputs_keys = list(gates_and_inputs.keys())
        logging.debug("\n" + pformat(gates_and_inputs))
        max_number_of_gates = 0
        result: List[str] = []

        # get the gates that have unique inputs
        #
        def helper(
            visited_gates: List[str], visited_inp_gates: Set[str], idx=0
        ):  # O(2^n) time complexity
            nonlocal max_number_of_gates, result

            if time.time() - start > 60 * 5:  # 5 minutes
                return {g: gates_and_inputs[g] for g in result}

            if len(visited_gates) > max_number_of_gates:
                max_number_of_gates = len(visited_gates)
                result = visited_gates[:]  # do i need to copy?
                logging.debug("result = " + str(result))

            for i in range(idx, len(gates_and_inputs.keys())):
                gate = gates_and_inputs_keys[i]

                inp_in_visited_inp = False
                for inp in gates_and_inputs[gate]:
                    if inp in visited_inp_gates:
                        inp_in_visited_inp = True
                        break
                if inp_in_visited_inp:
                    continue

                visited_gates.append(gate)
                visited_inp_gates.update(gates_and_inputs[gate])

                helper(visited_gates, visited_inp_gates, i + 1)

                visited_gates.pop()
                for elem in gates_and_inputs[gate]:
                    visited_inp_gates.remove(elem)

            """backtracking function that gets the max number of gates that do not have interfering inputs"""

        helper([], set(), 0)
        logging.info(
            "Time taken to get the maximum number of unique gates = "
            + str(time.time() - start)
            + "\n"
        )
        return {g: gates_and_inputs[g] for g in result}


if __name__ == "__main__":
    cur_dir = os.path.dirname(__file__)
    bench_file = "/benchmarks/c17.bench"

    # simplified_functions = get_output_functions(cur_dir + bench_file)
    # for gate, function in simplified_functions.items():
    #     logging.debug(f"** {gate} = {  simplify_exp(function)}\n\n")

    # * Testing this file
    bench_file = "./benchmarks/iscas85/c17_encrypted.bench"
    bench_parser = BenchParser(os.path.join(cur_dir, bench_file))
    output_gates = bench_parser.get_output_functions()
    print("output_gates = ", pformat(output_gates), "\n\n")
    # print("outputs = ", output_gates)
    gates_2inp = bench_parser.get_gates_with_k_inputs(4)
    print("gates_2inp = ", gates_2inp)

    assert bench_parser.get_unique_gates(gates_2inp) == {"G10gat": ["G1gat", "G3gat"]}

    assert list(
        bench_parser.get_unique_gates(
            {
                "G10gat": ["G1gat", "G3gat"],
                "G11gat": ["G3gat", "G6gat"],
                "G12": ["G7", "G8"],
                "G13": ["G1gat", "G20"],
                "G14": ["G3gat", "G111"],
                "G15": ["G6gat", "G33"],
            }
        ).keys()
    ) == ["G12", "G13", "G14", "G15"]
