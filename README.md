# docker-multiple-php-develoment
Docker enviroment for php application development

## Setup
Clone or download this repository and run
```bash
docker compose up
```

## Directory Structure
    ├── docker-files                   # Dockerfiles for php
        ├── PHP72.Dockerfile           # Dockerfile for php7.2
        ├── PHP74.Dockerfile           # Dockerfile for php7.4
        ├── PHP80.Dockerfile           # Dockerfile for php8.0
        ├── PHP82.Dockerfile           # Dockerfile for php8.2
    ├── mysql-data                     # Mysql Server Data
    ├── www                            # Docker volume for /var/www/html/
        ├── php72                      # Docker volume for /var/www/html/ php7.2
        ├── php74                      # Docker volume for /var/www/html/ php7.4
        ├── php80                      # Docker volume for /var/www/html/ php8.0
        ├── php82                      # Docker volume for /var/www/html/ php8.2
    ├── docker-compose.yaml            # Docker compose file
