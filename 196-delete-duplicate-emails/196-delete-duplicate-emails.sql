/*
 Please write a DELETE statement and DO NOT write a SELECT statement.
 Write your PL/SQL query statement below
 */

delete  
 from person a
 where 1=1
   and a.id not in (select min(id) from person group by email)