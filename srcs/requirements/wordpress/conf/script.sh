#!/bin/bash

sleep 10

chown -R www-data /var/www/wordpress
chmod -R 775 /var/www/wordpress

mkdir -p /run/php/
touch /run/php/php7.3-fpm.pid

if [ ! -f /usr/local/bin/wp ]; then
    curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
    chmod +x wp-cli.phar
    mv wp-cli.phar /usr/local/bin/wp
fi

cd /var/www/wordpress

if [ ! -d /var/www/wordpress/wp-admin ]; then
    wp core download --allow-root
fi

if [ ! -f wp-config.php ]; then
    wp config create --dbname=${DB_NAME} --dbuser=${DB_USER} \
        --dbpass=${DB_PASSWORD} --dbhost=${DB_HOST} --allow-root --skip-check
fi

if [ -f wp-config.php ]; then
    wp core install --allow-root \
        --url=${DOMAIN_NAME} \
        --title=${WORDPRESS_NAME} \
        --admin_user=${WORDPRESS_ROOT_LOGIN} \
        --admin_password=${MYSQL_ROOT_PASSWORD} \
        --admin_email=${WORDPRESS_ROOT_EMAIL}

    wp user create ${USER} ${WORDPRESS_USER_EMAIL} --user_pass=${MYSQL_PASSWORD} --role=author --allow-root

    wp config set WP_DEBUG ${WP_DEBUG} --allow-root

    wp config set FORCE_SSL_ADMIN 'false' --allow-root

    chmod 777 /var/www/wordpress/wp-content

    wp theme install twentyfifteen --allow-root
    wp theme activate twentyfifteen --allow-root
    wp theme update twentyfifteen --allow-root
fi

exec /usr/sbin/php-fpm7.3 -F
