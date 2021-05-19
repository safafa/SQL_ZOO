SELECT yr, subject, winner
  FROM nobel
 WHERE yr = 1950

SELECT winner
  FROM nobel
 WHERE yr = 1962
   AND subject = 'Literature'

SELECT yr, subject
  FROM nobel
 WHERE winner = 'Albert Einstein'

SELECT winner
  FROM nobel
 WHERE subject = 'Peace' AND yr >= 2000

SELECT *
  FROM nobel
 WHERE subject = 'Literature' AND yr >=1980 AND yr<=1989

SELECT * FROM nobel
 WHERE  winner IN ('Theodore Roosevelt', 'Woodrow Wilson', 'Jimmy Carter', 'Barack Obama')

Select winner from nobel where winner LIKE 'John%'

Select * from nobel where yr = '1984'  AND subject = 'Chemistry'  OR yr = '1980'  AND subject = 'Physics'

Select * from nobel where subject NOT IN ('Chemistry', 'Medicine') AND yr = 1980

Select * from nobel where yr < 1910  AND subject = 'Medicine'  OR yr >= 2004 AND subject = 'Literature'

select * from nobel where  winner LIKE 'EUGENE O_NEILL'

Select winner, yr, subject from nobel where winner LIKE 'Sir%' Order by yr DESC , winner

SELECT winner, subject
  FROM nobel
 WHERE yr=1984 and subject IN ('Physics','Chemistry')
 ORDER BY subject,winner