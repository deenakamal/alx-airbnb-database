# Index Performance Report

## Project Information
- **Repository:** alx-airbnb-database
- **Directory:** database-adv-script
- **File:** index_performance.md

---

## Objective
The goal of this task is to identify high-usage columns in the `User`, `Booking`, and `Property` tables and create appropriate indexes to improve query performance. Query performance is measured before and after adding indexes using `EXPLAIN ANALYZE`.

---

## Indexes Created

| Table     | Column        | Index Name                |
|-----------|---------------|---------------------------|
| User      | email         | idx_user_email            |
| Booking   | user_id       | idx_booking_user_id       |
| Booking   | property_id   | idx_booking_property_id   |
| Booking   | start_date    | idx_booking_start_date    |
| Property  | location      | idx_property_location     |
| Property  | price         | idx_property_price        |

### SQL Commands
```sql
-- User table
CREATE INDEX idx_user_email ON User (email);

-- Booking table
CREATE INDEX idx_booking_user_id ON Booking (user_id);
CREATE INDEX idx_booking_property_id ON Booking (property_id);
CREATE INDEX idx_booking_start_date ON Booking (start_date);

-- Property table
CREATE INDEX idx_property_location ON Property (location);
CREATE INDEX idx_property_price ON Property (price);
