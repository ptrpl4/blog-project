ARG ALPINE_VERSION
FROM alpine:${ALPINE_VERSION}

ARG HUGO_VERSION
ARG TARGETARCH

RUN apk add --no-cache wget \
    && wget -O /tmp/hugo.tar.gz "https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/hugo_${HUGO_VERSION}_linux-${TARGETARCH}.tar.gz" \
    && tar -xzf /tmp/hugo.tar.gz -C /usr/local/bin hugo \
    && rm /tmp/hugo.tar.gz \
    && apk del wget \
    && adduser -D hugo

USER hugo
WORKDIR /src
EXPOSE 1313

CMD ["hugo", "server", "--bind", "0.0.0.0"]
