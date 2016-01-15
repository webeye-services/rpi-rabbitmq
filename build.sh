#!/usr/bin/env bash
set -e
set -E

tag="3.5.6"
wget http://www.rabbitmq.com/releases/rabbitmq-server/v$tag/rabbitmq-server_$tag-1_all.deb -Orabbitmq.deb

rpi_ip="172.31.255.93"

base_dir=$(dirname $0)

ssh root@$rpi_ip "mkdir -p /opt/docker-rabbitmq" # && rm -rf /opt/docker-webcam/*"


rsync -av "$base_dir/" root@$rpi_ip:/opt/docker-rabbitmq

ssh root@$rpi_ip "chmod +x /opt/docker-rabbitmq/build-on-rpi.sh && cd /opt/docker-rabbitmq/" # && ./build-on-rpi.sh "
