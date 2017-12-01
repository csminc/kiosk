FROM csmjulian/resin-wpe:latest

EXPOSE 80
CMD apachectl -D FOREGROUND

COPY udev-rules/ /etc/udev/rules.d/

COPY htdocs/ /usr/share/apache2/htdocs/

ENV WPE_URL="file:///usr/share/apache2/htdocs/index.php"

COPY wpe-init /wpe-init

CMD [ "/wpe-init" ]
