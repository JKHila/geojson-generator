import os
import sys

op = sys.argv[1]
num = ""
interval = ""
if len(sys.argv) == 4:
    num = sys.argv[2]
    interval = sys.argv[3]

os.system('mkdir '+op)
for i in range(10):
    os.system('./potrace 18-x-y.bmp -'+op+' '+str(num)+' -o '+op+'/'+op+str(num))
    if len(sys.argv) == 4:
        num = float(num)
        num += float(interval)