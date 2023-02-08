const db = require("../models");
const Rate = db.rates;
const Op = db.Sequelize.Op;

// Create and Save a new Rate
exports.create = (req, res) => {
  // Validate request
  
  // Create a Rate
  const rate = {
    rating: req.body.rating,
    userId:req.body.userId,
    companyId:req.body.companyId,

  };

  // Save Rate in the database
  Rate.create(rate)
    .then(data => {
      res.send(data);
    })
    .catch(err => {
      res.status(500).send({
        message:
          err.message || "Some error occurred while creating the Rate."
      });
    });
};

// Retrieve all Rate from the database.
exports.findAll = (req, res) => {
  
  Rate.findAll()
    .then(data => {
      res.send(data);
    })
    .catch(err => {
      res.status(500).send({
        message:
          err.message || "Some error occurred while retrieving rates."
      });
    });
};

// Find a single Rate with an id
exports.findOne = (req, res) => {
  const id = req.params.id;

  Rate.findByPk(id)
    .then(data => {
      if (data) {
        res.send(data);
      } else {
        res.status(404).send({
          message: `Cannot find Rate with id=${id}.`
        });
      }
    })
    .catch(err => {
      res.status(500).send({
        message: "Error retrieving Rate with id=" + id
      });
    });
};

// Update a Rate by the id in the request
exports.update = (req, res) => {
  const id = req.params.id;

  Rate.update(req.body, {
    where: { id: id }
  })
    .then(num => {
      if (num == 1) {
        res.send({
          message: "Rate was updated successfully."
        });
      } else {
        res.send({
          message: `Cannot update Rate with id=${id}. Maybe Rate was not found or req.body is empty!`
        });
      }
    })
    .catch(err => {
      res.status(500).send({
        message: "Error updating Rate with id=" + id
      });
    });
};

// Delete a Rate with the specified id in the request
exports.delete = (req, res) => {
  const id = req.params.id;

  Rate.destroy({
    where: { id: id }
  })
    .then(num => {
      if (num == 1) {
        res.send({
          message: "Rate was deleted successfully!"
        });
      } else {
        res.send({
          message: `Cannot delete Rate with id=${id}. Maybe Rate was not found!`
        });
      }
    })
    .catch(err => {
      res.status(500).send({
        message: "Could not delete Rate with id=" + id
      });
    });
};

// Delete all Rates from the database.
exports.deleteAll = (req, res) => {
  Rate.destroy({
    where: {},
    truncate: false
  })
    .then(nums => {
      res.send({ message: `${nums} Rates were deleted successfully!` });
    })
    .catch(err => {
      res.status(500).send({
        message:
          err.message || "Some error occurred while removing all rates."
      });
    });
};