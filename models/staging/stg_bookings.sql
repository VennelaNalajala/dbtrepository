SELECT
    booking_id,
    listing_id,
    DATE_TRUNC('SECOND', booking_date) AS booking_date,
    nights_booked,
    booking_amount,
    cleaning_fee,
    service_fee,
    booking_status
FROM dbt.dbt_schema.bookings