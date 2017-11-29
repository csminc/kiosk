#FROM petrosagg/resin-wpe:raspberrypi3-9416a43
FROM resin/%%RESIN_MACHINE_NAME%%-node:5.3

COPY udev-rules/ /etc/udev/rules.d/

COPY wpe-init /wpe-init

RUN apt-get update && apt-get install -y \
	libav-tools
  
CMD [ "/wpe-init" ]
