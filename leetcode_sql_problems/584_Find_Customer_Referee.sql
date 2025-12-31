## 📝 Problem

Table: `Customer`

| Column      | Type    |
|-------------|---------|
| id          | int     |
| name        | varchar |
| referee_id  | int     |

Each row of the `Customer` table indicates the ID of a customer, their name, and the ID of the customer who referred them.

Write an SQL query to **find the names of customers that are NOT referred by the customer with id = 2**.  
Return the result table in **any order**.

Find the names of the customer that are either:

referred by any customer with id != 2.
not referred by any customer.
Return the result table in any order.

The result format is in the following example.

 

Example 1:

Input: 
Customer table:
+----+------+------------+
| id | name | referee_id |
+----+------+------------+
| 1  | Will | null       |
| 2  | Jane | null       |
| 3  | Alex | 2          |
| 4  | Bill | null       |
| 5  | Zack | 1          |
| 6  | Mark | 2          |
+----+------+------------+
Output: 
+------+
| name |
+------+
| Will |
| Jane |
| Bill |
| Zack |
+------+

---

## ✅ Solution (SQL)

```sql
SELECT name
FROM Customer
WHERE referee_id != 2
   OR referee_id IS NULL;

