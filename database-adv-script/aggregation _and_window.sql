sql 
 _ _ 
AGGREGATION_ AND_WINDOW. SQL 

Objectives ; Use SQL aggregation and window function to analyze data 
_ _ 

1. Total number of bookings per user 
__ Description ; uses COUNT() and GROUP BY to find how many bookings each user has made 
_ _ 
SELECT 
u.user_id, 
u.username,
COUNT (b.booking _id ) AS total _bookings 
FROM users u 
LEFT JOIN bookins b ON u.ser_ id = b.user_id 
GROUP BY u.user-id , u.username 
ORDER BY total bookings DESC ;

2 Rank properties based on total number of bookings 
Description ;uses window function 
RANK() to rank properties by how many bookings they received 
_ _ Notes; Ties will receive the same rank 
_ _ 

SELECT 
p.prooerty _id ,
p.property_name ,
COUNT (b. booking_id ) AS total _bookings,
RANK() OVER (ORDER BY 
COUNT (b. booking_id) DESC) AS booking _rank 
FROM properties p
LEFT JOIN booking b ON p.property_id =
b.property_id 
GROUP BY p. property_id 
ORDER BY booking _rank; 
