FROM petrosagg/resin-wpe:raspberrypi3-9416a43

COPY udev-rules/ /etc/udev/rules.d/

COPY wpe-init /wpe-init

ENV INITSYSTEM on

WORKDIR /usr/src/app

RUN apt-get update && apt-get install -yq \
   alsa-utils libasound2-dev && \
   apt-get clean && rm -rf /var/lib/apt/lists/*

CMD [ "/wpe-init" ]
