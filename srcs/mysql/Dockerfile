# lastest 버젼으로 하면 당겨올때 문제가 생김.
FROM alpine:3.12.0

# install required packages
# apk --update --no-cache -> 알파인 리눅스를 가벼운 상태로 유지할수 있다
# nginx -> nginx 설치
# openssl -> openssl 설치
RUN apk --update --no-cache add mysql mysql-client

RUN	mkdir -p /run/mysqld

COPY ./my.cnf /etc/.
COPY ./mysql_init.sql /mysql_init.sql 
COPY ./mysql_setup.sh /mysql_setup.sh
COPY ./wordpress.sql /wordrpess.sql

RUN chmod +x /mysql_setup.sh


EXPOSE 3306

ENTRYPOINT ["sh","/mysql_setup.sh"]
#아래처럼 쓰면 왜 안되는지 모르겠다 ;; 뭔차이여 nginx 의 도커파일은 잘되드만
#CMD			./mysql_setup.sh
