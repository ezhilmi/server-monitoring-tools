# server-monitoring-tools
Monitoring tools to gain CPU, GPU and RAM include its usage, temp

## Change the total seconds 
For sar
sar -u [interval] [total seconds] 

For nvidia-smi
timeout [total seconds] nvidia-smi

For powerjoular, nmanually interrupt the script

## Data clean
For cleanRowCSV.py 
- use to clean the data that exported from cpu_temp.sh
