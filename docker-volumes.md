# Docker Volumes
My understanding of Docker volumes during the creation of this project.

# Usage
Docker volumes is used to persists data in the container. So the data is not gone after the container reboot or restarted. The way it works is, it stores the data to the host machine, and everytime the container reboots, it writes or copies from the host machine to the specified directory in the container.

# Volume Types
1. Host Volumes  
in the host volume, You decide where You want to persist data in the host machine.  
## Command
```zsh
docker run -v host_dir:container_dir_that_wants_to_be_persisted
```

2. Anonymous Volumes  
anonymous volumes doesn't specify the location of where data wants to be persisted in the host machine.  
## Command
```zsh
docker run -v container_dir_that_wants_to_be_persisted
```

3. Named Volumes  
Named volumes is an improvement to the anonymous volumes, this makes it easier to reference the other container to use this volume, especially when used in docker-compose file.  
## Command
```zsh
docker run -v volume-name:container_dir_that_wants_to_be_persisted
```

> Named volumes should be the type that used for production environment,

# Docker Volumes in Docker Compose
To see how volumes implemented in the docker-compose file, [please see the docker-compose file](docker-compose.yaml).