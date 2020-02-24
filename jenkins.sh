#!/bin/bash
WORKDIR=/home/jcompany/projects/local_data/

IMAGE=jenkins/jenkins:lts
CONTAINER=$USER-jenkins

docker rm -f $CONTAINER
docker run --name $CONTAINER -v $WORKDIR/$CONTAINER:/var/jenkins_home -p 8070:8080 -p 50000:50000 -d $IMAGE


# jenkins@5b7d14e4bb13:/$ cat /var/jenkins_home/.ssh/id_rsa.pub 
# ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCqTa6/roqx6ersTajSrxTg12qLmpc7omfM2eYYuJQFY81CCN6O4feWRVKZbodKUn+xAAbiWH2AJDyHvW+RzdCXGSZd+TXsuMP+LGKTCQh1PsXlNibhJFPBfqZo6KtMvtnd8E5QTeHo3yD0M7yjG4QJBb5M/3AReJw/ve3ynaDu7A83ktM8Z4qGsnTZT+cu6q8Gwiuj14jQjuR2fmeTnnj8Sx3us4Fo/UGVxvcNJfWG9nqwaAhod6lAdxk1r3tM3L1jgOOdkFQcrzeeOQ1d3dr5GQWReLjvkVsFu/wQpxE3qhG2/7HrdSB94f9gN0Pwv1ni68W/ORYaTjPi3pAacbCf jenkins@5b7d14e4bb13