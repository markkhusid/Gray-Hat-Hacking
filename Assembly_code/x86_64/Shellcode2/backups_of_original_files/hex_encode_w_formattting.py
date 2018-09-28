#!/usr/bin/env python3

import sys
import binascii

binary = open(sys.argv[1], 'rb')

opcode_counter = 1
for byte in binary.read():
    #sys.stdout.write("\\x"+binascii.hexlify((hex(byte))))
    #print (hex(byte))
    if opcode_counter == 1:
        print ("\"", end = "")
        print ("\\x" + "".join("{:02x}".format(byte)), end="")
        opcode_counter += 1
    elif opcode_counter == 10:
        print ("\\x" + "".join("{:02x}".format(byte)), end="")
        print ("\"", end = "")
        print ("", end = "\n")
        opcode_counter = 1
    else:
        print ("\\x" + "".join("{:02x}".format(byte)), end="")
        opcode_counter += 1
print ("\"")
