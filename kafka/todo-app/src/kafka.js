const { Kafka } = require("kafkajs");

const kafka = new Kafka({
  clientId: "todo-app",
  brokers: ["localhost:9092"],
});

const producer = kafka.producer();
const consumer = kafka.consumer({ groupId: "todo-group" });
const admin = kafka.admin();
const TODO_EVENTS_TOPIC = "todo-events";

const connectProducer = async () => {
  await producer.connect();
  console.log("✅ Kafka Producer connected");
};

const ensureTopics = async () => {
  await admin.connect();
  try {
    const existingTopics = await admin.listTopics();
    if (!existingTopics.includes(TODO_EVENTS_TOPIC)) {
      await admin.createTopics({
        waitForLeaders: true,
        topics: [
          {
            topic: TODO_EVENTS_TOPIC,
            numPartitions: 1,
            replicationFactor: 1,
          },
        ],
      });
      console.log(`✅ Kafka topic ready: ${TODO_EVENTS_TOPIC}`);
    }
  } finally {
    await admin.disconnect();
  }
};

module.exports = {
  kafka,
  producer,
  consumer,
  TODO_EVENTS_TOPIC,
  connectProducer,
  ensureTopics,
};