-- ===========================
-- Index Creation Commands
-- ===========================

-- Index on User email for faster lookups
CREATE INDEX idx_user_email ON User (email);

-- Index on Booking user_id for faster joins
CREATE INDEX idx_booking_user_id ON Booking (user_id);

-- Index on Booking property_id for faster joins
CREATE INDEX idx_booking_property_id ON Booking (property_id);

-- Index on Booking start_date for faster date filtering
CREATE INDEX idx_booking_start_date ON Booking (start_date);

-- Index on Property location for faster searches
CREATE INDEX idx_property_location ON Property (location);

-- Index on Property price for faster sorting and filtering
CREATE INDEX idx_property_price ON Property (price);

-- ===========================
-- Query Performance Measurement
-- ===========================

-- Example Query 1: Booking table (Before Index)
EXPLAIN ANALYZE
SELECT * FROM Booking WHERE user_id = 5;

-- Example Query 1: Booking table (After Index)
EXPLAIN ANALYZE
SELECT * FROM Booking WHERE user_id = 5;

-- Example Query 2: Property table (Before Index)
EXPLAIN ANALYZE
SELECT * FROM Property WHERE location = 'Cairo';

-- Example Query 2: Property table (After Index)
EXPLAIN ANALYZE
SELECT * FROM Property WHERE location = 'Cairo';

-- Example Query 3: User table (Before Index)
EXPLAIN ANALYZE
SELECT * FROM User WHERE email = 'example@email.com';

-- Example Query 3: User table (After Index)
EXPLAIN ANALYZE
SELECT * FROM User WHERE email = 'example@email.com';
