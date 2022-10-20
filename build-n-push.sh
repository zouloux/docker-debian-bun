
docker build -t debun .

docker tag debun:latest zouloux/docker-debian-bun:latest
docker push zouloux/docker-debian-bun:latest