FROM csmjulian/resin-wpe:latest

COPY udev-rules/ /etc/udev/rules.d/

COPY htdocs/ /usr/share/apache2/htdocs/

ENV WPE_URL="file:///usr/share/apache2/htdocs/index.php"

CMD [ "apachectl start" ]

COPY wpe-init /wpe-init

CMD [ "/wpe-init" ]
