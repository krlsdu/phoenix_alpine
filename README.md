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

```shell
docker exec -it phoenix mix phx.new hello
```

Jump to folder of the project and change the owner  of the files and directory recursively

```shell
cd hello \
sudo chwon -R $USER:$USER .
```

Update the configuration to connect the database_hello

```shell
vim config/dev.exs
```
Up webserver phoenix ***obs: -w /app/hello ***

```shell
 docker exec -w /app/hello -it phoenix mix phx.server
```
