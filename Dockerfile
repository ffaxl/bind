FROM alpine:latest
MAINTAINER Evgeniy Slizevich <evgeniy@slizevich.net>

EXPOSE 53/udp 53/tcp
VOLUME [/etc/bind]
WORKDIR /

ADD bind bind
RUN apk add --no-cache bind

CMD ["/bind"]
