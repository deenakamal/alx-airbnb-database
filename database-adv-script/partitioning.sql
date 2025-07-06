-- =========================
-- Step 1: Create Partitioned Table
-- =========================

-- Rename the original Booking table
ALTER TABLE Booking RENAME TO Booking_old;

-- Create new Booking table partitioned by start_date (by RANGE)
CREATE TABLE Booking (
    id SERIAL PRIMARY KEY,
    user_id INT NOT NULL,
    property_id INT NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL
) PARTITION BY RANGE (start_date);

-- =========================
-- Step 2: Create Partitions
-- =========================

-- Partition for bookings in 2024
CREATE TABLE Booking_2024 PARTITION OF Booking
FOR VALUES FROM ('2024-01-01') TO ('2025-01-01');

-- Partition for bookings in 2025
CREATE TABLE Booking_2025 PARTITION OF Booking
FOR VALUES FROM ('2025-01-01') TO ('2026-01-01');

-- Partition for bookings in 2026
CREATE TABLE Booking_2026 PARTITION OF Booking
FOR VALUES FROM ('2026-01-01') TO ('2027-01-01');

-- =========================
-- Step 3: Test Query Performance
-- =========================

-- Before Partitioning (Old Table)
EXPLAIN ANALYZE
SELECT * FROM Booking_old WHERE start_date BETWEEN '2025-03-01' AND '2025-03-31';

-- After Partitioning (New Table)
EXPLAIN ANALYZE
SELECT * FROM Booking WHERE start_date BETWEEN '2025-03-01' AND '2025-03-31';
