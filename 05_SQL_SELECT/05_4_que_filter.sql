/* QUERIES Filtern mit WHERE */

/*
    Eingrenzen/Filtern WHERE & AND/OR etc.
    Eingrenzen/Filtern WHERE & LIKE + Parameter
    Eingrenzen/Filtern WHERE & RegEx
    Eingrenzen/Filtern WHERE & IN / NOT IN
    Eingrenzen/Filtern WHERE & BETWEEN / NOT BETWEEN
*/


SELECT 
    ticker AS "SYM",
    price AS "Kurs in $",
    c_name AS "Unternehmen",
   # industry AS "Branche"
    CONCAT(sector, "|",industry) AS "Operations"
FROM stocks.ccc
LIMIT 10 -- X Zeilen ab 0
#LIMIT 200,10 -- 10 Zeilen ab 200
;


