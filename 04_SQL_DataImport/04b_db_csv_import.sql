<<<<<<< HEAD
/* Datenimport - csv ohne ID */

/* DB */
DROP DATABASE IF EXISTS boo;
CREATE DATABASE IF NOT EXISTS boo;

/* Tabelle cats*/

DROP TABLE IF EXISTS boo.cats;

CREATE TABLE IF NOT EXISTS boo.cats
(
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    cat_name VARCHAR(20) NOT NULL,
    fur_color VARCHAR(20) NOT NULL,
    age INT NOT NULL
);

DESCRIBE boo.cats;

-- CSV-Datei parsen
LOAD DATA LOCAL INFILE "04_SQL_DataImport/data/cats_export_no_id.csv"
INTO TABLE boo.cats
FIELDS TERMINATED BY "," 
LINES TERMINATED BY "\n" 
IGNORE 1 ROWS
(cat_name,fur_color,age) -- daten in die richtigen Felder sortieren
;

SELECT * FROM boo.cats;



=======
/* CRUD Create | Read | Update | Delete */  

-- CREATE: siehe 04

#DESCRIBE boo.cats;
#SELECT * FROM boo.cats;

/* UPDATE --> Änderung(en) in bestehender Tab. */

#UPDATE boo.cats SET cat_name = "Alonzo"; -- Achtung, gesamte Spalte wird überschrieben!
#UPDATE boo.cats SET cat_name = "Alonzo" WHERE id = 2; -- besser!
UPDATE boo.cats SET cat_name = "Big Alonzo" WHERE fur_color = "grey"; -- Variante


/* READ - SELECT : NEUE Ergebnistabelle wird erstellt */
SELECT * FROM boo.cats; -- gesamte Tabelle
SELECT cat_name FROM boo.cats; -- einzelnes Feld
SELECT cat_name,age FROM boo.cats; -- Felder kombiniert
SELECT age,cat_name FROM boo.cats; -- Felder kombiniert
SELECT cat_name AS "Katzen", age AS "Alter" FROM boo.cats; -- Felder / neue Namen

/*Restriktionen durch WHERE*/
SELECT 
    cat_name AS "Katzen", 
    age AS "Alter" 
FROM boo.cats
#WHERE id = 1
#WHERE fur_color = "alpinaweiss"
WHERE age > 30 # AND 
;

/* Delete - DS löschen | Vorsicht!! */
#DELETE FROM boo.cats; -- Alle Daten sind weg!!
DELETE FROM boo.cats WHERE id = 2;


SELECT * FROM boo.cats ;
>>>>>>> d9f3048872dd2ec2dd1c7f848188d88590b47ea3

