#!/bin/bash

# Check if the event is a push to the dev branch
if [[ $GIT_BRANCH == "origin/dev" ]]; then
    echo "Building and pushing Docker image to dev repository in Docker Hub..."
        
    docker tag app:v1 nibin23/dev:latest
    docker login -u $dockerhubusername -p $dockerhubpassword
    docker push nibin23/dev:latest

# Check if the event is a merge from dev to master
elif [[ $GIT_BRANCH == "origin/main" ]]; then
    echo "Building and pushing Docker image to prod repository in Docker Hub..."
    
    docker tag app:v1 nibin23/prod:latest
    docker login -u $dockerhubusername -p $dockerhubpassword
    docker push nibin23/prod:latest
fi
