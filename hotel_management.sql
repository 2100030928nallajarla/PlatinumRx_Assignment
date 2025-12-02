-- Hotel Management System SQL Solutions
-- 1
SELECT u.user_id, b.room_no
FROM users u
LEFT JOIN bookings b ON b.user_id = u.user_id
WHERE b.booking_date = (
    SELECT MAX(b2.booking_date) FROM bookings b2 WHERE b2.user_id = u.user_id
);
...
