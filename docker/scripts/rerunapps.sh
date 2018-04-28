#!/bin/sh

docker stop couchpotato
docker rm couchpotato
../images/couchpotato/run.sh

docker stop jackett
docker rm jackett
../images/jackett/run.sh

docker stop plexmediaserver
docker rm plexmediaserver
../images/plexmediaserver/run.sh

docker stop plexpy
docker rm plexpy
../images/plexpy/run.sh

docker stop sabnzbd
docker rm sabnzbd
../images/sabnzbd/run.sh

docker stop sonarr
docker rm sonarr
../images/sonarr/run.sh

docker stop transmission
docker rm transmission
../images/transmission/run.sh

docker ps -a