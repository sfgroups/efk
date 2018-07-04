 docker run -it --rm --name kibana \
        -p 5601:5601 \
	-e SERVER_NAME='kibana' -e ELASTICSEARCH_URL=http://192.168.16.15:9200 \
	 docker.elastic.co/kibana/kibana-oss:6.3.0
