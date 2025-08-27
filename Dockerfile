FROM alpine:3.19

ARG HUGO_VERSION=0.146.7

RUN apk add --no-cache gcompat libstdc++ wget \
    && wget -O - "https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/hugo_extended_${HUGO_VERSION}_linux-arm64.tar.gz" | tar -xz \
    && mv hugo /usr/local/bin/ \
    && apk del wget \
    && adduser -D hugo

USER hugo
WORKDIR /src
EXPOSE 1313

CMD ["hugo", "server", "--bind", "0.0.0.0"]