const MAX_TITLE_LENGTH = 200;

const isNonEmptyString = (value) =>
  typeof value === "string" && value.trim().length > 0;

const validateCreateTodo = (req, res, next) => {
  const { title } = req.body || {};

  if (!isNonEmptyString(title)) {
    return res.status(400).json({
      error: "ValidationError",
      message: "title is required and must be a non-empty string",
    });
  }

  if (title.trim().length > MAX_TITLE_LENGTH) {
    return res.status(400).json({
      error: "ValidationError",
      message: `title must be at most ${MAX_TITLE_LENGTH} characters`,
    });
  }

  req.body.title = title.trim();
  next();
};

const validateUpdateTodo = (req, res, next) => {
  const { id } = req.params || {};
  const { title } = req.body || {};

  if (!/^\d+$/.test(String(id))) {
    return res.status(400).json({
      error: "ValidationError",
      message: "id must be a valid numeric value",
    });
  }

  if (title === undefined) {
    return res.status(400).json({
      error: "ValidationError",
      message: "title is required for update",
    });
  }

  if (!isNonEmptyString(title)) {
    return res.status(400).json({
      error: "ValidationError",
      message: "title must be a non-empty string",
    });
  }

  if (title.trim().length > MAX_TITLE_LENGTH) {
    return res.status(400).json({
      error: "ValidationError",
      message: `title must be at most ${MAX_TITLE_LENGTH} characters`,
    });
  }

  req.params.id = Number(id);
  req.body.title = title.trim();
  next();
};

module.exports = {
  validateCreateTodo,
  validateUpdateTodo,
};
