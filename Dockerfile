FROM alpine:3.22.2

RUN apk add --no-cache autossh supervisor
RUN mkdir /etc/armorcode

ENTRYPOINT ["supervisord", "--nodaemon", "--configuration", "/etc/armorcode/supervisord.conf"]