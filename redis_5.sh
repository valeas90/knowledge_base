#!/bin/bash
WORKDIR=/home/jcompany/projects/local_data/

IMAGE=redis:5.0.7
CONTAINER=$USER-redis-5
PORT=6379

docker rm -f $CONTAINER
docker run --name $CONTAINER -v $WORKDIR/$CONTAINER/data:/data -p $PORT:6379  -d $IMAGE --requirepass "usipay913" 
