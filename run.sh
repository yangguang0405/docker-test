#!/bin/bash

ls -l
export PATH=$PATH:~/node-v8.5.0-linux-x64/bin

mkdir -p "/tmp/Testude 365/agent"

CONTAINER_ID=$(cat /etc/hostname)
echo $PWD
echo $APPID
echo $APPSECRET
echo $CONTAINER_ID

java -jar "Docker" "$PWD/agent/versions/1.0.0/pc-agent.jar" "Console" "$PWD/agent" "/tmp/Testude 365/agent" "1.0.0" "https://www.testude365.com:8081" "https://www.testude365.com:8082/v1" "0" "$APPID" "$APPSECRET" "$CONTAINER_ID"
