/* QUERIES Filtern mit WHERE */

/*
    Eingrenzen/Filtern WHERE & AND/OR etc.
    Eingrenzen/Filtern WHERE & LIKE + Parameter
    Eingrenzen/Filtern WHERE & RegEx
    Eingrenzen/Filtern WHERE & IN / NOT IN
    Eingrenzen/Filtern WHERE & BETWEEN / NOT BETWEEN
*/

-- Eingrenzen/Filtern WHERE & AND/OR etc.
-- Scharfe Suche
/*
SELECT 
    ticker AS "SYM",
    c_name AS "Unternehmen",
    price AS "Kurs ($)",
    payouts AS "Z. p.a.",
    dividend AS "Dividende",
    CONCAT(sector, "|",industry) AS "Operations"
FROM stocks.ccc
-- Einzeldaten / Strings
#WHERE sector = "Communication Services" -- spez. Sektor
#WHERE industry = "Media" -- spez. Branche
#WHERE payouts = 12 -- Wer zahlt monatlich?
-- Kombination durch AND
#WHERE sector = "Communication Services" AND industry = "Entertainment"
#WHERE sector = "Communication Services" AND payouts = 12
-- Kombination durch AND / OR
#WHERE sector = "Communication Services" AND (industry = "Entertainment" OR industry = "Media")
-- Kombination durch AND / NOT
WHERE sector = "Communication Services" AND NOT industry = "Media"
ORDER BY industry DESC
LIMIT 20 -- X Zeilen ab 0
;
*/


-- Eingrenzen/Filtern WHERE & LIKE + Parameter
-- Unscharfe Suche 
SELECT 
    ticker AS "SYM",
    c_name AS "Unternehmen",
    price AS "Kurs ($)",
    payouts AS "Z. p.a.",
    dividend AS "Dividende",
    CONCAT(sector, "|",industry) AS "Operations"
FROM stocks.ccc

ORDER BY industry DESC
LIMIT 20 -- X Zeilen ab 0
;