 # **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: roko <roko@student.42.fr>                  +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2025/02/25 14:32:18 by roko              #+#    #+#              #
#    Updated: 2025/02/25 15:16:06 by roko             ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

all:
	
		@docker-compose -f srcs/docker-compose.yml up --build -d --no-cache

up:
	
		@docker-compose -f srcs/docker-compose.yml up -d

down:
		@docker-compose -f srcs/docker-compose.yml down

clean:
		@chmod 744 clean.sh
		@./clean.sh

info:
		@echo
		@echo "---networks---"
		@docker network ls
		@echo
		@echo "---mounted images---"
		@docker images
		@echo
		@echo "--containers---"
		@docker ps -a
		@echo
		@echo "---Volumes---"
		@docker volume ls

.PHONY:	all up down clean info