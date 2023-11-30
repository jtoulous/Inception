#!/bin/sh

sed -i 's|PHP_PORT|'${PHP_PORT}'|g' /etc/php/7.3/fpm/pool.d/www.conf

if [ -f "/var/www/html/wordpress/wp-config.php" ]

then
  echo "Wordpress already configured."

else
  wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar

fi

/usr/sbin/php-fpm7.3 -F