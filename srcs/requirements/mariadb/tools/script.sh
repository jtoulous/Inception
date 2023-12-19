#!/bin/bash


if [ ! -f db1.sql ]; then
    
    chmod 644 /etc/mysql/mariadb.conf.d/50-server.cnf 
    
    service mariadb start
    sleep 7
    
    echo "CREATE DATABASE IF NOT EXISTS $db_name ;" > db1.sql
    echo "CREATE USER IF NOT EXISTS '$db_admin'@'%' IDENTIFIED BY '$db_admin_pwd' ;" >> db1.sql 
    echo "CREATE USER IF NOT EXISTS '$db_user'@'%' IDENTIFIED BY '$db_user_pwd' ;" >> db1.sql
    echo "GRANT ALL PRIVILEGES ON $db_name.* TO '$db_admin'@'%' ;" >> db1.sql
    echo "GRANT ALL PRIVILEGES ON $db_name.* TO '$db_user'@'%' ;" >> db1.sql
    echo "ALTER USER 'root'@'localhost' IDENTIFIED BY '$root_pwd' ;" >> db1.sql
    echo "FLUSH PRIVILEGES;" >> db1.sql
    
    mysql < db1.sql
fi

kill $(cat /var/run/mysqld/mysqld.pid)
mysqld