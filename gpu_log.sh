#!/bin/bash
 
timeout 360 nvidia-smi --query-gpu=timestamp,index,name,pci.bus_id,driver_version,pstate,pcie.link.gen.max,pcie.link.gen.current,temperature.gpu,power.draw,utilization.gpu,utilization.memory,memory.total,memory.free,memory.used --format=csv -l 1 > result_gpu.csv ; sleep 1;  #this last number stands for interval in sec

echo "Nvidia GPU Log is Completed !"

# python aibench.py