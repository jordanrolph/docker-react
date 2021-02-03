# CRA inside docker

## DEV

### To build (dev)

`docker build -f Dockerfile.dev .`

### To start (dev)

`docker run -it -p 3000:3000 CONTAINER_ID`

e.g.

`docker run -it -p 3000:3000 dc0571d00804`

### To run Jest tests

`docker-compose up`

When running, in new terminal window:
`docker ps`

copy the running container's id
`docker exec -it [containerId] npm run test`

## PROD

## To build (prod)

`docker build .` # copy the container id when this finishes

## To run (prod)

`docker run -p 8080:80 {built-container-id}` # port 80 inside the container
