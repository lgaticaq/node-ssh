FROM node:9.11.2-alpine@sha256:c812a92b98800c243bd4bafbc5a528b4fdf4bcd57a1d8de4192deded085ba6da

LABEL maintainer "Leonardo Gatica <lgatica@protonmail.com>"

RUN apk add --no-cache --virtual .build-deps git openssh-client && \
  mkdir -p /root/.ssh && \
  chmod 0700 /root/.ssh && \
  mkdir -p /usr/src/app

WORKDIR /usr/src/app

CMD [ "node" ]
