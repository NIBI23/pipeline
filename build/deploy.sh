#!/bin/bash

# Check if the event is a push to the dev branch
if [ "$GITHUB_REF" == "refs/heads/dev" ]; then
    echo "Building and pushing Docker image to dev repository in Docker Hub..."
    docker build -t app:dv1 .
    docker tag app:v1 nibin23/dev:latest
    docker login -u $dockerhubusername -p $dockerhubpassword
    docker push nibin23/dev:latest

# Check if the event is a merge from dev to master
elif [ "$GITHUB_HEAD_REF" == "master" ]; then
    echo "Building and pushing Docker image to prod repository in Docker Hub..."
    docker build -t app:pv1 .
    docker tag app:pv1 nibin23/prod:latest
    docker login -u $dockerhubusername -p $dockerhubpassword
    docker push your-dockerhub-username/prod-repo:latest
fi
