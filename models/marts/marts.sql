SELECT
    host_id,
    host_name,
    COUNT(*) AS total_bookings,
    SUM(booking_amount) AS total_revenue
FROM {{ ref('intermediate') }}
GROUP BY host_id, host_name