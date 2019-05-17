FROM   centos7:latest
MAINTAINER      GeekerXu "flyxuchao@gmail.com"
RUN   yum -y update
RUN   yum install httpd php php-cli unzip php-gd php-mbstring -y
WORKDIR  /var/www/html
RUN   wget http://static.kodcloud.com/update/download/kodexplorer4.40.zip
RUN   unzip kodexplorer4.40.zip
RUN   chmod -Rf 777 ./*
ADD   init.sh /init.sh
EXPOSE 80
CMD ["/bin/bash","/init.sh"]
