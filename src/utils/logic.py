import logging
from typing import Any, Dict, List, TypedDict, Union
from pyeda.inter import (
    exprvar,
    And,
    Or,
    Not,
    Nand,
    Nor,
    Xor,
    espresso_exprs,
    Xnor,
    truthtable,
    espresso_tts,
)
from pyeda.boolalg.expr import Expression
from pprint import pprint
import unittest
import pprint


def generate_counter(counter_size: int):
    """
    Generate a counter logic circuit with a given size.

    This function generates a counter logic circuit using PyEDA. The counter size determines the number of inputs and outputs.
    The function generates truth tables for the counter, simplifies them using the Espresso algorithm, and returns a dictionary
    mapping output names to their simplified expressions.

    Parameters:
    counter_size (int): The size of the counter, i.e., the number of inputs and outputs.

    Returns:
    dict: A dictionary where the keys are the names of the outputs and the values are the simplified expressions for those outputs.

    Example:
    >>> generate_counter(2)
    {'D1': And(~Q_1, ~Q_0), 'D0': Xor(Q_1, Q_0)}
    """

    inputs = [exprvar("Q_" + str(i)) for i in range(counter_size)]
    # inputs.reverse()  # Q2...Q1...Q0
    # print("Inputs = ", inputs)
    outputs = ["D_" + str(i) for i in range(counter_size)]
    outputs.reverse()  # D2...D1...D0

    output_values: List[List[int]] = []  # the width of the counter is counter_size,
    # the height of the table is 2**counter_size
    for i in range(2**counter_size):
        output_values.append([int(x) for x in format(i, f"0{counter_size}b")])

    # print("output_values:\n", pprint.pformat(output_values))
    # [[0, 0], [0, 1], [1, 0], [1, 1]]
    # move the first array to the end
    output_values.append(output_values.pop(0))
    # print("output_values:\n", pprint.pformat(output_values))
    #   [[0, 1], [1, 0], [1, 1], [0, 0]]

    output_values = list(map(list, zip(*output_values)))  # transpose the table
    # print("output_values:", pprint.pformat(output_values))
    # [[0, 1, 1, 0], [1, 0, 1, 0]]

    result: Dict[str, Expression] = {}
    for i, d_values in enumerate(output_values):
        tt_D = truthtable(inputs, d_values)
        simplified_expr_D = espresso_tts(tt_D)[0]
        # print(f"Simplified expression for {outputs[i]}:  {simplified_expr_D}")
        result[outputs[i]] = simplified_expr_D
    # print("results = ", result)
    return result


def generate_input_logic_table(number_of_inputs: int):
    return [
        [int(i) for i in format(x, f"0{number_of_inputs}b")]
        for x in range(2**number_of_inputs)
    ]


# pprint(generate_input_logic_table(9))


def simplify_exp(exp: Expression) -> Expression:
    """
    This function attempts to simplify a given PyEDA expression.
    If the expression cannot be simplified, it is returned as is.

    :param exp: A PyEDA expression.
    :return: A simplified PyEDA expression, or the original expression if it cannot be simplified.
    """
    try:
        dnf_exp = exp.simplify()  # Using to much memory.to_dnf()
        # logging.debug(f"before: {exp}")
        exp_ = espresso_exprs(dnf_exp)[0]
        return exp_
    except Exception as e:
        return exp


def convert_str_to_expr(
    gate: str, gate_connections: Dict[str, tuple[str, tuple[str, str]]]
) -> Union[Expression, None]:
    """
    This function converts a string expression(and map, it needs the gate name and the nested gates in gate_connections) into a PyEDA expression.
    It is expected that the expression is correct.

    :param gate: The name of the gate.
    :param gate_connections: A dictionary where the keys are the names of the gates and the values are tuples containing the gate type and the inputs to the gate.
    :return: A simplified PyEDA expression for the boolean function of the gate.
    """
    # Base case: if the gate is an input, return the gate itself
    logging.debug(f"gate = {gate}")
    if gate not in gate_connections:
        logging.debug("gate not in gate_connections")
        # logging.debug(gate)
        return exprvar(gate)

    # Recursive case: simplify the function by replacing the gate with its inputs
    gate_type, inputs = gate_connections[gate]
    if gate_type.lower() == "dff":
        return None
    simplified_inputs = [convert_str_to_expr(inp, gate_connections) for inp in inputs]

    if gate_type.lower() == "or":
        return Or(*simplified_inputs)
    elif gate_type.lower() == "and":
        return And(*simplified_inputs)
    elif gate_type.lower() == "nand":
        return Nand(*simplified_inputs)
    elif gate_type.lower() == "nor":
        return Nor(*simplified_inputs)
    elif gate_type.lower() == "xor":
        return Xor(*simplified_inputs)
    elif gate_type.lower() == "not":
        assert len(simplified_inputs) == 1
        return Not(simplified_inputs[0])
    elif gate_type.lower() == "xnor":
        return Xnor(*simplified_inputs)
    elif gate_type.lower() == "buf":
        assert len(simplified_inputs) == 1
        return simplified_inputs[0]
    else:
        raise ValueError(f"Unsupported gate type: {gate_type}")


