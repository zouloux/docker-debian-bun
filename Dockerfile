FROM debian:latest
ENV TZ=UTC

ARG BUN_VERSION=0.2.1

RUN echo "> Installing Bun $BUN_VERSION..." && \
    apt update && apt install -y curl unzip && \
    mkdir -p "/tmp/bun" && \
    curl -fSL "https://github.com/oven-sh/bun/releases/download/bun-v$BUN_VERSION/bun-linux-aarch64.zip" -o "/tmp/bun/bun.zip" && \
    unzip -d "/tmp/bun" -q -o "/tmp/bun/bun.zip" && \
    mv "/tmp/bun/bun-linux-aarch64/bun" "/usr/local/bin/bun" && chmod +x "/usr/local/bin/bun" && \
    rm -r "/tmp/bun" && \
    echo "> Bun installed"

WORKDIR /root

CMD ["bun", "run", "start"]
