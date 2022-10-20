FROM debian:latest
ENV TZ=UTC

ARG BUN_VERSION=0.2.1

RUN echo "> Installing bun v$BUN_VERSION ..." && \
    apt update && apt install -y curl unzip && \
    curl -sL https://bun.sh/install | bash && \
    mv /root/.bun/bin/bun /usr/local/bin/bun && rm -r /root/.bun && \
    bun && echo "> Bun installed !"

WORKDIR /root

CMD ["bun", "run", "start"]
