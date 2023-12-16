#!/bin/bash

# Define the image name
image_name="georgegrady/website"

# Pull the latest version of the image from DockerHub
docker pull $image_name:latest

# Stop and remove the existing container
docker stop hungry_hertz
docker rm hungry_hertz

# Run a new container from the latest image
docker run -d --name hungry_hertz $image_name:latest
