#!/bin/bash

if [ ! -e "/var/www/html/wp-config.php" ]; then

    sleep 7
    mkdir -p /run/php
    mkdir -p /var/www/html
    chmod 777 /run/php -R
    chmod 777 /var/www/html -R

    cd /var/www/html
    rm -rf *

    wp core download --allow-root
    wp config create --dbname=$db_name --dbuser=$db_admin --dbpass=$db_admin_pwd --dbhost=mariadb --allow-root
    wp core install --url=$DOMAIN_NAME --title=$WP_TITLE --admin_user=$WP_ADMIN_USR --admin_password=$WP_ADMIN_PWD --admin_email=$WP_ADMIN_EMAIL --skip-email --allow-root
    wp user create $WP_USR $WP_EMAIL --role=author --user_pass=$WP_PWD --allow-root

fi

sed -i 's/listen = \/run\/php\/php7.4-fpm.sock/listen = 9000/g' /etc/php/7.4/fpm/pool.d/www.conf
/usr/sbin/php-fpm7.4 -F