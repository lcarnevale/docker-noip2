#!/bin/bash

USERNAME=$1
PASSWORD=$2
INTERVAL=$3

echo "Configuring the No-IP service ..."

./noip2 -u $USERNAME -p $PASSWORD -U $INTERVAL -C && \
./noip2 && \
echo /user/local/bin/noip2 >> /etc/rc.local

echo "Configuring the No-IP service ... completed!"
