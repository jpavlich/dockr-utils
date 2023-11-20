#!/bin/bash
docker container kill rtest-container
docker build -t rtest-image ./docker -f ./docker/Dockerfile