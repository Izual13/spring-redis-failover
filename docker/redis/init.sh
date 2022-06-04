#!/bin/bash

cat /redis/redis.conf

echo ${CLUSTER_ANNOUNCE_IP}
echo ${CLUSTER_ANNOUNCE_PORT}

#sed 's/CLUSTER_ANNOUNCE_IP/${CLUSTER_ANNOUNCE_IP}/g' /redis/redis.conf > /redis/redis.conf
#sed 's/CLUSTER_ANNOUNCE_PORT/${CLUSTER_ANNOUNCE_PORT}/g' /redis/redis.conf > /redis/redis.conf

cat /redis/redis.conf

redis-server /redis/redis.conf