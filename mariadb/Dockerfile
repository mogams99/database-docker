# Gunakan image resmi MariaDB
FROM mariadb:10.11

# Set environment variables dari build args
ARG MARIADB_ROOT_PASSWORD
ARG MARIADB_USER
ARG MARIADB_PASSWORD
ARG MARIADB_DATABASE

# Set default environment variables
ENV MARIADB_ROOT_PASSWORD=${MARIADB_ROOT_PASSWORD}
ENV MARIADB_USER=${MARIADB_USER}
ENV MARIADB_PASSWORD=${MARIADB_PASSWORD}
ENV MARIADB_DATABASE=${MARIADB_DATABASE}

# Copy file init.sql.template ke dalam container
COPY init.sql.template /docker-entrypoint-initdb.d/init.sql.template

# Ganti placeholder di template dengan nilai environment saat build
RUN sed -i "s|\${MARIADB_USER}|${MARIADB_USER}|g; s|\${MARIADB_PASSWORD}|${MARIADB_PASSWORD}|g" \
    /docker-entrypoint-initdb.d/init.sql.template
RUN mv /docker-entrypoint-initdb.d/init.sql.template /docker-entrypoint-initdb.d/init.sql
