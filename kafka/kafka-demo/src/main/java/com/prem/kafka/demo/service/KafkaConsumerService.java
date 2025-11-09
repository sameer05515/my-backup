package com.prem.kafka.demo.service;

import org.springframework.kafka.annotation.KafkaListener;
import org.springframework.stereotype.Service;

@Service
public class KafkaConsumerService {

//    @KafkaListener(topics = "test", groupId = "test-group")
//    public void consume(String message) {
//        System.out.println("Consumed: " + message +" at " + new Date().toString());
//        System.out.println("Sleeping for 3 seconds...");
//        try {
//            Thread.sleep(3000);
//        } catch (InterruptedException e) {
//            Thread.currentThread().interrupt();
//        }
//        System.out.println("Finished processing: " + message);
//    }

    @KafkaListener(
            topics = "test",
            groupId = "test-group",
            concurrency = "3"
    )
    public void consume(String message) {
        try {
            process(message);
        } catch (Exception e) {
            System.out.println("Error processing message: " + message);
//            throw e; // important for retry/DLT
        }
    }

    private void process(String message) throws InterruptedException {
        System.out.println("Processing message... : "+message);
        Thread.sleep(3000);
        System.out.println("Finished processing: " + message);
    }
}