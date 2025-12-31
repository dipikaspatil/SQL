## 📝 Problem

Table: `Cinema`

| Column      | Type    |
|------------|---------|
| id         | int     |
| movie      | varchar |
| description| varchar |
| rating     | float   |

Write a SQL query to report all **odd-numbered movies** (`id` is odd) with a description **not equal to "boring"**.  

Sort the results by `rating` in **descending order**. Return all columns.

---

## ✅ Solution (SQL)

```sql
SELECT *
FROM Cinema
WHERE id % 2 = 1
  AND description != 'boring'
ORDER BY rating DESC;
