docker container ls -a

docker container stop mongovolume

docker volume ls

docker container create --name nginxbackup --mount "type=bind,source=/Users/shaufi/Development/Docker/backup,destination=/backup" --mount "type=volume,source=mongodata,destination=/data" nginx:latest

docker container ls -a

docker container start nginxbackup

docker container exec -i -t nginxbackup /bin/bash

tar cvf /backup/backup.tar.gz /data

docker container stop nginxbackup

docker container rm nginxbackup

docker container start mongovolume

# Alternative way

docker image pull ubuntu:latest

docker container stop mongovolume

docker container run --rm --name ubuntubackup --mount "type=bind,source=/Users/shaufi/Development/Docker/backup,destination=/backup" --mount "type=volume,source=mongodata,destination=/data" ubuntu:latest tar cvf /backup/backup-again.tar.gz /data

docker container ls -a

docker container start mongovolume