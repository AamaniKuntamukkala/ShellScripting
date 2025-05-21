#!/bin/bash
echo "disk utilization space"
disksize=`df-h|grep "/dev"|awk '{print$5}'|cut -d '%' -f1`
echo "$disksize% is utilizated"
if[$disksize -gt 80];
then
  echo "disk is utilized"
else 
  echo "disk size is available"
fi
