FROM alpine:latest

RUN apk add --no-cache zsh && \
    adduser -D -s /bin/zsh -u 1000 coder && \
    wget 'https://code.visualstudio.com/sha/download?build=stable&os=cli-alpine-x64' -O - | tar xv -C /

USER coder

CMD [ "/code", "tunnel" ]
