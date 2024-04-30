-- Suppression des tables existantes
DROP TABLE IF EXISTS coordonnees;
DROP TABLE IF EXISTS contacts;
DROP TABLE IF EXISTS agendas;
DROP TABLE IF EXISTS utilisateurs;

-- Création de la table des utilisateurs
CREATE TABLE utilisateurs (
                              id SERIAL PRIMARY KEY,
                              nom VARCHAR(100),
                              email VARCHAR(100) UNIQUE,
                              mot_de_passe VARCHAR(100)
);

-- Insertion de données dans la table des utilisateurs
INSERT INTO utilisateurs (nom, email, mot_de_passe) VALUES
                                                        ('Alice', 'alice@example.com', 'motdepasse1'),
                                                        ('Bob', 'bob@example.com', 'motdepasse2');

-- Création de la table des agendas
CREATE TABLE agendas (
                         id SERIAL PRIMARY KEY,
                         utilisateur_id INT REFERENCES utilisateurs(id),
                         label VARCHAR(100)
);

-- Insertion de données dans la table des agendas
INSERT INTO agendas (utilisateur_id, label) VALUES
    (1, 'Agenda personnel d''Alice'),
(2, 'Agenda professionnel de Bob');

-- Création de la table des contacts
CREATE TABLE contacts (
    id SERIAL PRIMARY KEY,
    agenda_id INT REFERENCES agendas(id),
    nom VARCHAR(100)
    -- Ajoutez d'autres colonnes si nécessaire
    );

-- Création de la table des coordonnées
CREATE TABLE coordonnees (
                             id SERIAL PRIMARY KEY,
                             contact_id INT REFERENCES contacts(id),
                             type VARCHAR(50),
                             valeur TEXT
    -- Ajoutez d'autres colonnes si nécessaire
);
