#!/usr/bin/env sh

set +e

if [ -z ${KNOWN_HOST+x} ]; then
  ssh-keyscan $KNOWN_HOST > /root/.ssh/known_hosts
fi

if [ -z ${SSH_PRIVATE_KEY+x} ]; then
  echo "$SSH_PRIVATE_KEY" > /root/.ssh/id_rsa && \
  chmod 600 /root/.ssh/id_rsa && \
  echo "    IdentityFile /root/.ssh/id_rsa" >> /etc/ssh/ssh_config
fi

exec "$@"
