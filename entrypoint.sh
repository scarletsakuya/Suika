#!/bin/bash

date -R
echo "Start Success !"

sed -i "s/\[VMESS_ID\]/${VMESS_ID}/g" /etc/v2ray/config.json
sed -i "s/\[VMESS_LEVEL\]/${VMESS_LEVEL}/g" /etc/v2ray/config.json
sed -i "s/\[VMESS_ALTERID\]/${VMESS_ALTERID}/g" /etc/v2ray/config.json

for i in "$@"; do
	bash $i
done

cat /etc/v2ray/config.json

/usr/bin/v2ray/v2ray -config=/etc/v2ray/config.json
