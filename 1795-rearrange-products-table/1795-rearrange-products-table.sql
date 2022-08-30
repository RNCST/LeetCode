/* Write your PL/SQL query statement below */
select product_id , 'store1' as store , store1 as price from products where store1 is not null
union
select product_id , 'store2' as store , store2 as price from products where store2 is not null
union
select product_id , 'store3' as store , store3 as price from products where store3 is not null
order by product_id



/*
SELECT 
    product_id,
    store,
    price
FROM Products
UNPIVOT EXCLUDE NULLS
(
	price
	FOR store in (store1 AS 'store1',store2 AS 'store2',store3 AS 'store3')
);

*/