# Docker Compose
Things that I learned about Docker Compose during the creation of this project.

# Usage
Docker Compose is one of a Docker feature to make it easier to manage multiple containers, networks, etc.

# Naming  Convention
docker-compose.yaml

# Commands

## Docker compose operations
```zsh
# Starting the docker compose services
docker-compose up
# Starting the docker compose services using specific file
docker-compose -f file_name.yaml
# Stopping and removing services from docker compose
# This will remove the container, and the networks
docker-compose down
# Stopping and removing services from docker compose using specific file
docker-compose  -f file_name.yaml down
```

# Docker compose file
To see docker compose file in actions along with its usage example please [see the docker compose file](docker-compose.yaml).