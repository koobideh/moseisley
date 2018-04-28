docker run -d \
       -p 127.0.0.1:8181:8181 \
       -v appdata-plexpy:/volumes/appdata/plexpy \
       --name plexpy \
       --dns $(ip route|awk '/default/ { print $3 }') \
       plexpy 
