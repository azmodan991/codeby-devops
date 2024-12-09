#!/bin/bash

docker network create wp-net
docker volume create wp-db wp-data

cd ./mysql
docker build -t wp-db .

cd ../wordpress/
docker build -t wordpress .

docker run -d --name wp-db --network wp-net -v wp-db:/var/lib/mysql wp-db
docker run -d --name wordpress --network wp-net -v wp-data:/var/www/html -v $(pwd)/apache-config/000-default.conf:/etc/apache2/sites-available/000-default.conf -p 8080:80 wordpress

