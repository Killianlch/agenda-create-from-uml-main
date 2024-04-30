-- Suppression des tables existantes
DROP TABLE IF EXISTS coordonnees;
DROP TABLE IF EXISTS contacts;
DROP TABLE IF EXISTS agendas;
DROP TABLE IF EXISTS utilisateurs;

CREATE TABLE User (
                      id INT PRIMARY KEY AUTO_INCREMENT,
                      login VARCHAR(255) NOT NULL,
                      password VARCHAR(255) NOT NULL,
                      jwt VARCHAR(255)
);

CREATE TABLE Agenda (
                        id INT PRIMARY KEY AUTO_INCREMENT,
                        user_id INT,
                        label VARCHAR(255),
                        FOREIGN KEY (user_id) REFERENCES User(id)
);

CREATE TABLE Contact (
                         id INT PRIMARY KEY AUTO_INCREMENT,
                         agenda_id INT,
                         name VARCHAR(255),
                         FOREIGN KEY (agenda_id) REFERENCES Agenda(id)
);

CREATE TABLE ContactDetail (
                               id INT PRIMARY KEY AUTO_INCREMENT,
                               contact_id INT,
                               value VARCHAR(255),
                               pattern VARCHAR(255),
                               FOREIGN KEY (contact_id) REFERENCES Contact(id)
);

CREATE TABLE Address (
                         id INT PRIMARY KEY,
                         contact_detail_id INT,
                         pattern VARCHAR(255),
                         FOREIGN KEY (contact_detail_id) REFERENCES ContactDetail(id)
);

CREATE TABLE Phone (
                       id INT PRIMARY KEY,
                       contact_detail_id INT,
                       pattern VARCHAR(255),
                       FOREIGN KEY (contact_detail_id) REFERENCES ContactDetail(id)
);

CREATE TABLE Email (
                       id INT PRIMARY KEY,
                       contact_detail_id INT,
                       pattern VARCHAR(255),
                       FOREIGN KEY (contact_detail_id) REFERENCES ContactDetail(id)
);

CREATE TABLE Website (
                         id INT PRIMARY KEY,
                         contact_detail_id INT,
                         pattern VARCHAR(255),
                         FOREIGN KEY (contact_detail_id) REFERENCES ContactDetail(id)
);
