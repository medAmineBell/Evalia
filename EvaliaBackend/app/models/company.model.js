module.exports = (sequelize, Sequelize) => {
  const Company = sequelize.define("company", {
    name: {
      type: Sequelize.STRING
    },
    location: {
      type: Sequelize.STRING
    },
    category: {
      type: Sequelize.STRING
    },
    reviewNumber: {
      type: Sequelize.DOUBLE
    },
    logo: {
      type: Sequelize.STRING
    },
    qrCode: {
      type: Sequelize.STRING
    },
    description: {
      type: Sequelize.STRING
    },
    email: {
      type: Sequelize.STRING
    },
    phoneNumber: {
      type: Sequelize.INTEGER
    },
  });

  return Company;
};
