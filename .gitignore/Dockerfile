FROM jenkins/jnlp-slave:alpine
RUN apk --update add curl \
  && mkdir /tmp/extract \
  && curl -L https://download.docker.com/linux/static/stable/x86_64/docker-17.03.0-ce.tgz | tar -xz -C /tmp/extract \
  && mv /tmp/extract/docker/docker /bin \
  && apk del curl \
  && rm -rf /var/cache/apk/*
