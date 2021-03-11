FROM alpine:3.12.0

# install required packages
RUN apk update \
	&& apk --update --no-cache add \
	nginx \
	openssl

COPY ./nginx_setup.sh /nginx_setup.sh
RUN chmod +x /nginx_setup.sh
COPY ./nginx.conf /etc/nginx/.

EXPOSE 80 443

CMD			./nginx_setup.sh