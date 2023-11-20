#!/bin/bash
docker container rm rtest-container
docker volume rm rtest-site-library
docker image rm -f rtest-image