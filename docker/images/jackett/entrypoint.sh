#!/bin/sh

ip route add 192.168.1.0/24 via 172.17.0.1 dev eth0

openvpn /volumes/appdata/vpn/client.conf
