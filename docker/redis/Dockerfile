FROM redis

ADD redis.conf /redis/redis.conf
ADD init.sh /redis/init.sh


CMD [ "/redis/init.sh" ]


RUN chmod +x /redis/init.sh
RUN chmod -R 0755 /redis/
RUN chown -R redis:redis /redis
