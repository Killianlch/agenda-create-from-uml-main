const express = require('express');
const app = express();
const PORT = process.env.PORT || 3001;

// Importer les routes
const userRoutes = require('./routes/userRoutes');

// Middleware pour parser les requêtes JSON
app.use(express.json());

// Importer Sequelize et initialiser la connexion à la base de données
const sequelize = require('../database/connection');

// Utiliser les routes
app.use('/users', userRoutes);

// Route racine
app.get('/', (req, res) => {
    res.send('Hello, world !');
});

// Gérer les erreurs de connexion à la base de données
sequelize.authenticate()
    .then(() => {
        console.log('Connection to the database has been established successfully.');
        // Lancer le serveur une fois la connexion établie
        app.listen(PORT, () => {
            console.log(`Server is running on port ${PORT}`);
        });
    })
    .catch(err => {
        console.error('Unable to connect to the database:', err);
    });
