FROM node:6.14.3-alpine@sha256:184fb208d9a35a133aaa9baaf915321b523e4ebe5b53a8d138f527c833b60d1f

LABEL maintainer "Leonardo Gatica <lgatica@protonmail.com>"

RUN apk add --no-cache --virtual .build-deps git openssh-client && \
  mkdir -p /root/.ssh && \
  chmod 0700 /root/.ssh && \
  mkdir -p /usr/src/app

WORKDIR /usr/src/app

CMD [ "node" ]
