/* Write your PL/SQL query statement below */
SELECT NAME
  FROM CUSTOMER
 WHERE 1=1
   AND (REFEREE_ID <> 2 OR REFEREE_ID IS NULL)