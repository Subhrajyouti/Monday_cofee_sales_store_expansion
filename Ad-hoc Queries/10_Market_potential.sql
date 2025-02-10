SELECT 
    c.city_name, 
    sum(total) as total_sale  ,       
    count(DISTINCT cu.customer_id) ,
    c.population*0.25 as estimated_coffee_consumer,                    
    round(SUM(s.total) ::numeric/ COUNT(DISTINCT cu.customer_id),0) AS avg_sale_per_customer, -- Avg sales per customer
    round(c.estimated_rent ::numeric/ COUNT(DISTINCT cu.customer_id),0) AS avg_rent_per_customer -- Avg rent per customer
FROM 
    sales s
JOIN 
    customers cu ON s.customer_id = cu.customer_id  -- Link sales to customers
JOIN 
    city c ON cu.city_id = c.city_id                -- Link customers to their city
GROUP BY 
    c.city_name, c.estimated_rent , c.population-- Group by city name and rent
order by 
    avg_sale_per_customer desc
