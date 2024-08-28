#!/bin/bash
# Tag the image
docker tag devops-build_web:latest kalaimanidurgesh/prod:latest

# Push to Docker Hub public repo
docker push kalaimanidurgesh/prod:latest

# Pull the latest image from Docker Hub
docker pull kalaimanidurgesh/prod:latest

# Stop and remove the existing container if it exists
docker stop myapp || true
docker rm myapp || true

# Run the new container
docker run -d -p 81:80 --name myapp kalaimanidurgesh/prod:latest

