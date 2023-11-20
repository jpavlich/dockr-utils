#!/bin/bash
PROJECT_PATH=$(realpath "$1")

docker container kill rtest-container
docker container rm rtest-container
docker container run --rm --name rtest-container \
    --env R_LIBS=/root/.R/site-library \
    -v rtest-site-library:/root/.R/site-library \
    -v $PROJECT_PATH:/package \
    rtest-image \
    'cd /package && /scripts/check.sh'
