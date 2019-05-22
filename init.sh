#!/bin/bash
echo "root:${mima}"|chpasswd
/etc/init.d/php-fpm start
/etc/init.d/httpd start
/usr/sbin/sshd -D
