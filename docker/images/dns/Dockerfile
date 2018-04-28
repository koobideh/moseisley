FROM alpine:latest

RUN apk --no-cache add \
    openssl \
    unbound

ADD unbound.conf /etc/unbound/unbound.conf

RUN unbound-control-setup

EXPOSE 53

CMD ["unbound"]
