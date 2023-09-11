#!/bin/bash

echo "********************"
echo "** Pushing image ***"
echo "********************"

IMAGE="cicd"

echo "** Logging in ***"
docker login -u omareldeeeb -p $PASS
echo "*** Tagging image ***"
docker tag $IMAGE:$BUILD_TAG omareldeeeb/$IMAGE:$BUILD_TAG
echo "*** Pushing image ***"
docker push omareldeeeb/$IMAGE:$BUILD_TAG
