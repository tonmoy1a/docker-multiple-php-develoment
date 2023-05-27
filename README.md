# Docker Multiple php Develoment Enviroment
Docker enviroment for multiple php application development. It can run multiple php version at a time. It consists of the following:
- PHP
- Apache
- MySQL
- phpMyAdmin
- Adminer
- composer

## Setup
Clone or download this repository and run
```bash
docker compose up
```

## Directory Structure
    ├── docker-files                   # Dockerfiles for php
        ├── PHP56.Dockerfile           # Dockerfile for php5.6
        ├── PHP72.Dockerfile           # Dockerfile for php7.2
        ├── PHP74.Dockerfile           # Dockerfile for php7.4
        ├── PHP80.Dockerfile           # Dockerfile for php8.0
        ├── PHP82.Dockerfile           # Dockerfile for php8.2
    ├── mysql-data                     # Mysql Server Data
    ├── www                            # Docker volume for /var/www/html/
        ├── php56                      # Docker volume for /var/www/html/ php5.6
        ├── php72                      # Docker volume for /var/www/html/ php7.2
        ├── php74                      # Docker volume for /var/www/html/ php7.4
        ├── php80                      # Docker volume for /var/www/html/ php8.0
        ├── php82                      # Docker volume for /var/www/html/ php8.2
    ├── docker-compose.yaml            # Docker compose file

## Usage
After running docker compose up put your php application file into www/php{version}. php apache server will run on port 8072, 8074, 8080, 8082
| Container | Port     |
| :-------- | :------- |
| `PHP 5.6` | `8056` |
| `PHP 7.2` | `8072` |
| `PHP 7.4` | `8074` |
| `PHP 8.0` | `8080` |
| `PHP 8.2` | `8082` |
| `MySql` | `3306` |
| `phpmyadmin` | `9000` |
| `adminer` | `9001` |
