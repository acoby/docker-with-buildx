FROM docker:git
COPY --from=docker/buildx-bin /buildx /usr/libexec/docker/cli-plugins/docker-buildx
RUN apk add --no-cache --update curl
RUN docker buildx version
