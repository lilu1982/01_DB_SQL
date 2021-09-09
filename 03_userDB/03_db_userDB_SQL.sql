/* USER DB Vers. 1 */

/* DB */
DROP DATABASE IF EXISTS boo;
CREATE DATABASE IF NOT EXISTS boo;

/* Tabelle users*/

DROP TABLE IF EXISTS boo.users;

CREATE TABLE IF NOT EXISTS boo.users
(
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    user_name VARCHAR(20) NOT NULL UNIQUE,
    first_name VARCHAR(20) NOT NULL,
    family_name VARCHAR(20) NOT NULL
);

DESCRIBE boo.users;

/* Daten */
INSERT INTO boo.users(user_name,first_name,family_name) VALUES ("max","Max","Mütze");
INSERT INTO boo.users(user_name,first_name,family_name) VALUES ("maxine","Maxine","Mütze");

# Gleiche User-Namen werden zugelassen!
INSERT INTO boo.users(user_name,first_name,family_name) VALUES ("max1","Max","Mützerich");

SELECT * FROM boo.users;
