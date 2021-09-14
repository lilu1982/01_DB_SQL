/* QUERIES - Distrinct */

-- alle Sektoren
/*
SELECT
    sector
FROM stocks.ccc
ORDER BY sector ASC
LIMIT 50
;
*/

/*
--nur das erste Auftreten von Sektoren
-- welche Verschiedenen Sektoren gibt es?
SELECT
    DISTINCT sector Industriesektoren
FROM stocks.ccc
ORDER BY sector ASC
# LIMIT 50
;
*/

/*
-- Welche Verschiedenen Branchen gibt es?
SELECT
    DISTINCT  industry Branchen
FROM stocks.ccc
ORDER BY industry ASC
# LIMIT 50
;
*/

/*
-- Welche Verschiedenen Auszahlungs-Rythmen gibt es  ?
SELECT
    DISTINCT payouts "Auszahlunge p.a" 
FROM stocks.ccc
ORDER BY payouts ASC
# LIMIT 50
;
*/

/*
-- Welche Unternehmen zahlen monatlich?
SELECT
    DISTINCT Auszahlungs Rythmen 
FROM stocks.ccc
ORDER BY payouts ASC
# LIMIT 50
;
*/
