--Total_revenue_across_all cities
SELECT  
        city.city_name,
        sum(total) as Revenue

FROM sales

LEFT JOIN     
    customers AS ct on sales.customer_id=ct.customer_id
INNER JOIN    
    city on ct.city_id=city.city_id
WHERE 
    EXTRACT(YEAR FROM sale_date)  = 2023
	AND
	EXTRACT(quarter FROM sale_date) = 4    
GROUP BY
    city.city_name    
ORDER BY 
    Revenue DESC    