#!/bin/bash
rm -rf /home/roko/data/wordpress_data/* 
rm -rf /home/roko/data/mariadb_data/*
docker rmi -f $(docker images -aq) && make down && docker volume rm -f $(docker volume ls -q)#!/bin/bash

docker-compose -f srcs/docker-compose.yml down
docker stop $(docker ps -qa) 2>/dev/null
docker rm $(docker ps -qa) 2>/dev/null
docker rmi -f $(docker images -qa) 2>/dev/null
docker volume rm $(docker volume ls -q) 2>/dev/null
docker network rm $(docker network ls -q) 2>/dev/null
docker system prune -a --volume 2>/dev/null
docker system prune -a --force 2>/dev/null
