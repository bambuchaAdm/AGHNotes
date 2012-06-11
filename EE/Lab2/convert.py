#!/usr/bin/python
import os
import sys
import random

print sys.argv

with open(sys.argv[1]) as input :
    with open(sys.argv[2],"w") as output :
        buf = []
        output.write("U;I\n")
        for i in input :
            i = i.strip().replace("\t",";")
            print buf
            if(len(sys.argv) == 4):
                buf.append(i)
                if(len(buf) == 10):
                    output.write(random.choice(buf) + "\n")
                    buf = []
                    print buf
            else:
                output.write(i + "\n")
    
        output.flush()
            









