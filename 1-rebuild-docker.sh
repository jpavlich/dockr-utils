#!/bin/bash
docker container kill rtest-container >& /dev/null
docker build -t rtest-image ./docker -f ./docker/Dockerfile