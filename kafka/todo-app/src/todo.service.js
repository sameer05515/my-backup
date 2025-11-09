let todos = [];

const getTodosFromDB = async () => {
  return todos;
};

const createTodoInDB = async (data) => {
  const todo = {
    id: Date.now(),
    title: data.title,
  };
  todos.push(todo);
  return todo;
};

const updateTodoInDB = async (id, data) => {
  const index = todos.findIndex((t) => t.id === Number(id));
  if (index !== -1) {
    todos[index] = {
      ...todos[index],
      title: data.title,
    };
    return todos[index];
  }
  return null;
};

module.exports = {
  getTodosFromDB,
  createTodoInDB,
  updateTodoInDB,
};