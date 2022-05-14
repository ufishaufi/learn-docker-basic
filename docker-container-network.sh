docker network create --driver bridge mongonetwork

docker network ls

docker container create --name mongodb --network mongonetwork --env MONGO_INITDB_ROOT_USERNAME=eko --env MONGO_INITDB_ROOT_PASSWORD=eko mongo:latest

docker container ls -a

docker image pull mongo-express:latest

docker container create --name mongodbexpress --network mongonetwork --publish 8081:8081 --env ME_CONFIG_MONGODB_URL="mongodb://eko:eko@mongodb:27017/" mongo-express:latest

docker container ls -a

docker container start mongodb

docker container start mongodbexpress

docker network disconnect mongonetwork mongodb

docker container logs mongodbexpress

docker network connect mongonetwork mongodb
