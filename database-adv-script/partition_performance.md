# Booking Table Partitioning Performance Report

## Project Information
- **Repository:** alx-airbnb-database
- **Directory:** database-adv-script
- **Files:** partitioning.sql, partition_performance.md

---

## Objective
The goal is to improve query performance on the large Booking table by implementing partitioning based on the `start_date` column.

---

## Approach
- Partitioned the Booking table by **RANGE** using the `start_date` column.
- Created yearly partitions: `Booking_2024`, `Booking_2025`, `Booking_2026`.
- Tested performance of date range queries **before and after partitioning** using `EXPLAIN ANALYZE`.

---

## Example Query for Testing
```sql
SELECT * FROM Booking WHERE start_date BETWEEN '2025-03-01' AND '2025-03-31';
