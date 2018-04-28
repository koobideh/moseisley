docker run -d --cap-add=NET_ADMIN --device=/dev/net/tun \
       -v appdata-vpn:/volumes/appdata/vpn \
       -v appdata-transmission:/volumes/appdata/transmission \
       -v downloads:/volumes/downloads \
       -p 127.0.0.1:9091:9091 \
       --name transmission \
       --dns $(ip route|awk '/default/ { print $3 }') \
       transmission
