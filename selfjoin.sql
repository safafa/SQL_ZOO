select count(*) from stops

select id from stops where name like 'Craiglockhart' 

select id, name from stops join route on stops.id = stop where company like 'LRT' and num like '4'

SELECT company, num, COUNT(*)
FROM route WHERE stop=149 OR stop=53
GROUP BY company, num Having COUNT(*) = 2

SELECT a.company, a.num, a.stop, b.stop
FROM route a JOIN route b ON
  (a.company=b.company AND a.num=b.num)
WHERE a.stop=53 and b.stop=149

SELECT a.company, a.num, stopa.name, stopb.name
FROM route a JOIN route b ON
  (a.company=b.company AND a.num=b.num)
  JOIN stops stopa ON (a.stop=stopa.id)
  JOIN stops stopb ON (b.stop=stopb.id)
WHERE stopa.name='Craiglockhart' and  stopb.name='London Road'

SELECT DISTINCT a.company, a.num
FROM route a JOIN route b ON
  (a.company=b.company AND a.num=b.num)
  JOIN stops stopa ON (a.stop=stopa.id)
  JOIN stops stopb ON (b.stop=stopb.id)
WHERE stopa.name='Haymarket' and  stopb.name='Leith' 

SELECT DISTINCT a.company, a.num
FROM route a JOIN route b ON
  (a.company=b.company AND a.num=b.num)
  JOIN stops stopa ON (a.stop=stopa.id)
  JOIN stops stopb ON (b.stop=stopb.id)
WHERE stopa.name='Craiglockhart' and  stopb.name='Tollcross' 

SELECT DISTINCT  stopb.name, a.company, a.num
FROM route a JOIN route b ON
  ( a.company= b.company and a.num=b.num)
  JOIN stops stopa ON (a.stop=stopa.id)
  JOIN stops stopb ON (b.stop=stopb.id)
WHERE stopa.name='Craiglockhart' and  a.company='LRT' 

SELECT  a.num, a.company,  stops.name,  d.num, d.company
FROM route a JOIN route b ON
  ( a.company= b.company and a.num=b.num)
  JOIN stops  ON (b.stop=stops.id)
  JOIN route c ON
  ( c.stop= stops.id)
 JOIN route d ON
  ( c.company= d.company and c.num=d.num)
WHERE a.stop = (SELECT id FROM stops WHERE name = 'Craiglockhart')
AND d.stop = (SELECT id FROM stops WHERE name = 'Lochend')
ORDER BY a.num, stops.name, d.num; 