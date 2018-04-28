#!/bin/sh

ip route add 192.168.1.0/24 via 172.17.0.1 dev eth0

openvpn --daemon --writepid openvpn.pid --config /volumes/appdata/vpn/client.conf

OPENVPN_PID=$(cat openvpn.pid)

while [ -z "$OPENVPN_IP" ]
do
    sleep 5s
    OPENVPN_IP=$(ifconfig  | grep -A 5 'tun0' | grep 'inet addr:'| grep -v '127.0.0.1' | cut -d: -f2 | awk '{ print $1}')
done

echo "PID"
echo $OPENVPN_PID

echo "IP"
echo $OPENVPN_IP

transmission-daemon \
    -g /volumes/appdata/transmission/config \
    -a "127.0.0.1,192.168.1.*,172.17.0.*,10.8.0.*" \
    -w /volumes/downloads/transmission \
    -i "$OPENVPN_IP" \
    -l 200 \
    --incomplete-dir /volumes/downloads/transmission/incomplete \
    --no-portmap \
    --peerport 51187 \
    --global-seedratio 0.1

while [ -e /proc/$OPENVPN_PID ]; do sleep 5s; done
