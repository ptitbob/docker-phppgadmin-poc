FROM alpine:latest

RUN apk add --no-cache lighttpd php-common php-iconv php-json php-gd php-curl php-xml php-pgsql php-imap php-cgi fcgi

RUN apk add --no-cache php-pdo php-pdo_pgsql php-soap php-xmlrpc php-posix php-mcrypt php-gettext php-ldap php-ctype php-dom

# ADD html/index.html /var/www/localhost/htdocs
ADD phpPgAdmin-5.1/ /var/www/localhost/htdocs

RUN lighttpd-enable-mod fastcgi fastcgi-php

EXPOSE 80

CMD ["lighttpd", "-D", "-f", "/etc/lighttpd/lighttpd.conf"]
