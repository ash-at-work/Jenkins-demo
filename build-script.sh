#!/usr/bin/env bash

podman build -t my-apache2 .
if
podman ps | grep my-running-app
then
podman rm my-running-app -f
podman run -d --name my-running-app -p 8080:80 my-apache2
else
podman run -d --name my-running-app -p 8080:80 my-apache2
fi
