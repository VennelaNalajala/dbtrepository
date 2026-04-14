SELECT
    {{ calculate_total('booking_amount', 'cleaning_fee') }} AS total_amount
FROM {{ ref('stg_bookings') }}