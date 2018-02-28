# phoenix_alpine
docker image alpine with phoenix framework

This image contain

- inotify-tools-3.14-r2
- nodejs-8.9.3-r0
- mix archive
  * hex-0.17.3
  * phx_new

# How to use this image

Up service phoenix alpine

```shell
docker run  --name phoenix \
--detach \
--rm  \
--link database_hello \
--publish 4000:4000 \
--volume `pwd`:/app \
--workdir /app phoenix:alpine

```

Create a new project

    $ docker exec -it phoenix mix phx.new hello

We are all set! Go into your application by running:

    $ cd hello

Change the owner:

    $ sudo chwon -R $USER:$USER .

Then configure your database in config/dev.exs and run:

    $ docker exec -w /app/hello -it mix ecto.create

Start your Phoenix app with:

    $  docker exec -w /app/hello -it phoenix mix phx.server

You can also run your app inside IEx (Interactive Elixir) as:

    $  docker exec -w /app/hello -it phoenix iex -S mix phx.server

