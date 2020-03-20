#!/bin/bash

set -e
echo "running docker"
/usr/bin/dockerd &> /dockerd.log & 
sleep 5
cd /dotcms
wget -q https://raw.githubusercontent.com/dotCMS/docker/master/referenceImplementations/02-single_node/docker-compose.yml
docker-compose up
echo "done!"