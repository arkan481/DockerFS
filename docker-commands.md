# Docker Commands

List of docker commands that I learned during the creation of this project.

# Commands

## Docker network operations

```zsh
# Create docker network named 'dockerfs-mongo-network'
docker network create dockerfs-mongo-network
# See list of docker network
docker network ls
# Remove docker network
docker network rm network-name
```

## Pull docker images from dockerhub

```zsh
# Pull docker image called 'mongo' for mongodb with the latest version
docker pull mongo

# or

# Pull docker image called 'mongo' for mongodb with the specifig tag or version
docker pull mongo:tag
```

## Deleting unused docker image

In order to delete a docker image, the image shouldn't be used by any running or stopped container.

```zsh
docker rmi image-name
```

## Run docker image with options

```zsh
# Run docker image called mongo with options

# run in detached mode
docker run -d \
# specify port for the container, read the image docs for the container_port
-p host_port:container_port \
# specify the container name
--name some-container-name \
# specify the container network
--network some-docker-network
# specify the env variable for the container, read the image docs for the list of available env variables that can be supplied
-e ENV_KEY=ENV_VALUE \
# the image name that wanted to be runv
mongo 
```

## Container Operations

```zsh
# stop the container
docker stop container-name-or-container-id
# start the stopped container
docker start container-name-or-container-id
# remove the stopped container
docker rm container-name-or-container-id 
```

## Container logging and debugging

```zsh
# get all of the container log
docker container logs container-name-or-container-id
# log only the last part of the container
docker container logs container-name-or-container-id | tail
# stream the log
docker container logs container-name-or-container-id -f
# get into the container terminal using bash
docker exec -it container-name-or-container-id bin/bash 
```
