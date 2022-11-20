#!/bin/sh
mvn clean package && docker build -t com.jadson/hello-todo .
docker rm -f hello-todo || true && docker run -d -p 8080:8080 -p 4848:4848 --name hello-todo com.jadson/hello-todo 
