#!/usr/bin/env bash

if [ -f .env ]; then
    set -o allexport
    source .env;
    set +o allexport
fi
cd vendor/svenfinke/docker_php_mysql/src;
docker-compose up -d;
cd ../../../..;