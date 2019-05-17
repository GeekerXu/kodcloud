# kodcloud
KodCloud 基于Cenots7.6

1.docker 安装
curl -sSL https://get.docker.com/ | sh

2.创建dockerfile 目录 并进入目录

mkdir -p /home/docker/dockerfile-kodcloud && cd /home/docker/dockerfile-kodcloud

3.下载dockerfile文件和init.sh

wget https://raw.githubusercontent.com/GeekerXu/kodcloud/master/dockerfile && wget https://raw.githubusercontent.com/GeekerXu/kodcloud/master/init.sh

4.创建镜像

docker build -t geekerxu/kodcloud:latest .

5.创建文件夹，启动容器 

mkdir -p /home/kodcloud

docker run -d -p 10000:80 --restart=always -v /home/kodcloud/:/var/www/html ---name kodcloud geekerxu/kodcloud
