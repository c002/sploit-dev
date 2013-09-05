#!/bin/sh
touch /var/log/mysql/proxy.query.log
gnome-terminal --title "Mysql query log" -e 'tail -f /var/log/mysql/proxy.query.log' &
echo "Mysql proxy starting on port 4040"
mysql-proxy --log-file=/var/log/mysql/proxy.log --log-level=debug --proxy-lua-script=$HOME/sploit-dev/myproxy.lua
