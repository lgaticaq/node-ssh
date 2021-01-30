FROM node:6.17.1-alpine@sha256:17258206fc9256633c7100006b1cfdf25b129b6a40b8e5d37c175026482c84e3

LABEL maintainer "Leonardo Gatica <lgatica@protonmail.com>"

RUN apk add --no-cache --virtual .build-deps git openssh-client && \
  mkdir -p /root/.ssh && \
  chmod 0700 /root/.ssh && \
  mkdir -p /usr/src/app

WORKDIR /usr/src/app

CMD [ "node" ]
