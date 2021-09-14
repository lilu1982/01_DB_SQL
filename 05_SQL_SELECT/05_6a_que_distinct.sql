/*QUERIES - Distinct*/

-- alle Sektoren
/*
SELECT
    sector
FROM stocks.ccc
ORDER BY sector ASC
LIMIT 50
;
*/

-- nur das erste Auftreten von Sektoren
-- welche VERSCHIEDENEN Sektoren gibt es?
/*
SELECT
    DISTINCT sector Industriesektoren
FROM stocks.ccc
ORDER BY sector ASC
;
*/

-- welche VERSCHIEDENEN Branchen gibt es?
/*
SELECT
    DISTINCT industry Branchen
FROM stocks.ccc
ORDER BY industry ASC
;
*/

-- welche VERSCHIEDENEN Auszahlungs-Rhythmen gibt es?
/*
SELECT
    DISTINCT payouts "Auszahlungen p.a."
FROM stocks.ccc
ORDER BY payouts ASC;
*/

-- welche Unternehmen zahlen monatlich?
SELECT
    c_name Unternehmen,
    industry Branche
FROM stocks.ccc
WHERE payouts = 12
ORDER BY Branche ASC
;

