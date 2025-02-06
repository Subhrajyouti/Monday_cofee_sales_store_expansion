/*How many people in each city are estimated to consume coffee, given that 25% population does*/

SELECT city_name, population,
        population*0.25 as estimated_coffee_consume_people
FROM city