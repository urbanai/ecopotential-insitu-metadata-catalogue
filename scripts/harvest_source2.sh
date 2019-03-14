#!/bin/bash
source=$1
xml=$2

docker-compose exec pycsw python bin/pycsw-admin.py -c harvest_source2 -f default.cfg -u $source- x $xml
