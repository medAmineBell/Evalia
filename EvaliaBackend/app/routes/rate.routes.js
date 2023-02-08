module.exports = app => {
  const rates = require("../controllers/rate.controller.js");

  var router = require("express").Router();

  // Create a new Rate
  router.post("/", rates.create);

  // Retrieve all Rates
  router.get("/", rates.findAll);

  // Retrieve a single Rate with id
  router.get("/:id", rates.findOne);

  // Update a Rate with id
  router.put("/:id", rates.update);

  // Delete a Rate with id
  router.delete("/:id", rates.delete);

  // Delete all Rates
  router.delete("/", rates.deleteAll);

  app.use('/api/rates', router);
};
