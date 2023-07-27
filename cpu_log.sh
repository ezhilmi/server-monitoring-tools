#!/bin/bash
#first num = interval between each lines
#sec num = num of lines

# tambah temperature and power consumption (W)
sar -u 1 360 | grep -v Average | grep -v Linux | tr -s ' ' ',' > result_cpu.csv ; sleep 1

echo "CPU Log is Completed !"