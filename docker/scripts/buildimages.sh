#!/bin/sh

(cd ../images/basevpn/         && ./build.sh)
(cd ../images/couchpotato/     && ./build.sh)
(cd ../images/dns/             && ./build.sh)
(cd ../images/jackett/         && ./build.sh)
(cd ../images/nginx/           && ./build.sh)
(cd ../images/plexmediaserver/ && ./build.sh)
(cd ../images/plexpy/          && ./build.sh)
(cd ../images/sabnzbd/         && ./build.sh)
(cd ../images/sonarr/          && ./build.sh)
(cd ../images/transmission/    && ./build.sh)

docker images
