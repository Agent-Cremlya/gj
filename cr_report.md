```
SELECT * FROM Students
```
![](https://sun9-43.userapi.com/impg/NARWn6xzi8dCCFwumv_AjhP2KkiSnOoZUZHPfA/c2A2Uox4AXg.jpg?size=527x368&quality=96&sign=84d347a3366364b4ef345d33b8eff14a&type=album)

1)
```
SELECT firstname, lastname FROM Students WHERE age > 21 
```
![](https://sun9-32.userapi.com/impg/pKspVsiXiM-Cc1fAV3VjsWHPtTyiysfdr6DZ4A/4ExSeerlcd4.jpg?size=347x313&quality=96&sign=1262d0a26f702595e9a0b06d97f1971c&type=album)
3)
```
SELECT * FROM courses
```
![](https://sun9-73.userapi.com/impg/PqQkqQbL1P76vZ2aVRGKpIhPILS-7Tew2zO0Nw/qKoyuq9ibwA.jpg?size=301x369&quality=96&sign=a53564b11462bd61902db15236a2a807&type=album)
4)
```
SELECT s.firstname, s.lastname, c.coursename FROM students s
JOIN studentcourses sc ON s.age = sc.studentid
JOIN courses c ON sc.courseid = c.courseid
WHERE c.coursename = 'Математика'
```
5)
SELECT firstname, lastname FROM students
WHERE age = 20 AND studentid IN (SELECT studentid FROM studentcourses WHERE courseid = (SELECT courseid FROM courses WHERE coursename = 'История'));
![image](https://github.com/Agent-Cremlya/gj/assets/67115483/a7b5a577-4e1f-4920-8a3a-4f4f47f52777)
6)



7)
SELECT AVG(age) FROM students;
![image](https://github.com/Agent-Cremlya/gj/assets/67115483/233416c9-6e05-4188-8cff-e26635e0adbc)

8)
SELECT firstname, lastname FROM students
WHERE NOT (studentid IN (SELECT studentid FROM studentcourses))
![image](https://github.com/Agent-Cremlya/gj/assets/67115483/f42e3088-493b-43fa-b023-662c4551babc)

9)
SELECT c.coursename, COUNT(sc.studentid) as amount_students from courses c
LEFT JOIN studentcourses sc ON c.courseid = sc.courseid
GROUP BY c.coursename
![image](https://github.com/Agent-Cremlya/gj/assets/67115483/fb45efbd-9ae9-46e6-ad78-35501ec843a3)

10)
SELECT firstname, lastname, courses.coursename FROM students 
JOIN studentcourses ON students.studentid = studentcourses.studentid
JOIN courses ON studentcourses.courseid = courses.courseid
WHERE courses.coursename = 'Биология'
![image](https://github.com/Agent-Cremlya/gj/assets/67115483/b26b1977-4c2b-4533-b8ed-538beb7963fd)

3)
SELECT s.firstname, s.lastname, c.coursename FROM students s
JOIN studentcourses sc ON s.age = sc.studentid
JOIN courses c ON sc.courseid = c.courseid
![image](https://github.com/Agent-Cremlya/gj/assets/67115483/9b5ab40c-3777-4331-8b3c-af64c9dce889)


6)
SELECT firstname, lastname FROM students WHERE age = (SELECT Max(Age) From Students)
![image](https://github.com/Agent-Cremlya/gj/assets/67115483/b5fbaaf4-4cd2-4ef7-a20c-73c7a42efc2b)

9)
SELECT firstname, lastname FROM students 
WHERE NOT (studentid IN (SELECT studentid FROM studentcourses)) AND	age > 18
![image](https://github.com/Agent-Cremlya/gj/assets/67115483/45e43f1c-30ea-458a-bd1e-1d999c4d73f6)
