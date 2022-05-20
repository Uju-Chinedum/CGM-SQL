-- Init
-- SELECT * INTO beers
-- FROM brewery_data
-- WHERE "BRANDS" NOT IN ('beta malt', 'grand malt');

-- 1
SELECT "BRANDS", "YEARS", SUM("QUANTITY") AS "QUANTITIES"
FROM francophone
WHERE "YEARS" != 2019
GROUP BY "BRANDS", "YEARS"
ORDER BY "QUANTITIES" DESC
LIMIT 3;

-- 2
SELECT "BRANDS", SUM("QUANTITY") AS "QUANTITIES"
FROM brewery_data
WHERE "COUNTRIES" = 'Ghana'
GROUP BY "BRANDS"
ORDER BY "QUANTITIES" DESC
LIMIT 2;

-- 3
SELECT "BRANDS", SUM("QUANTITY") AS "QUANTITIES"
FROM beers
WHERE "COUNTRIES" = 'Nigeria'
GROUP BY "BRANDS";

-- 4
SELECT "BRANDS", "YEARS", "COUNTRIES", SUM("QUANTITY") AS "QUANTITIES"
FROM anglophone
WHERE "BRANDS" LIKE '%malt'
	AND "YEARS" IN (2018, 2019)
GROUP BY "BRANDS", "YEARS" ,"COUNTRIES"
ORDER BY "QUANTITIES" DESC
LIMIT 1;

-- 5
SELECT "BRANDS", SUM("COST") AS "COSTS"
FROM brewery_data
WHERE "COUNTRIES" = 'Nigeria'
	AND "YEARS" = 2019
GROUP BY "BRANDS"
ORDER BY "COSTS" DESC
LIMIT 1;

-- 6
SELECT "BRANDS", "REGION", SUM("QUANTITY") AS "QUANTITIES"
FROM brewery_data
WHERE "COUNTRIES" = 'Nigeria'
	AND "REGION" = 'southsouth'
GROUP BY "BRANDS", "REGION"
ORDER BY "QUANTITIES" DESC
LIMIT 1;

-- 7
SELECT SUM("QUANTITY")
FROM beers
WHERE "COUNTRIES" = 'Nigeria';

-- 8
SELECT "REGION", SUM("QUANTITY") AS "QUANTITIES"
FROM beers
WHERE "COUNTRIES" = 'Nigeria'
	AND "BRANDS" = 'budweiser'
GROUP BY "REGION";

-- 9
SELECT "REGION", SUM("QUANTITY") AS "QUANTITIES"
FROM beers
WHERE "COUNTRIES" = 'Nigeria'
	AND "BRANDS" = 'budweiser'
	AND "YEARS" = 2019
GROUP BY "REGION";