FROM basevpn

RUN apk --no-cache add \
    python2 \
    python2-dev \
    libffi-dev \
    py2-lxml \
    py2-pip \
    build-base \
    openssl-dev \
    git

RUN pip install --upgrade pyopenssl

WORKDIR /packages
RUN git clone https://github.com/CouchPotato/CouchPotatoServer.git

VOLUME /volumes/downloads
VOLUME /volumes/libraries/movies
VOLUME /volumes/appdata/couchpotato
EXPOSE 5050

WORKDIR /
ADD entrypoint.sh .
CMD ["./entrypoint.sh"]
