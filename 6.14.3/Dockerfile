FROM node:21.3.0-alpine@sha256:3e637eb2cd9aafd037614fd313b4026060c4c8ea90369c2c27dbaa7a891765a9

LABEL maintainer "Leonardo Gatica <lgatica@protonmail.com>"

RUN apk add --no-cache --virtual .build-deps git openssh-client && \
  mkdir -p /root/.ssh && \
  chmod 0700 /root/.ssh && \
  mkdir -p /usr/src/app

WORKDIR /usr/src/app

CMD [ "node" ]
