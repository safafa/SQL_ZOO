SELECT SUM(population)
FROM world

Select distinct continent from world

Select SUM(GDP) from world where continent = 'Africa'

Select COUNT(name) from world where area >= 1000000 

Select SUM(population) from world where name IN('Estonia', 'Latvia', 'Lithuania') 

Select continent, COUNT(name) from world GROUP by continent

Select continent, COUNT(name) from world where population >= 10000000 Group by continent

SELECT continent
FROM world
GROUP BY continent
HAVING SUM(population) >= 100000000;