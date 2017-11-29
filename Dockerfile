FROM petrosagg/resin-wpe:raspberrypi3-9416a43

COPY udev-rules/ /etc/udev/rules.d/

COPY wpe-init /wpe-init

RUN add-apt-repository http://caucho.com/download/debian

CMD [ "/wpe-init" ]
