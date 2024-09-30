def DecToBin(UserIn, InputSize):
    Converted = bin(UserIn).replace("0b", "")
    if len(Converted) > InputSize:
        print("Error: Input is too large for specified size")
        raise Exception("Input too large for specified size")
    return "0" * (InputSize - len(Converted)) + Converted


assert DecToBin(5, 3) == "101"
assert DecToBin(5, 4) == "0101"
assert DecToBin(5, 5) == "00101"
# assert DecToBin(5, 2) == "101" # This  raises an exception


def BinToDec(UserIn, InputSize):
    if len(UserIn) > InputSize:
        print("Error: Input is too large for specified size")
        raise Exception("Input too large for specified size")
    return int(UserIn, 2)


assert BinToDec("101", 3) == 5
assert BinToDec("0101", 4) == 5
assert BinToDec("00101", 5) == 5

if __name__ == "__main__":
    print("DecToBin.py is being run directly")
