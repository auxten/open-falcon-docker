#!/bin/sh

HOST_DIR=/mnt/sda1/data/open-falcon
DOCKER_DIR=/home/work/open-falcon

docker run -td --name of -v $HOST_DIR/conf:$DOCKER_DIR/conf -v $HOST_DIR/data:$DOCKER_DIR/data -v $HOST_DIR/logs:$DOCKER_DIR/logs -v $HOST_DIR/mysql:$DOCKER_DIR/mysql -p 8433:8433 -p 6030:6030 -p 5050:5050 -p 8080:8080 -p 8081:8081 -p 6060:6060 -p 5090:5090 registry.4paradigm.com/open-falcon:0.1.0
