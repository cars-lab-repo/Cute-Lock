import argparse
from math import ceil, log2
import os
from typing import Dict, List, Set, Union
from BenchFileWriter import BenchFileWriter
from BenchParser import BenchParser
import pprint
from utils.logic import *
from pyeda.inter import exprvar, truthtable, espresso_tts
import random
import math


class StructuralEncryptor:
    """Structural Encryptor class to encrypt a bench file using a list of keys."""

    def __init__(
        self,
        file_path: str,
        keys: List[int],
        output_path: str,
        s: Union[int, float] = 1,  # Number of dff to lock
    ):
        if ceil(log2(len(keys))) != log2(len(keys)):
            raise ValueError("The number of keys must be a power of 2")
        self.keys = keys
        self.maximum_key = max(self.keys)
        self.key_size = ceil(log2(self.maximum_key + 1))
        self.file_path = file_path
        self.keys = keys
        self.output_path = output_path
        self.bench_file = BenchParser(file_path)
        self.locking_info = []
        self.dff_inputs, self.dff_outputs = self.__get_dff_inputs_outputs()
        self.numbers_of_dff_to_lock: int = (
            int(s) if s >= 1 else int(s * len(self.dff_inputs))
        )
        if self.numbers_of_dff_to_lock > len(self.dff_inputs):
            raise ValueError(
                f"The number of DFF to lock is greater than the number of DFF gates in the circuit"
            )

    def encrypt(self):
        """locks the beginning of DFF gates with the keys provided"""
        self.__add_keyinputs()
        # self.__add_keys()
        self.__add_counter()
        self.__add_muxes()
        self.__write_file()

    def add_n_to_1_mux(
        self,
        s_inputs: List[str],
        hardware_and_keys: List[Tuple[int, str]],
        output: str,
    ):
        """Size of the select the n to 1 mux would be (n = 2^s)"""
        """This is going to be a OR gate controlled by a s input"""
        s = len(s_inputs)
        gates: Dict[str, tuple[str, tuple[str, str]]] = {}
        and_gates = []

        for i, (key, gate) in enumerate(hardware_and_keys):
            cur_s_gates = [
                f"not_{s_input}" if int(x) == 0 else s_input
                for x, s_input in zip(format(key, f"0{s}b"), s_inputs)
            ]
            cur_s_gates.append(gate)
            gates[(f"{output}_and_{i}")] = ("AND", tuple(cur_s_gates))  # type: ignore
            and_gates.append(f"{output}_and_{i}")

        gates[output] = ("OR", tuple(and_gates))
        # print("gates = ", pprint.pformat(gates))
        self.bench_file.gates.update(gates)

    def __get_dff_inputs_outputs(self):
        """reads the inputs to the dff gates"""
        # read in the gates that are DFFs
        dff_inputs: list[str] = []
        dff_outputs: list[str] = []

        for gate, gateinput_or_str in self.bench_file.gates.items():
            gate_type, inputs = gateinput_or_str
            if gate_type.upper() == "DFF" and inputs[0] not in dff_inputs:
                dff_inputs.append(inputs[0])
                dff_outputs.append(gate)
        return dff_inputs, dff_outputs

    def __add_keyinputs(self):
        maximum_key = max(self.keys)
        key_size = ceil(log2(maximum_key + 1))
        # print("key_size:", key_size)
        self.bench_file.inputs.extend(["keyinput" + str(i) for i in range(key_size)])

        for i in range(key_size):
            self.bench_file.gates[f"not_keyinput{i}"] = ("NOT", (f"keyinput{i}",))  # type: ignore

    def __add_counter(self):
        counter_gates: Dict[str, tuple[str, tuple[str, str]]] = (
            {}
        )  # gate_name: (gate_type, (input1, input0))

        # the counter size if log2(len(keys))
        counter_size = int(log2(len(self.keys)))

        # add the counter signals to the output ( to debug)
        # self.bench_file.outputs.extend([f"Q_{i}" for i in range(counter_size)])

        # print("counter_size:", counter_size)
        # to generate a counter I would have to use PyEDA to generate the logic table
        # the logic values for the counter would be q_counter_0 to q_counter_(counter_size-1)
        counter_exprs = generate_counter(counter_size)
        # print("counter_exprs:", counter_exprs)

        # convert the expressions to map
        for d, expr in counter_exprs.items():
            # print("counter_input = ", d)
            m = convert_s_to_map(str(expr))
            # print("expr = ", expr)
            # print("m:", m, "\n")
            keys = list(m.keys())
            cur_gate_keys_except_last = {key: m[key] for key in keys[:-1]}
            counter_gates.update(cur_gate_keys_except_last)
            counter_gates[d] = m[keys[-1]]  # the last key is the output_name

        # Add the DFF gates to the bench file
        for i in range(counter_size):
            counter_gates[f"Q_{i}"] = ("DFF", (f"D_{i}",))  # type: ignore
        for i in range(counter_size):
            counter_gates[f"not_Q_{i}"] = ("NOT", (f"Q_{i}",))  # type: ignore

        # print("counter_gates: \n", pprint.pformat(counter_gates))

        # writing count states
        for i in range(2**counter_size):
            state_values = [int(x) for x in format(i, f"0{counter_size}b")]
            Q_state_value = []
            for j, value in enumerate((state_values)):
                Q_state_value.append(
                    f"Q_{len(state_values)-1-j}"
                    if value == 1
                    else f"not_Q_{len(state_values)-1-j}"
                )
                counter_gates[f"count_state_{i}"] = (
                    "and" if len(Q_state_value) > 1 else "buf",
                    tuple(Q_state_value),
                )
        self.bench_file.gates.update(counter_gates)

    def __add_keys(self):
        keys_gates: Dict[str, tuple[str, tuple[str, str]]] = {}

        maximum_key = max(self.keys)
        key_size = ceil(log2(maximum_key + 1))
        for i, key in enumerate(self.keys):
            key_val = [int(x) for x in format(key, f"0{key_size}b")]
            key_val_str = []
            for j, value in enumerate(key_val):
                key_val_str.append(
                    f"keyinput{len(key_val)-1-j}"
                    if value == 1
                    else f"not_keyinput{len(key_val)-1-j}"
                )
            keys_gates[f"key{i}"] = ("and", tuple(key_val_str))
            keys_gates[f"not_key{i}"] = ("NOT", (f"key{i}",))  # type: ignore
        self.bench_file.gates.update(keys_gates)

    def __add_muxes(self):
        # get the original circuit

        count = 0
        for _ in range(self.numbers_of_dff_to_lock):
            original_circuit_input = self.dff_inputs.pop(0)
            original_circuit_output = self.dff_outputs.pop(0)
            original_gate: tuple[str, tuple[str, tuple[str, str]]] = (
                original_circuit_output,
                self.bench_file.gates[original_circuit_input],
            )
            # print("original = ", original_circuit_input)

            # pop_random_value_from_list(self.gates_to_lock)
            mux_gates: Dict[str, tuple[str, tuple]] = {}
            # Add the muxes for the key checking

            def add_mux(s: str, i0: str, i1: str, y: str):
                # print('add_mux')
                nonlocal count
                mux_gates[f"s_{s}"] = ("BUF", (s,))
                mux_gates[f"not_s_{s}"] = ("NOT", (f"s_{s}",))
                mux_gates[f"I0_{s}"] = ("BUF", (i0,))
                mux_gates[f"I1_{s}"] = ("BUF", (i1,))
                mux_gates[f"and_mux_{s}"] = ("and", (f"not_s_{s}", f"I0_{s}"))
                mux_gates[f"and_mux_{s}_2"] = ("and", (f"s_{s}", f"I1_{s}"))
                mux_gates[y] = ("or", (f"and_mux_{s}", f"and_mux_{s}_2"))

            prev_muxes: list[str] = []
            prev_states: list[tuple[str, tuple[str, tuple]]] = (
                []
            )  # (gate_name, (gate_type, (input1, input0)))
            gates_to_lock_list = self.dff_inputs.copy()
            # pick log(n) values from res_i
            num_values_to_pick = round(max(math.log(self.maximum_key, 4), 2))
            # Pick random values from rest_i
            for i, key in enumerate(self.keys):
                # print("the key = ", key)
                i0 = original_circuit_input
                last_gate = ""
                hardware_and_keys: List[Tuple[int, str]] = []  # (key, gate_name)
                random_values: Set[int] = set([key])
                for i in range(1, num_values_to_pick):
                    random_value = 0
                    for _ in range(1000000):  # While true, but with a limit
                        random_value = random.randint(0, 2**self.key_size - 1)
                        if random_value not in random_values:
                            break
                    else:  # If the loop completes without breaking
                        print("Could not find a random value")
                        raise ValueError("Could not find a random value")
                    gate = i0
                    j = 0
                    while gate == i0:
                        gate = (
                            gates_to_lock_list[i + j]
                            if i < len(gates_to_lock_list)
                            else last_gate
                        )
                        j += 1
                    hardware_and_keys.append((random_value, gate))
                    last_gate = gate

                # place i0 into rest_i based on the key value ( i.e. if key = 3, then i0 is placed at the 3rd index)
                hardware_and_keys.append((key, i0))
                self.add_n_to_1_mux(
                    s_inputs=[f"keyinput{i}" for i in range(self.key_size)],
                    hardware_and_keys=hardware_and_keys,
                    output=f"y_mux_key{count}",
                )
                hardware_and_keys.pop()  # remove the i0 from the rest_i
                prev_muxes.append(f"y_mux_key{count}")
                prev_states.append(
                    (f"_state_{count}", ("BUF", (f"count_state_{count}",)))
                )
                count += 1
            state_gates: Dict[str, tuple[str, tuple]] = {
                k[0]: k[1] for k in prev_states
            }
            # add muxes for counter
            while len(prev_muxes) > 1:
                next_muxes: list[str] = []
                next_states: list[tuple[str, tuple[str, tuple]]] = []

                while prev_muxes:
                    # print("prev_states = ", pprint.pformat(prev_states))
                    state_0 = prev_states.pop(0)
                    state_1 = prev_states.pop(0)
                    add_mux(
                        s=f"{state_1[0]}",
                        i0=prev_muxes.pop(0),
                        i1=prev_muxes.pop(0),
                        y=f"y_mux_{count}",
                    )
                    next_muxes.append(f"y_mux_{count}")
                    next_states.append(
                        (f"_state_{count}", ("or", (f"{state_0[0]}", f"{state_1[0]}")))
                    )
                    state_gates[next_states[-1][0]] = next_states[-1][1]
                    count += 1
                prev_states = next_states.copy()
                prev_muxes = next_muxes.copy()
            self.bench_file.gates.update(state_gates)
            self.bench_file.gates.update(mux_gates)
            # update the DFF gate to the new mux
            self.bench_file.gates[original_gate[0]] = ("DFF", (f"y_mux_{count-1}",))  # type: ignore

    def __write_file(self):
        file_name = self.file_path.split("/")[-1]

        # Ensure self.output_path ends with '/'
        self.output_path = os.path.join(self.output_path, "")
        output_path = self.output_path + file_name.replace(".bench", "_encrypted.bench")
        output_path = os.path.normpath(output_path)
        print("output_path:", output_path)
        file_write = BenchFileWriter(
            path=output_path,
            inputs=self.bench_file.inputs,
            outputs=self.bench_file.outputs,
            gates=self.bench_file.gates,
            flip_flops={},
            locking_info=self.locking_info,
        )
        file_write.write()


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Create Encryption for Verilog file")
    parser.add_argument(
        "--file_name", type=str, help="The file location", default="./s27.bench"
    )
    parser.add_argument(
        "--keys", type=str, help="The keys to use for encryption", default="2 2"
    )
    parser.add_argument(
        "--output_dir",
        type=str,
        help="Output directory",
        default="./output/",
    )
    parser.add_argument("--s", type=int, help="Number of DFF to lock", default=1)

    args = parser.parse_args()
    file_name = args.file_name
    print("arg.keys = ", args.keys)
    keys_ = [int(i) for i in args.keys.split(" ") if i]
    output_dir = args.output_dir
    s = args.s
    print(f"file={file_name}, keys={keys_}, output_dir={output_dir}")
    encryptor = StructuralEncryptor(
        file_path=file_name, keys=keys_, output_path=output_dir, s=s
    )

    encryptor.encrypt()
