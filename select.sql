SELECT name FROM world
  WHERE population >
     (SELECT population FROM world
      WHERE name='Russia')

Select name from World where  continent = 'Europe' and GDP / population > (Select GDP / population from world where name = 'United Kingdom')

Select name, continent from world where continent IN (Select continent from world where name IN ('Argentina', 'Australia'))

Select name, population from world where population > (select population from world where name = 'Canada') and population <(select population from world where name = 'Poland')

SELECT name, 
CONCAT( CAST (ROUND(population*100/(SELECT population FROM world WHERE name = 'Germany'), 0)AS INT)
, '%')
 AS percentage
FROM world
WHERE continent = 'Europe'

SELECT name 
FROM world
WHERE gdp > (SELECT MAX(gdp)FROM world WHERE continent = 'Europe');

SELECT continent, name, area FROM world x
  WHERE area >= ALL
    (SELECT MAX(area) FROM world y
        WHERE y.continent=x.continent)

SELECT continent, name FROM world x
  WHERE name <= ALL
    (SELECT name FROM world y
        WHERE y.continent=x.continent)

SELECT name, continent
FROM world x
WHERE population >= ALL (SELECT population*3 from world y
                           WHERE x.continent = y.continent 
                           AND x.population != y.population)
