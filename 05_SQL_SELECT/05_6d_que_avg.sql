/* Aggregationen AVG() */

-- Durchschnittspreis einer Aktie / Banken?
/*
SELECT
    ROUND(AVG(price),2) Durchschnittspreis -- Abgerundet / 2 Nachkommastellen
FROM stocks.ccc
#WHERE industry = "Banks"
WHERE industry = "Media"
;
*/

-- KOMBINATION Preis/Dividende pro Industriesektor
SELECT
    sector Industriesektor, -- organisch
    ROUND(AVG(price),2) Durchschnittspreis, -- aggregiert (berechnet)
    AVG (dividend) Durschnittsdividende -- aggregiert (berechnet)
FROM stocks.ccc
GROUP BY sector
#ORDER BY Durchschnittspreis DESC
ORDER BY Durschnittsdividende DESC
;







