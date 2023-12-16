## CD Project Overview

This project implements CD (continuous deployment) for a simple website using GitHub, Docker, and AWS EC2. 

The purpose of this project's use of CD is to automatically deploy the latest version of the website when changes are made.

The tools used in this project include:
1. GitHub
   - Version control
   - This is where the source code, Dockerfile, and GitHub Actions workflow exist
2. Docker
   - Stores images
   - Uses containers to build, run, and deploy the website
3. AWS EC2
   - Instance service / virtual machine
   - Can run Docker containers and webhooks

## How to Generate a tag in git / GitHub

> git tag -a v1.0.0 -m "Version 1.0.0
> git push origin v1.0.0

My preferred method is using GitHub Desktop. After I make changes in Visual Studio Code, they will show up in the top left **Changes** tab. **Commit to main** on the bottom left and go to the top left **History** tab. Right click on the latest commit and choose **Create Tag** then type in the tag (version #). Finally **Push origin** at the top.

## Behavior of GitHub Workflow

When a tag is pushed to the repository the following will occur:
1. Check out the repository and set up Docker.
2. Generate tags for the Docker image based on the git tag and the latest tag.
3. Build and push the Docker image to Docker Hub with those tags.
4. Send a webhook message to the EC2 instance that there is a new image.

## Link to Docker Hub Repository

>https://hub.docker.com/r/georgegrady/website/tags

## How to Install Docker to your Instance

>sudo apt-get update && sudo apt-get install docker-ce docker-ce-cli containerd.io
>sudo usermod -aG docker $USER

Log out and log back in to update your group membership then reconnect to the instance.

## Container Restart Script

The shell script pulls a new image from DockerHub and restarts the container with the new image. It does the following:

1. Stop and remove existing container.
   > docker stop
   
   > docker rm
   
2. Pull the latest image from DockerHub.
   > docker pull
   
3. Run new container with the new image.
   > docker run

The script should be placed in the home directory of the instance. Give executable permissions with:
> chmod +x container-restart.sh

## Webhooks

I did not get to the webhooks section because I started too late and procrastinated a bunch, then finally realized I used $102 / $100 on AWS :(

## Proof of Flow

My proof of flow is in the "Project 5 - Proof of Flow" Dropbox on Pilot.
