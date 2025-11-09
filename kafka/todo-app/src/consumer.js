const { consumer, ensureTopics, TODO_EVENTS_TOPIC } = require("./kafka");
const redis = require("./redis");

async function startConsumer() {
  await ensureTopics();
  await consumer.connect();

  await consumer.subscribe({
    topic: TODO_EVENTS_TOPIC,
    fromBeginning: false,
  });

  console.log("🚀 Kafka Consumer started...");

  await consumer.run({
    eachMessage: async ({ message }) => {
      const key = message.key?.toString();
      console.log("📩 Event:", key);

      // 🔥 cache clear
      await redis.del("todos:all");

      console.log("🧹 Cache cleared");
    },
  });
}

startConsumer().catch(console.error);