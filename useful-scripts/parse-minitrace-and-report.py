import os
import sys
import socket
import hashlib

fp = sys.argv[1]
unix_sock_fp = sys.argv[2]

mtds = set()

f = open(fp)
lines = f.read().strip().splitlines()
for line in lines:
    line = line.strip()
    if line[0:2] != '0x':
        continue
    # 0x7fb8e7f840c0  com.facebook.FacebookRequestError$b     <init>  ()V     SourceFile      12      100101010101
    segs = line.split()
    mtd_sig = '/'.join(segs[1:4])
    mtds.add(hashlib.md5(mtd_sig.encode()).hexdigest())

sck = socket.socket(socket.AF_UNIX, socket.SOCK_STREAM)
sck.connect(unix_sock_fp)
sck.sendall(('{' + ','.join(mtds) + '}').encode())
sck.close()
