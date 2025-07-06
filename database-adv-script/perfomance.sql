-- ================================
-- Initial Complex Query
-- ================================
-- Retrieve all bookings with user, property, and payment details
SELECT b.id AS booking_id, b.start_date, b.end_date,
       u.id AS user_id, u.name AS user_name, u.email,
       p.id AS property_id, p.name AS property_name, p.location,
       pay.id AS payment_id, pay.amount, pay.payment_date
FROM Booking b
JOIN User u ON b.user_id = u.id
JOIN Property p ON b.property_id = p.id
JOIN Payment pay ON b.id = pay.booking_id
WHERE b.start_date >= '2025-01-01'
  AND b.end_date <= '2025-12-31';

-- Analyze performance of the initial query
EXPLAIN ANALYZE
SELECT b.id AS booking_id, b.start_date, b.end_date,
       u.id AS user_id, u.name AS user_name, u.email,
       p.id AS property_id, p.name AS property_name, p.location,
       pay.id AS payment_id, pay.amount, pay.payment_date
FROM Booking b
JOIN User u ON b.user_id = u.id
JOIN Property p ON b.property_id = p.id
JOIN Payment pay ON b.id = pay.booking_id
WHERE b.start_date >= '2025-01-01'
  AND b.end_date <= '2025-12-31';

-- ================================
-- Refactored Optimized Query
-- ================================
-- Optimization applied: Only select necessary columns and assume proper indexes exist.

EXPLAIN ANALYZE
SELECT b.id AS booking_id, b.start_date, b.end_date,
       u.name AS user_name,
       p.name AS property_name,
       pay.amount
FROM Booking b
JOIN User u ON b.user_id = u.id
JOIN Property p ON b.property_id = p.id
JOIN Payment pay ON b.id = pay.booking_id
WHERE b.start_date >= '2025-01-01'
  AND b.end_date <= '2025-12-31';

