FROM debian:buster

RUN apt update; \
    apt install -y mariadb-server

COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d/
COPY ./conf/setup.sh /


EXPOSE 3306


CMD /usr/bin/mysqld_safe & \
    sleep 10 && \
    bash /setup.sh && \
    wait $(jobs -p)
