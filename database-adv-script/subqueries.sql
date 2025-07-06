-- Properties with average rating greater than 4.0
SELECT name, property_id
FROM Property
WHERE property_id IN (
    SELECT property_id
    FROM Review
    GROUP BY property_id
    HAVING AVG(rating) > 4.0
);

-- Users who have made more than 3 bookings
SELECT u.user_id, u.first_name, u.last_name
FROM User u
WHERE (
    SELECT COUNT(*)
    FROM Booking b
    WHERE b.user_id = u.user_id
) > 3;
