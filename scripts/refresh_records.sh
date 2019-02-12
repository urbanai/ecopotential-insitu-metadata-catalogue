#!/bin/bash

docker-compose exec pycsw python bin/pycsw-admin.py -c refresh_harvested_records -f default.cfg
