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
    ticker,
    c_name,
    industry
FROM stocks.ccc
# LIMIT 5 -- 5 Zeilen ab 0
LIMIT 200,10 -- 10 Zeilen ab 200
;
    