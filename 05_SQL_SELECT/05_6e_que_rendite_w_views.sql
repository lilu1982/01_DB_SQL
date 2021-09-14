-- Zeige die Aktie mit der max. Rendite im jeweiligen Industriesektor
-- Rendite p.a. in % = 
-- Dividendenanteil pro Aktie * Anzahl der Auszahlungen/Jahr / Aktienpreis (Kurs) * 100
-- Variante mit VIEWs

USE stocks;

-- Löschen falls vorhanden
DROP VIEW IF EXISTS renditen;
DROP VIEW IF EXISTS renditen_max;
DROP VIEW IF EXISTS top_werte_im_sektor;

-- Berechnung der jährl. Rendite aller Aktienwerte
CREATE VIEW renditen AS
SELECT
    c_name,
    ROUND(dividend * payouts * 100 / price,2) AS rendite
FROM stocks.ccc
;

#SELECT * FROM renditen LIMIT 20;  -- Referenzierung auf VIEW wie Tab.

-- Berechnung der max. Rendite je Sektor
CREATE VIEW renditen_max AS
SELECT
    sector,
    ROUND(MAX(yield),2) AS rendite
FROM stocks.ccc
GROUP BY sector
;

#SELECT * FROM renditen_max;

-- Ergebnis-View:
CREATE VIEW top_werte_im_sektor AS
SELECT
	sector AS "Sektor",
	ticker AS "SYM",
	c_name AS "Firma",
	price AS "Aktienkurs",
	dividend AS "Dividende"
FROM stocks.ccc
;

SELECT * FROM top_werte_im_sektor LIMIT 20;













