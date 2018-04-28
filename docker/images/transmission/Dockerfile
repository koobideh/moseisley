FROM basevpn

RUN apk --no-cache add \
    transmission-daemon

VOLUME /volumes/downloads
VOLUME /volumes/appdata/transmission
EXPOSE 9091

ADD entrypoint.sh .
CMD ["./entrypoint.sh"]
