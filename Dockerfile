FROM golang:1.7.1-alpine
MAINTAINER abler <mail@xiechaoyi.com>

ADD *.sh /
ADD ./cert /cert
ADD ./ngrok /ngrok
RUN apk add --no-cache git make openssl

VOLUME ["/wln"]
CMD /bin/sh /start.sh