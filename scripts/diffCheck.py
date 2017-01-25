import sys
import os
from os import listdir
from os.path import isfile, join


# 1: iterate files with specific suffix from one folder
# 2: execute binary file and make those files as input
# 3: do diff check on files
if __name__ == "__main__":
    # get file list
    files = [f for f in listdir(sys.argv[1]) if isfile(join(sys.argv[1], f)) and f.endswith(('.frag', '.decaf'))]

    # check output folder
    if not os.path.exists(sys.argv[2]):
        os.makedirs(sys.argv[2])

    for f in files:
        outName = f.split('.')[0] + ".out"
        cmd = "./dcc < samples/" + f + " > output/" + outName + " 2>&1"
        os.system(cmd)

    files = [f for f in listdir(sys.argv[1]) if isfile(join(sys.argv[1], f)) and f.endswith('.out')]
    for f in files:
        cmd = "diff -y samples/" + f + " output/" + f
        os.system(cmd)
