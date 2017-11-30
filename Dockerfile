FROM caleb/resin-wpe:raspberrypi3-3e3af13-dirty

COPY udev-rules/ /etc/udev/rules.d/

COPY wpe-init /wpe-init

CMD [ "/wpe-init" ]
