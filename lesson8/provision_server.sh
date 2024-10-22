#!/bin/bash

sudo apt-get update
sudo apt-get install -y apache2

DOMAIN="daniil.local"
SSL_DIR="/etc/apache2/ssl"
sudo mkdir -p $SSL_DIR
sudo openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout $SSL_DIR/$DOMAIN.key -out $SSL_DIR/$DOMAIN.crt -subj "/C=US/ST=State/L=City/O=Organization/OU=OrgUnit/CN=$DOMAIN"

APACHE_CONF="/etc/apache2/sites-available/$DOMAIN.conf"

sudo bash -c "cat > $APACHE_CONF" <<EOL
<VirtualHost *:80>
    ServerName $DOMAIN
    ServerAlias www.$DOMAIN
    Redirect permanent / https://$DOMAIN/
</VirtualHost>

<VirtualHost *:443>
    ServerName $DOMAIN
    SSLEngine on
    SSLCertificateFile $SSL_DIR/$DOMAIN.crt
    SSLCertificateKeyFile $SSL_DIR/$DOMAIN.key
    DocumentRoot /var/www/html

    <Directory /var/www/html>
        Options Indexes FollowSymLinks MultiViews
        AllowOverride None
        Require all granted
    </Directory>

    RewriteEngine On
    RewriteCond %{HTTP_HOST} ^www\.(.*)$ [NC]
    RewriteRule ^(.*)$ https://%1$1 [R=301,L]
</VirtualHost>
EOL

sudo a2enmod ssl
sudo a2enmod rewrite
sudo a2ensite $DOMAIN.conf
sudo systemctl restart apache2
