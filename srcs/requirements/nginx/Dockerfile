FROM debian:buster

RUN apt update; \
    apt install -y nginx openssl

RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
    -keyout /etc/ssl/private/nginx-selfsigned.key \
    -out /etc/ssl/certs/nginx-selfsigned.crt \
    -subj "/C=BE/ST=BRUSSELS/L=BRUSSELLS/O=19/CN=asideris"

COPY ./conf/nginx.conf etc/nginx/sites-enabled/nginx.conf

EXPOSE 443

CMD ["nginx", "-g", "daemon off;"]