#!/bin/bash

echo ${CLUSTER_ANNOUNCE_IP}
echo ${CLUSTER_ANNOUNCE_PORT}

sed -i "s/CLUSTER_ANNOUNCE_IP/${CLUSTER_ANNOUNCE_IP}/" /redis/redis.conf
sed -i "s/CLUSTER_ANNOUNCE_PORT/${CLUSTER_ANNOUNCE_PORT}/" /redis/redis.conf

cat /redis/redis.conf
echo " "

redis-server /redis/redis.conf