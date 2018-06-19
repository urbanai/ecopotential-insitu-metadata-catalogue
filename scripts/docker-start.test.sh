#/bin/bash
docker rm starlab-pycsw -f
docker build . -t starlab-pycsw
docker run -d -p 8000:8000 --name starlab-pycsw starlab-pycsw
docker exec -ti starlab-pycsw py.test -m unit
docker exec -ti starlab-pycsw py.test -m functional -k 'not harvesting'
