#!/usr/bin/env bash

set -e
set -E

tag=dev

if [[ $1 ]]; then

  tag=$1

fi


docker build -t rpi-rabbitmq .

docker tag -f  rpi-rabbitmq  wsrak/rpi-rabbitmq:$tag

if [ $tag != "dev" ]; then

  docker push wsrak/rpi-rabbitmq:$tag
fi
