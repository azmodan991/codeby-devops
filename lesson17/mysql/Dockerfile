FROM mysql:latest

# указаны базовые переменные, которые находятся в контейнера wp по умолчанию
# при желании можно поменять, но они должны совпадать с ENV в докерфайле wp:
# WORDPRESS_DB_NAME = MYSQL_DATABASE : имя базы данных
# WORDPRESS_DB_USER = MYSQL_USER : пользователь самой бд
# WORDPRESS_DB_PASSWORD = MYSQL_PASSWORD : пароль для пользователя
# "интересная команда" : MYSQL_RANDOM_ROOT_PASSWORD '1'
ENV MYSQL_ROOT_PASSWORD=root
ENV MYSQL_DATABASE=wordpress
ENV MYSQL_USER=wordpress
ENV MYSQL_PASSWORD=wordpress

# в докерфайле мы определяем volume для директории ВНУТРИ контейнера, если ему не указать в cli именованный volume, то просто создастся анонимный
# при запуске в cli через run мы уже указываем именованный, за которым можем "явно" следить (/var/lib/docker/volumes)

# хоть и дальше мы создаем именованный и привязываем его внутрь контейнера, создание volume внутри докерфайла является хорошей практикой для 
# сохранения данных, так как можно забыть указать именновый через cli

# указание volume через cli переопределяет поведение volume внутри докера (как я понял, создастся только именованный)
VOLUME /vat/lib/mysql


EXPOSE 3036
