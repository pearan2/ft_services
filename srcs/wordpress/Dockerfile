FROM alpine:3.12.0

RUN apk --update --no-cache add php7 php7-fpm php7-opcache php7-gd php7-mysqli \
	php7-zlib php7-curl php7-mbstring php7-json php7-session php7-ctype

RUN wget https://wordpress.org/latest.tar.gz
RUN tar -xvf latest.tar.gz
RUN rm -f latest.tar.gz
RUN mv wordpress /etc/
RUN apk --update --no-cache add mysql-client

COPY ./wp-config.php /etc/wordpress/
COPY ./wordpress_setup.sh /wordpress_setup.sh

RUN chmod +x /wordpress_setup.sh

EXPOSE 5050

CMD php -S 0.0.0.0:5050 -t /etc/wordpress/