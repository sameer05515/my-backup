const { Kafka, logLevel } = require("kafkajs");

const kafka = new Kafka({
  clientId: "node-consumer",
  brokers: ["localhost:9092"],
  logLevel: logLevel.DEBUG, // 🔥 logs dikhenge
});

const consumer = kafka.consumer({ groupId: "node-group" });

async function start() {
  try {
    console.log("Connecting...");
    await consumer.connect();

    console.log("Subscribing...");
    await consumer.subscribe({
      topic: "test",
      fromBeginning: true,
    });

    console.log("🚀 Consumer started...");

    await consumer.run({
      eachMessage: async ({ topic, partition, message }) => {
        console.log("📩 Received:", message.value.toString());
      },
    });

  } catch (err) {
    console.error("❌ ERROR:", err);
  }
}

start();

// 🔥 process alive rakho
process.on("uncaughtException", err => {
  console.error("Uncaught:", err);
});

process.on("unhandledRejection", err => {
  console.error("Unhandled:", err);
});