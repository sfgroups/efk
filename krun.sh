#!/bin/bash

docker run --rm -it -v /tmp/config:/usr/share/kibana/config -p 5601:5601 --name kibana docker.elastic.co/kibana/kibana:6.3.2 
