# Write your MySQL query statement below
SELECT FirstName, LastName, City, State
    FROM Person ps
    left JOIN Address ad ON ad.PersonId = ps.PersonId