FROM debian:buster

RUN apt-get update -y && apt-get install mariadb-server -y

COPY conf/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf
COPY ./tools/init.sh /docker-entrypoint-initdb.d/init.sh
RUN chmod +x /docker-entrypoint-initdb.d/init.sh

CMD ["/docker-entrypoint-initdb.d/init.sh","mysqld_safe"]