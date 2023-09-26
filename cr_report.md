```
SELECT * FROM Students
```
![](https://sun9-43.userapi.com/impg/NARWn6xzi8dCCFwumv_AjhP2KkiSnOoZUZHPfA/c2A2Uox4AXg.jpg?size=527x368&quality=96&sign=84d347a3366364b4ef345d33b8eff14a&type=album)

1)
```
SELECT firstname, lastname FROM Students WHERE age > 21 
```
https://sun9-32.userapi.com/impg/pKspVsiXiM-Cc1fAV3VjsWHPtTyiysfdr6DZ4A/4ExSeerlcd4.jpg?size=347x313&quality=96&sign=1262d0a26f702595e9a0b06d97f1971c&type=album
3)
```
SELECT * FROM courses
```
https://sun9-73.userapi.com/impg/PqQkqQbL1P76vZ2aVRGKpIhPILS-7Tew2zO0Nw/qKoyuq9ibwA.jpg?size=301x369&quality=96&sign=a53564b11462bd61902db15236a2a807&type=album
4)
```
SELECT s.firstname, s.lastname, c.coursename FROM students s
JOIN studentcourses sc ON s.age = sc.studentid
JOIN courses c ON sc.courseid = c.courseid
WHERE c.coursename = 'Математика'
```
dfs
