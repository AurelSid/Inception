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


all : up

up : 
	@docker-compose -f ./srcs/docker-compose.yml up 

down : 
	@docker-compose -f ./srcs/docker-compose.yml down

stop : 
	@docker-compose -f ./srcs/docker-compose.yml stop

start : 
	@docker-compose -f ./srcs/docker-compose.yml start

status : 
	docker ps
	