gate_types = ["nand", "nor", "and", "or", "xor", "not", "xnor", "buf", "dff"]


from typing import Dict, List, Tuple, TypeVar
import re
import random

gate_count = 0

T = TypeVar("T")


def pop_random_value_from_list(lst: List[T]) -> T:
    """
    Pop a random value from a list; returns the value. The original list is modified in-place.

    Parameters:
    lst (List[T]): The list to pop a value from.

    Returns:
    T: The value that was randomly selected and removed from the list.

    Example:
    >>> lst = [1, 2, 3, 4, 5]
    >>> pop_random_value_from_list(lst)
    3
    >>> lst
    [1, 2, 4, 5]
    """
    random_index = random.randint(0, len(lst) - 1)
    value = lst[random_index]
    lst.pop(random_index)
    return value


def convert_s_to_map(
    s_str: str = "Or( And(~G1gat, ~G3gat, ~keyinput0, ), And(G1gat, ~G3gat, ~keyinput0, ), And(~G1gat, G3gat, ~keyinput0, ) )",
) -> Dict[str, Tuple[str, tuple[str, str]]]:
    gate_map = {}

    # Convert all the GateTypes to lowercase
    s_str = re.sub(
        r"\b\w+\b",
        lambda match: (
            match.group(0).lower()
            if match.group(0).lower() in gate_types
            else match.group(0)
        ),
        s_str,
    )

    # convert all the "~input" to not( input ). NOte int can
    s_str = re.sub(r"~\w+", lambda match: f"not({match.group(0)[1:]})", s_str)
    # logging.debug("s = ", s_str)

    def traverse(s: str):  # return the name of the gate
        global gate_count
        if "(" not in s:
            return s  # base case there is no nested gate

        # get the outer expression
        gate_type = s.split("(")[0]

        inputs = extract_gate_inputs(s)
        input_names = [traverse(inp) for inp in inputs]

        # print("gate count = ", gate_count)
        gate_name = f"{gate_type}_{gate_count}"
        gate_count += 1
        gate_map[gate_name] = (gate_type, tuple(input_names))
        return gate_name

    traverse(s_str)

    return gate_map


def extract_gate_inputs(expression):
    # Match the gate and its contents using a regular expression
    match = re.search(r"(and|or|xor|not|nand|dff)\((.*)\)", expression)
    if not match:
        return []

    # Extract the contents within the gate
    contents = match.group(2)

    # Split the contents based on commas, taking into account nested structures
    inputs = []
    depth = 0
    start = 0
    for i, char in enumerate(contents):
        if char == "(":
            depth += 1
        elif char == ")":
            depth -= 1
        elif char == "," and depth == 0:
            inputs.append(contents[start:i].strip())
            start = i + 1

    # Add the last segment if there is any
    if start < len(contents):
        inputs.append(contents[start:].strip())

    return inputs


class TestLogic(unittest.TestCase):
    def test_pop_random_value_from_list(self):
        lst = [1, 2, 3, 4, 5]
        value = pop_random_value_from_list(lst)
        self.assertIn(
            value, [1, 2, 3, 4, 5]
        )  # Check that the value was in the original list
        self.assertNotIn(value, lst)  # Check that the value was removed from the list
        self.assertEqual(len(lst), 4)  # Check that the list has one less element

    def test_counter(self):
        assert (
            str(generate_counter(2))
            == "{'D_1': Or(And(Q_0, ~Q_1), And(~Q_0, Q_1)), 'D_0': ~Q_0}"
        )

    def test_infix_to_rpn(self):
        self.assertEqual(
            convert_s_to_map("or( and(not(int1), int2),  int3)"),
            {
                "not_0": ("not", ("int1",)),
                "and_1": ("and", ("not_0", "int2")),
                "or_2": ("or", ("and_1", "int3")),
            },
        )

    def test_extract_gate_inputs(self):
        # fmt: off
        self.assertEqual( extract_gate_inputs("and( not(k1), x1, x2, and(x1,x2) )"), ["not(k1)", "x1", "x2", "and(x1,x2)"])
        self.assertEqual( extract_gate_inputs("or( x1, not(x2), and(x3,x4) )"),  ['x1', 'not(x2)', 'and(x3,x4)'],)
        self.assertEqual( extract_gate_inputs("xor( nand(x1,x2), or(x3,x4) )"),  ['nand(x1,x2)', 'or(x3,x4)'],)
        self.assertEqual( extract_gate_inputs("not( and(x1,x2) )"),  ['and(x1,x2)'],)
        self.assertEqual( extract_gate_inputs("nand( x1, xor(x2,x3) )"),  ['x1', 'xor(x2,x3)'])
        # fmt: on


if __name__ == "__main__":
    unittest.main()
