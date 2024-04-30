const User = require('../models/user');

const getAllUsers = async (req, res) => {
    try {
        const users = await User.findAll(); // Utilise la méthode findAll de Sequelize pour récupérer tous les utilisateurs
        res.json(users);
    } catch (err) {
        res.status(500).json({ message: err.message });
    }
};

const createUser = async (req, res) => {
    const { username, email, password } = req.body; // Récupère les données du corps de la requête
    try {
        // Crée un nouvel utilisateur dans la base de données
        const newUser = await User.create({ username, email, password });
        res.status(201).json(newUser);
    } catch (err) {
        res.status(400).json({ message: err.message });
    }
};

module.exports = {
    getAllUsers,
    createUser
};
