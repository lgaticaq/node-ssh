#!/usr/bin/env sh

set +e

ssh-keyscan $KNOWN_HOST > /root/.ssh/known_hosts
echo "$SSH_PRIVATE_KEY" > /root/.ssh/id_rsa && \
chmod 600 /root/.ssh/id_rsa && \
echo "    IdentityFile /root/.ssh/id_rsa" >> /etc/ssh/ssh_config

exec "$@"
