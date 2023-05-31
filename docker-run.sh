#!/bin/sh

DOCKER_IMAGE=mosaicml/pytorch:latest

DOCKER_CONT_NAME=unw-mosaicml

docker run -it -d --name=${DOCKER_CONT_NAME}\
--privileged --cap-add=ALL --shm-size=1g --ulimit memlock=-1 \
--ulimit stack=67108864 --net=host --ipc=host --gpus=all -v /dev:/dev\
-v /lib/modules:/lib/modules -v /home/unw:/home/unw ${DOCKER_IMAGE} bash
