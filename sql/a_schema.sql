DROP TABLE IF EXISTS Address;
DROP TABLE IF EXISTS Phone;
DROP TABLE IF EXISTS Email;
DROP TABLE IF EXISTS Website;
DROP TABLE IF EXISTS ContactDetail;
DROP TABLE IF EXISTS Contact;
DROP TABLE IF EXISTS Agenda;
DROP TABLE IF EXISTS "User";


CREATE TABLE "User" (
                        id SERIAL PRIMARY KEY,
                        login VARCHAR(255) NOT NULL,
                        password VARCHAR(255) NOT NULL,
                        jwt VARCHAR(255)
);


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
                               contact_id INT,
                               value VARCHAR(255),
                               pattern VARCHAR(255),
                               FOREIGN KEY (contact_id) REFERENCES Contact(id)
);


CREATE TABLE Address (
                         id SERIAL PRIMARY KEY,
                         contact_detail_id INT,
                         pattern VARCHAR(255),
                         FOREIGN KEY (contact_detail_id) REFERENCES ContactDetail(id)
);


CREATE TABLE Phone (
                       id SERIAL PRIMARY KEY,
                       contact_detail_id INT,
                       pattern VARCHAR(255),
                       FOREIGN KEY (contact_detail_id) REFERENCES ContactDetail(id)
);


CREATE TABLE Email (
                       id SERIAL PRIMARY KEY,
                       contact_detail_id INT,
                       pattern VARCHAR(255),
                       FOREIGN KEY (contact_detail_id) REFERENCES ContactDetail(id)
);


CREATE TABLE Website (
                         id SERIAL PRIMARY KEY,
                         contact_detail_id INT,
                         pattern VARCHAR(255),
                         FOREIGN KEY (contact_detail_id) REFERENCES ContactDetail(id)
);