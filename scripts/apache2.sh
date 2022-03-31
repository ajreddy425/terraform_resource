#!/bin/bash
yum install httpd -y
echo "<h1>This is subnet 02 from terraform</h1>" >/var/www/html/index.html
chkconfig httpd on
service httpd start