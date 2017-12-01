FROM csmjulian/resin-wpe:latest

COPY udev-rules/ /etc/udev/rules.d/

COPY httpd.conf /etc/apache2/httpd.conf

COPY htdocs/ /usr/share/apache2/htdocs/

ENV WPE_URL="file:///usr/share/apache2/htdocs/index.html"

EXPOSE 80

#CMD [ "apachectl" , "start" ]
CMD ["/usr/sbin/apachectl", "-k", "start"]

COPY wpe-init /wpe-init

CMD ["/wpe-init"]
