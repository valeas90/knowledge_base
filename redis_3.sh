#!/bin/bash
WORKDIR=/home/jcompany/projects/local_data/

IMAGE=redis:3.2-alpine
CONTAINER=$USER-redis
PORT=6379

docker rm -f $CONTAINER
docker run --name $CONTAINER -v $WORKDIR/$CONTAINER/data:/data -p $PORT:6379  -d $IMAGE --requirepass "usipay913" 
