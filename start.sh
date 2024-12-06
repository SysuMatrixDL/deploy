#!/bin/bash

docker-compose up -d

if [ -f ./backend/top ]; then
    # todo: check sha256sum perhaps?
    echo "It seems that program top already exists"
else
    docker exec backend cp /app/top /app/tmp
fi

./backend/top -b -n 1 > ./backend/top.log 2>&1 &

echo $! > ./backend/top.pid