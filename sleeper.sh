#!/bin/bash
for run in {1..10}
do
date +"%H:%M:%S"
ps -ef | wc -l
#sleep 5
done
cat /etc/os-release | head -1 >> os_name.txt
cat /etc/os-release | head -1 | awk -F= '/NAME/{print $2}' | awk '{print $1}' | tr -d '"' >> os_name.txt
touch {50..100}.txt
