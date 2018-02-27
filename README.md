# Default development stack with docker

This package is supposed to provide you with a basic setup to develop your php application with docker.
Just install it with `composer require svenfinke/docker_php_mysql --dev` and start the container with `vendor/bin/docker_start.sh`

## Parameters

The docker setup is automatically loading the .env file from your project root. This way you can easily set any [Composer CLI parameters](https://docs.docker.com/compose/env-file/#compose-file-and-cli-variables) that would be set with environment variables. You can also configure the Database with the following parameters:

- MYSQL_ROOT_PASSWORD
- MYSQL_DATABASE
- MYSQL_USER
- MYSQL_PASSWORD

The ports which are exposed to the host can be configured with this variables:

- HOST_WEBSERVER_PORT
- HOST_MYSQL_PORT

Ports are being used to ensure that Mac is also supported.

# Managing the containers

There are a few scripts to start/stop the containers:

- docker_start.sh
- docker_stop.sh
- docker_remove.sh

**All the scripts are located at vendor/bin.** They should be quite self-explaining. Stop is really using stop, so if you want to remove the containers, call the remove script.

## Additional Scripts

Sometimes you want to SSH into the machine or run some scripts on it. There are 2 ways of doing this:
`docker_ssh.sh` will run shell on the php-fpm machine. The other, more flexible, way is to use `docker_exec.ssh php-fpm sh`. This command would be the equivalent to `docker_ssh.sh`, but you could also run e.g. `docker_exec.ssh php-fpm 'bin/console doctrine:migrations:migrate'` if you are running a symfony application.