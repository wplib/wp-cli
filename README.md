![wp-cli 1.0.x](https://img.shields.io/badge/wpcli-1.0.x-green.svg)
![wp-cli 1.1.x](https://img.shields.io/badge/wpcli-1.1.x-green.svg)
![wp-cli 1.2.x](https://img.shields.io/badge/wpcli-1.2.x-green.svg)
![wp-cli 1.3.x](https://img.shields.io/badge/wpcli-1.3.x-green.svg)
![wp-cli 1.4.x](https://img.shields.io/badge/wpcli-1.4.x-green.svg)
![wp-cli 1.5.x](https://img.shields.io/badge/wpcli-1.5.x-green.svg)

![WPLib-Box](https://github.com/wplib/wplib.github.io/raw/master/WPLib-Box-100x.png)


# WP-CLI Docker Container for WPLib Box
This is the repository for the [WP-CLI](https://github.com/wp-cli/wp-cli) Docker container implemented for [WPLib-Box](https://github.com/wplib/wplib-box).
It currently provides versions 1.0.x 1.1.x 1.2.x 1.3.x 1.4.x 1.5.x

## Supported tags and respective Dockerfiles
`1.5.1`, `1.5`, `latest` _([1.5.1/Dockerfile](https://github.com/wplib/wp-cli-docker/blob/master/1.5.1/Dockerfile))_

`1.4.1`, `1.4` _([1.4.1/Dockerfile](https://github.com/wplib/wp-cli-docker/blob/master/1.4.1/Dockerfile))_

`1.3.0`, `1.3` _([1.3.0/Dockerfile](https://github.com/wplib/wp-cli-docker/blob/master/1.3.0/Dockerfile))_

`1.2.1`, `1.2` _([1.2.1/Dockerfile](https://github.com/wplib/wp-cli-docker/blob/master/1.2.1/Dockerfile))_

`1.1.0`, `1.1` _([1.1.0/Dockerfile](https://github.com/wplib/wp-cli-docker/blob/master/1.1.0/Dockerfile))_

`1.0.0`, `1.0` _([1.0.0/Dockerfile](https://github.com/wplib/wp-cli-docker/blob/master/1.0.0/Dockerfile))_


## Using this container.
If you want to use this container as part of WPLib, then use the Docker Hub method.
Or you can use the GitHub method to build and run the container.


## Using it from Docker Hub

### Links
(Docker Hub repo)[https://hub.docker.com/r/wplib/wp-cli/]

(Docker Cloud repo)[https://cloud.docker.com/swarm/wplib/repository/docker/wplib/wp-cli/]


### Setup from Docker Hub
A simple `docker pull wplib/wp-cli` will pull down the latest version.


### Runtime from Docker Hub
start - Spin up a Docker container with the correct runtime configs.

`docker run -d --name wplib_wp-cli_1.2.1 --restart unless-stopped --network wplibbox  --mount type=bind,source=/var/www,target=/var/www wplib/wp-cli:1.2.1`

stop - Stop a Docker container.

`docker stop wplib_wp-cli_1.2.1`

run - Run a Docker container in the foreground, (all STDOUT and STDERR will go to console). The Container be removed on termination.

`docker run --rm --name wplib_wp-cli_1.2.1 --network wplibbox  --mount type=bind,source=/var/www,target=/var/www wplib/wp-cli:1.2.1`

shell - Run a shell, (/bin/bash), within a Docker container.

`docker run --rm --name wplib_wp-cli_1.2.1 -i -t --network wplibbox  --mount type=bind,source=/var/www,target=/var/www wplib/wp-cli:1.2.1 /bin/bash`

rm - Remove the Docker container.

`docker container rm wplib_wp-cli_1.2.1`


## Using it from GitHub repo

### Setup from GitHub repo
Simply clone this repository to your local machine

`git clone https://github.com/wplib/wp-cli-docker.git`


### Additional notes:
Running wp-cli within a Docker container relies on the scripts in _([here](https://github.com/wplib/wp-cli-docker/blob/master/files/usr/local/bin))_ to be placed under the `/usr/local/bin` directory of the Vagrant host. This will be performed automatically for you when using this as part of [WPLib-Box](https://github.com/wplib/wplib-box).


### Building from GitHub repo
`make build` - Build Docker images. Build all versions from the base directory or specific versions from each directory.


`make list` - List already built Docker images. List all versions from the base directory or specific versions from each directory.


`make clean` - Remove already built Docker images. Remove all versions from the base directory or specific versions from each directory.


`make push` - Push already built Docker images to Docker Hub, (only for WPLib admins). Push all versions from the base directory or specific versions from each directory.


### Runtime from GitHub repo
When you `cd` into a version directory you can also perform a few more actions.

`make start` - Spin up a Docker container with the correct runtime configs.


`make stop` - Stop a Docker container.


`make run` - Run a Docker container in the foreground, (all STDOUT and STDERR will go to console). The Container be removed on termination.


`make shell` - Run a shell, (/bin/bash), within a Docker container.


`make rm` - Remove the Docker container.


`make test` - Will issue a `stop`, `rm`, `clean`, `build`, `create` and `start` on a Docker container.


