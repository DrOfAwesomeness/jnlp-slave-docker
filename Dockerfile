FROM jenkins/jnlp-slave:alpine
RUN sudo apk --update add curl \
  && mkdir /tmp/extract \
  && curl -L https://download.docker.com/linux/static/stable/x86_64/docker-17.03.0-ce.tgz | sudo tar -xz -C /tmp/extract \
  && sudo mv /tmp/extract/docker/docker /bin \
  && sudo apk del curl \
  && sudo rm -rf /var/cache/apk/*
