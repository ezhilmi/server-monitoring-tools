#!/bin/bash

sar -m TEMP 1 360 | grep -v Average | grep -v Linux | grep -v Summary | tr -s ' ' ',' > result_temp.csv

echo "CPU Temp Log is Completed !"