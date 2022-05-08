FROM redis
COPY redis.conf /redis/redis.conf
COPY init.sh /redis/init.sh
#
RUN cat /redis/redis.conf

#CMD [ "redis-server", "/usr/local/etc/redis/redis.conf" ]
CMD [ "/redis/init.sh" ]
#CMD [ "/bin/bash" ]
