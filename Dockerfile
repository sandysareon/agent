FROM alpine:3.17

RUN apk add --no-cache autossh supervisor
RUN mkdir /etc/armorcode

ENTRYPOINT ["supervisord", "--nodaemon", "--configuration", "/etc/armorcode/supervisord.conf"]