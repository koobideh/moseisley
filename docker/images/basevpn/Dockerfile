FROM alpine:latest

RUN apk --no-cache add openvpn

VOLUME /volumes/appdata/vpn

ADD entrypoint.sh .
CMD ["./entrypoint.sh"]
