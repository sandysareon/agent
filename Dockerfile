FROM alpine:3.21.0

RUN apk add --no-cache autossh supervisor
RUN mkdir /etc/armorcode

ENTRYPOINT ["supervisord", "--nodaemon", "--configuration", "/etc/armorcode/supervisord.conf"]