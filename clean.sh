#!/bin/bash
docker rmi -f $(docker images -aq) && make down && docker volume rm -f $(docker volume ls -q)