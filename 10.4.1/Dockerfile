FROM node:10.24.1-alpine@sha256:dc98dac24efd4254f75976c40bce46944697a110d06ce7fa47e7268470cf2e28

LABEL maintainer "Leonardo Gatica <lgatica@protonmail.com>"

RUN apk add --no-cache --virtual .build-deps git openssh-client && \
  mkdir -p /root/.ssh && \
  chmod 0700 /root/.ssh && \
  mkdir -p /usr/src/app

WORKDIR /usr/src/app

CMD [ "node" ]
