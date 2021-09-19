import os
import sys
import pickle

elems = set()

for fp in sys.argv[1:]:
	with open(fp, 'rb') as f:
		elems.update(pickle.load(f))

print(len(elems))