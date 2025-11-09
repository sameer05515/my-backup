const express = require("express");
const redis = require("./redis");
const { producer, connectProducer, ensureTopics, TODO_EVENTS_TOPIC } = require("./kafka");
const {
  getTodosFromDB,
  createTodoInDB,
  updateTodoInDB,
} = require("./todo.service");
const {
  validateCreateTodo,
  validateUpdateTodo,
} = require("./middlewares/todo.validation.middleware");

const app = express();
app.use(express.json());

// Ensure topic exists and then connect producer once.
ensureTopics()
  .then(connectProducer)
  .catch((error) => {
    console.error("Kafka startup failed:", error);
    process.exit(1);
  });

// ✅ GET todos (with cache)
app.get("/todos", async (req, res) => {
  const cacheKey = "todos:all";

  const cached = await redis.get(cacheKey);

  if (cached) {
    console.log("⚡ Cache HIT");
    return res.json(JSON.parse(cached));
  }

  console.log("🐢 Cache MISS");

  const todos = await getTodosFromDB();

  await redis.set(cacheKey, JSON.stringify(todos), "EX", 240);

  res.json(todos);
});

// ✅ CREATE todo
app.post("/todos", validateCreateTodo, async (req, res) => {
  const todo = await createTodoInDB(req.body);

  await producer.send({
    topic: TODO_EVENTS_TOPIC,
    messages: [
      {
        key: "CREATE",
        value: JSON.stringify(todo),
      },
    ],
  });

  res.json(todo);
});

// ✅ UPDATE todo
app.put("/todos/:id", validateUpdateTodo, async (req, res) => {
  const updated = await updateTodoInDB(req.params.id, req.body);

  if (!updated) {
    return res.status(404).json({
      error: "NotFound",
      message: "todo not found",
    });
  }

  await producer.send({
    topic: TODO_EVENTS_TOPIC,
    messages: [
      {
        key: "UPDATE",
        value: JSON.stringify(updated),
      },
    ],
  });

  res.json(updated);
});

// 🚀 start server
app.listen(3000, () => {
  console.log("🚀 Server running on http://localhost:3000");
});