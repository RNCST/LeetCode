/* Write your PL/SQL query statement below */



select to_char(b.sell_Date,'YYYY-MM-DD') as sell_date
    , count(b.product) as num_sold 
    , listagg(b.product,',') within group (order by product) products
from 
(select distinct a.sell_date , a.product
  from activities a
 where a.sell_date = a.sell_date) b
 group by sell_date
 
 
 