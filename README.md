# Default development stack with docker

This package is supposed to provide you with a basic setup to develop your php application with docker.
Just install it with `composer require svenfinke/docker_php_mysql --dev` and start the container with `vendor/bin/docker_start.sh`

## Parameters

The docker setup is automatically loading the .env file from your project root. This way you can easily set any [Composer CLI parameters](https://docs.docker.com/compose/env-file/#compose-file-and-cli-variables) that would be set with environment variables. You can also configure the Database with the following parameters:

- MYSQL_ROOT_PASSWORD
- MYSQL_DATABASE
- MYSQL_USER
- MYSQL_PASSWORD