FROM node:6.17.1-alpine@sha256:ac775e5c37b78443690a840b22973dd5a60ff2cc17ecd1d3921a45e831071d61

LABEL maintainer "Leonardo Gatica <lgatica@protonmail.com>"

RUN apk add --no-cache --virtual .build-deps git openssh-client && \
  mkdir -p /root/.ssh && \
  chmod 0700 /root/.ssh && \
  mkdir -p /usr/src/app

WORKDIR /usr/src/app

CMD [ "node" ]
