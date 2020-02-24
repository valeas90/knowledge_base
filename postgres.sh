#!/bin/bash
WORKDIR=/home/jcompany/projects/local_data/

IMAGE=postgres:11.0
CONTAINER=$USER-postgres
PORT=5432

docker rm -f $CONTAINER
docker run --name $CONTAINER -v $WORKDIR/$CONTAINER/data/db:/var/lib/postgresql/data -p $PORT:5432 -e POSTGRES_PASSWORD=mysecretpassword -d $IMAGE
