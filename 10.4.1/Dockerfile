FROM node:10.7.0-alpine@sha256:9787e45382cb61f65068dbb1ef58337888f55f51f4dfc9455643a1db44da71a4

LABEL maintainer "Leonardo Gatica <lgatica@protonmail.com>"

RUN apk add --no-cache --virtual .build-deps git openssh-client && \
  mkdir -p /root/.ssh && \
  chmod 0700 /root/.ssh && \
  mkdir -p /usr/src/app

WORKDIR /usr/src/app

CMD [ "node" ]
