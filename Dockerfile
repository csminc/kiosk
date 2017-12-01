FROM csmjulian/resin-wpe:latest

EXPOSE 80
CMD apachectl -D FOREGROUND

COPY udev-rules/ /etc/udev/rules.d/

COPY wpe-init /wpe-init

CMD [ "/wpe-init" ]
