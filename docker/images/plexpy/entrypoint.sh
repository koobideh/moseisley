#!/bin/sh

ip route add 192.168.1.0/24 via 172.17.0.1 dev eth0

if [ ! -f /volumes/plexpy/config/config.ini ]; then
    cp /packages/plexpy/config.ini /volumes/appdata/plexpy/config/config.ini
fi

python /packages/plexpy/PlexPy.py --datadir /volumes/appdata/plexpy/data --config /volumes/appdata/plexpy/config/config.ini
