/* Write your PL/SQL query statement below */
SELECT name
     , population
     , area
  FROM WORLD A
 WHERE 1=1
   AND (A.POPULATION >= 25000000 OR A.AREA >= 3000000)
   