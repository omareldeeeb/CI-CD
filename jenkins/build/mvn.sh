#!/bin/bash

echo "***************************"
echo "** Building jar ***********"
echo "***************************"

#WORKSPACE=/home/jenkins/jenkins-data/pipeline
WORKSPACE=/home/jenkins/jenkins-data/jenkins_home/workspace/cicd

docker run --rm  -v  $WORKSPACE/java-app:/app -v /root/.m2/:/root/.m2/ -v /var/run/docker.sock:/var/run/docker.sock -w /app maven:3-alpine "$@"

