docker run -d --cap-add=NET_ADMIN --device=/dev/net/tun \
       -v appdata-vpn:/volumes/appdata/vpn \
       -v appdata-couchpotato:/volumes/appdata/couchpotato \
       -v downloads:/volumes/downloads \
       -v libraries-movies:/volumes/libraries/movies \
       -p 127.0.0.1:5050:5050 \
       --name couchpotato \
       --dns $(ip route|awk '/default/ { print $3 }') \
       couchpotato
