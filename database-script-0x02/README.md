# AirBnB Database - Seed Data

## Files
- **seed.sql**: Contains SQL INSERT statements to populate the database with sample data for:
  - Users
  - Properties
  - Bookings
  - Payments
  - Reviews
  - Messages

## Sample Data Overview
- 2 Users: A guest and a host.
- 2 Properties hosted by one user.
- 2 Bookings made by the guest.
- 1 Payment linked to a confirmed booking.
- 1 Review from the guest about a property.
- 2 Messages between guest and host.

## Notes
- UUIDs are used for all primary keys.
- Timestamps are auto-generated for creation dates.
- The data simulates a real-world Airbnb-like interaction.

## How to Run
```bash
mysql -u username -p database_name < seed.sql
