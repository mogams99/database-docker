#!/bin/bash
# Mengganti placeholder variabel dengan nilai dari environment menggunakan bash
sed "s|\${MARIADB_USER}|${MARIADB_USER}|g; s|\${MARIADB_PASSWORD}|${MARIADB_PASSWORD}|g" /docker-entrypoint-initdb.d/init.sql.template > /docker-entrypoint-initdb.d/init.sql

# Menjalankan MariaDB setelah penggantian
exec docker-entrypoint.sh mariadb
