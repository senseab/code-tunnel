FROM alpine:latest

RUN apk add --no-cache zsh && \
    adduser -D -s /bin/zsh -u 1000 coder && \
    wget 'https://code.visualstudio.com/sha/download?build=stable&os=cli-alpine-x64' -O /tmp/code-cli.tgz && \
    tar xf /tmp/code-cli.tgz -C / && rm -rf /tmp/code-cli.tgz 

USER coder

CMD [ "/code", "tunnel" ]
