FROM janeczku/alpine-haproxy:1.6
MAINTAINER Paolo Sechi

RUN apk --update add rsyslog inotify-tools
COPY haproxy.run /home/haproxy/haproxy.run
RUN chmod +x /home/haproxy/haproxy.run

RUN export TERM=xterm-color

COPY rsyslog.conf /etc/rsyslog.conf

WORKDIR /etc/haproxy
CMD /home/haproxy/haproxy.run