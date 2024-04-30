const express = require('express');
const app = express();
const PORT = process.env.PORT || 3000;

// Importer les routes
const userRoutes = require('./routes/userRoutes');
const authRoutes = require('./routes/authRoutes');



// Middleware pour parser les requêtes JSON
app.use(express.json());

app.set('views', './src/public/views');
app.set('view engine', 'pug');

//app.set('view engine', 'html');

// Importer Sequelize et initialiser la connexion à la base de données
const sequelize = require('../database/connection');

// Utiliser les routes
app.use('/users', userRoutes);
app.use('/login', authRoutes);

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
