FROM alpine:latest

RUN apk --no-cache add \
    nginx \
    nginx-mod-stream

ADD nginx.conf /etc/nginx/nginx.conf

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
