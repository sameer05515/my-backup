package com.prem.kafka.demo.controller;

import com.prem.kafka.demo.service.KafkaProducerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/kafka")
public class KafkaController {

    @Autowired
    private KafkaProducerService producer;

    @GetMapping("/send")
    public String send(@RequestParam String msg) {
        producer.send(msg);
        return "Message sent: " + msg;
    }
}