# AirBnB Clone - Database Requirements

## Entities and Attributes

### User
- user_id (Primary Key)
- first_name
- last_name
- email (Unique, Indexed)
- password_hash
- phone_number
- role (guest, host, admin)
- created_at

### Property
- property_id (Primary Key)
- host_id (Foreign Key → User.user_id)
- name
- description
- location
- pricepernight
- created_at
- updated_at

### Booking
- booking_id (Primary Key)
- property_id (Foreign Key → Property.property_id)
- user_id (Foreign Key → User.user_id)
- start_date
- end_date
- total_price
- status (pending, confirmed, canceled)
- created_at

### Payment
- payment_id (Primary Key)
- booking_id (Foreign Key → Booking.booking_id)
- amount
- payment_date
- payment_method (credit_card, paypal, stripe)

### Review
- review_id (Primary Key)
- property_id (Foreign Key → Property.property_id)
- user_id (Foreign Key → User.user_id)
- rating (1-5)
- comment
- created_at

### Message
- message_id (Primary Key)
- sender_id (Foreign Key → User.user_id)
- recipient_id (Foreign Key → User.user_id)
- message_body
- sent_at

---

## Relationships

- A User can host many Properties (1-to-Many)
- A User can make many Bookings (1-to-Many)
- A User can write many Reviews (1-to-Many)
- A User can send many Messages (1-to-Many)
- A User can receive many Messages (1-to-Many)
- A Property can have many Bookings (1-to-Many)
- A Property can have many Reviews (1-to-Many)
- A Booking has one Payment (1-to-1)

---

## Diagram Location
The ER Diagram is stored in the **ERD/** directory
