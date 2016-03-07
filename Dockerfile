FROM ubuntu

MAINTAINER JEREMY HOYLAND <derbexuk@gmail.com>

RUN apt-get update && apt-get install -y openssh-server

RUN mkdir -p /var/run/sshd

ONBUILD ADD sshd_config /etc/ssh/sshd_config
EXPOSE 2222

CMD /usr/sbin/sshd -D
USER nobody
WORKDIR /tmp
ENV foo "Helo"
