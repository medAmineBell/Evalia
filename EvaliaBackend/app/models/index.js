const dbConfig = require("../config/db.config.js");

const Sequelize = require("sequelize");
const sequelize = new Sequelize(dbConfig.DB, dbConfig.USER, dbConfig.PASSWORD, {
  host: dbConfig.HOST,
  dialect: dbConfig.dialect,
  operatorsAliases: false,

  pool: {
    max: dbConfig.pool.max,
    min: dbConfig.pool.min,
    acquire: dbConfig.pool.acquire,
    idle: dbConfig.pool.idle
  }
});

const db = {};

db.Sequelize = Sequelize;
db.sequelize = sequelize;


db.users = require("./user.model.js")(sequelize, Sequelize);
db.admins = require("./admin.model.js")(sequelize, Sequelize);
db.companies = require("./company.model.js")(sequelize, Sequelize);
db.rates = require("./rate.model.js")(sequelize, Sequelize);


db.users.hasMany(db.rates, { as: "rates" });
db.rates.belongsTo(db.users, {
  foreignKey: "userId",
  as: "user",
});
db.companies.hasMany(db.rates, { as: "rates" });
db.rates.belongsTo(db.companies, {
  foreignKey: "companyId",
  as: "company",
});

module.exports = db;


