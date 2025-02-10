--FInd each city and their average sale per customer and avg rentper customer
SELECT 
    c.city_name,                                   -- City name
    round(SUM(s.total) ::numeric/ COUNT(DISTINCT cu.customer_id),0) AS avg_sale_per_customer, -- Avg sales per customer
    round(c.estimated_rent ::numeric/ COUNT(DISTINCT cu.customer_id),0) AS avg_rent_per_customer -- Avg rent per customer
FROM 
    sales s
JOIN 
    customers cu ON s.customer_id = cu.customer_id  -- Link sales to customers
JOIN 
    city c ON cu.city_id = c.city_id                -- Link customers to their city
GROUP BY 
    c.city_name, c.estimated_rent -- Group by city name and rent
order by 
    avg_sale_per_customer desc
