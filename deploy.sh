#!/bin/bash

# Pull the latest image from Docker Hub
docker pull kalaimanidurgesh/prod:latest

# Stop and remove the existing container if it exists
docker stop myapp || true
docker rm myapp || true

# Run the new container
docker run -d -p 80:80 --name myapp kalaimanidurgesh/prod:latest

