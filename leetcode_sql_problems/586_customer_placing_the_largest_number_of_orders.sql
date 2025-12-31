/* 
LeetCode 586 — Customer Placing the Largest Number of Orders

Table: Orders(order_number INT, customer_number INT)

Goal:
Return the customer_number of the customer who placed the MOST orders.
It is guaranteed that exactly one customer has the highest number of orders.
*/

/* -------------------------
   Main Solution
-------------------------- */

SELECT customer_number
FROM Orders
GROUP BY customer_number
ORDER BY COUNT(*) DESC
LIMIT 1;


/* -----------------------------------------------------------
   NOTES: Why we do NOT use MAX(COUNT(*)) directly
-------------------------------------------------------------

The following DOES NOT work:

    SELECT MAX(COUNT(*)) FROM Orders;

SQL cannot nest aggregate functions like MAX(COUNT(*))
because GROUP results must exist before MAX can be applied.

-------------------------------------------------------------
   Correct alternatives (if ties were possible)
----------------------------------------------------------- */

/* Alternative 1 — Subquery using MAX on grouped counts */

-- Returns ALL customers tied for highest number of orders
SELECT customer_number
FROM Orders
GROUP BY customer_number
HAVING COUNT(*) = (
    SELECT MAX(cnt)
    FROM (
        SELECT COUNT(*) AS cnt
        FROM Orders
        GROUP BY customer_number
    ) t
);


/* Alternative 2 — Window function */

-- Returns all customers tied for rank 1
SELECT customer_number
FROM (
    SELECT customer_number,
           COUNT(*) AS cnt,
           RANK() OVER (ORDER BY COUNT(*) DESC) AS rnk
    FROM Orders
    GROUP BY customer_number
) ranked
WHERE rnk = 1;

