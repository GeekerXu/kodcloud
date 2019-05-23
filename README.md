# kodexplorer
Kodexplorer 

1.docker 安装
curl -sSL https://get.docker.com/ | sh

2.创建dockerfile 目录 并进入目录

mkdir -p /home/docker/dockerfile-kodexplorer && cd /home/docker/dockerfile-kodexplorer

3.下载dockerfile文件和init.sh

wget https://raw.githubusercontent.com/GeekerXu/kodexplorer/master/dockerfile 

4.创建镜像

docker build -t geekerxu/kodexplorer:latest .

5.创建文件夹，启动容器 

mkdir -p /home/kodexplorer

docker run -d -p 1000:80 --restart=always -v /home/kodexplorer/:/var/www/html ---name kodexplorer geekerxu/kodexplorer
