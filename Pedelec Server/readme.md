# Pedelec Server

This server is part of the Pedelec App project.

## Docker Compose

We use Docker Compose to manage our services. You can find the configuration in the docker-compose.yml file.

### Image Tags

Each service in the docker-compose.yml file has an image name that follows this format:

```
gitlab.lrz.de:5005/ase/ipraktikum/pedelec-app/<service-name>:${IMAGE_TAG:-latest}
```

The `IMAGE_TAG` is a shell variable. If `IMAGE_TAG` is not set, it defaults to `latest`. You can set the `IMAGE_TAG` environment variable before running docker-compose up to use a different tag. For example:

```bash 
export IMAGE_TAG=v1.0.0
docker compose up
```


### Running the Server

To start the server, run:

```bash
docker compose up
```

### Building the Server locally

To build the server locally, run:

```bash
docker compose build
```