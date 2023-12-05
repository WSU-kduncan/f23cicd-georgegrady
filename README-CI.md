## CI Project Overview

This project aims to create a CI (continuous integration) pipeline for a website.  
To do this, the website will be containerized with Docker and the project pipeline will be automated with GitHub Actions. The website is a simple HTML page about Moby Dock.
 
The purpose of this project is to learn how to use Docker and GitHub Actions for CI.

The tools used in this project include:
1. Docker
   - Containerize the website
   - Allows for easy deployment
   - Portability across platforms and environments
   - Build, run and share applications using containers
2. GitHub
   - Hosting, version control, and collaboration
3. GitHub Actions
   - Automate the project pipeline
   - Workflows that automate testing, building, and deployment
   - Fast, reliable delivery of code updates
4. DockerHub
   - Store and distribute Docker images

## How to Run Project Locally

To run the project locally, you will need to install Docker and nginx on your machine.  
If you are using Windows, you will need the Windows Subsystem for Linux (WSL2) and a Linux Distribution (Ubuntu).  
Follow Microsoft's documentation on using Docker and WSL2  
> https://learn.microsoft.com/en-us/windows/wsl/tutorials/wsl-containers

Install nginx  
> sudo apt install nginx

Clone the GitHub repo that contains the website files and the Dockerfile.  
Go to the website folder and build an image from the Dockerfile  
> cd f23cicd-georgegrady/website  
> docker build -t website

Run the container  
> docker run -d -p 80:80 website

To view the project running in the container, open browser and input IP:80  
> http://192.168.0.152:80  

## Create Public Repo in DockerHub

Click on the Create Repository button in the top right corner.  
Add a name and description to the repo.  
Select the Public visibility option.  
Click Create.  

## Authenticate with DockerHub via CLI

In the terminal run:  
> docker login

Enter your username and password for DockerHub.  
You can use an access token instead of your password.  
