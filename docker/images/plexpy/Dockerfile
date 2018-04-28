FROM alpine:latest

RUN apk --no-cache add \
    git \
    python

WORKDIR /packages
RUN git clone https://github.com/JonnyWong16/plexpy.git

VOLUME /volumes/appdata/plexpy
EXPOSE 8181

WORKDIR /
ADD entrypoint.sh .
CMD ["./entrypoint.sh"]
