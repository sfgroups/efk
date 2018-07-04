 docker run -it --rm --name fluentd-agg  \
	--ulimit nofile=65536:65536 -p 24224:24224 -p 24224:24224/udp \
	-p 9880:9880 -v /tmp/conf1:/fluentd/etc -e FLUENTD_CONF=fluentd-agg.conf \
	-v /tmp/log:/fluentd/log custom-fluentd:latest  $*
