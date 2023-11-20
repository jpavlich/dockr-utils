#!/bin/bash
PROJECT_PATH=$(realpath "$1")
docker container run -it \
    --env R_LIBS=/root/.R/site-library \
    -v rtest-site-library:/root/.R/site-library \
    -v $PROJECT_PATH:/package \
    rtest-image \
    bash
