#!/bin/bash

cat /redis/redis.conf

#echo -e "\n\n\n" >> /usr/local/etc/redis/redis.conf
echo "cluster-announce-ip ${CLUSTER_ANNOUNCE_IP}" >> /redis/redis.conf
echo "cluster-announce-port ${CLUSTER_ANNOUNCE_PORT}" >> /redis/redis.conf

cat /redis/redis.conf

redis-server /redis/redis.conf