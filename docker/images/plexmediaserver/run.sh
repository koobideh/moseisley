docker run -d --network=host \
       -e TZ="America/Los_Angeles" \
       -v appdata-plexmediaserver:/config:nocopy \
       -v scratch-plexmediaserver-tmp:/tmp \
       -v scratch-plexmediaserver-transcode:/transcode \
       -v libraries:/volumes/libraries/series \
       -v libraries-movies:/volumes/libraries/movies \
       --name plexmediaserver \
       plexmediaserver 
