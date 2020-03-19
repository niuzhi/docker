#!/bin/bash

set -e
echo "running docker"
/usr/bin/dockerd &> /dockerd.log & 
sleep 5
cd /dotcms
docker-compose up
echo "done!"