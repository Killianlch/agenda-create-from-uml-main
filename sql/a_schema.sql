DROP TABLE IF EXISTS Address;
DROP TABLE IF EXISTS Phone;
DROP TABLE IF EXISTS Email;
DROP TABLE IF EXISTS Website;
DROP TABLE IF EXISTS ContactDetail;
DROP TABLE IF EXISTS Contact;
DROP TABLE IF EXISTS Agenda;
DROP TABLE IF EXISTS "User";

<<<<<<< HEAD
CREATE TABLE User (
                      id INT PRIMARY KEY AUTO_INCREMENT,
=======

CREATE TABLE "User" (
                      id SERIAL PRIMARY KEY,
>>>>>>> 28302d0c6dcc039c38807eb8f01320c5db21dfa8
                      login VARCHAR(255) NOT NULL,
                      password VARCHAR(255) NOT NULL,
                      jwt VARCHAR(255)
);

<<<<<<< HEAD
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
=======

CREATE TABLE Agenda (
                        id SERIAL PRIMARY KEY,
                        user_id INT,
                        label VARCHAR(255),
                        FOREIGN KEY (user_id) REFERENCES "User"(id)
);


CREATE TABLE Contact (
                         id SERIAL PRIMARY KEY,
                         agenda_id INT,
                         name VARCHAR(255),
                         FOREIGN KEY (agenda_id) REFERENCES Agenda(id)
);


CREATE TABLE ContactDetail (
                               id SERIAL PRIMARY KEY,
>>>>>>> 28302d0c6dcc039c38807eb8f01320c5db21dfa8
                               contact_id INT,
                               value VARCHAR(255),
                               pattern VARCHAR(255),
                               FOREIGN KEY (contact_id) REFERENCES Contact(id)
);

<<<<<<< HEAD
CREATE TABLE Address (
                         id INT PRIMARY KEY,
=======

CREATE TABLE Address (
                         id SERIAL PRIMARY KEY,
>>>>>>> 28302d0c6dcc039c38807eb8f01320c5db21dfa8
                         contact_detail_id INT,
                         pattern VARCHAR(255),
                         FOREIGN KEY (contact_detail_id) REFERENCES ContactDetail(id)
);

<<<<<<< HEAD
CREATE TABLE Phone (
                       id INT PRIMARY KEY,
=======

CREATE TABLE Phone (
                       id SERIAL PRIMARY KEY,
>>>>>>> 28302d0c6dcc039c38807eb8f01320c5db21dfa8
                       contact_detail_id INT,
                       pattern VARCHAR(255),
                       FOREIGN KEY (contact_detail_id) REFERENCES ContactDetail(id)
);

<<<<<<< HEAD
CREATE TABLE Email (
                       id INT PRIMARY KEY,
=======

CREATE TABLE Email (
                       id SERIAL PRIMARY KEY,
>>>>>>> 28302d0c6dcc039c38807eb8f01320c5db21dfa8
                       contact_detail_id INT,
                       pattern VARCHAR(255),
                       FOREIGN KEY (contact_detail_id) REFERENCES ContactDetail(id)
);

<<<<<<< HEAD
CREATE TABLE Website (
                         id INT PRIMARY KEY,
=======

CREATE TABLE Website (
                         id SERIAL PRIMARY KEY,
>>>>>>> 28302d0c6dcc039c38807eb8f01320c5db21dfa8
                         contact_detail_id INT,
                         pattern VARCHAR(255),
                         FOREIGN KEY (contact_detail_id) REFERENCES ContactDetail(id)
);
