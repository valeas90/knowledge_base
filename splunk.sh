#!/bin/bash
WORKDIR=/home/jcompany/projects/local_data/

IMAGE=splunk/splunk:latest
CONTAINER=$USER-splunk
PORT=8000

docker rm -f $CONTAINER
docker run --name $CONTAINER -v $WORKDIR/$CONTAINER/defaultdb:/var/lib/splunk/defaultdb -p $PORT:8000 -p 8089:8089 -e SPLUNK_START_ARGS=--accept-license -e "SPLUNK_PASSWORD=Admin123" -d $IMAGE
