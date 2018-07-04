 docker run -it --rm --name fluentd-fwd  \
	--ulimit nofile=65536:65536 -p 5140:5140 -p 5140:5140/udp \
 	-v /tmp/conf1:/fluentd/etc -e FLUENTD_CONF=fluentd-fwd.conf \
	-v /tmp/logf:/fluentd/log custom-fluentd:latest  $*
