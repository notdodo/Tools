import sys
# Usage: python hextoip.py 7f000001

data = sys.argv[1]
tolittle = ""
for i in range(0, len(data), 2):
    tolittle = tolittle + "." + str(int("0x" + str(data[i]) + str(data[i + 1]), 0))
print(tolittle[1:])
