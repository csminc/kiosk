FROM csmjulian/resin-wpe:latest

COPY udev-rules/ /etc/udev/rules.d/

COPY httpd.conf /etc/apache2/httpd.conf

COPY htdocs/ /usr/share/apache2/htdocs/

EXPOSE 80

CMD ["/etc/init.d/apache2", "start"]

ENV WPE_URL="file:///usr/share/apache2/htdocs/index.php"

COPY wpe-init /wpe-init

CMD ["/wpe-init"]
