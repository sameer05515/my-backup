const { Kafka } = require("kafkajs");

const kafka = new Kafka({
  clientId: "node-consumer",
  brokers: ["localhost:9092"], // Kafka running on host
});

const consumer = kafka.consumer({ groupId: "node-group" });

const run = async () => {
  await consumer.connect();

  await consumer.subscribe({
    topic: "test",
    fromBeginning: true,
  });

  console.log("🚀 Consumer started...");

  await consumer.run({
    eachMessage: async ({ topic, partition, message }) => {
      console.log({
        topic,
        partition,
        key: message.key?.toString(),
        value: message.value?.toString(),
      });
    },
  });
};

run().catch(console.error);