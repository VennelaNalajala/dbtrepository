SELECT
    b.booking_id,
    b.listing_id,
    b.booking_date,
    b.nights_booked,
    b.booking_amount,
    b.cleaning_fee,
    b.service_fee,
    b.booking_status,
    l.host_id,
    l.accommodates,
    l.property_type,
    h.host_name,
    h.host_since,
    h.response_rate
FROM {{ ref('stg_bookings') }} b
JOIN {{ ref('stg_listings') }} l
    ON b.listing_id = l.listing_id
JOIN {{ ref('stg_hosts') }} h
    ON l.host_id = h.host_id