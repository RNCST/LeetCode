/* Write your PL/SQL query statement below */
select user_id,
       initcap(name) as name
  from users
  order by 1