# Normalization Process for AirBnB Clone Database

## Objective
To ensure the database schema is in **Third Normal Form (3NF)** to eliminate redundancy and maintain data integrity.

---

## Step 1: First Normal Form (1NF)
- All tables have **atomic columns** (no repeating groups or arrays).
- Each attribute contains only **single, indivisible values**.

### Example:
- `User` table stores only one email per user.
- `Property` table stores one property per record.

✅ **1NF achieved.**

---

## Step 2: Second Normal Form (2NF)
- All non-key attributes depend on the **entire primary key**.

### Example:
- In the `Booking` table, each attribute (start_date, end_date, total_price) depends on the `booking_id` only.
- In the `Payment` table, all attributes depend on `payment_id`.

✅ **2NF achieved.**

---

## Step 3: Third Normal Form (3NF)
- There are **no transitive dependencies**.
- Non-key attributes only depend on the primary key.

### Example:
- In the `User` table, fields like first_name, last_name, phone_number depend directly on user_id.
- In the `Booking` table, fields like start_date, end_date, total_price depend directly on booking_id.

✅ **3NF achieved.**

---

## Conclusion:
After carefully reviewing the database schema, all tables meet **Third Normal Form (3NF) standards.**
- No redundant data exists.
- No transitive dependencies found.
- No adjustments were required.

---

## Notes:
If future updates introduce additional fields (e.g., user address details or payment verification steps), further normalization checks may be needed.
