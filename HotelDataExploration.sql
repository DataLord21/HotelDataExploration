USE hotels;

WITH Hotel AS
 (
SELECT
    *
FROM
    hotel_revenue2018 
UNION SELECT 
    *
FROM
    hotel_revenue2019 
UNION SELECT 
    *
FROM
    hotel_revenue2020
    )
    
SELECT 
    *
FROM
    hotel
     LEFT JOIN
    market_segment m ON hotel.market_segment = m.market_segment
    LEFT JOIN
    meal_cost mc ON mc.meal = hotel.meal;
    
    
    
    

