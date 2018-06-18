# node-ssh

[![dockeri.co](http://dockeri.co/image/lgatica/node-ssh)](https://hub.docker.com/r/lgatica/node-ssh/)

[![Build Status](https://travis-ci.org/lgaticaq/node-ssh.svg?branch=master)](https://travis-ci.org/lgaticaq/node-ssh)

> Docker image for node apps with alpine linux and private dependencies dependencies (git+ssh)

Supported tags and respective Dockerfile links

* 10.4.1, 10.4, 10, latest ([10.4/Dockerfile](https://github.com/lgaticaq/node-ssh/blob/master/10.4.1/Dockerfile))
* 10.4.1-onbuild, 10.4-onbuild, 10-onbuild, onbuild ([10.4/onbuild/Dockerfile](https://github.com/lgaticaq/node-ssh/blob/master/10.4.1/onbuild/Dockerfile))
* 10.4.1-ci, 10.4-ci, 10-ci, ci ([10.4/ci/Dockerfile](https://github.com/lgaticaq/node-ssh/blob/master/10.4.1/ci/Dockerfile))
* 9.11.2, 9.11, 9 ([9.11/Dockerfile](https://github.com/lgaticaq/node-ssh/blob/master/9.11.2/Dockerfile))
* 9.11.2-onbuild, 9.11-onbuild, 9-onbuild ([9.11/onbuild/Dockerfile](https://github.com/lgaticaq/node-ssh/blob/master/9.11.2/onbuild/Dockerfile))
* 9.11.2-ci, 9.11-ci, 9-ci ([9.11/ci/Dockerfile](https://github.com/lgaticaq/node-ssh/blob/master/9.11.2/ci/Dockerfile))
* 8.11.3, 8.11, 8 ([8.11/Dockerfile](https://github.com/lgaticaq/node-ssh/blob/master/8.11.3/Dockerfile))
* 8.11.3-onbuild, 8.11-onbuild, 8-onbuild ([8.11/onbuild/Dockerfile](https://github.com/lgaticaq/node-ssh/blob/master/8.11.3/onbuild/Dockerfile))
* 8.11.3-ci, 8.11-ci, 8-ci ([8.11/ci/Dockerfile](https://github.com/lgaticaq/node-ssh/blob/master/8.11.3/ci/Dockerfile))
* 6.14.3, 6.14, 6 ([6.14/Dockerfile](https://github.com/lgaticaq/node-ssh/blob/master/6.14.3/Dockerfile))
* 6.14.3-onbuild, 6.14-onbuild, 6-onbuild ([6.14/onbuild/Dockerfile](https://github.com/lgaticaq/node-ssh/blob/master/6.14.3/onbuild/Dockerfile))
* 6.14.3-ci, 6.14-ci, 6-ci ([6.14/ci/Dockerfile](https://github.com/lgaticaq/node-ssh/blob/master/6.14.3/ci/Dockerfile))

## Variants

* onbuild: Onbuild image to general node app
* ci: Image for CI pipelines. Like gitlab-ci

## Create a Dockerfile in your Node.js app project

```dockerfile
FROM lgatica/node-ssh:10-onbuild

EXPOSE 3000
```

You can then build and run the Docker image:

```bash
export KNOWN_HOST=gitlab.com
export SSH_PRIVATE_KEY=$(cat ssh/id_rsa)
docker build -t my-nodejs-app \
  --build-arg KNOWN_HOST=$KNOWN_HOST \
  --build-arg SSH_PRIVATE_KEY=$SSH_PRIVATE_KEY.
docker run -it --rm --name my-running-app my-nodejs-app
```

Change `KNOWN_HOST` and `SSH_PRIVATE_KEY` with valid values for install private dependencies.

### Notes

The image assumes that your application has a file named package.json listing its dependencies and defining its start script.
