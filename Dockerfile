FROM elixir:alpine

RUN yes | mix local.hex
RUN yes | mix archive.install https://github.com/phoenixframework/archives/raw/master/phx_new.ez
RUN mix local.rebar --force
RUN apk update && \
    apk upgrade && \
    apk add --update\
    bash \
    build-base \
    curl-dev \
    git \
    nodejs \
    nodejs-npm \
    && rm -rf /var/cache/apk/*