FROM  alpine:latest
LABEL maintainer=jon@jaggersoft.com

RUN apk update
RUN apk add bash

COPY version.txt /tmp
RUN bash --version | grep -f /tmp/version.txt
