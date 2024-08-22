#!/bin/bash

# Build the Docker image
docker-compose build

# Tag the image
docker tag devops-build_web:latest kalaimanidurgesh/dev:latest

# Push to Docker Hub public repo
docker push kalaimanidurgesh/dev:latest

