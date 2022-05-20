FROM python:3.8

WORKDIR /app

ADD    ./requirements.txt   /app/
RUN    pip install -r requirements.txt

ADD    ./djangosample   /app/djangosample/
ADD    ./manage.py      /app/
# ADD    ./gunicorn       /app/gunicorn/

# CMD ["gunicorn", "djangosample.wsgi", "-c", "gunicorn/prod.py"]
# ENV PYTHONUNBUFFERED=0
# RUN apt-get update && apt-get -y install


docker stop $(docker ps -aq)
docker volume prune
docker system prune -a



# Purging All Unused or Dangling Images, Containers, Volumes, and Networks


##  Docker Version - 19.03.12  #################################################




# sudo docker logs mysql57
# sudo docker exec -it mysql57 mysql -uroot -p
# ALTER USER 'root'@'localhost' IDENTIFIED BY 'passw0rd';
# GRANT ALL PRIVILEGES ON *.* to root@'%' IDENTIFIED BY 'root';


# https://docs.docker.com/engine/reference/builder/
# https://docs.docker.com/develop/develop-images/dockerfile_best-practices/
# https://www.digitalocean.com/community/tutorials/how-to-install-and-use-docker-on-ubuntu-20-04


# docker image inspect {$REPOSITORY:TAG} or {$IMAGE_ID}
# docker image inspect --format="{{ .Config.Labels }}" {$REPOSITORY:TAG} or {$IMAGE_ID}


# docker image ls -a
# docker ps -a
# docker volume ls



###  UBUNTU  ###################################################################
FROM ubuntu:20.04

LABEL maintainer="mhpark@seekerslab.com" \
      verison="1.5"

RUN sed -i 's/archive.ubuntu.com/mirror.kakao.com/g' /etc/apt/sources.list \
# RUN sed -i 's/deb.debian.org/mirror.kakao.com/g' /etc/apt/sources.list \
    && apt-get update \
    && DEBIAN_FRONTEND=noninteractive apt install -y \
#    mysql-server \
#    openjdk-8-jdk \
#    iputils-ping \
#    net-tools \
#    git \
    && sed -i "s/127.0.0.1/0.0.0.0/g" /etc/mysql/mysql.conf.d/mysqld.cnf \
    && mkdir /var/run/mysqld \
    && chown -R mysql:mysql /var/run/mysqld

VOLUME ["/var/lib/mysql"]
 
EXPOSE 3306
 
CMD ["mysqld_safe"]



###  MariaDB  ##################################################################

docker pull mariadb/server:10.4




###  ELASTICSEARCH  ############################################################
# FROM docker.elastic.co/elasticsearch/elasticsearch:7.9.1
# COPY --chown=elasticsearch:elasticsearch elasticsearch.yml /usr/share/elasticsearch/config/

# opendistro.github.io
# docker run -p 9200:9200 -p 9600:9600 -e "discovery.type=single-node" amazon/opendistro-for-elasticsearch:1.9.0



# docker build -t mysql_image .
# docker run -i -t -d --name mysql_container mysql_image
# docker exec -it 910e1a3357fe ls -a



###  KAFKA, STREAMS  ###########################################################
# https://www.digitalocean.com/community/tutorials/how-to-install-apache-kafka-on-ubuntu-18-04


# RUN git clone ://some-internal-server     (GitLab)

# COPY . /app
# WORKDIR /etc/nginx
# CMD ["nginx", "-g", "daemon off;"] -> nginx를 백그라운드로 실행합니다
# CMD ["nginx", "-g", "daemon off;"]

# DEV: 8080, DEP: 80
# EXPOSE 80/tcp, udp
# EXPOSE 8080

################################################################################
# sudo docker run -it docker.elastic.co/elasticsearch/elasticsearch:7.9.1 /bin/sh -c 'uname -a'


# FROM <이미지>
# FROM <이미지>:<태그>
# FROM <이미지>@<다이제스트>

# tmux-xpanes

# docker build -f Dockerfile.db .
# docker build -f Dockerfile.web .
# Migration to ~
# docker-compose.yml


# docker build --force-rm --tag mynginx:0.1 .
# --force-rm : 기존에 존재하는 image를 삭제합니다.
# --tag : 태그를 설정해줍니다.

# DOCKER DIRECTORY
# Linux  : /var/lib/docker/
# MacOS  : ~/Library/Containers/com.docker.docker/Data/vms/0/
# Windows: C:\ProgramData\DockerDesktop

# docker network create --subnet=172.25.0.0/16 my-net


# sudo docker build -t my-apache2 .
# 이미지를 실행
# 
# sudo docker run -it --rm --name my-running-app my-apache2
# 도커 이미지 목록

# RUN & REMOVE
# docker run --rm image_name



# - IMAGE -
# LIST :
# docker image ls -a
# docker images -f dangling=true
# docker images -a |  grep "pattern"
# REMOVE :
# docker image prune
# docker rmi Image Image
# docker rmi $(docker images -q)
# docker images -a | grep "pattern" | awk '{print $3}' | xargs docker rmi
# 
# - CONTAINER -
# LIST :
# docker ps -a
# docker ps -a |  grep "pattern”
# docker ps -a -f status=exited
# docker ps -a -f status=exited -f status=created
# List all containers (only IDs)
# docker ps -aq
# Stop all running containers
# docker stop $(docker ps -aq)
# REMOVE :
# docker rm $(docker ps -a -f status=exited -q)
# docker rm $(docker ps -a -f status=exited -f status=created -q)
# docker ps -a | grep "pattern" | awk '{print $1}' | xargs docker rm
# docker stop $(docker ps -a -q)
# docker rm $(docker ps -a -q)
# Remove all containers
# docker rm $(docker ps -aq)
# 
# - VOLUME -
# 디렉터리의 내용을 컨테이너에 저장하지 않고 호스트에 저장하도록 설정
# docker run 명령에서 -v 옵션을 사용
# ex) -v /root/data:/data
# LIST :
# docker volume ls
# docker volume ls -f dangling=true
# REMOVE :
# docker volume rm volume_name volume_name
# docker rm -v container_name
# docker volume prune

