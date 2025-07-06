# Database Performance Monitoring Report

## Project Information
- **Repository:** alx-airbnb-database
- **Directory:** database-adv-script
- **File:** performance_monitoring.md

---

## Objective
To continuously monitor and refine database performance by analyzing query execution plans and applying schema improvements.

---

## Queries Monitored

### Query 1: Booking Table
```sql
SELECT * FROM Booking WHERE user_id = 10 AND start_date >= '2025-01-01';
