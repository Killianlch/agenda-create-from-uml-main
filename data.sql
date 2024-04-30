-- Supprime les données existantes dans les tables
TRUNCATE TABLE "Website" CASCADE;
TRUNCATE TABLE "Email" CASCADE;
TRUNCATE TABLE "Phone" CASCADE;
TRUNCATE TABLE "Address" CASCADE;
TRUNCATE TABLE "ContactDetail" CASCADE;
TRUNCATE TABLE "Contact" CASCADE;
TRUNCATE TABLE "Agenda" CASCADE;
TRUNCATE TABLE "User" CASCADE;

-- Insère de nouvelles données
INSERT INTO "User" (login, password, jwt) VALUES
                                              ('alice', 'motdepassealice', 'jwtalice'),
                                              ('bob', 'motdepassebob', 'jwtbob');

-- Assurez-vous que les ID insérés correspondent aux ID générés par les séquences SERIAL des tables parentes
INSERT INTO Agenda (user_id, label) VALUES
                                        (1, 'Agenda personnel d''Alice'),
                                        (2, 'Agenda professionnel de Bob');

INSERT INTO Contact (agenda_id, name) VALUES
                                          (1, 'Contact 1 pour Alice'),
                                          (2, 'Contact 1 pour Bob');

INSERT INTO ContactDetail (contact_id, value, pattern) VALUES
                                                           (1, 'Adresse de Contact 1 pour Alice', 'Adresse'),
                                                           (1, 'Téléphone de Contact 1 pour Alice', 'Téléphone'),
                                                           (1, 'alice@example.com', 'Email'),
                                                           (1, 'www.alice.com', 'Site Web'),

                                                           (2, 'Adresse de Contact 1 pour Bob', 'Adresse'),
                                                           (2, 'Téléphone de Contact 1 pour Bob', 'Téléphone'),
                                                           (2, 'bob@example.com', 'Email'),
                                                           (2, 'www.bob.com', 'Site Web');

-- Insère des données pour Phone, Email et Website
INSERT INTO Phone (contact_detail_id, pattern) VALUES
                                                   (1, 'Téléphone de Contact 1 pour Alice'),
                                                   (2, 'Téléphone de Contact 1 pour Bob');

INSERT INTO Email (contact_detail_id, pattern) VALUES
                                                   (3, 'alice@example.com'),
                                                   (4, 'bob@example.com');

INSERT INTO Website (contact_detail_id, pattern) VALUES
                                                     (5, 'www.alice.com'),
                                                     (6, 'www.bob.com');
