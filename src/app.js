const express = require('express');
const app = express();
const PORT = process.env.PORT || 3000;

// Importer la configuration de la base de données
// Importer la configuration de la base de données
const connectDB = require('./db');
connectDB();

// Importer les routes
const userRoutes = require('./routes/userRoutes');

// Middleware pour parser les requêtes JSON
app.use(express.json());

// Utiliser les routes
app.use('/users', userRoutes);

// Route racine
app.get('/', (req, res) => {
    res.send('Hello, world !');
});

// Gérer les erreurs de connexion à la base de données
app.on('error', (err) => {
    console.error('Server error:', err);
});

// Lancer le serveur
app.listen(PORT, () => {
    console.log(`Server is running on port ${PORT}`);
});
