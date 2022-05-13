docker container ls

docker container create --name mongodata --publish 27018:27017 --mount "type=bind,source=/Users/shaufi/Development/Docker/mongo-data,destination=/data/db" --env MONGO_INITDB_ROOT_USERNAME=eko --env MONGO_INITDB_ROOT_PASSWORD=eko mongo:latest

docker container start mongodata

docker container ls