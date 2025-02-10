--List of cities and their population with estimated coffee consumers
SELECT city_name, population,
        population*0.25 as estimated_coffee_consume_people
FROM city
ORDER BY 
    population DESC