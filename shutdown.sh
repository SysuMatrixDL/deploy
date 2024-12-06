#!/bin/bash

if [ -f ./backend/top.pid ]; then
    PID=$(cat ./backend/top.pid)
    kill $PID
    rm ./backend/top.pid
else
    echo "top.pid 文件不存在，无法终止 top 进程。"
fi

docker-compose down