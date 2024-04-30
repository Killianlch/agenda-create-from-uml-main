# Gestion d'Agenda

## Description
Ce projet consiste à développer une application de gestion d'agenda permettant aux utilisateurs de gérer leurs contacts. L'application offre la possibilité de créer des agendas personnels, d'ajouter des contacts à ces agendas et de gérer les coordonnées associées à chaque contact.

## Technologies Utilisées
- **JavaScript (JS)** : Langage de programmation principal utilisé pour le développement de l'application.
- **Node.js** : Plateforme permettant d'exécuter du code JavaScript côté serveur.
- **Express.js** : Framework web utilisé pour créer les routes et gérer les requêtes HTTP.
- **Docker** : Outil de conteneurisation utilisé pour créer des conteneurs isolés et distribuer l'application avec toutes ses dépendances.
- **PostgreSQL** : Système de gestion de base de données relationnelle utilisé pour stocker les données de l'application.
- **HTML** : Langage de balisage utilisé pour la structure et le contenu de la partie front-end de l'application.
- **CSS** : Langage de feuille de style utilisé pour la présentation et le style de la partie front-end de l'application.

## Fonctionnalités Principales
- Création d'agendas personnels.
- Ajout, modification et suppression de contacts dans les agendas.
- Gestion des coordonnées associées à chaque contact (adresses, numéros de téléphone, adresses e-mail, sites web).
- Export des coordonnées d'un contact.
- Gestion des utilisateurs avec authentification par login/mot de passe et JWT token.
- Sécurité : Isolation des données entre utilisateurs pour garantir la confidentialité des informations.

## Installation et Exécution

### Prérequis
- Node.js
- Docker

### Instructions d'installation

1. Clonez ce dépôt Git sur votre machine locale.
   
2. Dans le répertoire du projet, exécutez la commande suivante pour installer les dépendances :
   ```
   npm install
   ```
3. Lancez les conteneurs Docker en utilisant Docker Compose :
   ```
   docker-compose up
   ```

### Exécution de l'application

1. Une fois les conteneurs Docker lancés,veuillez executer la commande de démarrage de l'application :
   ```
    node ./src/app.js
   ```
   
2. Ouvrez un navigateur web et accédez à l'URL suivante :
   ```
   http://localhost:3000
   ```
## Environnement de développement

### Prérequis supplémentaires
- Docker
- Docker Compose
- Node.js
- npm

### Instructions pour lancer l'environnement de développement

1. Clonez ce dépôt Git sur votre machine locale.
2. Dans le répertoire du projet, exécutez la commande suivante pour installer les dépendances :
   ```
   npm install
   ```
3. Lancez les conteneurs Docker en utilisant Docker Compose :
   ```
   docker-compose up
   ```
4. Démarrez le serveur de développement avec la commande :
   ```
   npm start
   ```
5. Pour démarrer le front-end en mode développement, accédez au répertoire client et exécutez la commande :
   ```
   npm start
   ```
   
## Licence
Ce projet est sous licence MIT. Voir le fichier [LICENSE](/LICENSE) pour plus de détails.
