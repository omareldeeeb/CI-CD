#!/bin/bash

echo cicd > /tmp/.auth
echo $BUILD_TAG >> /tmp/.auth
echo $PASS >> /tmp/.auth

scp -i /opt/prod /tmp/.auth prod@192.168.1.11:/tmp/.auth
scp -i /opt/prod ./jenkins/deploy/publish prod@192.168.1.11:/tmp/publish
ssh -i /opt/prod prod@192.168.1.11 "/tmp/publish"
