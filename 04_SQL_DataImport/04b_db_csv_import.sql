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

