/* QUERIES Basic */

/*
Felder abfragen
Felder kombinieren
Ausgabe beschränken
*/

-- Abfrage aller Spalten der Tab
#SELECT * FROM stocks.ccc;

-- Begrenzung: LIMIT
-- Abfrage eines Feldes oder einer Feld-Kombi m. Umbenennung (Alias)
SELECT 
    ticker AS "SYM",
    price AS "Kurs in $",
    c_name AS "Unternehmen",
    industry AS "Branche"
FROM stocks.ccc
LIMIT 10 -- X Zeilen ab 0
#LIMIT 200,10 -- 10 Zeilen ab 200
;


