# Docker Image Builder
#
# VERSION               1.0.0

FROM alpine:3.13.5
MAINTAINER Isael Sousa <faelp22@gmail.com>

# # Install OS package set timezone and git store Install pip and packages
RUN echo "**** Install Dependencies ****" \
  && apk --no-cache add tzdata build-base postgresql-dev musl-dev gcc g++ make libffi-dev curl python3 python3-dev libpq \
  && cp /usr/share/zoneinfo/America/Fortaleza /etc/localtime \
  && echo "America/Fortaleza" >  /etc/timezone \
  && curl --silent --show-error --retry 2 https://bootstrap.pypa.io/get-pip.py | python3

# docker build -t faelp22/basebuilder:1.0.0 .
