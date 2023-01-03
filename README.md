# docker
playing with docker!

## how to use this thing
requires docker

### build
`docker build -t sanko/docker .`

### run
`docker run -d -p 3000:3000 --rm sanko/docker`

### stop
get container id using `docker ps` then `docker stop [container id]`