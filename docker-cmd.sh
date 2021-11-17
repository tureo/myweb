# docker
docker build --tag myweb .
docker image ls
docker image tag myweb:latest myweb:v1.0
docker image rm myweb:v1.0

docker run --publish 8080:8080 myweb
docker run -d -p 8080:8080 myweb --name myweb --restart always
docker ps -all
docker restart $(docker ps -q)
docker stop myweb
docker rm myweb
docker container list

docker build -t myweb:v3.0 -f Dockerfile.multistage .

# docker-compose
docker-compose up -d
docker-compose up --build -d
docker-compose down
docker-compose logs -f myweb --tail=100 --follow --timestamps --details --since=10m

