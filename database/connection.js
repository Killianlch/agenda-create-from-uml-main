const { Sequelize } = require('sequelize');

// Définir les paramètres de connexion à la base de données
const sequelize = new Sequelize('agendaDB', 'admin', 'admin', {
    host: 'localhost',
    dialect: 'postgres',
    port: 5433, // Le port que vous avez spécifié dans votre fichier docker-compose.yaml
});

module.exports = sequelize;
