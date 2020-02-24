#!/bin/bash
WORKDIR=/home/jcompany/projects/local_data/

IMAGE=rabbitmq:3.7.7-alpine
CONTAINER=$USER-rabbitmq
PORT=5672

docker rm -f $CONTAINER
docker run --name $CONTAINER -v $WORKDIR/$CONTAINER/data:/data -p $PORT:5672  -d $IMAGE
