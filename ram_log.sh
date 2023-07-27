#!/bin/bash

sar -r 1 360 | grep -v Average | grep -v Linux | tr -s ' ' ',' > result_ram.csv

echo "Ram Log is Completed !"