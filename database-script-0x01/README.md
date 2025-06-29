# AirBnB Database Schema

## Files
- **schema.sql**: Contains SQL statements to create all tables, constraints, and indexes.

## Tables
- User
- Property
- Booking
- Payment
- Review
- Message

## Constraints and Indexes
- All primary keys are UUID.
- Foreign key constraints properly connect entities.
- Indexes are added on:
  - User email
  - Property ID
  - Booking property ID
  - Booking ID
  - Payment booking ID

## Notes
- ENUM types used for status, role, and payment_method for data integrity.
- Timestamps used for creation and updates.
