#!/bin/bash
source=$1

docker-compose exec -T pycsw python bin/pycsw-admin.py -c harvest_source -f default.cfg -l $source