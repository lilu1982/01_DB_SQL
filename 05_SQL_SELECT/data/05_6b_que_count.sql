/* QUERIES - count */

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
--Welche verschiedenen Branchen ?
SELECT
    DISTINCT industry Branchen
FROM stocks.ccc
ORDER BY Branchen ASC;
*/

/*
--Wieviele VERSCHIEDENE Branchen?
SELECT
    COUNT(DISTINCT) "Anzahl Branchen)
FROM stocks.ccc
;
*/



-- Wieviele VERSCHIEDENE Brahnchen gibt es
-- in den jewiligen Industriesektoren?

SELECT 
    sector Industriesektoren, -- nicht aggregiert / organisch
    COUNT(DISTINCT industry) Branchen-- aggregiert / durch eine (Fkt.) Funktion erstanden
FROM stocks.ccc
WHERE sector Like "Co%"  -- Filter in nicht aggr. Feldern 
Group BY sector -- bei Kombination nicht aggr. /aggr.
HAVING Branchen > 10 -- Filter in aggr. Felder / nach Group
ORDER BY Branchen DESC -- DESC sortieren 
# LIMIT 5 -- auf (5) Daten begrenzen
;














