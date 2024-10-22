#!/bin/bash

DOMAIN="daniil.local"
SERVER_IP="192.168.56.10"
echo "$SERVER_IP   $DOMAIN www.$DOMAIN" | sudo tee -a /etc/hosts

CERT_DIR="/usr/local/share/ca-certificates"
sudo mkdir -p $CERT_DIR
sudo scp -o StrictHostKeyChecking=no vagrant@192.168.56.10:/etc/apache2/ssl/$DOMAIN.crt $CERT_DIR/$DOMAIN.crt

sudo update-ca-certificates
