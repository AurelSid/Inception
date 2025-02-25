FROM debian:buster

FROM debian:buster

RUN apt update
RUN apt upgrade -y
RUN apt install -y nginx && apt install openssl -y 
RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/nginx-selfsigned.key -out /etc/ssl/certs/nginx-selfsigned.crt -subj "/C=MO/L=KH/O=1337/OU=asideris/CN=asideris.42.fr"
COPY conf/nginx.conf /etc/nginx/nginx.conf

CMD ["nginx", "-g", "daemon off;"]
