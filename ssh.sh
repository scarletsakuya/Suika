#!/bin/bash

echo ${ROOT_PASSWORD}
date

echo root:${ROOT_PASSWORD} | chpasswd
mkdir -p -m 0755 /var/run/sshd

echo "Start Success !"

cat /etc/v2ray/config.json

(/usr/sbin/sshd -D -e ) &
