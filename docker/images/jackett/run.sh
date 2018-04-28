docker run -d --cap-add=NET_ADMIN --device=/dev/net/tun \
       -e TZ="America/Los_Angeles" \
       -v appdata-vpn:/volumes/appdata/vpn \
       -v appdata-jackett:/config \
       -v downloads:/downloads \
       -p 127.0.0.1:9117:9117 \
       --name jackett \
       --dns $(ip route|awk '/default/ { print $3 }') \
       jackett
