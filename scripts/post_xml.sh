#!/bin/bash
xml=$1

docker-compose exec pycsw python ./bin/pycsw-admin.py -c post_xml - default.cfg -f