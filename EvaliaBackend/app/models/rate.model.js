module.exports = (sequelize, Sequelize) => {
  const Rate = sequelize.define("rate", {
    
    rating: {
      type: Sequelize.DOUBLE 
    },
    
  });

  return Rate;
};
