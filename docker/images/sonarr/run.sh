docker run -d --cap-add=NET_ADMIN --device=/dev/net/tun \
       -e TZ="America/Los_Angeles" \
       -v appdata-vpn:/volumes/appdata/vpn \
       -v appdata-sonarr:/config \
       -v downloads:/volumes/downloads \
       -v libraries-series:/tv \
       -v downloads:/downloads \
       -p 127.0.0.1:8989:8989 \
       --name sonarr \
       --dns $(ip route|awk '/default/ { print $3 }') \
       sonarr
