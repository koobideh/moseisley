#!/bin/sh

# local volumes

docker volume create --driver local-persist \
    --opt mountpoint=/docker/volumes/appdata/vpn \
    --name=appdata-vpn

docker volume create --driver local-persist \
    --opt mountpoint=/docker/volumes/appdata/couchpotato \
    --name=appdata-couchpotato

docker volume create --driver local-persist \
    --opt mountpoint=/docker/volumes/appdata/sabnzbd \
    --name=appdata-sabnzbd

docker volume create --driver local-persist \
    --opt mountpoint=/docker/volumes/downloads \
    --name=downloads

docker volume create --driver local-persist \
    --opt mountpoint=/docker/volumes/appdata/sonarr \
    --name=appdata-sonarr

docker volume create --driver local-persist \
    --opt mountpoint=/docker/volumes/appdata/transmission \
    --name=appdata-transmission

docker volume create --driver local-persist \
    --opt mountpoint=/docker/volumes/appdata/plexmediaserver \
    --name=appdata-plexmediaserver

docker volume create --driver local-persist \
    --opt mountpoint=/docker/volumes/scratch/plexmediaserver/tmp \
    --name=scratch-plexmediaserver-tmp

docker volume create --driver local-persist \
    --opt mountpoint=/docker/volumes/scratch/plexmediaserver/transcode \
    --name=scratch-plexmediaserver-transcode

docker volume create --driver local-persist \
    --opt mountpoint=/docker/volumes/appdata/jackett \
    --name=appdata-jackett

docker volume create --driver local-persist \
    --opt mountpoint=/docker/volumes/appdata/plexpy \
    --name=appdata-plexpy

# nfs volumes

docker volume create --driver local \
    --opt type=nfs \
    --opt o=addr=192.168.1.124 \
    --opt device=:/mnt/device/media/movies \
    --name=libraries-movies

docker volume create --driver local \
    --opt type=nfs \
    --opt o=addr=192.168.1.124 \
    --opt device=:/mnt/device/media/series \
    --name=libraries-series
