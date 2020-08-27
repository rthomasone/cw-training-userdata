#!/bin/bash
#Output the Current Timestamp
printf "\n##Starting Load Test against Web Service...\n" >> /var/log/k6_load_test.log
date >> /var/log/k6_load_test.log
date +%s%3N >> /var/log/k6_load_test.log
echo  >> /var/log/k6_load_test.log
echo  >> /var/log/k6_load_test.log

#Execute Load Testing Script
printf "\n##Executing Load Testing Script....\n" >> /var/log/k6_load_test.log
k6 run script.js >> /var/log/k6_load_test.log
echo  >> /var/log/k6_load_test.log
echo  >> /var/log/k6_load_test.log

#Test Complete
printf "\n##Load Test Complete.\n"  >> /var/log/k6_load_test.log
date  >> /var/log/k6_load_test.log
date +%s%3N  >> /var/log/k6_load_test.log
echo  >> /var/log/k6_load_test.log
echo  >> /var/log/k6_load_test.log
