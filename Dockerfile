#FROM petrosagg/resin-wpe:raspberrypi3-9416a43
FROM resin/%%RESIN_MACHINE_NAME%%-debian

ENV INITSYSTEM on

RUN apt-get update \
    && apt-get install -y dnsmasq \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

RUN mkdir -p /usr/src/app/

WORKDIR /usr/src/app

RUN curl https://api.github.com/repos/resin-io/resin-wifi-connect/releases/latest -s \
    | grep -hoP 'browser_download_url": "\K.*%%RESIN_ARCH%%\.tar\.gz' \
    | xargs -n1 curl -Ls \
    | tar -xvz -C /usr/src/app/

COPY udev-rules/ /etc/udev/rules.d/

COPY wpe-init /wpe-init

CMD [ "/wpe-init" ]
