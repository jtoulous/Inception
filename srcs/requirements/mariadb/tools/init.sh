#!/bin/bash

service mariadb start
sleep 10

mysql -e "CREATE DATABASE IF NOT EXISTS ${SQL_DATABASE};"
mysql -e "CREATE USER IF NOT EXISTS '${SQL_USER}'@'localhost' IDENTIFIED BY '${SQL_PWD}';"
mysql -e "GRANT ALL PRIVILEGES ON ${SQL_DATABASE}.* TO '${SQL_USER}'@'localhost' IDENTIFIED BY '${SQL_PWD}';"
mysql -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '${SQL_PWD}';"
mysql -u root -p${SQL_PWD} -e "FLUSH PRIVILEGES;"

kill -TERM $(cat /run/mysqld/mysqld.pid)

mysqld