FROM elixir:alpine

MAINTAINER krlsdu <krlsdu@gmail.com>

RUN apk update upgrade \
  && apk add bash \
  && apk add inotify-tools \
  && apk add nodejs

RUN mix local.hex --force

RUN mix archive.install https://github.com/phoenixframework/archives/raw/master/phx_new.ez --force

EXPOSE 4000
