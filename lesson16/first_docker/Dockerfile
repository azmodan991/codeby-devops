FROM alpine:latest
RUN apk add nginx
RUN mkdir -p /opt/www
COPY ./index.html /opt/www/
RUN chown -R nginx:nginx /opt/www
COPY ./default.conf /etc/nginx/http.d

EXPOSE 80 88
CMD ["nginx", "-g", "daemon off;"]
