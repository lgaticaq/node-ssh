FROM lgatica/node-ssh:9.11.2@sha256:a5e8a6bf0d346f17a5fb3356b5c552c161f10284716816c1f2c23bb4d7b95ce7

ONBUILD ARG KNOWN_HOST
ONBUILD ARG SSH_PRIVATE_KEY
ONBUILD ARG NODE_ENV
ONBUILD ENV NODE_ENV $NODE_ENV

ONBUILD RUN ssh-keyscan $KNOWN_HOST > /root/.ssh/known_hosts && \
  echo "$SSH_PRIVATE_KEY" > /root/.ssh/id_rsa && \
  chmod 600 /root/.ssh/id_rsa && \
  echo "    IdentityFile /root/.ssh/id_rsa" >> /etc/ssh/ssh_config

ONBUILD COPY package.json package-lock.* yarn.* /usr/src/app/
ONBUILD RUN if [ -e yarn.lock ]; \
  then yarn && yarn cache clean; \
  else npm i && npm cache clean --force; fi && \
  apk del .build-deps && \
  rm -rf ~/.node-gyp /tmp/*
ONBUILD COPY . /usr/src/app

CMD [ "node", "index.js" ]
