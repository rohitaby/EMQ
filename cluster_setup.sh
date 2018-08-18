#!/bin/bash
line=$(head -n 1 ip.txt)
value=`cat ip.txt`
#scp ip.txt exsp@$line:/home/exsp/emqttd/bin/ip.txt
ssh exsp@$line 'bash -s' < intialize_cluster.sh $value
