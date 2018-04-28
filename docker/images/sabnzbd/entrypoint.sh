#!/bin/sh

ip route add 192.168.1.0/24 via 172.17.0.1 dev eth0

python -OO /packages/sabnzbd/SABnzbd.py -d -f /volumes/appdata/sabnzbd/config/sabnzbd.ini

openvpn /volumes/appdata/vpn/client.conf
