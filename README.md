# Docker Debian Bun aka Debun 🐇

Debun is a Docker image for Bun server based on the latest Debian image.


### Use it with docker-compose

##### `docker-composer.yaml`

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

##### `package.json`

```json
{
  "scripts" : {
  	"start" : "bun server.ts"
  }
}

```

##### `server.ts`

```ts
export default {
	port: 3000,
	fetch (request) {
		return new Response("Welcome to Bun!");
	},
};
```


### Build your own and specify bun version

1. Clone this repo or download the [Dockerfile](https://raw.githubusercontent.com/zouloux/docker-debian-bun/main/Dockerfile)
2. To build a version, run `docker build -t debun:X.X.X . --build-arg BUN_VERSION=X.X.X` (replace the 2 `X.X.X` with the bun version you want)
3. Use it with a `docker-compose.yaml` or run `docker run -it debun:X.X.X`

### Test it

1. `git clone https://github.com/zouloux/docker-debian-bun.git`
2. `cd docker-debian-bun/test`
3. `docker-compose up`
4. Navigate to http://localhost:3000