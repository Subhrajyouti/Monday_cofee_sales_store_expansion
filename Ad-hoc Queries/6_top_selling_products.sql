-- top 3 selling products per city by volume
WITH top_selling AS
(
    SELECT 
            city.city_name,
            p.product_name,
            count(sale_id) as sale_volume,
            Dense_rank() over (partition by city.city_name ORDER BY count(sale_id) desc) as ranks
    FROM         
                sales
    JOIN  products as p on p.product_id=sales.product_id
    JOIN customers as c on c.customer_id = sales.customer_id
    JOIN city on city.city_id = c.city_id
    GROUP BY 
                    p.product_id,city.city_name
)
SELECT *
FROM top_selling
WHERE   
     ranks<=3                
                

