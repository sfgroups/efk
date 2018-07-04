 docker run -it --rm --name custom-docker-fluent-logger  \
	--ulimit nofile=65536:65536 -p 5140:5140 -p 5140:5140/udp \
	-p 9880:9880 -v /tmp/conf1:/fluentd/etc -e FLUENTD_CONF=fluentd.conf \
	-v /tmp/log:/fluentd/log custom-fluentd:latest  $*
