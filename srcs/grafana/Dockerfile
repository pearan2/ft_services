FROM alpine:3.12.0

RUN apk update \
	&& apk --update --no-cache add \
	grafana \
	--repository https://dl-cdn.alpinelinux.org/alpine/latest-stable/community/
#repository 는 Alpine linux ERROR: unsatisfiable constraints: docker (missing): required by: world[docker] 오류해결을 위해.
#출처: https://neet.tistory.com/entry/Alpine-linux-ERROR-unsatisfiable-constraints-docker-missing-required-by-worlddocker-오류-해결방법 [자택경비대]

COPY influxdb.yaml /usr/share/grafana/conf/provisioning/datasources/
COPY dashboards.yaml /usr/share/grafana/conf/provisioning/dashboards/
COPY dashboards /var/lib/grafana/dashboards/

EXPOSE 3000

CMD /usr/sbin/grafana-server --homepath=/usr/share/grafana