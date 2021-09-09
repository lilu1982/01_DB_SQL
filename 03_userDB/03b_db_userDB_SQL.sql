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

-- Besser: PWDs verschlüsselt, zB. als SAH1-Hash
INSERT INTO 
	boo.users(user_name,user_pwd,first_name,family_name)
VALUES 
	("max",SHA1("1234"),"Max","Mütze"),
	("maxine",SHA1("#7xD0"),"Maxine","Mütze"),
	("max1",SHA1("user1234"),"Max","Mützerich")
;

SELECT * FROM boo.users;

/* Änderungen an bestehender Tabelle */
ALTER TABLE boo.users ADD user_plz INT(5) NOT NULL DEFAULT 00000;
DESCRIBE boo.users;

SELECT * FROM boo.users;

#UPDATE boo.users SET user_plz = 70367 WHERE first_name = "Max";
UPDATE boo.users SET user_plz = 70367 WHERE id = 1;

SELECT * FROM boo.users;

