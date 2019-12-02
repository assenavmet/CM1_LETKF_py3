import os, sys
import ast

def write(file, dict):
    f = open(file, 'w')
    f.write(str(dict))

def load(file):
    s = open(file, 'r').read()
#   dict = ast.literal_eval(s)
    return s
   
