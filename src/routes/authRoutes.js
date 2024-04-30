

const express = require('express');
const router = express.Router();
const AuthController = require('../controllers/AuthController');

// Afficher la page de login
router.get('/', AuthController.getLoginPage);

// Gérer la connexion
router.post('/login', AuthController.login);

module.exports = router;
