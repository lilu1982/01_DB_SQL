/* QUERIES Sortierung */

-- ASC / DESC

SELECT 
    ticker AS "SYM",
    c_name AS "Unternehmen",
    price AS "Kurs in $",
   # no_yrs AS "YEARS ++",
    CONCAT(sector, " | ",industry) AS "Operations"
FROM stocks.ccc
#ORDER BY ticker ASC -- SYM, alphabetisch, aufsteigend
#ORDER BY ticker DESC -- SYM, alphabetisch, absteigend
#ORDER BY price ASC -- Kurs, beginnend mit der günstigsten Aktie
#ORDER BY price DESC -- Kurs, beginnend mit der teuerste Aktie
#ORDER BY no_yrs DESC -- Aktien mit der längsten Div.-Historie
#ORDER BY sector DESC,industry ASC  -- Kombination ASC / DESC alphabet.
ORDER BY no_yrs DESC, sector ASC  -- Kombination ASC / DESC  alphabet. / numerisch
LIMIT 40 
;


