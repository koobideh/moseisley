FROM linuxserver/sonarr:latest

RUN curl -s https://swupdate.openvpn.net/repos/repo-public.gpg | apt-key add && \
    echo "deb http://build.openvpn.net/debian/openvpn/stable xenial main" > /etc/apt/sources.list.d/openvpn-aptrepo.list

RUN apt-get update && \
    apt-get install -y \
    openvpn && \
    apt-get clean && \
    rm -rf \
        /tmp/* \
        /var/lib/apt/lists/* \
        /var/tmp/*

VOLUME /volumes/appdata/vpn
VOLUME /volumes/downloads

ADD entrypoint.sh .
CMD ["./entrypoint.sh"]
