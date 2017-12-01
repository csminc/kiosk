FROM csmjulian/resin-wpe:latest

COPY udev-rules/ /etc/udev/rules.d/

COPY htdocs/ /usr/share/apache2/htdocs/

ENV WPE_URL="file:///usr/share/apache2/htdocs/index.php"

EXPOSE 80

CMD [ "apachectl" , "start" ]

COPY wpe-init /wpe-init

CMD [ "/wpe-init" ]
