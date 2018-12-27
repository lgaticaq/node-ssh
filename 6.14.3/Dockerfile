FROM node:6.16.0-alpine@sha256:660d0a9ca05addfa77f3fa3851300c95ae5bdc2b9f5ddeb297de95d36a34a369

LABEL maintainer "Leonardo Gatica <lgatica@protonmail.com>"

RUN apk add --no-cache --virtual .build-deps git openssh-client && \
  mkdir -p /root/.ssh && \
  chmod 0700 /root/.ssh && \
  mkdir -p /usr/src/app

WORKDIR /usr/src/app

CMD [ "node" ]
