/* Aggregationen MIN/MAX */

-- Preis der teuersten/günstigsten Aktie?
/*
SELECT
    #MAX(price) "Max. Preis"
    MIN(price) "Min. Preis"
FROM stocks.ccc
;
*/

#SELECT MAX(price) FROM stocks.ccc;
#SELECT MIN(price) FROM stocks.ccc;

-- WELCHE Aktie ist am teuersten/günstigsten ?
-- 1. Subquery
-- 2. ORDER BY .... ASC/DESC & LIMIT 1

/*
SELECT
    ticker AS "SYM",
    c_name AS Unternehmen,
    price Aktienkurs    
FROM stocks.ccc
-- SUBQUERY, hier: zeig mir den max./min. Wert
#WHERE price = (SELECT MAX(price) FROM stocks.ccc) -- wichtig: () !
WHERE price = (SELECT MIN(price) FROM stocks.ccc)
;
*/


SELECT
    ticker AS "SYM",
    c_name AS Unternehmen,
    price Aktienkurs    
FROM stocks.ccc
#ORDER BY price ASC
ORDER BY price DESC
LIMIT 1
;

-- Welches Unternehmen hat die längste Div.-Historie ?
SELECT
    ticker AS "SYM",
    c_name AS Unternehmen,
    price Aktienkurs    
FROM stocks.ccc
ORDER BY no_yrs DESC
LIMIT 1
;










