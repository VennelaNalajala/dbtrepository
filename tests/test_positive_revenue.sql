SELECT *
FROM {{ ref('marts') }}
WHERE total_revenue < 0