#!/bin/bash

# This file is used to quickly build the ip address and port number given the current running docker image of Jupyter
# ensure that docker is installed and that only one isntance of jupyter is currently running in a container before proceeding

ip_addr=$(docker-machine ls | grep default | awk '{print $5}' | sed 's/tcp:\/\///' | sed 's/:.*//')
docker_port=$(docker ps | grep jupyter | sed 's/.*://' | sed 's/\-.*//')
echo IP Address of local Jupyter instance is $ip_addr:$docker_port

