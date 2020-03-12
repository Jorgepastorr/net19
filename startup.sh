#!/bin/bash

bash /opt/docker/install.sh && echo "Ok install"
/usr/sbin/httpd
/usr/sbin/vsftpd
/usr/sbin/sshd
/usr/sbin/in.tftpd -s /var/lib/tftpboot
/sbin/xinetd -dontfork
