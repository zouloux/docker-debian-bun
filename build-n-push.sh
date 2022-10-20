
docker buildx use m1_builder || (docker buildx create m1_builder && docker buildx use m1_builder)
docker buildx build --platform linux/amd64,linux/arm64 -f Dockerfile -t zouloux/docker-debian-bun:latest --push .
