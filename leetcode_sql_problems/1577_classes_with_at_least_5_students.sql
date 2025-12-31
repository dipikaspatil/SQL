/*
LeetCode 1577 — Classes With At Least 5 Students

Table: Student(id INT, name VARCHAR, class VARCHAR, grade INT)

Goal:
Return the classes that have at least 5 students.
*/

/* -------------------------
   Main Solution
-------------------------- */

SELECT class
FROM Student
GROUP BY class
HAVING COUNT(*) >= 5;


/* -------------------------
   Notes
--------------------------

- We use GROUP BY to aggregate students by class.
- HAVING COUNT(*) >= 5 filters classes with at least 5 students.
- WHERE cannot be used because it cannot filter aggregates.
- The output can be in any order.

*/
