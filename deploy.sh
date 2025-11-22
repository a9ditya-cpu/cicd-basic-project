#!/bin/bash
set -e

# Stop & remove old container if exists
docker stop flask-app || true
docker rm flask-app || true

# Pull latest image from Docker Hub (replace placeholder)
docker pull YOUR_DOCKERHUB_USERNAME/cicd-basic:latest

# Run container
docker run -d -p 5000:5000 --name flask-app YOUR_DOCKERHUB_USERNAME/cicd-basic:latest
