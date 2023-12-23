#!/bin/sh

podman build -t my-apache2 .
if podman ps | grep my-running-app
then
podman rm my-running-app -f
podman run --name my-running-app -p 8080:80 my-apache2
else
podman run --name my-running-app -p 8080:80 my-apache2
fi
