# WP-CLI Docker Container for WPLib Box
This is the repository for the [WP-CLI](https://github.com/wp-cli/wp-cli) Docker container implemented for [WPLib-Box](https://github.com/wplib/wplib-box).
It currently provides versions 1.0.0, 1.1.0, 1.2.0 and 1.2.1.


## Supported tags and respective Dockerfiles
`1.2.1`, `1.2.1`, `latest` _([1.2.1/Dockerfile](https://github.com/wplib/wp-cli-docker/blob/master/1.2.1/Dockerfile))_

`1.2.0`, `1.2.0` _([1.2.0/Dockerfile](https://github.com/wplib/wp-cli-docker/blob/master/1.2.0/Dockerfile))_

`1.1.0` , `1.1.0` _([1.1.0/Dockerfile](https://github.com/wplib/wp-cli-docker/blob/master/1.1.0/Dockerfile))_

`1.0.0` , `1.0.0` _([1.0.0/Dockerfile](https://github.com/wplib/wp-cli-docker/blob/master/1.0.0/Dockerfile))_


## Setup
Simply clone this repository to your local machine

`git clone https://github.com/wplib/wp-cli-docker.git`

and run either...


### Building all images
`make build`


### Listing all built images
`make list`


### Cleaning all images
`make clean`


## Additional notes:
Running wp-cli within a Docker container relies on the scripts in _([here](https://github.com/wplib/wp-cli-docker/blob/master/files/usr/local/bin))_ to be placed under the `/usr/local/bin` directory of the Vagrant host. This will be performed automatically for you when using this as part of [WPLib-Box](https://github.com/wplib/wplib-box).

