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
    user_pwd VARCHAR(40) NOT NULL,
    first_name VARCHAR(20) NOT NULL,
    family_name VARCHAR(20) NOT NULL
);

DESCRIBE boo.users;

<<<<<<< HEAD
/* Daten */
#INSERT INTO boo.users(user_name,user_pwd,first_name,family_name) VALUES ("max","1234","Max","Mütze");
#INSERT INTO boo.users(user_name,user_pwd,first_name,family_name) VALUES ("maxine","#7xD0","Maxine","Mütze");
#INSERT INTO boo.users(user_name,user_pwd,first_name,family_name) VALUES ("max1","user1234","Max","Mützerich");

-- Nachteil: PWDs liegen offen!
/*
INSERT INTO 
	boo.users(user_name,user_pwd,first_name,family_name)
VALUES 
	("max","1234","Max","Mütze"),
	("maxine","#7xD0","Maxine","Mütze"),
	("max1","user1234","Max","Mützerich")
;
*/

=======
>>>>>>> 8985bc890161d0b48a5e1a4e2e43fe736697df86
-- Besser: PWDs verschlüsselt, zB. als SAH1-Hash
INSERT INTO 
	boo.users(user_name,user_pwd,first_name,family_name)
VALUES 
	("max",SHA1("1234"),"Max","Mütze"),
	("maxine",SHA1("#7xD0"),"Maxine","Mütze"),
	("max1",SHA1("user1234"),"Max","Mützerich")
;

SELECT * FROM boo.users;
<<<<<<< HEAD
=======

/* Änderungen an bestehender Tabelle */
ALTER TABLE boo.users ADD user_plz INT(5) NOT NULL DEFAULT 00000;
DESCRIBE boo.users;

SELECT * FROM boo.users;

#UPDATE boo.users SET user_plz = 70367 WHERE first_name = "Max";
UPDATE boo.users SET user_plz = 70367 WHERE id = 1;

SELECT * FROM boo.users;

#>>>>>>> 8985bc890161d0b48a5e1a4e2e43fe736697df86
