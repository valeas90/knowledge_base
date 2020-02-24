#!/bin/bash
WORKDIR=/home/jcompany/projects/local_data/

IMAGE=sonarqube:latest
CONTAINER=$USER-sonarqube
PORT=9000

export SONARQUBE_HOME=$WORKDIR/$CONTAINER
docker rm -f $CONTAINER
docker run --name $CONTAINER -p $PORT:9402 -d $IMAGE

# docker run -d --name jcompany-sonarqube -v /home/jcompany/projects/local_data/logs:/opt/sonarqube/logs -v /home/jcompany/projects/local_data/conf:/opt/sonarqube/conf -v /home/jcompany/projects/local_data/extensions:/opt/sonarqube/extensions -v /home/jcompany/projects/local_data/data:/opt/sonarqube/data -p 6666:6666 sonarqube:latest