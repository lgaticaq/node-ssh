FROM node:10.4.1-alpine@sha256:2cda73dd26369c2ec69130ddda6f83ff4980fd6fc8e73b5e670a7670d4c86ba0

LABEL maintainer "Leonardo Gatica <lgatica@protonmail.com>"

RUN apk add --no-cache --virtual .build-deps git openssh-client && \
  mkdir -p /root/.ssh && \
  chmod 0700 /root/.ssh && \
  mkdir -p /usr/src/app

WORKDIR /usr/src/app

CMD [ "node" ]
