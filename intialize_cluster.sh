#!/bin/bash
cd /home/exsp/emqttd/bin
while [ "$1" != "" ]; do
  echo "Received: ${1}"
  ./emqttd_ctl cluster join emq@$1 
  shift;
done;
