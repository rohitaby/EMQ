#!/bin/bash
cd /home/exsp/emqttd/etc
ip=$(curl -s ipinfo.io/ip)
echo $ip
sed -i "s/node.name = emq@127.0.0.1/node.name = emq@$ip/" emq.conf
cd ../bin
sudo ./emqttd start
./emqttd_ctl status
