FROM alpine:latest

EXPOSE 53/udp 53/tcp
VOLUME [/etc/bind]
WORKDIR /

RUN apk add --no-cache bind
ADD bind bind

ENTRYPOINT ["/bind"]
