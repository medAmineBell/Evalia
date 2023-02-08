module.exports = (sequelize, Sequelize) => {
  const Admin = sequelize.define("admin", {
    name: {
      type: Sequelize.STRING
    },
    email: {
      type: Sequelize.STRING
    },
    phoneNumber: {
      type: Sequelize.INTEGER
    },
    image: {
      type: Sequelize.STRING
    },
    password: {
      type: Sequelize.STRING
    },
    
    
  });

  return Admin;
};