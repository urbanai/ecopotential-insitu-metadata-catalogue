#!/bin/bash
#docker rm starlab-pycsw -f
#docker build . -t  starlab-pycsw
#docker run -p 8000:8000 --name starlab-pycsw starlab-pycsw
docker-compose down
docker-compose build
docker-compose up

