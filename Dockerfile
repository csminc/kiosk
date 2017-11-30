FROM caleb/resin-wpe:raspberrypi3-3e3af13

COPY udev-rules/ /etc/udev/rules.d/

COPY wpe-init /wpe-init

CMD [ "/wpe-init" ]
