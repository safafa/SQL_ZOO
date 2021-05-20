Select teacher.name from teacher Left join dept on dept= dept.id where dept is null 

SELECT teacher.name, dept.name
 FROM teacher INNER JOIN dept
           ON (teacher.dept=dept.id)

SELECT teacher.name, dept.name
 FROM teacher left JOIN dept
           ON (teacher.dept=dept.id)

SELECT teacher.name, dept.name
 FROM teacher right JOIN dept
           ON (teacher.dept=dept.id)

SELECT name, COALESCE(mobile, '07986 444 2266') 
FROM teacher

SELECT teacher.name, COALESCE(dept.name, 'None') 
FROM teacher left join dept on dept = dept.id

Select Count(*) teachers, Count(mobile) mobiles from teacher

Select dept.name ,count(teacher.name) from teacher right join dept on dept = dept.id group by dept.name

SELECT teacher.name, 
CASE teacher.dept 
WHEN '1' THEN 'Sci'
ELSE 'Art'
END dept
FROM teacher


SELECT teacher.name, 
CASE teacher.dept 
WHEN '1' THEN 'Sci'
WHEN '2' THEN 'Sci'
ELSE 'None'
END dept
FROM teacher