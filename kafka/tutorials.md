command to run producer

```

 docker exec -it kafka kafka-console-producer --topic test --bootstrap-server localhost:9092

```


command to run consumer



```

docker exec -it kafka kafka-console-consumer --topic test --from-beginning --bootstrap-server localhost:9092

```



## note:
1. redis docker compose file is placed at '`redis-docker\docker-compose.yml`'
2. kafka docker compose file is placed at '`kafka\docker\docker-compose.yml`'



[What is Kafka ? How to use Confluent Kafka in Spring Boot Application ?](https://www.youtube.com/watch?v=2YnutJ8tNos)


[Spring Boot Kafka Full Course in 3 Hours🔥🔥🔥](https://www.youtube.com/watch?v=inrQUHLPFd4&list=PLGRDMO4rOGcNLwoack4ZiTyewUcF6y6BU)