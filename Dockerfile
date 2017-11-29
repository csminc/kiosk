FROM petrosagg/resin-wpe:raspberrypi3-9416a43
FROM resin/%%RESIN_MACHINE_NAME%%-debian:jessie

WORKDIR /usr/src/app/
ENV INITSYSTEM on

# python-dbus for dbus communication
# python-flash for example server
RUN apt-get update && \
    apt-get install -yq \
      python-dbus \
      python-flask
      
COPY udev-rules/ /etc/udev/rules.d/

COPY wpe-init /wpe-init

CMD [ "/wpe-init" ]
