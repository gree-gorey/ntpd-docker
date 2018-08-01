FROM centos:7

MAINTAINER gree-gorey "ignatyeff.g@yandex.ru"

LABEL name="docker image for ntpd server based on centos:7" \
      maintainer="ignatyeff.g@yandex.ru"

RUN yum -y update && yum -y install ntp

ENTRYPOINT ["ntpd"]
