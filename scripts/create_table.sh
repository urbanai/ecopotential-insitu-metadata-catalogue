#!/bin/bash
table=$1

docker-compose exec pycsw python ./bin/pycsw-admin.py -c create_table -f default.cfg -b $table