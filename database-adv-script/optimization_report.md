# Query Optimization Report

## Project Information
- **Repository:** alx-airbnb-database
- **Directory:** database-adv-script
- **Files:** perfomance.sql, optimization_report.md

---

## Initial Complex Query

```sql
SELECT b.id AS booking_id, b.start_date, b.end_date,
       u.id AS user_id, u.name AS user_name, u.email,
       p.id AS property_id, p.name AS property_name, p.location,
       pay.id AS payment_id, pay.amount, pay.payment_date
FROM Booking b
JOIN User u ON b.user_id = u.id
JOIN Property p ON b.property_id = p.id
JOIN Payment pay ON b.id = pay.booking_id;
