#!/bin/bash

Disk_usage=$(df -ht | grep -vE 'tmp|File')
Disk_Threshold=1


for Disk_usage in $Disk_usage
do 

usage=$(echo $Disk-usage | awk '{print $6F}' | cut -d % f1)
partition=$(echo $Disk_usage | awk '{print $1F}')

if [ $usage -gt $Disk_Threshold]
then 
echo -e "Message : High Disk usage on $partition : $usage\n"

done

echo "Hig Disk usage on $partition" | mail -s "High Disk usage alert" Grandhisila.Kumar@ril.com

sh mail.sh "Devops Team" "High Disk usage alert" "High Disk usage on $partition : $usage\n" "Grandhisila.Kumar@ril.com" "High Disk Usage Alert"