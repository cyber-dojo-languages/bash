#FROM  cyberdojofoundation/alpine_glibc:3.7
FROM  alpine:latest
#cyberdojofoundation/alpine_glibc:3.7
LABEL maintainer=jon@jaggersoft.com

RUN apk update
RUN apk add bash

RUN bash --version
RUN bash --version | grep -q 4.4.19
