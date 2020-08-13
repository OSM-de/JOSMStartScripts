#!/bin/sh
wget -q -O "-" https://josm.openstreetmap.de/josm-apt.key | apt-key add - 
echo "deb https://josm.openstreetmap.de/apt alldist universe" > /etc/apt/sources.list.d/josm.list
apt update
apt install josm

