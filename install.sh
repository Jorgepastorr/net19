#!/bin/bash

echo "@edt ASIX M11-SAD" > /var/www/html/index.html
echo "Benvinguts al vsftpd" > /var/ftp/hola.pdf
echo "directori public" > /var/ftp/pub/info.txt
echo "Benvingutts al servei tftp" > /var/lib/tftpboot/hola.txt
echo "llista de fitxers del tftp" > /var/lib/tftpboot/llista.txt
/usr/bin/ssh-keygen -A
touch /var/run/tftp.sock

tar xzf /opt/docker/xinetd.tgz -C /etc/xinetd.d/
