SELECT 
    city.city_name,
    count(DISTINCT sales.customer_id) as coffee_customers
FROM         
    sales
               
JOIN  
    products as p on p.product_id=sales.product_id
JOIN 
    customers as c on c.customer_id = sales.customer_id
JOIN 
    city on city.city_id = c.city_id
WHERE 
    p.product_name like '%Coffee%'
GROUP BY 
    city.city_name