FROM centos
MAINTAINER      GeekerXu@"flyxuchao@gmail.com"
RUN yum install httpd -y
RUN yum install php* -y
RUN yum install wget unzip -y
RUN cd /var/www/html &&  wget http://static.kodcloud.com/update/download/kodexplorer4.40.zip && unzip kodexplorer4.40.zip && chmod -Rf 777 ./*
EXPOSE 80
COPY init.sh /init.sh
CMD ["/bin/bash","/init.sh"]
