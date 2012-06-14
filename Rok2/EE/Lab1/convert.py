#!/usr/bin/python
import os
import sys
import random

print sys.argv

with open(sys.argv[1]) as input :
    with open(sys.argv[2],"w") as output :
        buf = []
        counter = 0.01
        output.write("Ut;Ud;I\n")
        for i in input :
            i = i.strip().replace("\t",";")
            print buf
            if(len(sys.argv) == 4):
                buf.append(str(counter) + ";" +  i)
                if(len(buf) == 10):
                    output.write(random.choice(buf) + "\n")
                    buf = []
                    print buf
            else:
                output.write(str(counter) + ";" + i + "\n")
            counter += 0.01
    
        output.flush()
            









