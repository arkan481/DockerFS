# Docker File
Things that I learned about Docker File during the creation of this project.

# Usage
Docker File is used to dockerized our created application into an image.

# Naming  Convention
Dockerfile

# Commands
List of Docker commands related to the creation of image that I learnt during the creation of this project.

## Build a Docker image from a Dockerfile
```zsh
# Build a docker image tagged with an image name specified
docker build -t image-name docker-file-location
```

# Docker ignore
Docker ignore is similar to git ignore, it makes sure that every file that don't wanna be copied don't get copied into the container, or pushed to the docker repository. [See docker ignore file example](.dockerignore).

# Docker file
To see docker file in actions along with its usage example please [see the docker file](Dockerfile).