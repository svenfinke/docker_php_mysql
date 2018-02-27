#!/usr/bin/env sh

if [ -f .env ]; then
    set -o allexport
    source .env;
    set +o allexport
fi

cd vendor/svenfinke/docker_php_mysql/src;
docker-compose exec $1 $2;
cd ../../../..;