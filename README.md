# cod4-server


## Run in Docker

Add game files (directories /main & /zone) to repository root dir.

build image

    docker build -t luisnaldo7/cod4-server:latest .

execute image

    docker run -d -p 28960:28960 --rm --network=host --name cod4-server luisnaldo7/cod4-server:latest

run container on boot

    docker run -d -p 28960:28960 --restart always --network=host --name cod4-server luisnaldo7/cod4-server:latest
