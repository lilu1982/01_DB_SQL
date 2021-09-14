-- source 05_SQL_SELECT/data/05_6c_que-min_max.sql
/* Aggregationen MIN/MAX */

-- Preis der teuersten / günstigsten Aktie ?
/*
SELECT 
    # MAX(price) "Max. Preis"
    MIN(price) "Min. Preis"
FROM stocks.ccc
;
*/

# SELECT MAX(price)  FROM stocks.ccc
# SELECT MIN(price) FROM stocks.ccc

-- Welche Aktie ist am teuersten / günstigsten ?
-- 1. Subquery
-- 2. ORDER BY .... ASC/DESC & LIMIT 1

SELECT
    ticker AS "SYM",
    c_name AS Unternehmen,
    price Aktienkurs
FROM stocks.ccc
# ORDER BY price ASC
ORDER BY no_yrs DESC
LIMIT 1
# Subquery, hier : zeig mir den max./min. Wert 
# WHERE price = (SELECT MAX(price)  FROM stocks.ccc) -- Subquery muss in Klammern ()
# WHERE price = (SELECT MIN(price)  FROM stocks.ccc) -- Subquery muss in Klammern
;