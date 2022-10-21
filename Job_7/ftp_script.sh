#!/bin/bash

apt install proftpd
apt install openssh-server

cat proftpd.conf > /etc/proftpd/proftpd.conf
cat tls.conf > /etc/proftpd/tls.conf
cat modules.conf > /etc/proftpd/modules.conf

#clé et certificat ssl
openssl genrsa -out /etc/ssl/private/proftpd.key 2048
openssl req -new -x509 -days 3650 -key /etc/ssl/private/proftpd.key -out /etc/ssl/certs/proftpd.crt

systemctl restart proftpd
