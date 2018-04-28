docker run -d --cap-add=NET_ADMIN --device=/dev/net/tun \
       -v appdata-vpn:/volumes/appdata/vpn \
       -v appdata-sabnzbd:/volumes/appdata/sabnzbd:nocopy \
       -v downloads:/volumes/downloads \
       -p 127.0.0.1:8080:8080 \
       --name sabnzbd \
       --dns $(ip route|awk '/default/ { print $3 }') \
       sabnzbd
