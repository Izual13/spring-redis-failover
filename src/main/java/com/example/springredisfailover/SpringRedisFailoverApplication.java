package com.example.springredisfailover;

import io.lettuce.core.RedisURI;
import io.lettuce.core.cluster.RedisClusterClient;
import lombok.RequiredArgsConstructor;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.stereotype.Component;

import java.util.List;
import java.util.stream.IntStream;

@SpringBootApplication
public class SpringRedisFailoverApplication {

    public static void main(String[] args) {
        SpringApplication.run(SpringRedisFailoverApplication.class, args);
    }

    @Configuration
    public static class RedisConfig {
        @Bean
        public RedisClusterClient redisClient() {
            List<RedisURI> uris = IntStream.range(1, 7).mapToObj(i -> RedisURI.builder().withHost("localhost").withPort(6379).build()).toList();
            return RedisClusterClient
                    .create(uris);
        }
    }

    @Component
    @RequiredArgsConstructor
    private static class Runner implements CommandLineRunner {

        private final RedisClusterClient redisClient;

        @Override
        public void run(String... args) throws Exception {
            while (true) {
                redisClient.connect().async().info().thenAccept(System.out::println);
                Thread.sleep(1000);
            }

        }
    }

}
