import os
from typing import Dict, Union


class BenchFileWriter:

    def __init__(
        self,
        path,
        inputs: list[str],
        outputs: list[str],
        gates: Dict[str, tuple[str, tuple[str, str]]],
        flip_flops: dict[str, str],  # q : d
        locking_info: list[str],
    ):
        self.path = path
        os.makedirs(os.path.dirname(path), exist_ok=True)
        self.file = open(path, "w")
        self.inputs = inputs
        self.outputs = outputs
        self.gates = gates
        self.flip_flops = flip_flops
        self.locking_info = locking_info

    def write(self):
        self.write_locking_info()
        self.write_inputs()
        self.write_outputs()
        self.write_flip_flops()
        self.write_gates()
        self.file.close()

    def write_locking_info(self):
        for l in self.locking_info:
            if not l.startswith("#"):
                l = "#" + l
            if not l.endswith("\n"):
                l = l + "\n"
            self.file.write(l)
        self.file.write("\n")

    def write_inputs(self):
        for inp in self.inputs:
            self.file.write(f"INPUT({inp})\n")
        self.file.write("\n")

    def write_outputs(self):
        for out in self.outputs:
            self.file.write(f"OUTPUT({out})\n")
        self.file.write("\n")

    def write_gates(self):
        for gate, gateinput_or_str in self.gates.items():
            gate_type, inputs = gateinput_or_str
            self.file.write(f"{gate} = {gate_type}( {', '.join(inputs)} )\n")
        self.file.write("\n")

    def write_flip_flops(self):  # Still need to test this
        for q, d in self.flip_flops.items():
            self.file.write(f"{q} = DFF( {d} )\n")
        self.file.write("\n")
