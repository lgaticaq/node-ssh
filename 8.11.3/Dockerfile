FROM node:26.13.0-alpine@sha256:d431b1d60cd8de74dc66d271c236f66227998c308e011e60faa9c60dc4d37382

LABEL maintainer "Leonardo Gatica <lgatica@protonmail.com>"

RUN apk add --no-cache --virtual .build-deps git openssh-client && \
  mkdir -p /root/.ssh && \
  chmod 0700 /root/.ssh && \
  mkdir -p /usr/src/app

WORKDIR /usr/src/app

CMD [ "node" ]
