#!/bin/sh

ip route add 192.168.1.0/24 via 172.17.0.1 dev eth0

python /packages/CouchPotatoServer/CouchPotato.py \
       --config_file=/volumes/appdata/couchpotato/config/config.ini \
       --data_dir=/volumes/appdata/couchpotato/data \
       &

openvpn /volumes/appdata/vpn/client.conf
