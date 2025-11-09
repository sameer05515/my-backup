package com.example;

import redis.clients.jedis.Jedis;

public class App {
    public static void main(String[] args) {

        // connect to localhost:6379
        try (Jedis jedis = new Jedis("localhost", 6379)) {

            // test connection
            System.out.println(jedis.ping()); // PONG

            // set value
            jedis.set("name", "Prem");

            // get value
            String value = jedis.get("name");
            System.out.println("Value: " + value);

            // delete
            jedis.del("name");
        }
    }
}
