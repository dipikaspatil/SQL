# LeetCode — 175. Combine Two Tables

## 📝 Problem

You are given two tables:

### Person
| Column     | Type    |
|-----------|---------|
| personId  | int     |
| lastName  | varchar |
| firstName | varchar |

### Address
| Column     | Type    |
|-----------|---------|
| addressId | int     |
| personId  | int     |
| city      | varchar |
| state     | varchar |

Write a SQL query to report the `firstName`, `lastName`, `city`, and `state` of each person.

- Return **all people**, even if they do not have an address.
- If there is no address, return `NULL` for `city` and `state`.

---

## ✅ Solution

```sql
SELECT 
    p.firstName,
    p.lastName,
    a.city,
    a.state
FROM Person p
LEFT JOIN Address a
    ON p.personId = a.personId;

