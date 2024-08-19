#!/bin/bash

# Build Docker image for dev environment
docker build -t myapp:dev .

# Push to Docker Hub dev repository
docker tag myapp:dev kalaimanidurgesh/dev:latest
docker push kalaimanidurgesh/dev:latest

# Build Docker image for prod environment
docker tag myapp:dev kalaimanidurgesh/prod:latest

