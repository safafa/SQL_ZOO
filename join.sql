SELECT matchid, player FROM goal 
  WHERE teamid LIKE 'GER'

SELECT id,stadium,team1,team2
  FROM game
WHERE id = 1012;

SELECT player, teamid, stadium, mdate
  FROM game JOIN goal ON (id=matchid) where teamid LIKE 'GER'

SELECT team1, team2, player
FROM game JOIN goal ON (id=matchid) where player LIKE 'Mario%'

SELECT player, teamid, coach, gtime
  FROM goal join eteam ON (teamid=id)
 WHERE gtime<=10

Select mdate, teamname from game JOIN eteam ON (team1=eteam.id) where coach like 'Fernando Santos'

Select player from goal join game on (matchid=id) where stadium LIKE 'National Stadium, Warsaw';

SELECT DISTINCT player
  FROM game JOIN goal ON matchid = id 
    WHERE (team1='GER' OR team2='GER') AND teamid!='GER'

SELECT teamname, COUNT(*)
  FROM eteam JOIN goal ON id=teamid
 GROUP BY teamname

select stadium, count(*) from game join goal on (matchid=id) group by stadium

SELECT matchid,mdate, count(*)
  FROM game JOIN goal ON matchid = id 
 WHERE (team1 = 'POL' OR team2 = 'POL') Group by matchid, mdate

Select matchid, mdate, Count(*) from game join goal on (matchid=id) where teamid LIKE 'GER' group by matchid, mdate

SELECT mdate,
  team1,
  SUM(CASE WHEN teamid=team1 THEN 1 ELSE 0 END) score1,
  team2,
  SUM(CASE WHEN teamid=team2 THEN 1 ELSE 0 END) score2
  FROM game LEFT JOIN goal ON matchid = id
GROUP BY mdate, matchid, team1, team2
ORDER BY mdate, matchid, team1, team2

