SELECT id, title
 FROM movie
 WHERE yr=1962

Select yr from movie where title = 'Citizen Kane'

Select id, title, yr from movie where title Like '%Star Trek%'

Select id from actor where name= 'Glenn Close'

Select id from movie where title = 'Casablanca'

Select name from actor join casting on (id = actorid) where movieid = 27

Select name from actor join casting on (id = actorid) where movieid LIKE (Select id from movie where title = 'Alien' )

Select title from movie join casting on id=movieid  where actorid LIKE (Select id from actor where name = 'Harrison Ford' )

Select title from movie join casting on id=movieid  where actorid LIKE (Select id from actor where name = 'Harrison Ford' ) and ord != 1

SELECT title, name
FROM movie
 JOIN casting
ON movie.id = casting.movieid
 JOIN actor 
ON actor.id = casting.actorid
WHERE yr = '1962' AND ord=1;

SELECT yr,COUNT(title) FROM
  movie JOIN casting ON movie.id=movieid
        JOIN actor   ON actorid=actor.id
WHERE name='Doris Day'
GROUP BY yr
HAVING COUNT(title) > 1

SELECT title, name 
FROM movie
INNER JOIN casting
ON movie.id = casting.movieid
INNER JOIN actor
ON actor.id = casting.actorid
WHERE movieid IN ( 
  SELECT movieid FROM casting 
  WHERE actorid IN (
    SELECT id FROM actor
    WHERE name='Julie Andrews') )
AND ord =1;

SELECT name
FROM actor
JOIN casting
ON actor.id=casting.actorid
 JOIN movie
ON movie.id = casting.movieid
WHERE ord=1
GROUP BY name
HAVING COUNT(actorid)>=15

SELECT title, COUNT(movieid)
FROM movie
 JOIN casting
ON movie.id = casting.movieid
 JOIN actor
ON actor.id = casting.actorid
WHERE yr= '1978'
GROUP BY title
ORDER BY COUNT(movieid) DESC, title

SELECT DISTINCT name
FROM actor
 JOIN casting
ON actor.id=casting.actorid
JOIN movie
ON movie.id = casting.movieid
WHERE movieid IN (
  SELECT movieid FROM casting 
  WHERE actorid IN (
    SELECT id FROM actor 
    WHERE name LIKE 'Art Garfunkel'))
AND name NOT LIKE 'Art Garfunkel'