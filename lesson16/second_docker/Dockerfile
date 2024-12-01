FROM debian:11
RUN apt-get update -y && apt-get install nginx -y
RUN mkdir -p /opt/www
COPY ./index.html /opt/www/
RUN chown -R www-data:www-data /opt/www/
COPY ./default.conf /etc/nginx/conf.d

EXPOSE 80 88
ENTRYPOINT ["nginx", "-g", "daemon off;"]
