FROM alpine:3.8

MAINTAINER gree-gorey "ignatyeff.g@yandex.ru"

LABEL name="docker image for ntpd server based on alpine:3.8" \
      maintainer="ignatyeff.g@yandex.ru"

RUN apk update && apk add openntpd

CMD ["ntpd"]
