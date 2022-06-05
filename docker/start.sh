#!/bin/bash

export EXTERNAL_IP=$(hostname -I | awk '{print $1}')

echo "EXTERNAL_IP=$EXTERNAL_IP"

docker-compose up -d --build