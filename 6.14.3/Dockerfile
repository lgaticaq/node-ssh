FROM node:6.14.3-alpine@sha256:5a00752aeffa1efb61faca9c12e45d7a29ffa5ebcdb63ecd26e38eac974e68cd

LABEL maintainer "Leonardo Gatica <lgatica@protonmail.com>"

RUN apk add --no-cache --virtual .build-deps git openssh-client && \
  mkdir -p /root/.ssh && \
  chmod 0700 /root/.ssh && \
  mkdir -p /usr/src/app

WORKDIR /usr/src/app

CMD [ "node" ]
