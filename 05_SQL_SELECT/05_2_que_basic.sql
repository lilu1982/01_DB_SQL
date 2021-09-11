/* QUERIES Basic */

/* 
Felder abfragen 
Felder ausgeben 
Ausgabe beschränken 
*/

-- Abfrage aller Spalten der Tabellen 
#  SELECT * FROM sticks.ccc;

-- Begrenzung: Limit
SELECT
    ticker AS "SYM",
    price AS "Kurs in Doller",
    c_name AS "Unternehmen",
    industry AS "Branche"
FROM stocks.ccc
# LIMIT 5 -- 5 Zeilen ab 0
LIMIT 200,20 -- 10 Zeilen ab 200
;
    