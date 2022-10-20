# Docker Debian Bun aka Debun 🐇

Debun is a Docker image for Bun server based on the latest Debian image.


### Use it with docker-compose

```yaml
version: "3.7"
services:
  debun :
    image: 'zouloux/docker-debian-bun'
    ports :
      - '3000:3000'
    volumes:
      - './:/root'
```



### Build your own and specify bun version

1. Clone this repo or download the [Dockerfile](https://raw.githubusercontent.com/zouloux/docker-debian-bun/main/Dockerfile)
2. Run `docker build -t debun:X.X.X . --build-arg BUN_VERSION=X.X.X`, and replace the 2 `X.X.X` with the bun version you want.
3. Use it with a `docker-compose.yaml` or `docker run -it debun:X.X.X`

### Test it

1. `git clone https://github.com/zouloux/docker-debian-bun.git`
2. `cd docker-debian-bun`
3. `cd test`
4. `docker-compose up`
5. Navigate to http://localhost:3000