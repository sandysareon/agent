FROM alpine:3.19.4

RUN apk add --no-cache autossh supervisor
RUN mkdir /etc/armorcode

ENTRYPOINT ["supervisord", "--nodaemon", "--configuration", "/etc/armorcode/supervisord.conf"]