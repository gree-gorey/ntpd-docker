FROM ubuntu:16.04

MAINTAINER gree-gorey "ignatyeff.g@yandex.ru"

LABEL name="docker image for ntpd server based on ubuntu:16.04" \
      maintainer="ignatyeff.g@yandex.ru"

RUN apt update && apt install -y ntp && apt clean && rm -rf /var/lib/apt/lists/*

CMD ["/usr/sbin/ntpd", "-n"]

EXPOSE 123
