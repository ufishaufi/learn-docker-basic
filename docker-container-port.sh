docker image pull nginx:latest

docker container create --name contohnginx --publish 8080:80 nginx:latest

docker container start contohnginx

docker container ls -a

docker container stop contohnginx

docker container ls -a