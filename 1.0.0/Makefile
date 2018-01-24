#
# Makefile for Docker
# 

PROJECT		?= wplib
NAME		?= wp-cli
VERSION		?= 1.0.0
MAJORVERSION	?= 1.0
PORTS		?= 
VOLUMES		?= --mount type=bind,source=/var/www,target=/var/www
ENV		?= 

LATEST		?= 0

IMAGE_NAME	?= $(PROJECT)/$(NAME)
CONTAINER_NAME	?= $(PROJECT)_$(NAME)_$(VERSION)


.PHONY: build push release clean shell run start stop rm

################################################################################
# Image related commands.

build: Dockerfile
	-docker build -t $(IMAGE_NAME):$(VERSION) --build-arg WPCLI_VERSION=$(VERSION) .
ifneq ($(MAJORVERSION),)
	-docker build -t $(IMAGE_NAME):$(MAJORVERSION) --build-arg WPCLI_VERSION=$(MAJORVERSION) .
endif
ifeq ($(LATEST),1)
	docker build -t $(IMAGE_NAME):latest --build-arg WPCLI_VERSION=latest .
endif

push:
	-docker push $(IMAGE_NAME):$(VERSION)
ifneq ($(MAJORVERSION),)
	-docker push $(IMAGE_NAME):$(MAJORVERSION)
endif
ifeq ($(LATEST),1)
	docker push $(IMAGE_NAME):latest
endif

release: build
	make push -e VERSION=$(VERSION)

clean:
	docker image rm $(IMAGE_NAME):$(VERSION)
ifneq ($(MAJORVERSION),)
	docker image rm $(IMAGE_NAME):$(MAJORVERSION)
endif
ifeq ($(LATEST),1)
	docker image rm $(IMAGE_NAME):latest
endif

list:
	docker image ls $(IMAGE_NAME):$(VERSION)
ifneq ($(MAJORVERSION),)
	docker image ls $(IMAGE_NAME):$(MAJORVERSION)
endif
ifeq ($(LATEST),1)
	docker image ls $(IMAGE_NAME):latest
endif


################################################################################
# Container related commands.

shell:
	docker run --rm --name $(CONTAINER_NAME) -i -t --network wplibbox $(PORTS) $(VOLUMES) $(ENV) $(IMAGE_NAME):$(VERSION) /bin/bash

run:
	docker run --rm --name $(CONTAINER_NAME) --network wplibbox $(PORTS) $(VOLUMES) $(ENV) $(IMAGE_NAME):$(VERSION)

start:
	docker run -d --name $(CONTAINER_NAME) --restart unless-stopped --network wplibbox $(PORTS) $(VOLUMES) $(ENV) $(IMAGE_NAME):$(VERSION)

stop:
	docker stop $(CONTAINER_NAME)

rm:
	docker container rm $(CONTAINER_NAME)


################################################################################
default: build

