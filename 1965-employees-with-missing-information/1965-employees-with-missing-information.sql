/* Write your PL/SQL query statement below */
select a.employee_id 
  from Employees a
 where a.employee_id not in (select employee_id from salaries )
 union 
select b.employee_id 
  from salaries b
 where b.employee_id not in (select employee_id from Employees )